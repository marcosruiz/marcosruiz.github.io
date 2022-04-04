---
title: "Tutorial: Configurar OMV6 en mini pc chino"
date: 2022-04-02 21:30:00 +0100
categories: [General]
tags: [omv, open media vault, debian, gnu linux, linux]
---

## Configuraciones recomendadas

Una vez hemos instalado OpenMediaVault en nuestro PC, lo primero que debemos hacer es cambiar la contraseña del administrador. Para hacemos click en el botón de configuración y click en "Cambiar contraseña".

![Menú cambiar contraseña](/assets/img/tutorial-configurar-omv6/cambiarContrasena.png)
_Menú cambiar contraseña_

Posteriormente nos aparecerá un formulario para cambiar la contraseña.

![Formulario para cambiar contraseña del usuario admin](/assets/img/tutorial-configurar-omv6/formularioContrasena.png)
_Formulario para cambiar contraseña del usuario admin_

En Sistema > Área de trabajo podemos poner la opción "Salir automáticamente" a 1 dia y podemos activar la SSL/TLS habilitado.

En Red > Interfaces > Propiedades avanzadas añadimos 8.8.8.8 a los "Servidores DNS" para no tener problemas con los nombres de dominio.

![Servidores DNS](/assets/img/tutorial-configurar-omv6/dnsDir.png)
_Servidores DNS_


## Instalar Docker y Portainer

Abrimos PuTTy, añadimos la dirección IP y hacemos click en "Open".

![Cargar sesión con PuTTy en Windows 10](/assets/img/tutorial-configurar-omv6/puttyLoadSession.png)
_Cargar sesión con PuTTy en Windows 10_

Una vez hagamos login deberemos ver un terminal como este. En mi caso he ejecutado la instrucción `neofetch` para que podáis ver las características de mi mini PC.

![Sesión SSH con PuTTy](/assets/img/tutorial-configurar-omv6/neofetchEnTerminalSSH.png)
_Sesión SSH con PuTTy_

Con la siguiente instrucción instalamos los plugins extras de OMV:

```bash
root@nipogi:~# wget -O - https://github.com/OpenMediaVault-Plugin-Developers/packages/raw/master/install | bash
```

Una vez instalado y tras actualizar la interfaz web deberá aparecer el siguiente menú:

![Nuevo menú de omv-extras](/assets/img/tutorial-configurar-omv6/menuOmvExtras.png)
_Nuevo menú de omv-extras_

En Plugins instalamos el plugin "openmediavault-flashmemory" para limitar las escrituras en las memorias flash y SSD.

En Plugins instalamos el plugin "openmediavault-resetperms" para resetar los permisos de manera cómoda.

En "omv-extras" > "Opciones" activamos los backports para que se descarguen los drivers más modernos.

![Activación de los backports](/assets/img/tutorial-configurar-omv6/backports.png)
_Activación de los backports_

Vamos a "omv-extras" > "Docker" y hacemos click en el botón de "Instalar":

![Instalar Docker](/assets/img/tutorial-configurar-omv6/instalarDocker.png)
_Instalar Docker_

Como resultado deberemos ver algo como esto:

![Docker instalado](/assets/img/tutorial-configurar-omv6/dockerInstalado.png)
_Docker instalado_

Vamos a "omv-extras" > "Portainer" y hacemos click en el botón de "Instalar":

![Instalar Portainer](/assets/img/tutorial-configurar-omv6/instalarPortanier.png)
_Instalar Portainer_

Como resultado deberemos ver algo como esto:

![Portainer instalado](/assets/img/tutorial-configurar-omv6/portainerInstalado.png)
_Portainer instalado_

Y si vamos a "\<tudireccionIP\>:9000" podrás acceder a la interfaz web de Portanier. Introducimos la contraseña para el usuario "admin".

![Interfaz web de Portainer: Primer login](/assets/img/tutorial-configurar-omv6/primerLoginPortainer.png)
_Interfaz web de Portainer: Primer login_

Y vemos que ya tenemos nuestro primer contenedor funcionando.

![Interfaz web de Portainer](/assets/img/tutorial-configurar-omv6/primerLoginPortainer2.png)
_Interfaz web de Portainer_

## Instalar fail2ban

<!--Añadir esta linea a /etc/apt/sources.list

```
deb http://security.debian.org/debian-security bullseye-security main contrib non-free
deb http://deb.debian.org/debian bullseye-proposed-updates main contrib non-free
```
-->

Instalamos fail2ban:

```console
# apt update
# apt upgrade
# apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common vim fail2ban ntfs-3g
```

Con esto vale, pero podemos configurarlo para que sea mas agresivo en el fichero de configuración /etc/fail2ban/jail.conf. En el apartado `[sshd]` añadir lo siguiente:

```shell
bantime = 86400
maxretry = 4
```
{: file="/etc/fail2ban/jail.conf" }

## Instalar Duckdns en Docker

Ir a la web de [Duck DNS](https://www.duckdns.org/) y registrate y deberás poder registrar subdominios. Pon especial atención al token que es el que tendrás que añadir en el fichero del docker-compose.

![Página web de Duck DNS](/assets/img/tutorial-configurar-omv6/duckDnsWeb.jpg)
_Página web de Duck DNS_

En Portainer ir a "Stacks" > "Add stack" y pega los siguiente teniendo en cuenta tus propios datos:

```yaml
version: "2"
services:
  duckdns:
    image: linuxserver/duckdns
    container_name: duckdns
    environment:
      - PUID=1000 #optional
      - PGID=100 #optional
      - TZ=Europe/Madrid
      - SUBDOMAINS=chiricloud,chiricode,chirihop,chirinas,chiriplex
      - TOKEN=<tuTokenDeDuckDns>
      - LOG_FILE=false #optional
    volumes:
      - /srv/dev-disk-by-uuid-7ba5953f-3094-44b9-9875-98f1dac73873/elements1/duckdns/config:/config #optional
    restart: unless-stopped
```

## Instalar Transmission en Docker

Esta es la plantilla:

```yaml
version: "2.1"
services:
  transmission:
    image: lscr.io/linuxserver/transmission
    container_name: transmission
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/London
      - TRANSMISSION_WEB_HOME=/combustion-release/ #optional
      - USER=username #optional
      - PASS=password #optional
      - WHITELIST=iplist #optional
      - PEERPORT=peerport #optional
      - HOST_WHITELIST=dnsnane list #optional
    volumes:
      - <path to data>:/config
      - <path to downloads>:/downloads
      - <path to watch folder>:/watch
    ports:
      - 9091:9091
      - 51413:51413
      - 51413:51413/udp
    restart: unless-stopped
```

Este es mi documento sin el usuario y contraseña:

```yaml
version: "2.1"
services:
  transmission:
    image: lscr.io/linuxserver/transmission
    container_name: transmission
    environment:
      - PUID=1000
      - PGID=100
      - TZ=Europe/Madrid
      - TRANSMISSION_WEB_HOME=/combustion-release/
      - USER=<username>
      - PASS=<password>
    volumes:
      - /srv/dev-disk-by-uuid-7ba5953f-3094-44b9-9875-98f1dac73873/elements1/transmission/config:/config
      - /srv/dev-disk-by-uuid-7ba5953f-3094-44b9-9875-98f1dac73873/elements1/downloads:/downloads
      - /srv/dev-disk-by-uuid-7ba5953f-3094-44b9-9875-98f1dac73873/elements1/transmission/watch:/watch
    ports:
      - 9091:9091
      - 51413:51413
      - 51413:51413/udp
    restart: unless-stopped
```

Si, en mi caso, voy a ``nipogi:9091` veré lo que hay a continuación:

![Interfaz web de Transmission](/assets/img/tutorial-configurar-omv6/transmissionWeb.png)
_Interfaz web de Transmission_

Hacemos la prueba para añadir un torrent:

![Interfaz web de Transmission](/assets/img/tutorial-configurar-omv6/transmissionUploadTorrent.png)
_Interfaz web de Transmission_


## Montar un servicio FTP

## Montar un servicio SAMBA

## Configurar router

Accedemos al router a través de su dirección IP, normalmente es la primera disponible, es decir, 192.168.1.1. Por lo tanto ponemos esta dirección IP en nuestro navegador y nos aparecerá un login:

![Interfaz web del router: Login](/assets/img/tutorial-configurar-omv6/loginWebRouter.png)
_Interfaz web del router: Login_

### Reenvío de puertos

Una vez en la interfaz web del router deberemos buscar la opción de "Reenvío de puertos" o "Port forwarding" que es la opción que se encarga de enlazar los puertos públicos con los puertos de una máquina de la red local, en este caso, el mini PC.

Como podemos ver en la siguiente Figura, yo tengo abiertos los puertos de Portainer, FTP, SSH, HTTP y HTTPS. 

![Interfaz web del router: Port forwarding o reenvío de puertos](/assets/img/tutorial-configurar-omv6/portForwarding.png)
_Interfaz web del router: Port forwarding o reenvío de puertos_

⚠ Importante: Cuando nos conectemos a través de Internet debes evitar usar protocolos no seguros como FTP o HTTP. En lugar de estos deberás usar FTPS, SFTP y/o HTTPS.


### Hacer fija la IP local del mini PC

Para no tener problemas con el reenvío de puertos es recomendable hacer que la IP local del mini PC sea fija. En mi caso yo voy a la información del mini PC y reservo dicha dirección IP. En la siguiente Figura se ve el resultado final.

![Interfaz web del router: Device info o información del dispositivo](/assets/img/tutorial-configurar-omv6/deviceInfo.png)
_Interfaz web del router: Device info o información del dispositivo_

## Bibliografía

- [Openmediavault 5 (OMV5) Stable Complete Install and Setup including Portainer (YouTube)](https://www.youtube.com/watch?v=M_oxzpvMPTE)
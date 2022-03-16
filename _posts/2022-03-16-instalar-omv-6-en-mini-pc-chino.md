---
title: "Instalar OMV 6 en Debian 11 (Bullseye) en mini PC chino"
date: 2022-03-16 21:40:00 +0100
categories: [General]
tags: [omv, open media vault, debian, gnu linux, linux]
---

## Comprar NiPoGi

En mi caso he comprado un mini PC chino de la marca NiPoGi con las siguientes características:

- 8GB RAM
- 128GB SSD
- Ιntel Celeron J3455
- Soporte 2.5" SSD/mSATA SSD
- 2.4G+5G WiFi
- Gigabit Ethernet
- Dual HDMI

![NiPoGi](/assets/img/instalar-omv-6-en-mini-pc-chino/nipogi1.jpg)
_NiPoGi_

![NiPoGi](/assets/img/instalar-omv-6-en-mini-pc-chino/nipogi2.jpg)
_NiPoGi_


En mi caso lo compré en [Amazon](https://amzn.to/3MSnowd) por 156,90 €.

## ¿Por qué este mini PC?

El mini PC NiPoGi tiene un precio similar a productos NAS de la gama de entrada como son el QNAP TS-230 el cual cuenta con unas características técnicas de 2GB de RAM y un procesador quad core. Por ese precio tenemos 4 veces más RAM, más memoria interna y un procesador Intel.

Parece que nos estamos ahorrando mucho dinero, pero debes tener en cuenta que al comprar un NAS ya preparado estás pagando un software mucho más optimizado, una interfaz gráfica de usuario más pulida y con más opciones y un hardware que sabes que va a durar encendido 24/7 sin problema. Personalmente me compensa el riesgo ya que guardaré todo en discos duros externos.

## Instalar Debian

⚠ Aviso ⚠ Puede que la tarjeta WiFi quede inservible tras la instalación.

En mi caso, al instalar OMV directamente directamente no detecta ni las interfaces de rez ni los discos, por lo tanto he seguido los siguientes pasos.

Ir a la web [Instalación por red desde un CD mínimo](https://www.debian.org/CD/netinst/) y descargar la versión estable de Debian, concretamente la llamada amd64.

Usando la herramienta [Rufus](https://rufus.ie/es/), montar la ISO descargada en un USB.

Introducir el USB en el mini PC NiPoGi e iniciar la máquina. Quizás sea necesario modificar el orden en el que se arrancan los dispositivos (Boot devices).

1. Seleccionar Graphical Install.
1. Seleccionar Spanish - Español.
1. Seleccionar España como localización.
1. Seleccionar teclado español.
1. Escribe "nipogi" como nombre de host.
1. Escribe "nipogi" como nombre de dominio.
1. Escribe tu contraseña para el superusuario.
1. Añade un nuevo usuario. No pongas espacios ni uses mayúsuclas.
1. Utiliza un disco entero.
1. Marca solo la opción de "standard system utilities" y SSH.

Una vez tenemos la instalación mínima de Debian podremos conectarnos a través del protocolo SSH con el programa [PuTTY](https://www.putty.org/) y copiar las siguientes instrucciones.

```console
$ su -
# echo 'deb http://ftp.us.debian.org/debian/ bullseye main contrib non-free' >> /etc//apt/sources.list
# apt-get update
# apt-get install sudo
# usermod -aG sudo <nombreDeUsuario>
# sudo apt-get install firmware-linux firmware-linux-free firmware-linux-nonfree
# apt-get install network-manager
```

## Instalar OMV6

Instalar claves de OMV6 manualmente:

```console
# apt-get install --yes gnupg
# wget -O "/etc/apt/trusted.gpg.d/openmediavault-archive-keyring.asc" https://packages.openmediavault.org/public/archive.key
# apt-key add "/etc/apt/trusted.gpg.d/openmediavault-archive-keyring.asc"
```

Instala los repositiorios de paquetes:

```console
cat <<EOF >> /etc/apt/sources.list.d/openmediavault.list
deb https://packages.openmediavault.org/public shaitan main
# deb https://downloads.sourceforge.net/project/openmediavault/packages shaitan main
## Uncomment the following line to add software from the proposed repository.
# deb https://packages.openmediavault.org/public shaitan-proposed main
# deb https://downloads.sourceforge.net/project/openmediavault/packages shaitan-proposed main
## This software is not part of OpenMediaVault, but is offered by third-party
## developers as a service to OpenMediaVault users.
# deb https://packages.openmediavault.org/public shaitan partner
# deb https://downloads.sourceforge.net/project/openmediavault/packages shaitan partner
EOF
```

Instala el paquete de OMV:

```console
export LANG=C.UTF-8
export DEBIAN_FRONTEND=noninteractive
export APT_LISTCHANGES_FRONTEND=none
apt-get update
apt-get --yes --auto-remove --show-upgraded \
    --allow-downgrades --allow-change-held-packages \
    --no-install-recommends \
    --option DPkg::Options::="--force-confdef" \
    --option DPkg::Options::="--force-confold" \
    install openmediavault-keyring openmediavault

omv-confdbadm populate
```

## Configurar OMV6

Una vez tenemos todo instalado, deberemos averiguar la dirección LAN de la máquina con el comando `ip a`. En mi caso la dirección es 192.168.1.146. Por lo que introduciendo dicha dirección en un navegador web deberíamos acceder a la web de administración de OMV como se puede ver a continuación.

![Login de OpenMediaVault](/assets/img/instalar-omv-6-en-mini-pc-chino/omvLogin.png)
_Login de OpenMediaVault_

En esta pantalla introducimos el usuario admin con contraseña openmediavault y podremos administrar nuestro nuevo NAS 😀.

## Bibliografía

- [Install OMV6 on Debian 11 (Bullseye)](https://forum.openmediavault.org/index.php?thread/39490-install-omv6-on-debian-11-bullseye/)
- [Setting up User Accounts and Connecting to Share](https://ubuntu.com/tutorials/install-and-configure-samba#4-setting-up-user-accounts-and-connecting-to-share)
- [Installation on Debian](https://openmediavault.readthedocs.io/en/5.x/installation/on_debian.html)
- [Debian minimal install guide step by step](https://www.pcsuggest.com/debian-minimal-install-guide/)
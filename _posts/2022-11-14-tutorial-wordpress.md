---
title: "Tutorial: Instalar Wordpress en Ubuntu Server 22.04"
date: 2022-11-14 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, tutorial]
img_path: /assets/img/tutorial-wordpress/
---

## Introducción

En este artículo se explica como instalar Wordpress en un servidor virtual.

## Crear máquina virtual

Crear una máquina virtual con las siguientes características:

- Nombre: Ubuntu Server 22 23
- Sistema operativo: Ubuntu (64-bit)
- Memoria RAM: 6000 MB
- Almacenamiento: 20 GB
- Red
  - Adaptador 1: NAT
  - Adaptador 2: Adaptador solo anfitrión (Más adelante)

## Instalar Ubuntu Server 22.04

En mi caso usaré las siguientes credenciales:

- Usuario: mrug
- Contraseña: tiempos

Ya que mi correo del centro educativo es mrug@tiempos.org

Descarga de [la sección de descargas de Ubuntu](https://ubuntu.com/download/server) e instala en una máquina virtual Ubuntu Server.

## Instalar Ubuntu Server 22.04 en la máquina virtual

![imgDescription](01.png)

![imgDescription](02.png)

![imgDescription](03.png)

![imgDescription](04.png)

![imgDescription](05.png)

![imgDescription](06.png)

![imgDescription](07.png)

![imgDescription](08.png)

![imgDescription](09.png)

![imgDescription](10.png)

![imgDescription](11.png)

![imgDescription](12.png)

![imgDescription](13.png)

![imgDescription](14.png)

![imgDescription](15.png)

Tras esto podremos hacer login y deberemos tener conexión a Internet.

![imgDescription](16.png)

Apagamos la máquina y añadimos la nueva interfaz de red sólo anfitrión.

![imgDescription](archivoAdministracionDeSoloAnfitrion.png)

![imgDescription](crearRedSoloAnfitrion.png)

![imgDescription](añadirAdaptadorSoloAnfitrion.png)

Encendemos de nuevo la máquina virtual y configuramos la nueva interfaz.

![imgDescription](17.png)

![imgDescription](18.png)

Comandos utilizados:

```console
sudo ip a 
```

```console
sudo nano /etc/netplan/00-installer-config.yaml
```

Tras esto deberíamos ser capaces de conectarnos usando el servicio SSH desde el host.

![Conexión SSH desde Windows a una máquina virtual](conexionSshEstablecida.png)
_Conexión SSH desde Windows a una máquina virtual_

## Instalar Wordpress

Estoy [usando este tutorial](https://comoinstalar.me/como-instalar-wordpress-en-ubuntu-22-04-lts/)

Desde el host deberíais ser capaces de acceder a la dirección IP de vuestra máquina virtual. En mi caso yo he accedido a `http://192.168.249.3/wordpress/` para instalar Wordpress siguiendo los pasos.

![imgDescription](wp01.png)

![imgDescription](wp02.png)

![imgDescription](wp03.png)


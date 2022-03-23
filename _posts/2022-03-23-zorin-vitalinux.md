---
title: "Zorin OS Lite DE en Vitalinux"
date: 2022-03-23 02:20:00 +0100
categories: [General]
tags: [vitalinux, zorin]
---

{:.section}
## Programas para instalar

- Visual Studio Code
- Sublime Text 3
- Virtual Box
- WPS Office
- OnlyOffice
- LibreOffice
- OBS Studio

### SMR y ASIR

- Cisco Packet Tracer
- Wireshark
- VMWare
- QEMU
- Docker
- Inkscape
- Gimp
- net-tools
- traceroute
- gedit

### DAM y DAW

- Eclipse
- IntelliJ IDEA Community
- Atom
- Draw.io/Diagrams.net
- Postman

### TIC II

- PSeInt
- BlueJ

{:.section}
## Zorin OS Lite Desktop Enviroment (Xfce)

- Ubuntu 18.04 ➡ bionic
- Ubuntu 20.04 ➡ focal

Contraseña por defecto es "careidga".

Añadir a /etc/apt/sources.list las siguientes lo siguiente:

```shell
deb https://packages.zorinos.com/stable bionic main
# deb-src https://packages.zorinos.com/stable bionic main

deb https://packages.zorinos.com/patches bionic main
# deb-src https://packages.zorinos.com/patches bionic main

deb https://packages.zorinos.com/apps bionic main
# deb-src https://packages.zorinos.com/apps bionic main

deb https://packages.zorinos.com/drivers bionic main restricted
# deb-src https://packages.zorinos.com/drivers bionic main restricted

deb http://ppa.launchpad.net/zorinos/stable/ubuntu bionic main
# deb-src http://ppa.launchpad.net/zorinos/stable/ubuntu bionic main

deb http://ppa.launchpad.net/zorinos/patches/ubuntu bionic main
# deb-src http://ppa.launchpad.net/zorinos/patches/ubuntu bionic main

deb http://ppa.launchpad.net/zorinos/apps/ubuntu bionic main
# deb-src http://ppa.launchpad.net/zorinos/apps/ubuntu bionic main

deb http://ppa.launchpad.net/zorinos/drivers/ubuntu bionic main
# deb-src http://ppa.launchpad.net/zorinos/drivers/ubuntu bionic main
```
{: file="/etc/apt/sources.list" }

En el caso de estar en versiones más recientes de Ubuntu deberemos cambiar el nombre de bionic por el que toque. Por ejemplo con Ubuntu 20.04 el nombre es "focal" y quedaría de la siguiente manera:

```shell
deb https://packages.zorinos.com/stable focal main
# deb-src https://packages.zorinos.com/stable focal main

deb https://packages.zorinos.com/patches focal main
# deb-src https://packages.zorinos.com/patches focal main

deb https://packages.zorinos.com/apps focal main
# deb-src https://packages.zorinos.com/apps focal main

deb https://packages.zorinos.com/drivers focal main restricted
# deb-src https://packages.zorinos.com/drivers focal main restricted

deb http://ppa.launchpad.net/zorinos/stable/ubuntu focal main
# deb-src http://ppa.launchpad.net/zorinos/stable/ubuntu focal main

deb http://ppa.launchpad.net/zorinos/patches/ubuntu focal main
# deb-src http://ppa.launchpad.net/zorinos/patches/ubuntu focal main

deb http://ppa.launchpad.net/zorinos/apps/ubuntu focal main
# deb-src http://ppa.launchpad.net/zorinos/apps/ubuntu focal main

deb http://ppa.launchpad.net/zorinos/drivers/ubuntu focal main
# deb-src http://ppa.launchpad.net/zorinos/drivers/ubuntu focal main
```
{: file="/etc/apt/sources.list" }

Añadimos las claves públicas de ZorinOS:

```console
$ sudo gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv 30FCF8F64F71B61C
$ sudo gpg --export --armor 30FCF8F64F71B61C | sudo apt-key add -
$ sudo gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv 40E0F448B35AB199
$ sudo gpg --export --armor 40E0F448B35AB199 | sudo apt-key add -
```

Instalamos Zorin OS Desktop Environment:

```console
$ sudo apt-get update
$ sudo apt install -y xfce4
$ sudo apt install -y zorin-os-lite-desktop
```

Hacemos Ctrl + Espacio y buscamos el Gestor de Configuración de la interfaz GTK+ de LightDM:

![Búsqueda del Gestor de Configuración de la interfaz GTK+ de LightDM](/assets/img/zorin-vitalinux/configuracionLightdm.png)
_Búsqueda del Gestor de Configuración de la interfaz GTK+ de LightDM_

Añadimos la opción Sessions Menu en la pestaña Panel:

![Añadir Sessions Menu en el Panel superior de LightDM](/assets/img/zorin-vitalinux/sessionsMenu.png)
_Añadir Sessions Menu en el Panel superior de LightDM_

Cerramos sesión y cambiamos la sesión a Zorin OS Lite Desktop:

![Cambio de entorno de escritorio](/assets/img/zorin-vitalinux/lightdm.png)
_Cambio de entorno de escritorio_

Y como se puede ver, todo funciona perfectamente:

![Entorno de escritorio de Zorin OS en Vitalinux](/assets/img/zorin-vitalinux/holaVitalinux.png)
_Entorno de escritorio de Zorin OS en Vitalinux_

Lo mejor de todo es que podemos seguir usando el Ctrl + Espacio para hacer búsquedas de programas si queremos:

![Ctrl + Espacio en Zorin DE](/assets/img/zorin-vitalinux/ctrlSpace.png)
_Ctrl + Espacio en Zorin DE_

Si quieres descargar el script haz click en [este enlace](/assets/scripts/instalarZorinOsEnVitalinux.sh).

<!--
## Instalar Cinnamon (Xfce)

```console
sudo add-apt-repository ppa:embrosyn/cinnamon
sudo apt install cinnamon-desktop-environment
sudo apt install cinnamon
sudo apt install cinnamon-core
sudo add-apt-repository ppa:embrosyn/xapps
```
-->
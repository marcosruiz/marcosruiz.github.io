---
title: "Vitalinux"
date: 2022-03-23 02:20:00 +0100
categories: [General]
tags: [vitalinux]
---

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

### DAM y DAW

- Eclipse
- IntelliJ IDEA Community
- Atom
- Draw.io/Diagrams.net
- Postman

### Bachillerato

- PSeInt
- BlueJ

## Zorin OS Lite Desktop Enviroment (Xfce)

Añadir a /etc/apt/sources.list las siguientes lo siguiente:

- Ubuntu 18.04 ➡ bionic
- Ubuntu 20.04 ➡ focal

Contraseña por defecto: careidga

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
$ sudo apt install xfce4
$ sudo apt install -y zorin-os-lite-core zorin-os-lite-default-settings zorin-os-lite-desktop
```

## Instalar Cinnamon (Xfce)

```console
sudo add-apt-repository ppa:embrosyn/cinnamon
sudo apt install cinnamon-desktop-environment
sudo apt install cinnamon
sudo apt install cinnamon-core
sudo add-apt-repository ppa:embrosyn/xapps
```
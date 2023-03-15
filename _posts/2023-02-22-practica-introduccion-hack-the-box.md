---
title: "Práctica: Introducción a Hack the Box"
date: 2023-02-21 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, práctica, seguridad activa, hack the box]
img_path: /assets/img/practica-introduccion-hack-the-box/
---

## Objetivo y duración

El objetivo de esta práctica es aprender a realizar tareas catalogadas como muy fáciles en Hack The Box.

Duración: - h

## Entrega y presentación

La entrega será en formato PDF. Leer [Entrega y presentación de prácticas](/posts/entrega-presentacion-practicas/).

## Actividades

A continuación se listan las actividades que se deben realizar.

{:.activity}
### Crear cuenta en Hack The Box

Haz click en [este enlace](https://academy.hackthebox.com/register) para registrate en Hack The Box con el email del centro educativo. Posteriormente deberás verificar tu cuenta.

{:.activity}
### Perfil público en Hack The Box

Haz click en "My Profile", pestaña "PROFILE SETTINGS", subpestaña "PUBLIC INFORMATION" y escribe la siguiente información:

```plaintext
Hola soy <Nombre> <Apellidos>, alumno de Aplicaciones Web en el IES Tiempos Modernos, en el curso 22 23.
```

![Apartado de descripción en el perfil](descripcionPerfil.png)
_Apartado de descripción en el perfil_


Y haz click en el botón "SAVE CHANGES".

> Copia el enlace a tu perfil, en mi caso este es [mi perfil publico](https://app.hackthebox.com/users/1223840). Para obtener tu perfil público necesitaras saber tu ID de usuario, en mi caso es 1223840.
{:.prompt-info}

> 📷 Haz una captura de tu perfil vacío.
{:.prompt-info}

{:.activity}
### Crea e instala Kali Linux

Crea e instala Kali Linux con tu usuario habitual y la contraseña "tiempos".

> 📷 Haz una captura de pantalla donde se vea tu usuario de Kali Linux y la web de HackTheBox como se ve a continuación.
{:.prompt-info}

![Cuenta HackTheBox en Kali Linux](01.png)
_Cuenta HackTheBox en Kali Linux_


{:.activity}
### Instala OpenVPN en Kali Linux

Haz [click aquí](https://openvpn.net/openvpn-client-for-linux/) y descarga OpenVPN 3 para Linux. En mi caso estoy instalando la versión de Kali Linux 2022.4 (usar comando `lsb_release -a`) por lo que mi release name es `jammy`.

En mi caso, he usado los siguientes comandos:

```console
#apt install apt-transport-https
#curl -fsSL https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub | gpg --dearmor > /etc/apt/trusted.gpg.d/openvpn-repo-pkg-keyring.gpg
#curl -fsSL https://swupdate.openvpn.net/community/openvpn3/repos/openvpn3-jammy.list >/etc/apt/sources.list.d/openvpn3.list
#apt update
#apt install openvpn3
```

{:.activity}
### Conecta a la VPN

Hacemos click en "CONNECT TO HTB":

![Click en botón "CONNECT TO HTB"](02.png)
_Click en botón "CONNECT TO HTB"_

Hacemos click en "OpenVPN":

![Click en botón "OpenVPN"](03.png)
_Click en botón "OpenVPN"_

Hacemos click en "DOWNLOAD VPN":

![Click en botón "DOWNLOAD VPN"](04.png)
_Click en botón "DOWNLOAD VPN"_

![Descarga del fichero OVPN completada](05.png)
_Descarga del fichero OVPN completada_

En mi caso, ejecuto el siguiente comando una vez descargado el fichero OVPN:

```console
$sudo openvpn starting_point_marcosruiz.ovpn
```

![Comando para conectar a la VPN](07.png)
_Comando para conectar a la VPN_

![Conectado a la VPN](08.png)
_Conectado a la VPN_

Hacemos click en "SPAWN MACHINE" para iniciar la máquina que queremos hackear:

![imgDescription](09.png)
_Click en botón "SPAWN MACHINE"_

![imgDescription](10.png)
_Creando instancia de máquina a hackear_

{:.activity}
### Realiza las actividades

Haz click en [este enlace](https://app.hackthebox.com/starting-point) y realiza las siguientes actividades:

Haz las actividades de:

- Meow
- Fawn
- Dancing
- Redeemer

Todas las actividades tienen una guía en PDF que te enseña paso a paso como completar la dicha actividad. Para descargarlo deberás hacer click en el botón que dice "OPEN Walkthrough".

![Botón "OPEN Walkthrough"](11.png)
_Botón "OPEN Walkthrough"_

> Aunque todo está en inglés, los comandos son universales.
{:.prompt-tip}

![Guía de hackeo paso a paso](12.png)
_Guía de hackeo paso a paso_

> 📷 Haz una captura con las actividades completadas donde se vea tu nombre de usuario como se ve a continuación.
{:.prompt-info}

![Roadmap completado](roadmapHtb.png)
_Roadmap completado_



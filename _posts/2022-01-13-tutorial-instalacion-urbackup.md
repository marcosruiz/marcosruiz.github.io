---
title: "Tutorial: Instalación de UrBackup"
date: 2022-01-13 01:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [gnu linux, comandos, terminal, bash, seguridad informática, urbackup, backup, seguridad pasiva, almacenamiento, tutorial]
---

## Introducción

Este es un sistema de copia de seguridad de cliente / servidor de código abierto y fácil de configurar que, a través de una combinación de copias de seguridad de imágenes y archivos, logra tanto la seguridad de los datos como un tiempo de restauración rápido. Según indican en la página web del proyecto, se pueden seguir las mismas instrucciones para Ubuntu 18.04, 16.04 y cualquier otra distribución basada en Debian como Linux Mint.

Los datos de cualquier organización son algo muy importante. Por esto, hacer una copia de seguridad de los datos es aún más importante tenerlos a buen recaudo en caso de cualquier desastre. UrBackup es una potente y gratuita solución de respaldo de red para uso personal o empresarial.

El programa ofrece un buen puñado de funciones disponibles en el software de respaldo. Entre ellas encontraremos una interfaz basada en web para administrar todas las copias de seguridad. De puede instalar en Gnu/Linux, Windows y muchos sistemas operativos NAS basados en Gnu/Linux.

## Características generales de UrBackup

- Permite realizar copias de seguridad de archivos, imágenes completas e incrementales. Se pueden guardar particiones completas y directorios individuales.
- Dispondremos de clientes para Gnu/Linux, Windows y FreeBSD.
- El cálculo rápido de las diferencias del árbol de archivos, conduce a copias de seguridad de archivos incrementales muy rápidas.
- Solo los sectores del disco duro usados y modificados se transmiten durante una copia de seguridad de imagen incremental.
- Permite copias de seguridad de imágenes y archivos mientras el sistema está en funcionamiento.
- Los mismos archivos en diferentes equipos se guardan solo una vez. Esto hace que se necesite menos espacio de almacenamiento en el servidor para las copias de seguridad.
- Los clientes pueden cambiar su configuración, como la frecuencia de las copias de seguridad o la cantidad de copias de seguridad, y pueden ver los archivos de registro de sus copias de seguridad.
- Dispondremos de una interfaz web que muestra el estado de los clientes, actividades actuales y estadísticas. Esta permite al administrador cambiar la configuración de la copia de seguridad y anular la configuración de los clientes. Se pueden examinar las copias de seguridad de archivos existentes, extraer los archivos de estas copias de seguridad o iniciar procesos de restauración.
- Los informes sobre las copias de seguridad se pueden enviar a los usuarios o administradores.
- Permite copias de seguridad seguras y eficientes en nuestro propio servidor a través de Internet, si el cliente no se encuentra actualmente en nuestra red local.
- Se realiza una copia de seguridad de los metadatos del archivo, como la hora de la última modificación.
- Ofrece facilidad de configuración y de acceso a la copia de seguridad de archivos.

## Pasos para instalar el servidor de UrBackup

Añade el repositorio[^repo] oficial de UrBackup:

[^repo]: Un repositorio es una lista de programas, generalmente siempre actualizada, que nos permite buscar y descargar fácilmente todo tipo de programas y herramientas en nuestra distribución. Gracias a los repositorios vamos a poder tener un lugar seguro y fiable desde el que descargar software y las últimas actualizaciones de todos nuestros programas. Estos programas se instalarán sin ningún tipo de problema de dependencias, y además podremos actualizar todo nuestro repertorio de programas con un sencillo comando.

```console
$ sudo add-apt-repository ppa:uroni/urbackup
```

Actualiza la lista de repositorios:

```console
$ sudo apt update
```

Instala el servidor de UrBackup haciendo uso del repositorio:

```console
$ sudo apt install urbackup-server
```

Inicia el servicio de UrBackup:

```console
$ service urbackupsrv start
```

Comprueba que el estado del servicio es activo y corriendo:

```console
$ service urbackupsrv status
```

Comprueba que puedes acceder a la interfaz web a través de la siguiente ruta "http://localhost:55414/".


## Pasos para instalar el cliente de UrBackup

Instala las dependencias de UrBackup:

```console
$ sudo apt install build-essential "g++" libwxgtk3.0-dev "libcrypto++-dev" libz-dev
```

Descarga código fuente del cliente de UrBackup:

```console
$ wget https://hndl.urbackup.org/Client/2.4.11/urbackup-client-2.4.11.tar.gz
```

Descomprime el .tar.gz:
```console
$ tar xzf urbackup-client-2.4.11.tar.gz
```

Instala el cliente de UrBackup a partir del código fuente:

```console
$ cd urbackup-client-2.4.11.0
$ ./configure
$ make -j4
$ sudo make install
```
Comprueba que el cliente de UrBackup ha iniciado correctamente:

```console
$ sudo urbackupclientbackend -v info
```

Ejecuta el urbackupclientbackend como un daemon, es decir, en segundo plano:

```console
$ sudo /usr/local/sbin/urbackupclientbackend -d
```

Para que urbackupclientbackend se ejecute en cada inicio deberemos incluir dicha instrucción en /etc/rc.local para ello primero créalo:

```console
$ sudo touch /etc/rc.local
```

Dale permisos de ejecución:

```console
$ sudo chmod a+x /etc/rc.local
```

Ahora copia lo siguiente en tu /etc/rc.local:

```shell
#!/bin/bash

/usr/local/sbin/urbackupclientbackend -d

exit 0
```
{: file="/etc/rc.local" }


Ejecuta la GUI (interfaz de usuario):

```console
$ urbackupclientgui
```

Haz click derecho en el icono de UrBackup y deberá aparecer de la siguiente figura y haz click en la opción "Add/remove backup paths" para configurar la ruta de la cual quieres hacer la copia de seguridad y el tiempo.

![Menú sobre el icono de UrBackup GUI](/assets/img/tutorial-instalacion-urbackup/add-remove-backup-paths.png)
_Menú sobre el icono de UrBackup GUI_

## Bibliografía

- [UrBackup, un sistema de copia de seguridad cliente / servidor](https://ubunlog.com/urbackup-sistema-de-copia-de-seguridad-cliente-servidor/)
- [Administration Manual for UrBackup Server 2.4.x](https://www.urbackup.org/administration_manual.html)
- [Install client on Debian or Ubuntu from sources](https://www.urbackup.org/client_debian_ubuntu_install.html)
- [Mantén Linux al día: la forma correcta de actualizar tus repositorios](https://www.softzone.es/linux/tutoriales/actualizar-lista-repositorios-linux/)
- [Daemon (informática) Wikipedia](https://es.wikipedia.org/wiki/Daemon_(inform%C3%A1tica))

## Notas
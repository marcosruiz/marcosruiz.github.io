---
title: Instalar Zorin OS Lite en Virtual Box
date: 2022-01-07 15:00:00 +0100
categories: [General, GNU Linux]
tags: [gnu linux, dam, smr, entornos de desarrollo, seguridad informática, servicios en red, redes locales, virtual box, zorin, ubuntu, tutorial]
img_path: /assets/img/instalar-zorin-lite-os/
---



## Objetivo

El objetivo de este documento es instalar y realizar la configuración inicial de una máquina virtual Zorin OS para la realización del resto de prácticas, de modo que todos los alumnos tengan las mismas credenciales por si es necesario cambiar de equipo.

## Actividades

A continuación se listan los pasos que se deben realizar para llevar a cabo una instalación adecuada para el uso en clase.

### Descargar Zorin OS Lite

Ir a [este enlace](https://zorin.com/os/download/) y descargar Zorin OS Lite 15.3. Como resultado debes tener un fichero ISO.

### ¿Por qué Zorin OS Lite?

Porque es un sistema operativo ligero (ya que usa XFCE) basado en Ubuntu con una interfaz similar a la de Windows 7 por lo que se hace fácil de manejar por la mayoría de usuarios.

Al estar basado en Ubuntu tanto sus programas como sus ficheros de configuración serán iguales.

### Crear máquina virtual

Para crear la máquina virtual se deben seguir los siguientes pasos:

1. Máquina > Nueva
2. Nombre: Zorin OS Lite
3. Tipo: Linux
4. Versión: Oracle (64 bits)
5. Tamaño de memoria RAM: Lo máximo que deje la barrita verde.
6. Crear disco duro virtual con un tamaño de 30 GB.
4. Instalar Zorin OS

A la hora de instalar Zorin OS debemos crearlo con un usuario llamado como vuestro email del centro (sin el "@\<nombreDeCentro\>.\<extensión\>") y con contraseña "\<nombreDeCentro\>". En mi caso, mi cuenta es "mruizg@chabacier.es" por lo tanto mi usuario será "mruizg" y mi contraseña "chabacier".

Tras la instalación se deben instalar todas las actualizaciones pendientes.

### Instalar las Guest Additions

> Para realizar este paso es necesario actualizar el sistema operativo completamente ya que pueden desinstalarse las Guest Additions al actualizar el sistema.
{:.prompt-warning}

Las Guest Additions son un conjunto de paquetes de software que permiten al SO (Sistema Operativo) ser consciente de que está en una máquina virtual lo que permite que el SO adapte su resolución a la ventana donde está.

La forma más sencilla de instalar las Guest Additions es en la ventana de la máquina de Virtual Box hacer click en Dispositivos > Insertar imagen de CD de las "Guest Additions". A continuación deberá aparecer un CD (virtual) en el escritorio. Haciendo doble click en el CD se montará y se abrirá.
Una vez abierto el directorio haremos click derecho y seleccionaremos la opción "Abrir terminal aquí". Ahora tendremos el terminal en la ruta del CD. Debemos ver el siguiente prompt:

```console
mruizg@mruizg-VirtualBox:/media/mruizg/VBox_GAs_6.1.22$
```

Deberemos escribir lo siguiente:

```console
#chmod a+x VBoxLinuxAdditions.run
#./VBoxLinuxAdditions.run
#reboot
```

Para ejecutar el script de instalación y posteriormente reiniciar a máquina virtual desde el menú de inicio. Una vez reiniciada la máquina debes redimensionar la ventana para que se adapte la resolución.

### Crear una instantánea

Una vez hemos dejado el SO funcionando correctamente es momento de crear una instantánea. Hacemos click en Máquina > Tomar instantánea... y le damos un nombre descriptivo como por ejemplo "Recién instalado con Guest Additions".

A partir de ahora, aunque rompamos la máquina virtual, siempre podremos volver a este estado.

### Clonar la máquina para tener un backup de seguridad

Para tener un backup de seguridad se puede clonar la máquina ya preparada para realizar cualquier práctica de la siguiente manera:

1. Click derecho en la máquina llamada "Zorin OS Lite".
2. Click en "Clonar...".
3. Poner el nombre a la nueva máquina virtual "Zorin OS Lite Backup".
4. Siguiente, siguiente, siguiente con todas las opciones por defecto.

### Portapapeles compartido y arrastrar y soltar

Haciendo click en Máquina > Configuración > General > Avanzado podemos cambiar estas dos opciones que facilitarán nuestro trabajo haciendo que podamos copiar y pegar entre la máquina virtual y la máquina host (huésped).

- Compartir portapapeles: Bidireccional
- Arrastrar y soltar: Bidireccional

Tanto el compartir portapapeles como el arrastrar y soltar solo funciona si la máquina host y la máquina virtual guest son GNU Linux. En caso de no tener disponible el estás dos opciones se recomienda tener una carpeta compartida entre la máquina host y la máquina virtual.

### Crear carpeta compartida

Para crear y montar una carpeta compartida tendrás que ir a la máquina instalada, Configuración, Carpetas compartidas y añadir la carpeta como se ve en las siguientes figuras.

![Editar carpetas compartidas de la configuración de Virtual Box](editarCarpetaCompartida.png)
_Editar carpetas compartidas de la configuración de Virtual Box_

![Carpetas compartidas de la configuración de Virtual Box](carpetasCompartidas.png)
_Carpetas compartidas de la configuración de Virtual Box_

Añadimos permisos a nuestro usuario:

```console
$sudo adduser <nombre de usuario> vboxsf
```

Y reiniciamos:

```console
$sudo reboot
```

Con esto ya deberiamos ver la carpeta compartida en la máquina virtual:

![Directorio workspace montado en la máquina virtual](carpetasCompartidas.png)
_Directorio workspace montado en la máquina virtual_

Si tienes algún problema con la carpeta compartida puedes instalar las guest additions de este modo:

```console
$sudo add-apt-repository multiverse
$sudo apt update
$sudo apt install virtualbox-guest-utils virtualbox-guest-x11
$sudo reboot
```

Una vez reiniciamos, comprobamos que las guest additions están instaladas en nuestro sistema:

```console
$lsmod  | grep vbox
vboxvideo              36864  0
drm_ttm_helper         16384  1 vboxvideo
vboxsf                 77824  0
vboxguest             401408  7 vboxsf
ttm                    86016  3 vmwgfx,vboxvideo,drm_ttm_helper
drm_kms_helper        307200  2 vmwgfx,vboxvideo
drm                   606208  8 vmwgfx,drm_kms_helper,vboxvideo,drm_ttm_helper,ttm
```

### Mejora de rendimiento

Para mejorar el rendimiento de la máquina virtual se pueden hacer los siguientes cambios en la configuración de la máquina virtual cuando esta está apagada:

1. Configuración > Sistema > Procesador > Poner al menos 3 CPUs para la máquina.
2. Configuración > Pantalla > Memoria de vídeo > Poner a 128 MB.
 
## Errores habituales

Si ocurre algún error durante la instalación, antes de preguntar al profesor asegúrate de haber comprobado estos errores comunes:

- Si tras instalar el SO aparece el error "Failed to load ldlinux.c32" es probable que hayas indicado una versión diferente a "Oracle 64-bit".
- Si al insertar el Live CD virtual aparece el error "Failed to load ldlinux.c32" es probable que la imagen que te has descargado está corrupta.
- Si no deja iniciar la máquina virtual desde un comienzoy aparece el siguiente error:

```plaintext
Not in a hypervisor partition (HVP=0)
(VERR_NEM_NOT_AVAILABLE).

AMD-V is disabled in the BIOS (or by the host OS)
(VERR_SVM_DISABLED).
```

Deberás reiniciar el ordenador, entrar en la BIOS y activar la tecnología de virtualización o VT-x.

- Si deja da el error NS_ERROR_FAILURE (0x80004005) ejecutar los siguientes comandos como root:

```console
# dpkg -l | grep virtualbox-dkms
# apt-get purge virtualbox-dkms && sudo apt-get install dkms
# sudo /sbin/vboxconfig
```

- Si tras actualizar el sistema operativo aparece el mensaje de error "RTR3InitEx failed with rc=-1912 (rc=-1912)" realizamos los siguientes pasos para solucionarlo:

```console
$ su profesor
$ sudo apt-get purge virtualbox-dkms && sudo apt-get install dkms
$ sudo /sbin/vboxconfig
```

- Si tras actualizar aparece un mensaje de error al iniciar sobre el kernel iniciamos con una versión del kernel más vieja y seguimos los pasos de [este enlace](https://forum.zorin.com/t/how-to-set-an-older-kernel-to-default-boot/10600).
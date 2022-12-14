---
title: "Tutorial: Instalar Ubuntu Server 22.04"
date: 2022-12-01 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, tutorial]
img_path: /assets/img/tutorial-ubuntu-server-22-04/
---

## Introducción

En este artículo se explica como crear e instalar una máquina virtual con Ubuntu Server 22.04.

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

Seleccionamos el lenguaje Español:

![imgDescription](01.png)

Actualizamos al instalador nuevo:

![imgDescription](02.png)

Esperamos a que se descargue la actualización:

![imgDescription](03.png)

Elegimos nuestra distribución de teclado:

![imgDescription](04.png)

Marcamos Ubuntu Server y que busque drivers de terceros:

![imgDescription](05.png)

Dejamos las interfaces a como vienen por defecto:

![imgDescription](06.png)

Dejamos el proxy address a como viene por defecto:

![imgDescription](07.png)

Dejamos el mirror address a como viene por defecto:

![imgDescription](08.png)

Dejamos la configuración del disco a como viene por defecto:

![imgDescription](09.png)

Hacemos click en "Done":

![imgDescription](10.png)

Confirmamos:

![imgDescription](11.png)

Añadimos vuestro nombre real, el nombre del servidor y el nombre del usuario de manera que el profesor os pueda identificar unequívocamente:

![imgDescription](12.png)

Marcamos para instalar el servidor OpenSSH, para que en el futuro podamos conectarnos desde nuestro host:

![imgDescription](13.png)

Hacemos click en "Continue":

![imgDescription](14.png)

Dejamos los snaps a como vienen por defecto:

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
$sudo ip a 
```

```console
$sudo nano /etc/netplan/00-installer-config.yaml
```

Tras esto deberíamos ser capaces de conectarnos usando el servicio SSH desde el host.

![Conexión SSH desde Windows a una máquina virtual](conexionSshEstablecida.png)
_Conexión SSH desde Windows a una máquina virtual_

---
title: "Teoría: Enlaces simbólicos, enlaces duros e inodos"
date: 2022-01-17 19:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [gnu linux, comandos, terminal, bash, seguridad informática, smr, sistema de ficheros]
---

## ¿Qué es un inodo?

Un inodo es una estructura de datos que almacena información sobre un fichero de nuestro sistema de archivos.

Un inodo no tiene nombre y se identifica mediante un número entero único. Cada inodo únicamente puede contener datos de un solo fichero del sistema de archivos. Por lo tanto, si tenemos 4 archivos y 4 directorios estaremos usando 8 inodos.

Windows no trabaja con inodos porque sus sistemas de archivos son Ntfs y HFS+. Solo trabajan con inodos sistemas operativos como por ejemplo UNIX, FreeBSD, GNU-Linux y otros sistemas operativos basados en Unix.

### ¿Qué tipo de información almacenan los inodos de los archivos y directorios?

Un inodo contiene la totalidad de metadatos de un fichero de nuestro sistema de archivos.

Los metadatos almacenados en un inodo son los siguientes:

- Número de inodo. El número de inodo es un número entero único que sirve para identificar un inodo.
- Tamaño del fichero así como el número de bloques que ocupa el fichero en el disco duro.
- El dispositivo de almacenamiento en que está almacenado el fichero. (Device ID)
- Número de enlaces. Por lo tanto si hay 2 archivos que apuntan a un mismo inodo tendremos 2 enlaces. Si tenemos un directorio que contiene 15 archivos tendremos 15 enlaces.
- l identificador de usuario (UID o User ID). Por lo tanto, los inodos especifican el propietario de un fichero.
- El identificador de grupo (GID o Group ID). De este modo, un inodo contiene el grupo a que pertenece un fichero.
- Marcas de tiempo como por ejemplo la fecha en que se ha creado el archivo, la fecha del último acceso, etc.
- Tabla de direccionamiento donde se detallan los bloques del disco duro en que está almacenado el fichero.

Mediante el comando `stat` podemos consultar la información que un inodo guarda sobre un fichero. Si ejecutamos el comando `stat` seguido del nombre de un archivo, directorio o enlace obtendremos el siguiente resultado:

```console
$ stat archivo_1
Fichero: archivo_1
Tamaño: 7872     Bloques: 16     Bloque E/S: 4096        fichero regular
Dispositivo: 805h/2053d      Nodo-i: 1326361      Enlaces: 1
Acceso: (0644/-rw-r–r–)     Uid: ( 1000/ joan)     Gid: ( 1000/ joan)
Acceso: 2018-02-04 21:04:11.902405984 +0100
Modificación: 2016-12-25 11:24:27.051411224 +0100
Cambio: 2016-12-25 11:25:06.898576813 +0100
Creación: –
```

Como pueden ver, la salida del comando contiene la información que almacena el inodo 1326361 sobre el archivo archivo_1.

La principal función de la información almacenada en el inodo es que podamos acceder a la información almacenada en nuestro disco duro.

## Bibliografía

- [Qué son y que utilidades tienen los inodos y dentries de un sistema de archivos](https://geekland.eu/inodos-dentires-sistema-archivos/)
---
title: Comandos básicos de GNU Linux
date: 2021-01-04 16:30:00 +/-TTTT
categories: [gnu linux, general]
tags: [gnu linux, terminal]     # TAG names should always be lowercase
---

# Introducción

En este articulo se van a explicar los siguientes comandos básicos de GNU Linux:

- pwd
- ls
- clear
- cd
- mkdir
- touch
- cat
- echo
- rm
- rmdir
- cp
- mv
- chmod
- sudo
- exit

# Pompt

Cuando abrimos por primera vez la terminal de GNU Linxu nos aparecerá algo parecido a esto:

```console
smr@smr-VirtualBox:~$
```

A continuación explicaré que significa cada parte:

- `smr`: Es tu nombre de usuario en el equipo.
- `@`: Un símbolo separador que se suele utilizar para indicar que lo que viene tras el nombre de usuario es un equipo.
`smr-VirtualBox`: Se trata del nombre que tiene tu equipo, en este caso `smr-VirtualBox`.
- `~`: Se trata del directorio del usuario actual, en este caso representa `/home/smr`.
- `$`: Un indicador para informar de que la línea de comandos está lista para aceptar nuevos comandos sin permisos de superusuario.
- `#`: Un indicador para informar de que la línea de comandos está lista para aceptar nuevos comandos con permisos de superusuario.

# Comandos

Los comandos en GNU Linux son case sensitive, es decir, se diferencia entre mayúsculas y minúsculas. TODOS los comandos se escriben en minúsculas. Para acceder a la documentación de un comando se puede ejecutar la instrucción `man <nombreDelComando>` o `<nombreDelComando> -h` o `<nombreDelComando> --help`.

## pwd

Pwd (Print Working Directory) es un comando que sirve para saber en qué directorio estás. Su sintaxis es la siguiente : `pwd`. A continuación, se muestra un ejemplo de uso:

```console
$ pwd
/home/smr/
```

## ls

Ls (LiSt) es un comando que sirve para ver los directorios y archivos del directorio actual. Su sintaxis es la siguiente : `ls <directorioAListar>`. A continuación, se muestra un ejemplo de uso:

```console
$ ls
```

## clear

Clear es un comando que sirve para dejar vacio el terminal actual. Su sintaxis es la siguiente : `clear`.

## cd

Cd (Change Directory) es un comando que sirve para moverte por los directorios del sistema. Su sintaxis es la siguiente : `cd <directorioAMoverse>`.

Existen dos tipos de rutas:

- Absolutas: Las rutas absolutas indican toda la ruta de un fichero o directorio incluyendo el directorio raíz (/).
- Relativas: Las rutas relativas indican la ruta a partir de donde se este en ese momento situado. Para ello se usan una serie de carácteres comodín.
  - `.` simboliza el directorio actual.
  - `..` simbiliza el directorio padre.
  - `~` simboliza el directorio del usuario actual. Por ejemplo, "/home/smr" en el caso de que seamos el usuario "smr".

 A continuación se muestran varios ejemplos de uso:

```console
$ cd /
$ cd ./patata/
$ cd ../patata/
$ cd ~/patata/
```

## mkdir

Mkdir (MaKe DIRectory) es un comando que sirve para crear un nuevo directorio. Su sintaxis es la siguiente : `mkdir <directorioACrear>`.

## touch

Touch (MaKe DIRectory) es un comando que sirve para crear un nuevo fichero. Su sintaxis es la siguiente : `touch <ficheroACrear>`.

## cat

Cat (conCATenate) es un comando que sirve para ver el contenido de un archivo. Su sintaxis es la siguiente : `cat <ficheroAVer>`.


## echo

Echo es un comando que sirve para imprimir/mostrar por pantalla/terminal. Su sintaxis es la siguiente: `echo <textoAImprimir>`.


## rm

Rm (ReMove) es un comando que sirve para eliminar directorios vacios o ficheros. Su sintaxis es la siguiente: `rm <ficheroAEliminar>`.

Atributos opcionales:
- -R (Recursive): Indica que la copia se hace de manera recursiva, es decir, se copiará el directorio y todo lo que haya en su interior.

## rmdir

Rmdir (ReMove DIRectory) es un comando que sirve para elimina ficheros. Su sintaxis es la siguiente: `rmdir <directorioAEliminar>`.

## cp

Cp (CoPy) es un comando que sirve para copiar archivos. Su sintaxis es la siguiente: `cp <ficheroOrigen> <ficheroDestino>`.

## mv

Mv (MoVe) es un comando que sirve para mover archivos y directorios. Su sintaxis es la siguiente: `mv <ficheroOrigen> <ficheroDestino>`.

## chmod

Chmod (CHange MODe) es un comando que sirve para cambiar permisos de archivos y directorios. Su sintaxis es la siguiente: `chmod <modo> <ficheroACambiarPermisos>`.

## sudo

Sudo (Super User DO) es un comando que sirve para ejecutar un comando como administrador. Su sintaxis es la siguiente: `sudo <comando>`.

## exit

Exit es un comando que sirve para cerrar sesión . Su sintaxis es la siguiente: `exit`.

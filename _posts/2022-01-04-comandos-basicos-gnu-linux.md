---
title: Comandos básicos de GNU Linux
date: 2022-01-04 16:30:00 +/-TTTT
categories: [gnu linux]
tags: [gnu linux, terminal, dam, smr, servicios en red, seguridad informática, entornos de desarrollo, redes locales]     # TAG names should always be lowercase
---

# Introducción

En este articulo se van a explicar una serie de comandos básicos de GNU Linux que se consideran imprescindibles a la hora de trabajar con el terminal.

# Pompt

Cuando abrimos por primera vez la terminal de GNU Linux nos aparecerá algo parecido a esto:

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

Los comandos en GNU Linux son case sensitive, es decir, se diferencia entre mayúsculas y minúsculas. TODOS los comandos se escriben en minúsculas. Para acceder a la documentación de un comando se puede ejecutar la instrucción `man <nombreDelComando>` o `<nombreDelComando> -h` o `<nombreDelComando> --help`. A continuación se muestran varios ejemplos de uso:

```console
$ man chmod
$ chmod -h
$ chmod --help
```

## pwd

Pwd (Print Working Directory) es un comando que sirve para saber en qué directorio estás. Su sintaxis es la siguiente : `pwd`. A continuación, se muestra un ejemplo de uso:

```console
$ pwd
/home/smr/
```

## ls

Ls (LiSt) es un comando que sirve para ver los directorios y archivos del directorio actual. Su sintaxis es la siguiente : `ls <directorioAListar>`. A continuación, se muestra un ejemplo de uso:

Atributos opcionales:
- `-l` muestra todos los detalles de los ficheros incluido los permisos.

A continuación se muestran varios ejemplos:

```console
$ ls
Descargas  Documentos  Escritorio  Imágenes  Música  Público  snap  Templates  Vídeos
```

```console
$ ls -l
total 36
drwxr-xr-x 2 smr smr 4096 dic 21 10:32 Descargas
drwxr-xr-x 2 smr smr 4096 ene  5 13:01 Documentos
drwxr-xr-x 2 smr smr 4096 dic 21 10:35 Escritorio
drwxr-xr-x 2 smr smr 4096 sep 20 10:06 Imágenes
drwxr-xr-x 2 smr smr 4096 sep 20 10:06 Música
drwxr-xr-x 2 smr smr 4096 sep 20 10:06 Público
drwx------ 4 smr smr 4096 dic  1 21:11 snap
drwxr-xr-x 2 smr smr 4096 dic 21 10:35 Templates
drwxr-xr-x 2 smr smr 4096 sep 20 10:06 Vídeos
```

## clear

Clear es un comando que sirve para dejar vacío el terminal actual. Su sintaxis es la siguiente : `clear`.

## cd

Cd (Change Directory) es un comando que sirve para moverte por los directorios del sistema. Su sintaxis es la siguiente : `cd <directorioAMoverse>`.

Existen dos tipos de rutas:

- Absolutas: Las rutas absolutas indican toda la ruta de un fichero o directorio incluyendo el directorio raíz (/).
- Relativas: Las rutas relativas indican la ruta a partir de donde se este en ese momento situado. Para ello se usan una serie de caracteres comodín.
  - `.` simboliza el directorio actual.
  - `..` simboliza el directorio padre.
  - `~` simboliza el directorio del usuario actual. Por ejemplo, "/home/smr" en el caso de que seamos el usuario "smr".

 A continuación se muestran varios ejemplos de uso:

```console
$ cd /
$ cd ./patata/
$ cd ../patata/
$ cd ~/patata/
```

## mkdir

Mkdir (MaKe DIRectory) es un comando que sirve para crear un nuevo directorio. Su sintaxis es la siguiente : `mkdir <directorioACrear>`. A continuación, se muestra un ejemplo de uso:

```console
$ mkdir patata
```

## touch

Touch (MaKe DIRectory) es un comando que sirve para crear un nuevo fichero. Su sintaxis es la siguiente : `touch <ficheroACrear>`. A continuación, se muestra un ejemplo de uso:

```console
$ mkdir patata.txt
```

## cat

Cat (conCATenate) es un comando que sirve para ver el contenido de un archivo. Su sintaxis es la siguiente : `cat <ficheroAVer>`. A continuación, se muestra un ejemplo de uso:

```console
$ cat patata.txt
Esto es el contenido del fichero patata.txt
```

## echo

Echo es un comando que sirve para imprimir/mostrar por pantalla/terminal. Su sintaxis es la siguiente: `echo <textoAImprimir>`. A continuación, se muestra un ejemplo de uso:

```console
$ echo "Hola mundo!"
Hola mundo!
```

## rm

Rm (ReMove) es un comando que sirve para eliminar directorios vacios o ficheros. Su sintaxis es la siguiente: `rm <ficheroAEliminar>`.

Atributos opcionales:
- `-R` (Recursive): Indica que la copia se hace de manera recursiva, es decir, se borrará el directorio y todo lo que haya en su interior.

A continuación, se muestra un ejemplo de uso:

```console
$ rm patata.txt
$ rm -R patata
```

## rmdir

Rmdir (ReMove DIRectory) es un comando que sirve para elimina ficheros, pero solo ficheros vacíos. Su sintaxis es la siguiente: `rmdir <directorioAEliminar>`. A continuación, se muestra un ejemplo de uso:

```console
$ rmdir patata
```

## cp

Cp (CoPy) es un comando que sirve para copiar archivos. Su sintaxis es la siguiente: `cp <ficheroOrigen> <ficheroDestino>`.

Atributos opcionales:
- `-R` (Recursive): Indica que la copia se hace de manera recursiva, es decir, se copiará el directorio y todo lo que haya en su interior.

A continuación, se muestra un ejemplo de uso:

```console
$ rm patata.txt
$ rm -R patata
```

## mv

Mv (MoVe) es un comando que sirve para mover archivos y directorios. Su sintaxis es la siguiente: `mv <ficheroOrigen> <ficheroDestino>`.

Atributos opcionales:

- `-R` (Recursive): Indica que la copia se hace de manera recursiva, es decir, se copiará el directorio y todo lo que haya en su interior.

A continuación se muestra un ejemplo de uso donde se elimina el fichero patata.txt:

```console
$ rm patata.txt
```

A continuación se muestra otro ejemplo donde se elimina el directorio patata y tod lo que haya en su interior.

```console
$ rm -R patata
```

## chmod

Nota: en el artículo [Permisos GNU Linux](https://marcosruiz.github.io/post/permisos-gnu-linux) se explica de manera detallada.

Chmod (CHange MODe) es un comando que sirve para cambiar permisos (lectura, escritura y ejecución) de archivos y directorios. Su sintaxis es la siguiente: `chmod <opciones> <permisos> <ficheroACambiarPermisos>`.

Existen distintos tipos de usuarios:

- u: usuario dueño del fichero
- g: grupo de usuarios del dueño del fichero
- o: todos los otros usuarios
- a: todos los tipos de usuario (dueño, grupo y otros) 

También hay que saber que existen tres tipos de permiso:

- r (read): se refiere a los permisos de lectura
- w (write): se refiere a los permisos de escritura
- x (execute): se refiere a los permisos de ejecución

### Modo octal

A continuación se muestran varios ejemplos de uso de la notación octal:

- `chmod 777 patata.txt` añade todos los permisos al fichero patata.txt.
- `chmod 000 patata.txt` quita todos los permisos al fichero patata.txt.
- `chmod 755 patata.txt` añade todos los permisos al dueño del fichero patata.txt y permisos de lectura y ejecución para el grupo y para el resto de usuarios. 


### Modo notación simbólica

A continuación se muestran varios ejemplos de uso de la notación simbólica:

- `chmod u+x patata.txt` añade permisos de ejecución al usuario propietario del fichero patata.txt.
- `chmod a=rwx patata.txt` pone los permisos de lectura escritura y ejecución a todos los usuarios sobre el fichero patata.txt.

## sudo

Sudo (Super User DO) es un comando que sirve para ejecutar un comando como administrador. Su sintaxis es la siguiente: `sudo <comando>`. A continuación se muestra un ejemplo de uso donde se instala el programa neofetch:

```console
$ sudo apt install neofetch
$ neofetch
        `osssssssssssssssssssso`           smr@smr-VirtualBox 
       .osssssssssssssssssssssso.          ------------------ 
      .+oooooooooooooooooooooooo+.         OS: Zorin OS 15.3 x86_64 
                                           Host: VirtualBox 1.2 
                                           Kernel: 5.4.0-91-generic 
  `::::::::::::::::::::::.         .:`     Uptime: 5 hours, 20 mins 
 `+ssssssssssssssssss+:.`     `.:+ssso`    Packages: 2021 
.ossssssssssssssso/.       `-+ossssssso.   Shell: bash 4.4.20 
ssssssssssssso/-`      `-/osssssssssssss   Resolution: 1920x902 
.ossssssso/-`      .-/ossssssssssssssso.   DE: Xfce 
 `+sss+:.      `.:+ssssssssssssssssss+`    WM: Xfwm4 
  `:.         .::::::::::::::::::::::`     WM Theme: ZorinBlue-Light 
                                           Theme: ZorinBlue-Light [GTK2/3] 
                                           Icons: ZorinGrey-Light [GTK2], ZorinBlue-Light [GTK3] 
      .+oooooooooooooooooooooooo+.         Terminal: xfce4-terminal 
       -osssssssssssssssssssssso-          Terminal Font: Monospace 12 
        `osssssssssssssssssssso`           CPU: Intel i7-1065G7 (4) @ 1.497GHz 
                                           GPU: VMware SVGA II Adapter 
                                           Memory: 1372MiB / 7961MiB 
```

## exit

Exit es un comando que sirve para cerrar sesión. Su sintaxis es la siguiente: `exit`.

## history

History es un comando que sirve para mostrar el histórico de comandos que se han realizado. Su sintaxis es la siguiente: `history`.

## tail

Tail es un comando que sirve para mostrar el final de un fichero. Su sintaxis es la siguiente: `tail -<numeroDeLíneas>`. A continuación se muestra un ejemplo de uso donde se muestran las 5 ultimas lineas de el_quijote.txt:

```console
$ tail -5 el_quijote.txt
Reposa aquí Dulcinea;
y, aunque de carnes rolliza, la volvió en polvo y ceniza la muerte espantable y fea. Fue de castiza ralea,
y tuvo asomos de dama; del gran Quijote fue llama, y fue gloria de su aldea.
Estos fueron los versos que se pudieron leer; los demás, por estar carcomida la letra, se entregaron a un académico para que por conjeturas los declarase. Tiénese noticia que lo ha hecho, a costa de muchas vigilias y mucho trabajo, y que tiene intención de sacallos a luz, con esperanza de la tercera salida de don Quijote.
Forse altri canterà con miglior plettro. FINIS
```

## head

Head es un comando que sirve para mostrar el principio de un fichero. Su sintaxis es la siguiente: `head -<numeroDeLíneas>`. A continuación se muestra un ejemplo de uso donde se muestran las 5 primeras lineas de el_quijote.txt:

```console
$ head -5 el_quijote.txt
DON QUIJOTE DE LA MANCHA
Miguel de Cervantes Saavedra

PRIMERA PARTE
CAPÍTULO 1: Que trata de la condición y ejercicio del famoso hidalgo D. Quijote de la Mancha
```

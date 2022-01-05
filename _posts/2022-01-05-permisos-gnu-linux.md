---
title: Permisos en GNU Linux
date: 2022-01-05 13:20:00 +/-TTTT
categories: [gnu linux]
tags: [gnu linux, comandos, terminal, bash, dam, smr, entornos de desarrollo, seguridad informática, servicios en red]     # TAG names should always be lowercase
---

## Vídeo introductorio

A modo de introducción a los permisos de GNU Linux se recomienda ver el siguiente vídeo:

<iframe width="100%" height="315" src="https://www.youtube.com/embed/cETtDZQWLYg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Tipos de usuario

Debemos saber que existen distintos grupos de usuarios:

- **Usuario** (u): Propietario o dueño del fichero, se representa con la letra U, es quien crea el fichero o directorio.
- **Grupo** (g): Grupo propietario del fichero, se representa con la letra G, generalmente cada usuario pertenece al menos a un grupo de trabajo.
- **Otros o Resto de usuarios** (o): se representa con la letra O, aquí se agrupan al resto de usuarios o grupos con el cual el propietario no tiene ningún vínculo, es decir el resto de usuarios del sistema.
- **Todos** (a): Todos los tipos de usuario (dueño, grupo y otros).

## Tipos de permisos

En cada uno de los niveles de permisos se pueden asignar los siguientes permisos:
- **Lectura** (r): En ficheros Puede listar, copiar o visualizarlo. En Directorios pueden ver el contenido, se pueden listar a través del comando ls
- **Escritura** (w): En ficheros significa que se puede modificar o borrar el contenido, incluso puede modificar los permisos. En Directorios significa que puede crear, eliminar ficheros y directorios dentro de ese directorio.
- **Ejecución** (x): En ficheros significa que se puede ejecutar el contenido. En Directorios significa que podemos entrar en la carpeta (comando cd).

## ¿Cómo ver los permisos de un fichero?

Con el comando `ls -l` se lista el contenido de un directorio y el argumento -l hace que se muestren los permisos de cada uno de los ficheros o directorios. A continuación vemos un ejemplo:

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

Tal como se puede observar los permisos listados se representan en grupos de tres (rwx para el dueño, rwx para el grupo y rwx para el resto de usuarios) como se puede ver indicado en la siguiente imagen:

![Gestión de permisos en GNU Linux](/assets/img/2022-01-05-permisos-gnu-linux/gestion-de-permisos-linux.png)
_Gestión de permisos en GNU Linux_

El primer carácter es el tipo de fichero.

- **–**: fichero
- **d**: directorio
- **l**: enlace simbólico.
- **c**: dispositivo de caracteres.
- **b**: dispositivo de bloques.
- **p**: tubería.
- **s**: socket.

Los siguientes nueves caracteres conforman el tipo de permiso que están atribuido, se representan en el siguiente orden lectura(r), escritura (w), ejecución(x). Cuando se encuentra el carácter – indica que no tiene el permiso correspondiente al lugar.

## ¿Cómo se modifican los permisos?

Con el comando `chmod` podemos cambiar los permisos de un fichero o un directorio. La sintaxis de este comando es `chmod <modificadores> <permisos> <nombreDelFichero>`. Los modificadores más importantes son:

- `-R`: modifica los permisos recursivamente.
- `-v`: muestra cada fichero o directorio que se está modificando.

Este comando se puede utilizar de dos maneras en octal o en notación simbólica, la diferencia entre ambos radica en que la notación octal se debe especificar todos los permisos de los tres niveles mientras que en la simbólica se puede modificar solo los necesarios.

### Modo octal

Este método agrupa la combinación de bits apagados o encendidos (0 1) en cada uno de los grupos generando ocho posibles combinaciones por cada uno de ellos.
Para obtener el permiso de un fichero o directorio se deben combinar los permisos de usuario, grupo y otros del cual se obtiene un número de tres cifras.
A continuación se muestra una tabla con todas las combinaciones de permisos:

| Permiso   | Valor binario | Valor octal | Tipo de permiso                |
|-----------|---------------|-------------|--------------------------------|
|   - - -   |      000      |      0      | Sin permiso                    |
|   - - x   |      001      |      1      | Ejecución                      |
|   - w -   |      010      |      2      | Escritura                      |
|   - w x   |      011      |      3      | Escritura y ejecución          |
|   r - -   |      100      |      4      | lectura                        |
|   r - x   |      101      |      5      | Lectura y ejecución            |
|   r w -   |      110      |      6      | Lectura y escritura            |
|   r w x   |      111      |      7      | Lectura, escritura y ejecución |

Otra forma de verlo es pensar es que hay un número para cada permiso:

- 4 significa leer.
- 2 significa escribir.
- 1 significa ejecutar.
- 0 significa sin permiso.

Y la suma de cada uno de ellos da la combinación de los mismos, por ejemplo, si queremos tener permisos de lectura y escritura habría que sumar 4 + 2 = 6.

A continuación se muestran una seria de ejemplos:

- `chmod 756 fichero.txt`: Propietario (u) tiene acceso total. Grupo (g) Permite lectura y ejecución. Otros(o) permite lectura y escritura.
- `chmod 342 fichero.txt`: Propietario (u) permite escritura y ejecución. Grupo (g) Permite lectura. Otros(o) permite escritura.

### Modo notación simbólica

En este modo solo se especifica a quien se otorga el permiso, usuario(u), grupo(g), otros(o) o todos(a), el operador más (+) agregar, menos (-) quitar, igual (=) específica un modo y los permisos otorgados., en esta notación se utiliza la asignación a (todos) la cual asigna a todos los nivel el permiso.

A continuación se muestran una serie de ejemplos:

El comando `chmod u+rwx,g+rx,g-x,o-w fichero.txt` hace lo siguiente:

- El usuario obtiene permisos lectura, escritura y ejecución
- El grupo obtiene permisos de lectura, escritura y pierde los de ejecución
- Otros pierde permisos de escritura (el resto se quedan como están)


El comando `chmod g-rw,o+x fichero.txt` hace lo siguiente:

- El usuario mantiene los permisos que tiene originalmente
- El grupo pierde el permisos de lectura y escritura
- Otros obtiene el permiso de ejecución

El comando `chmod a-w fichero.txt` hace lo siguiente:

- El usuario, el grupo y otros pierden el permiso de escritura y mantiene los demás sin modificar.

El comando `chmod a=rwx fichero.txt` hace lo siguiente:

- Asigna todos los permisos a todos los usuarios

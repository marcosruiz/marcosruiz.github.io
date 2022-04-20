---
title: Permisos en GNU Linux
date: 2022-01-05 13:20:00 +0100
categories: [General, GNU Linux]
tags: [gnu linux, comandos, terminal, bash, dam, smr, entornos de desarrollo, seguridad informática, servicios en red]
---

## Vídeo introductorio

A modo de introducción a los permisos de GNU Linux se recomienda ver el siguiente vídeo:

<iframe src="https://www.youtube.com/embed/cETtDZQWLYg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Tipos de usuario

Debemos saber que existen distintos grupos de usuarios:

- **Usuario** (se representa con una `u` de User): Propietario o dueño del fichero, es quien crea el fichero o directorio.
- **Grupo** (se representa con una `g` de Group): Grupo propietario del fichero, generalmente cada usuario pertenece al menos a un grupo de trabajo.
- **Otros o Resto de usuarios** (`o` de Others): Aquí se agrupan al resto de usuarios o grupos con el cual el propietario no tiene ningún vínculo, es decir el resto de usuarios del sistema.
- **Todos** (se representa con una `a` de All): Todos los tipos de usuario (dueño, grupo y otros) al mismo tiempo.

## Tipos de permisos sobre ficheros y directorios

En cada uno de los niveles de permisos se pueden asignar los siguientes permisos:

- **Lectura** (se representa con una `r` de Read): En ficheros significa que se puede visualizar o copiar. En directorios pueden ver el contenido, se pueden listar a través del comando ls.
- **Escritura** (se representa con una `w` de Write): En ficheros significa que se puede modificar o borrar el contenido, incluso puede modificar los permisos. En directorios significa que puede crear, eliminar ficheros y directorios dentro de ese directorio.
- **Ejecución** (se representa con una `x` de eXecute): En ficheros significa que se puede ejecutar el contenido. En directorios significa que podemos entrar en la carpeta (comando cd).

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

```
      ⬆    ⬆  ⬆   ⬆    ⬆       ⬆          ⬆

    col1   2  3   4  col5     col6       col7
```

Cada columna está separada por un espacio y nos da cierta información que puede resultarnos útil:

1. Tipo de fichero y sus permisos.
1. Número de enlaces al archivo.
1. Propietario del archivo.
1. Grupo al que pertenece el archivo.
1. Tamaño en bytes.
1. Fecha y hora de la última modificación.
1. Nombre del fichero o directorio.

#### Tipo de fichero y sus permisos

Centrandonos en la primera columna podemos ver que el primer carácter indica el tipo de fichero.
A continuación se listan todas las opciones:

- **–**: fichero.
- **d**: directorio.
- **l**: enlace simbólico.
- **c**: dispositivo de caracteres.
- **b**: dispositivo de bloques.
- **p**: tubería.
- **s**: socket.

Los siguientes nueves caracteres conforman el tipo de permiso que están atribuido, se representan en el siguiente orden lectura(`r`), escritura (`w`), ejecución (`x`) de el dueño (`u`), el grupo (`g`) y el resto de usuarios (`o`) respectivamente. Cuando se encuentra el carácter `–` indica que no tiene el permiso correspondiente al lugar.

![Gestión de permisos en GNU Linux](/assets/img/permisos-gnu-linux/gestion-de-permisos-linux.png)
_Distribución de los permisos de un fichero_

## ¿Cómo se modifican los permisos?

Con el comando `chmod` podemos cambiar los permisos de un fichero o un directorio. 
La sintaxis de este comando es `chmod <modificadores> <permisos> <nombreDelFichero>`. 
Los modificadores más importantes son:

- `-R`: modifica los permisos recursivamente.
- `-v`: muestra cada fichero o directorio que se está modificando.

Este comando se puede utilizar de dos maneras en octal o en notación simbólica, la diferencia entre ambos radica en que la notación octal se debe especificar todos los permisos de los tres niveles mientras que en la simbólica se puede modificar solo los necesarios.

### Modo octal

Este método agrupa la combinación de bits apagados o encendidos (0 1) en cada uno de los grupos generando ocho posibles combinaciones por cada uno de ellos.
Para obtener el permiso de un fichero o directorio se deben combinar los permisos de usuario, grupo y otros del cual se obtiene un número de tres cifras (cada cifra tine un rango de 0 a 7).
A continuación se muestra una tabla con todas las combinaciones de permisos:

|  Permiso  | Valor binario | Valor octal | Tipo de permiso                |
|-----------|---------------|-------------|--------------------------------|
|   - - -   |      000      |      0      | Sin permiso                    |
|   - - x   |      001      |      1      | Ejecución                      |
|   - w -   |      010      |      2      | Escritura                      |
|   - w x   |      011      |      3      | Escritura y ejecución          |
|   r - -   |      100      |      4      | lectura                        |
|   r - x   |      101      |      5      | Lectura y ejecución            |
|   r w -   |      110      |      6      | Lectura y escritura            |
|   r w x   |      111      |      7      | Lectura, escritura y ejecución |

Otra forma de verlo es pensar que hay un número para cada permiso:

- 4 significa leer.
- 2 significa escribir.
- 1 significa ejecutar.
- 0 significa sin permiso.

La suma de cada uno de ellos da la combinación de los mismos, por ejemplo, si queremos tener permisos de lectura y escritura habría que sumar 4 + 2 = 6.

A continuación se muestran una seria de ejemplos:

- `chmod 756 fichero.txt`: Propietario (u) tiene acceso total. Grupo (g) Permite lectura y ejecución. Otros(o) permite lectura y escritura.
- `chmod 342 fichero.txt`: Propietario (u) permite escritura y ejecución. Grupo (g) Permite lectura. Otros(o) permite escritura.

### Modo notación simbólica

En este modo solo se especifica a quien se otorga el permiso, usuario(u), grupo(g), otros(o) o todos(a), el operador más (+) agregar, menos (-) quitar, igual (=) específica un modo y los permisos otorgados.

A continuación se muestran una serie de ejemplos:

El comando `chmod u+rwx,g+rx,g-w,o-w fichero.txt` hace lo siguiente:

- El usuario gana permisos lectura, escritura y ejecución.
- El grupo gana permisos de lectura, escritura y pierde los de ejecución.
- El resto de usuarios pierden permisos de escritura.
- El resto de permisos se quedan como están.

El comando `chmod g-rw,o+x fichero.txt` hace lo siguiente:

- El usuario mantiene los permisos que tiene originalmente.
- El grupo pierde el permisos de lectura y escritura.
- El resto de usuarios ganan el permiso de ejecución.

El comando `chmod a-w fichero.txt` hace lo siguiente:

- Todos (usuario, el grupo y otros) pierden el permiso de escritura y mantiene los demás sin modificar.

El comando `chmod a=rwx fichero.txt` hace lo siguiente:

- Asigna todos los permisos a todos los usuarios (usuario, el grupo y otros).

## ¿Qué es el umask?

Umask (User MASK) es una máscara que sirve para determinar los permisos por defecto de los nuevos ficheros y directorios creados.

Los valores por defecto son los siguientes:

- En el caso de ficheros: 666 (rw-rw-rw-)
- En el caso de directorios: 777 (rwxrwxrwx)

La máscara de usuario se aplica a estos permisos sustrayendo algunos. Por ejemplo a partir de un umask de 022 obtendriamos los siguientes permisos:

- Para ficheros: 666 - 022 = 644 (rw-r--r--)
- Para directorios: 777- 022 = 755 (rwxr-xr-x)

Además podemos usar el comando umask para ver o modificar dicha máscara de usuario:

```
$ umask
0002
```

## Permisos especiales

Existen una serie de permisos especiales en GNU/Linux, que, aunque no son habituales, es necesarios saberlos.

### Sicky bit

Se trata de un permiso de acceso que puede ser asignado a ficheros y directorios en sistemas UNIX y similares. Aunque históricamente su fin eran otro, actualmente el sticky bit se utiliza sobre directorios.

Cuando se le asigna a un directorio, significa que los elementos que hay en ese directorio solo pueden ser renombrados o borrados por su propietario o bien por root. El resto de usuarios que tengan permisos de lectura y escritura, los podrán leer y modificar, pero no borrar.

El sticky bit comúnmente es utilizado para /tmp.

Este tipo de permisos sobre un directorio se puede otorgar de varias maneras:

Utilizando el modo octal:

```console
chmod 1775 test
```

Utilizando el modo de notación simbólica:

```console
chmod +t /test #para activar sticky bit
chmod -t /test #para desactivar sticky bit
```

Si un usuario intenta borrar un fichero de una carpeta con sticky bit, recibierá el siguiente mensaje:

```console
$ rm -rf hola
rm: cannot remove ‘hola’: Operation not permitted
```

### SUID

Cuando se activa el bit SUID sobre un fichero significa que el que lo ejecute va a tener los mismos permisos que el que creó el archivo. Esto es útil en algunas ocasiones, aunque hay que utilizarlo con cuidado, ya que puede acarrear problemas de seguridad.

Para activarlo:

```console
$ chmod 4775 hello.sh
$ ls -l hello.sh
-rwsrwxr-x 1 david david 26 Jun 11 19:02 hello.sh
chmod -x hello.sh
$ ls -l hello.sh
-rwSrw-r-- 1 david david 26 Jun 12 19:02 hello.sh
```

Observamos que en la última línea le quitamos el servicio de ejecución al archivo y en los permisos se reemplaza la s minúscula por la S mayúsculas.

### SGID

El bit SGID es lo mismo que SUID, pero a nivel de grupo. Esto es, todo archivo que tenga activo el SGID, al ser ejecutado, tendrás los privilegios del grupo al que pertenece.

Opción bastante útil si queremos configurar un directorio para colaborar diferentes usuarios. Si se aplica este bit al directorio, cualquier archivo creado en dicho directorio, tendrá asignado el grupo al que pertenece el directorio.

Por ejemplo, si un usuario que tiene permiso de escritura en el directorio crea un archivo allí, ese archivo es un miembro del mismo grupo que el directorio y no el grupo del usuario. Como hemos dicho, esto es muy útil en la creación de directorios compartidos.

```console
chmod g+s "directorio"
```

En el caso de un fichero:

```console
chmod 2555 "fichero"
```

Espero que esta información os pueda servir en algún momento. Nos vamos leyendo.

## Bibliografía

- [Permisos especiales en Linux: Sticky Bit, SUID y SGID](https://www.ochobitshacenunbyte.com/2019/06/17/permisos-especiales-en-linux-sticky-bit-suid-y-sgid/)
- [Permisos especiales: Sticky Bit, SUID, SGID](https://hvivani.com.ar/2013/09/06/permisos-especiales-sticky-bit-suid-sgid/)
- [Sticky bit (Wikipedia)](https://es.wikipedia.org/wiki/Sticky_bit)
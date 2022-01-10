---
title: "Práctica: Comandos GNU Linux 10"
date: 2022-01-08 14:00:00 +/-TTTT
categories: [Sistemas Microinformáticos y Redes, Servicios en Red]
tags: [gnu linux, comandos, terminal, bash, smr, seguridad informática]
---

## Objetivo

El objetivo de esta práctica es saber:

- buscar los archivos según ciertos criterios y aplicarles un tratamiento;
- filtrar el contenido de archivos y las salidas de comandos con expresiones regulares;
- clasificar y dividir los datos;
- visualizar parcialmente el contenido de archivos.

Duración: 3 h.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Requisitos previos

Para validar los requisitos previos necesarios, antes de iniciar la PT, responda las preguntas siguientes:
1. ¿Qué comando permite buscar archivos siguiendo diferentes criterios?
    1. ls
    1. find
    1. seek
    1. locate
2. ¿Qué comandos permiten filtrar el contenido de archivos o de salidas de comandos con expresiones regulares?
    1. head
    1. tail
    1. grep
    1. ls
    1. sed
    1. awk
3. ¿Qué comandos sólo visualizan algunos campos de un archivo?
    1. head
    1. cut
    1. awk
    1. join

{:.activity}
### find

Duración estimada: 20 minutos
1. Conéctese a la segunda consola virtual texto (tty2) como el usuario \<tuNombreDeUsuario\>.
2. Vaya a su directorio personal y visualice la lista de todos los archivos presentes en su árbol. 
3. Visualice la lista de todos los archivos presentes en los directorios /bin y /lib.
4. Liste los archivos de su subdirectorio capítulo5 visualizando únicamente los nombres de los directorios. Después proceda del mismo modo visualizando únicamente los nombres de los archivos ordinarios.
5. Vaya al subdirectorio capítulo5 y visualice todos los nombres de archivos que comiencen por la cadena "fic" presentes en el árbol.
6. Busque en todo el árbol del sistema, todos los archivos con un tamaño superior a diez megabytes o con los permisos de acceso 4755.

¿Hay mensajes de error? En caso afirmativo, ¿por qué?

Suprima los mensajes de error posibles con una redirección.
7. Visualice el formato de cada archivo donde el nombre comience por la letra "p" en el árbol del directorio /etc.

Suprima los mensajes de error posibles con una redirección.
8. Busque de nuevo en su subdirectorio capítulo5, todos los nombres de archivos que comiencen por la cadena "fic" presentes en el árbol. Y suprima los archivos donde el nombre contenga una cifra.

#### Pistas
2. Indique la ruta de búsqueda relativa en el comando find.
3. Indique varias rutas de búsqueda en el comando...

{:.activity}
### grep

Duración estimada: 25 minutos
1. Visualice el PID de los procesos bash actualmente iniciados en el sistema.
2. Visualice todas las líneas del archivo /etc/services que contengan la cadena de caracteres "http".
3. Filtre de nuevo el archivo /etc/services esta vez, con la cadena de caracteres "http" como palabra.
4. Visualice las líneas del archivo /etc/passwd que no contengan la cadena de caracteres "home".
5. ¿Cuántas líneas del archivo /etc/passwd contienen la cadena de caracteres "sbin"?
6. ¿Qué archivos del directorio /etc contienen la cadena de caracteres "\<tuNombreDeUsuario\>"?

Suprima los mensajes de error eventuales con una redirección.
7. ¿En qué números de líneas se encuentra la cadena de caracteres "\<tuNombreDeUsuario\>" en los archivos anteriores? 

Suprima los mensajes de error eventuales con una redirección.
8. Visualice todas las líneas del archivo /etc/services que contengan la cadena de caracteres "iana", sin importar el tipo de caracteres (mayúsculas/minúsculas).

#### Pistas

1. Filtre la salida del comando ps con el comando grep.
2. Utilice el comando grep con el archivo /etc/services como argumento.
3. Utilice la opción -w .
4. Utilice la opción -v .
5. Utilice la opción -c .
6. Utilice la opción -l.
7. Utilice la opción -n .
8. Utilice la opción -i.

{:.activity}
### cut

Duración estimada: 10 minutos
1. Visualice el primer y el tercer campo del archivo /etc/group (nombre del grupo y GID correspondiente).
2. Visualice una lista detallada de los archivos presentes en el directorio /etc. Después conserve únicamente la información siguiente:
    - permisos del archivo;
    - tamaño del archivo;
    - nombre del archivo.

#### Pistas

1. Utilice el comando cut con el carácter : como separador de campo.
2. Utilice el comando cut en una tubería especificando las columnas de la visualización a conservar.

{:.activity}
### sort

Duración estimada: 15 minutos
1. Clasifique el archivo /etc/passwd alfabéticamente por el nombre de conexión (login) de cada usuario.
2. Clasifique el archivo /etc/passwd alfabéticamente por el nombre completo (campo GECOS) de cada usuario.
3. Clasifique el archivo /etc/passwd numéricamente por el UID de cada usuario.
4. Visualice una lista detallada de archivos presentes en el directorio /etc. Después clasifique los archivos de mayor a menor.

#### Pistas
2. Clasifique el quinto campo del archivo con el carácter : como separador de campo.
3. Clasifique el tercer campo del archivo con el carácter : como separador de campo y utilice la opción -n.
4. Utilice el comando sort en una tubería especificando la columna y el tipo de clasificación.

{:.activity}
### head, tail

Duración estimada: 10 minutos
1. Visualice las cinco primeras líneas del archivo /etc/passwd.
2. Visualice las siete últimas líneas del archivo /etc/protocols.
3. Utilice el comando tail en una tubería para no visualizar la primera línea devuelta por el comando ls -l.
4. Visualice de la línea 188 a 191 del archivo /etc/services.

#### Pistas
4. Utilice los comandos head y tail con una tubería.

{:.activity}
### Para ir más lejos

Duración estimada: 10 minutos
1. Utilice el comando find para encontrar el emplazamiento de su archivo de configuración personal del navegador web.
2. Utilice el comando grep para visualizar todos los vínculos simbólicos presentes en el directorio /etc.

#### Pistas
1. Cree un archivo de referencia con el comando touch, después utilice la expresión de selección -newer del comando find después de haber modificado uno de los parámetros de su navegador web.
2. Filtre la salida del comando ls -l con el comando grep, y utilice una expresión regular correspondiente a todas las líneas que comiencen por el carácter "l".

## Entrega

La entrega de esta práctica debe ser un documento PDF con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.pdf". Por ejemplo, en mi caso el nombre del documento PDF sería "RuizGarcía_Marcos_Práctica\<NúmeroDeLaPráctica\>.pdf".

## Bibliografía

- [Prácticas de LINUX](https://www.ediciones-eni.com/open/mediabook.aspx?idR=0a8c20d27a126debe5747e874c9710ed)


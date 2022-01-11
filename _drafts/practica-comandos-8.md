---
title: "Práctica: Comandos GNU Linux 8"
date: 2022-01-08 14:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Servicios en Red]
tags: [gnu linux, comandos, terminal, bash, smr, seguridad informática]
---

## Objetivo

El objetivo de esta práctica es ser capaz de automatizar la ejecución de trabajos a partir de los elementos estudiados anteriormente. Las funcionalidades abordadas le permitirán crear sus propios scripts de shell, programas desarrollados en lenguaje Bash. 

Duración: 6 h.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Llamada y ejecución de scripts de shell

Duración estimada: 20 minutos
1. Conéctese en la segunda consola virtual texto (tty2) como el usuario \<tuNombreDeUsuario\>.
2. En su directorio personal, cree el subdirectorio bin que será utilizado para almacenar todos los scripts de shell escritos más tarde y colóquelos en ese directorio.
3. Cree el script de shell 01llamada que efectúe las operaciones siguientes:

    Asignar la cadena de caracteres "abc" a la variable var.

    Visualice la cadena de caracteres "la variable $var tiene por valor :", seguido del contenido de la variable var.

    Efectuar una pausa de tres segundos.
4. Ejecute el script de shell 01llamada de la manera siguiente:

bash 01llamada

Tras finalizar la ejecución del script, ¿cuál es el valor de la variable var en su entorno shell? ¿Por qué?
5. Ejecute el script de shell 01llamada de la manera siguiente:
01llamada

¿Es posible? ¿Por qué?
6. Añada el permiso de ejecución al script 01llamada para el propietario del archivo y añada la ruta de su directorio bin a la variable de entorno PATH si todavía no lo está.
7. Ejecute el script de shell 01llamada de la manera siguiente:
01llamada

Tras finalizar la ejecución del script, ¿cuál es el valor de la variable var en su entorno shell? ¿Por qué?
8. ¿Qué shell ha utilizado para interpretar el script 01llamada llamado anteriormente? Tenga en cuenta que debe ser obligatoriamente...

{:.activity}
### Código de retorno

Duración estimada: 5 minutos
1. Reconéctese a la segunda consola virtual texto (tty2) como el usuario \<tuNombreDeUsuario\>.
2. Teclee el comando ls /etc/passwd y visualice su código de retorno.
3. Teclee el comando ls glop y visualice su código de retorno.
4. Visualice de nuevo el código de retorno del última comando. ¿Es el mismo?
5. Vaya a su directorio bin y modifique el script 01llamada de modo que reenvíe un código de retorno igual a 2 después verifíquelo.

Pistas para el enunciado 8.2
2. La variable especial $? contiene el código de retorno del último comando ejecutado.
5. Utilice el comando exit.

{:.activity}
### Encadenamiento de comandos

Duración estimada: 5 minutos
1. Visualice la fecha del sistema y la lista de los archivos presentes en el directorio actual en una sola línea de comando.
2. Visualice el contenido del archivo /etc/hosts si existe.
3. Cree el archivo vacio /tmp/glop si no existe.

Pistas para el enunciado 8.3
1. Efectúe un encadenamiento de comandos con el carácter; (punto y coma).
2. Utilice el código de retorno del comando ls para saber si el archivo /etc/hosts existe, después efectúe un encadenamiento de comandos condicional con los caracteres &&.
3. Utilice el código de retorno del comando ls para saber si le archivo /tmp/glop existe, después efectúe un encadenamiento de comandos condicional con caracteres ||.

{:.activity}
### Variables especiales

Duración estimada: 30 minutos
1. En su directorio bin, cree el script de shell 02varspec que efectúe las operaciones siguientes: 

    Visualizar el nombre del script de shell.

    Visualizar el PID del script de shell.

    Visualizar el PID del proceso padre.

Cada visualización debe estar precedida de un enunciado (ejemplo: para el nombre del script: mi nombre es: "nombre del script de shell ").

Después modifique los permisos del archivo asignando a su propietario permiso de ejecución.
2. Visualice el PID de su shell actual, después ejecute el script 02varspec de las tres maneras siguientes:

bash 02varspec
02varspec

. 02varspec

¿Los resultados son los esperados?
3. Copie el script 02varspec en 03param y modifique este para:

    visualizar el nombre de argumentos pasados por la línea de comandos,

    visualizar los tres primeros parámetros posicionales.
4. Verifique su script de shell 03param con los argumentos siguientes:

a b c d

"a b" c d

a b c\ d

a ’b c’ d
5. Añada las operaciones siguientes al script 03param:

    Desplazar dos posiciones los parámetros.

    Visualizar de nuevo los tres primeros parámetros posicionales.

Verifique de nuevo el script con los argumentos siguientes:

a b c d
6. Modifique el script 03param del siguiente modo:

    Visualizar el onceavo parámetro posicional además de los tres primeros.

    Visualizar el conjunto de parámetros posicionales antes y después del desplazamiento con el comando shift.

Verifique...

{:.activity}
### Test de archivos

Duración estimada: 20 minutos
1. En su directorio bin, cree el script de shell 04archivo que efectué los test siguientes a un archivo pasado como argumento:

    Si le archivo no existe, salir con un código de retorno igual a uno.

    Visualizar si el archivo es un archivo estándar o no.

    Visualizar si el archivo es un directorio o no.

    Visualizar las autorizaciones que posee sobre el archivo (lectura, escritura y ejecución).

    Visualizar si el archivo contiene datos o no.
2. Verifique el script de shell 04archivo sucesivamente con el archivo /glop, /etc/hosts, /bin/ls y /home.

Pista para el enunciado 8.5
1. Utilice el comando test con la sintaxis [].

{:.activity}
### Test de cadenas de caracteres

Duración estimada: 15 minutos
1. En su directorio bin, cree el script de shell 05cadena que efectúe los test siguientes en dos cadenas de caracteres pasadas como argumento:

    Si al menos una de las dos cadenas de caracteres pasadas como argumento es nula, salir con código de retorno igual a uno.

    Visualizar si las cadenas de caracteres son idénticas o no.
2. Verifique el script de shell 05cadena con los argumentos siguientes:

abc ""

"" abc

"" ""

abc abc

abc ABC

abc "abc "

Pista para el enunciado 8.6
1. Utilice el comando test con la sintaxis [].

{:.activity}
### Test y operaciones aritméticas

Duración estimada: 30 minutos
1. En su directorio bin, cree el script de shell 06max que retorne el mayor de los dos argumentos pasados como parámetros. Utilice el comando test con la sintaxis [].
2. Verifique el script de shell 06max con los argumentos siguientes:
12
12 34
12 6
12 12
12 " 34"
3. Cree ahora el script de shell 07min que retorne el menor de los dos argumentos pasados como parámetros.

Utilice esta vez el comando let con la sintaxis (()).
4. Verifique el script de shell 07min con los argumentos siguientes:
12
12 34
12 6
12 12
12 " 34"
5. Cree el script de shell 08div que retorne el resultado de la división entre el primer y el segundo argumento.
6. Verifique el script de shell 08div con los argumentos siguientes:
12
12 0
12 2
12 5
12 14

Pistas para el enunciado 8.7
1. Efectúe las operaciones siguientes en el script:

    Si el número de argumentos es diferente de 2, salir con un código de retorno igual a 1.

    Visualizar el número mayor o el valor del primero en caso de igualdad.
3. Efectúe las operaciones siguientes en el script:

    Si el número de argumentos es diferente de 2, salir con un código de retorno igual a 1.

    Visualizar el número menor o el valor del primero en caso de igualdad.
5. Efectúe las operaciones siguientes en el script:

    Si el número de argumentos es diferente de 2, salir con un código de retorno igual a 1.

    Si el segundo parámetro es igual a 0, salir con un código...

{:.activity}
### Scripts interactivos

Duración estimada: 10 minutos
1. En su directorio bin, cree el script de shell 09mult que pida introducir dos números y que retorne el resultado de la multiplicación de esos dos números.
2. Verifique el script de shell 09mult con los números 12 y 3.

Pista para el enunciado 8.8
1. Utilice el comando read.

{:.activity}
### Para ir más lejos

Duración estimada: 30 minutos
1. Escriba el script de shell 10compar que visualice el menor y el mayor número entre los argumentos pasados por la línea de comandos; el número de argumento deberá ser superior a 1.
2. Verifique el script de shell 10compar con los argumentos siguientes:
1
1 2
1 2 3
3 5 2 6 1 8 7
3. Verifique los entornos de desarrollo gráficos instalados en su sistema y reedite los scripts de shell anteriores.

Pista para el enunciado 8.9
1. Reutilice los scripts 06max y 07min anteriormente escritos. Utilice un bucle while con el comando shift para tratar el conjunto de argumentos.

## Entrega

La entrega de esta práctica debe ser un documento PDF con un nombre en el siguiente formato `<Apellidos>_<Nombre>_Práctica<NúmeroDeLaPráctica>.pdf`. Por ejemplo, en mi caso el nombre del documento PDF sería `RuizGarcía_Marcos_Práctica<NúmeroDeLaPráctica>.pdf`.

## Bibliografía

- [Prácticas de LINUX](https://www.ediciones-eni.com/open/mediabook.aspx?idR=0a8c20d27a126debe5747e874c9710ed)


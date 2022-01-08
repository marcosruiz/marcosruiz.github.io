---
title: "Práctica: Comandos GNU Linux 7"
date: 2022-01-08 14:00:00 +/-TTTT
categories: [Sistemas Microinformáticos y Redes, Servicios en Red]
tags: [gnu linux, comandos, terminal, bash, smr, seguridad informática]
---

## Objetivo

El objetivo de esta práctica es comprender mejor el funcionamiento de la línea de comandos y aumentará su productividad empleando el shell Bash como intérprete de comandos.

Duración: 4 h.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Variables

Duración estimada: 30 minutos
1. Conéctese en la segunda consola virtual texto (tty2) como el usuario \<tuNombreDeUsuario\>.
2. Liste todas las variables definidas en su entorno shell.
3. Asigne la cadena de caracteres "abc" a la variable var1. Después visualice de nuevo la lista de las variables definidas en el entorno shell.
4. Visualice el contenido de la variable var1.
5. Visualice el contenido de la variable var2. ¿Genera un error?
6. Visualice el contenido de la variable HOME. ¿Qué representa esta variable?
7. Modifique el valor de la variable HOME por "/tmp". Después ejecute el comando cd y visualice su directorio de trabajo.
8. Modifique el valor de la variable LANG por "C". Después consulte la página del manual electrónico referente al comando bash. ¿En qué idioma se visualiza la página del manual?
9. Busque en la página del manual electrónico anteriormente abierta la sección "PROMPTING" y modifique su prompt para visualizar la fecha y el nombre de la máquina.
10. Desconéctese, y reconéctese a la segunda consola virtual texto (tty2) como usuario \<tuNombreDeUsuario\>. Después verifique los valores anteriormente modificados.
11. Asigne la cadena de caracteres "Bond" a la variable var3.
12. Visualice la cadena de caracteres "Bond, James Bond." utilizando el contenido de la variable var3.
13. Visualice la cadena de caracteres "Bondir" utilizando el contenido de la variable...

{:.activity}
### Caracteres genéricos, caracteres de expansión

Duración estimada: 20 minutos
1. Vaya al directorio /etc.
2. Liste todos los archivos donde el nombre comience por la letra "r". ¿El resultado del comando es lo esperado?
3. Liste de nuevo todos los archivos donde el nombre comience por la letra "r" sin visualizar el contenido de los directorios correspondientes.
4. Visualice todos los archivos donde el nombre contenga la cadena de caracteres "rc".
5. Visualice todos los archivos donde el nombre conste de tres caracteres.
6. Visualice todos los archivos donde el nombre comience por la cadena de caracteres "rc", seguido de un carácter cualquiera, y termine por la cadena de caracteres ".d".
7. Visualice los archivos donde los nombres sean rc2.d, rc3.d y rc4.d.
8. Visualice todos los archivos donde el nombre no comience por las letras "a", "b" y "c".
9. Visualice todos los archivos donde el nombre comience por una letra mayúscula.
10. Liste todos los archivos donde el nombre termine por la cadena de caracteres "conf" o "config".
11. Liste todos los archivos donde el nombre:

    comience por una minúscula,

    seguido de un número cualquiera de caracteres,

    seguido de la letra "a", después obligatoriamente de otro carácter,

    seguido de la extensión ".conf" o ".config".

{:.activity}
### Caracteres de escape

Duración estimada: 5 minutos
1. Ejecute los comandos siguientes y explique sus resultados:

    echo a b

    echo a   b

    echo "a    b"

    echo ’a     b’

    echo a\ \ \  b

¿Cuántos argumentos hay para cada uno de estos comandos?
2. Vaya al directorio / y teclee el comando echo *. ¿Cuál es su resultado? ¿Por qué?
3. ¿Cómo visualizar literalmente la cadena de caracteres "el carácter * es un carácter genérico"?
4. ¿Cómo visualizar literalmente la cadena de caracteres "la variable referenciada por $var3"?

#### Pistas

1. Introduzca el número exacto de espacios indicados en el enunciado.
3. Utilice los caracteres de escape.
4. Utilice los caracteres de escape ’ o \.

{:.activity}
### Redirecciones y tuberías

Duración estimada: 40 minutos
1. Ejecute el comando cat sin argumentos, después teclee algunas palabras y finalícelo normalmente. ¿Qué observa?
2. Ejecute el comando wc sin argumentos, después teclee algunas palabras y finalícelo normalmente. ¿Qué observa?
3. Utilice el comando cat para visualizar el contenido del archivo /etc/hosts de dos maneras: pasando el nombre del archivo como argumento, después utilizando una redirección.
4. Utilice el comando wc para contar el número de líneas del archivo /etc/passwd de dos maneras: pasando el nombre del archivo como argumento, después utilizando una redirección. ¿Qué observa?
5. Utilice el comando cat para escribir algunas palabras en el archivo /tmp/ficcat.
6. Utilice el comando cat sin argumentos para copiar el archivo /tmp/ficcat en /tmp/ficcat2.
7. Utilice el comando cat para añadir algunas palabras al archivo /tmp/ficcat existente.
8. Utilice el comando cat para concatenar el contenido de los archivos /tmp/ficcat y /etc/hosts en el archivo /tmp/ficcat3.
9. Vaya al directorio /etc y redirija la salida del comando ls a el archivo /tmp/ls.out. ¿Qué contiene ese archivo?
10. Utilice el comando wc sin argumentos para contar el número de líneas contenidas en el archivo /tmp/ls.out.
11. ¿Cuántos archivos hay en el directorio /etc? Suprima el archivo /tmp/ls.out.
12. Sin utilizar un archivo intermedio, cuente de nuevo el número...

{:.activity}
### Alias

Duración estimada: 15 minutos
1. Elabore la lista de los alias definidos en su entorno shell.
2. Si el alias ls=’ls --color=tty’ no está definido, créelo.
3. Utilice el comando ls para visualizar el contenido del directorio /etc. ¿Qué significan los colores visualizados?
4. Fuerce la ejecución del comando ls sin utilizar el alias anteriormente definido.
5. Defina el alias cd.. permitiendo ir al directorio padre (como en DOS).
6. Suprima el alias cd.. creado anteriormente.

#### Pistas
1. Utilice el comando alias.
2. Utilice el comando alias.
4. Prefije el comando de carácter \ o emplee el comando command.
6. Utilice el comando unalias.

{:.activity}
### Ejecución y sustitución de comandos

Duración estimada: 15 minutos
1. Determine la naturaleza (alias, comando interno del shell, comando externo del shell) de los comandos cd, vi, y find.
2. Determine rápidamente el emplazamiento de los comandos grep, ls y fdisk en el sistema de archivos.
3. Cuente el número de procesos ejecutándose actualmente en su sistema.
4. Visualice la cadena de caracteres "hay actualmente N procesos" donde N es el resultado del comando anterior.
5. Defina el alias nbps que retorne la cadena de caracteres anterior.

#### Pistas
1. Utilice el comando type.
2. Utilice el comando whereis.
3. Utilice la opción --no-heading del comando ps que permitirá eliminar la línea de cabecera en el resultado del comando, después cuente el número de líneas devueltas.
4. Utilice la sustitución de comandos con la sintaxis $() o la sintaxis ``.

{:.activity}
### Opciones del shell Bash

Duración estimada: 10 minutos
1. Liste las opciones de su shell.
2. Asigne la cadena de caracteres "DEPURAR>> " a la variable PS4.
3. Active la opción del shell xtrace.
4. Teclee el comando cd /etc ; ls -d X*. ¿Qué observa?
5. Desactive la opción xtrace.

Pista para el enunciado 7.7
1. Utilice el comando set con la opción adecuada.

## Entrega

La entrega de esta práctica debe ser un documento PDF con un nombre en el siguiente formato `<Apellidos>_<Nombre>_Práctica<NúmeroDeLaPráctica>.pdf`. Por ejemplo, en mi caso el nombre del documento PDF sería `RuizGarcía_Marcos_Práctica<NúmeroDeLaPráctica>.pdf`.

## Bibliografía

- [Prácticas de LINUX](https://www.ediciones-eni.com/open/mediabook.aspx?idR=0a8c20d27a126debe5747e874c9710ed)


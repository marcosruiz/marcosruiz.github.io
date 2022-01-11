---
title: "Práctica: Comandos GNU Linux 4"
date: 2022-01-08 14:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Servicios en Red]
tags: [gnu linux, comandos, terminal, bash, servicios en red]
---

## Objetivo

El objetivo de esta práctica es ser capaz de editar archivos de texto con la ayuda del editor Vim disponible en GNU Linux.

Duración: 3 h.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Requisitos previos

Responde a las siguientes preguntas:

1. ¿En qué sistemas operativos se puede utilizar Vi?
    1. En GNU/Linux.
    1. En cualquier sistema Unix.
    1. En los sistemas Microsoft Windows.
    1. En Mac OS.
    1. En todos los sistemas operativos enunciados anteriormente y algunos otros.
2. ¿Es cierto que Vim posee las mismas funcionalidades que Vi?
    1. Si.
    1. No.
3. ¿Cuáles son los tres modos de funcionamiento de Vi?
4. ¿Cuál es la secuencia de teclas que permite salir de Vi en todo momento sin salvar las modificaciones aportadas al archivo?
    1. :q , luego [Entr]
    1. :q! , luego [Entr]
    1. [Esc], luego :q , luego [Entr]
    1. [Esc], luego :q! , luego [Entr]

{:.activity}
### Inicialización y salida de Vi

Duración estimada : 2 minutos

1. Conéctese a la segunda consola virtual texto (tty2) como el usuario "\<tuNombreDeUsuario\>".
2. Inicie el editor de texto Vi sin argumento. ¿Qué observa?
3. Salga de Vi.
4. Edite ahora el archivo /etc/hosts. ¿Qué significan los caracteres ~ situados al comienzo de línea?
5. Salga de Vi.

#### Pistas
2. A lo largo de estos ejercicios, podrá utilizar indiferentemente el comando vi o el comando vim. 

{:.activity}
### Comandos de desplazamiento

Duración estimada : 10 minutos

1. Edite el archivo /etc/services.
2. Sin utilizar las teclas de dirección del teclado (flechas), desplace el cursor una línea hacia abajo.
3. Sin utilizar las teclas de dirección del teclado, desplace el cursor doce líneas hacia abajo.
4. Sin utilizar las teclas de dirección del teclado, desplace el cursor ocho líneas hacia arriba.
5. Sin utilizar las teclas de dirección del teclado, desplace el cursor dieciséis caracteres hacia la derecha.
6. Sin utilizar las teclas de dirección del teclado, desplace el cursor nueve caracteres hacia la izquierda.
7. Desplace el cursor al final de línea.
8. Desplace el cursor al principio de línea.
9. Desplace varias veces el cursor hasta el primer carácter de la palabra siguiente.
10. Desplace varias veces el cursor hasta el primer carácter de la palabra anterior.
11. Desplace varias veces el cursor hasta el último carácter de la palabra siguiente.
12. Desplace el cursor hasta la última línea del archivo.
13. Desplace el cursor hasta la primera línea del archivo.
14. Desplace el cursor hasta la línea 45 del archivo.
15. Desplace el cursor una página hacia arriba.
16. Desplace el cursor una página hacia abajo.



{:.activity}
### Comandos de edición y de corrección

 Duración estimada : 15 minutos
1. Desplace el cursor hasta el sexto carácter de la primera línea del archivo.
2. Inserte la cadena de caracteres "uno" delante del cursor en la línea actual.
3. Sin utilizar las teclas de dirección del teclado, desplácese tres caracteres hacia la derecha e inserte la cadena de caracteres "dos" después del cursor.
4. Inserte la cadena de caracteres "tres" al principio de la línea.
5. Inserte la cadena de caracteres "cuatro" al final de la línea.
6. Sin utilizar las teclas de dirección del teclado, desplace el cursor seis caracteres hacia la izquierda.
7. Suprima el carácter bajo el cursor.
8. Suprima el carácter situado delante del cursor.
9. Suprima los cinco caracteres precedentes al cursor.
10. Borre todos los caracteres situados desde el cursor hasta el final de línea.
11. Sin utilizar las teclas de dirección del teclado, desplace el cursor seis caracteres hacia la izquierda.
12. Borre todos los caracteres situados desde el inicio de línea hasta el cursor.
13. Pegue al final de línea el texto que acaba de ”cortar”.
14. Borre la totalidad de la línea.
15. Copie la última línea del archivo y péguela al inicio del archivo.
16. Anule el último comando. ¿Es posible anular también los comandos anteriores?
17. Borre las cuatro primeras líneas del archivo.
18. Borre...

{:.activity}
### Comandos globales

 Duración estimada : 10 minutos
1. Intente guardar las modificaciones que ha realizado en el archivo. ¿Es posible?
2. Guarde el trabajo en su directorio personal con el nombre de archivo services2.
3. Suprima la primera línea del archivo, después guárdelo y salga de Vi.
4. Abra de nuevo el archivo /etc/services y busque la cadena de caracteres "tcp".
5. Desplace el cursor de ocurrencia en ocurrencia de la cadena de caracteres "tcp".
6. Desplace siempre el cursor de ocurrencia en ocurrencia de la cadena de caracteres "tcp", pero esta vez, en el sentido inverso de la búsqueda.
7. Reemplace todas las cadenas de caracteres "udp" del archivo por "UDP".

{:.activity}
### Opciones del editor

 Duración estimada : 10 minutos
1. Visualice todas las opciones del editor.
2. Visualice los números de líneas.
3. Defina el numero de espacios a 2 para representar una tabulación.
4. Salga de Vi sin guardar y abra de nuevo el archivo /etc/services.
5. ¿Las opciones son siempre efectivas? ¿Cómo hacer para que estas modificaciones sean permanentes?

#### Pistas

2. Active la opción adecuada..
3. Modifique el valor de la opción adecuada.

## Entrega

La entrega de esta práctica debe ser un documento PDF con un nombre en el siguiente formato `<Apellidos>_<Nombre>_Práctica<NúmeroDeLaPráctica>.pdf`. Por ejemplo, en mi caso el nombre del documento PDF sería `RuizGarcía_Marcos_Práctica<NúmeroDeLaPráctica>.pdf`.

## Bibliografía

- [Prácticas de LINUX](https://www.ediciones-eni.com/open/mediabook.aspx?idR=0a8c20d27a126debe5747e874c9710ed)


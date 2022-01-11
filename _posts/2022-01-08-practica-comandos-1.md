---
title: "Práctica: Comandos GNU Linux (Parte 1)"
date: 2022-01-08 15:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Servicios en Red]
tags: [gnu linux, comandos, terminal, bash, redes locales, practica, servicios en red, seguridad informática]
---

## Objetivo

El objetivo de esta práctica es ser capaz de conectarse a un sistema GNU Linux y ejecutar sus primeros comandos en línea de comandos.

Duración: 2 h.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Requisitos previos

Responde a las siguientes preguntas:

1. ¿Qué significan los acrónimos FSF, GNU y GPL?
2. ¿Qué es Linux?
    1. Un sistema operativo para microordenadores de tipo PC.
    1. Un núcleo de tipo UNIX desarrollado bajo licencia GPL.
    1. Un sistema operativo reservado a aplicaciones de cálculo universitarias.
3. ¿Qué representa el carácter "$" al comienzo de la línea de comandos?
    1. Nada.
    1. La línea de comandos del shell (o prompt) del administrador de sistema (root).
    1. La línea de comandos del shell (o prompt) de un usuario ordinario.
4. ¿Si consideramos las opciones o y p al igual que los argumentos arg1 y arg2, qué sintaxis de comandos son correctas de entre las siguientes?
    1. `$ comando arg1 arg2`
    1. `$ comando arg1arg2`
    1. `$ comando -o-p`
    1. `$ comando -p -o`
    1. `$ comando -o arg1 -p arg2`
    1. `$ comando -op arg1 arg2`
5. ¿Qué comandos permiten borrar la pantalla por línea de comandos?
    1. `wc`
    1. `clear`
    1. `cls`
    1. Secuencia de teclas [Ctrl]-L.

{:.activity}
### Consolas y terminales

Duración aproximada : 2 minutos

1. Verificar la presencia de los diferentes terminales virtuales (consolas en modo texto y una consola gráfica).

#### Pistas

En la mayoría de las distribuciones Linux, las teclas [F1] a [F6] representan seis consolas virtuales en modo texto y [F7] corresponde a la consola virtual gráfica.

Sin embargo en las últimas distribuciones CentOS, Fedora y RedHat, por ejemplo, [F1] corresponde a la consola gráfica, las consolas texto se representan por la tecla [F2] a [F6]. 

Para acceder a las distintas consolas virtuales se debe realizar la combinación de teclas [Ctrl][Alt][F1-F7].

{:.activity}
### Conexión, autenticación

Duración aproximada : 10 minutos
1. Crea los usuarios "\<tuNombreDeUsuario\>", "\<tuNombreDeUsuario\>2" con contraseña "chabacier". En mi caso es "mruizg" y "mruizg2".
1. Conéctese a la segunda consola virtual texto (tty2) con el nombre de conexión "\<tuNombreDeUsuario\>" y la contraseña "chabacier".
1. Conéctese a la tercera terminal virtual texto (tty3) con el nombre de conexión "\<tuNombreDeUsuario\>2" y la contraseña "chabacier".
1. Si posee la contraseña de administrador, conéctese como root en la cuarta terminal texto (tty4). ¿Observa alguna diferencia con respecto a los otros terminales?
1. Cambie a la consola gráfica y conéctese de nuevo como usuario "\<tuNombreDeUsuario\>".
1. Inicie varios emuladores de terminal a partir de su sesión gráfica.

#### Pistas

1. El nombre de conexión (login) y la contraseña dependen de la cuenta de usuario previamente creada por el administrador del sistema GNU/Linux al que se conecte.     

{:.activity}
### Identidad de los usuarios

Duración aproximada : 8 minutos

1. Vuelva a la segunda consola virtual (tty2) y liste los usuarios conectados al sistema de diferentes maneras.
2. Muestre únicamente la línea relativa a la conexión con su shell actual.
3. Vuelva a la tercera consola virtual (tty3) y muestre el nombre de conexión (login) del usuario conectado.
4. Muestre la descripción de la cuenta de usuario "\<tuNombreDeUsuario\>".

#### Pistas

1. Los comandos `who` y `finger` permiten listar los usuarios conectados al sistema.
2. Utilizar el comando `who`.
3. Utilizar el comando `who`.
4. Utilizar el comando `finger`. 

{:.activity}
### Cambio de contraseña

Duración aproximada : 10 minutos

1. Vuelva a la segunda consola virtual (tty2) y modifique la contraseña de "\<tuNombreDeUsuario\>2". ¿Es posible? 
2. Cambie su contraseña por "qdgj". ¿Es posible?
3. Cambie su contraseña por "azertyui". ¿Es posible?
4. Modifique su contraseña a su conveniencia. Recuerde esta última para poderse reconectar posteriormente.
5. Cambie de nuevo su contraseña por "gnulinux". ¿Es posible?

#### Pistas

1. Utilice el comando `passwd`.
2. Escoja una contraseña autorizada por el sistema (con un mínimo de seis caracteres y no basada en palabras del diccionario). 

{:.activity}
### Recuento

Duración aproximada: 5 minutos

1. ¿Cuántas líneas, palabras y caracteres comportan el archivo /etc/services?
2. ¿Cuántas cuentas de usuario están definidas en el sistema?

#### Pistas

1. Utilice el comando `wc`.
2. Cada línea del archivo /etc/passwd define una cuenta de usuario. 

{:.activity}
### Visualización

Duración aproximada: 5 minutos

1. Borre la pantalla.
2. Visualice la cadena de caracteres "a b" sin las comillas (letras "a" y "b" separadas por un espacio).
3. Visualice la cadena de caracteres "a  b" sin las comillas (letras "a" y "b" separadas por dos espacios). ¿Qué observa?
4. Visualice la cadena de caracteres "a   b" sin las comillas (letras "a" y "b" separadas por un tabulador).

#### Pistas

1. Utilice el comando `clear`.
2. Utilice el comando `echo`.
4. Puede ser necesario utilizar la secuencia de teclas [Ctrl]-V para desactivar la terminación de palabras con la tecla [Tab]; será entonces posible introducir una tabulación en la línea de comandos. 

{:.activity}
### Tiempo

Duración aproximada : 10 minutos

1. Visualice la fecha del sistema.
2. Visualice el calendario del mes en curso.
3. Visualice el calendario del mes de enero del año 5, después el del año 2005. ¿Hay alguna diferencia?
4. Visualice el calendario del mes de septiembre de 1752. ¿Qué observa?

#### Pistas

1. Utilice el comando `date`.
2. Utilice el comando `cal`.
3. Utilice el comando `cal` con los argumentos adecuados.

{:.activity}
### Utilización del ratón y del teclado

Duración aproximada : 10 minutos

1. Siempre en la segunda consola virtual texto (tty2), visualice el calendario del año 2005. ¿Ve los días del mes de enero, febrero y marzo?
2. Desplácese horizontalmente con el fin de mostrar las líneas precedentes visualizadas en el terminal.
3. Borre la pantalla rápidamente.
4. Recuerde los comandos tecleados anteriormente.5. Recupere los últimos comandos que contengan la cadena de caracteres "ho".
6. Ejecute el comando sleep 999 y cancele su ejecución transcurridos unos pocos segundos.
7. Compruebe la terminación de palabras con comandos y nombres de archivos.
8. Vuelva a la consola gráfica y verifique la función de copiar/pegar del ratón.

#### Pistas

1. Utilice el comando `cal`.
5. Utilice la secuencia de teclas [Ctrl]-R.
6. El comando `sleep` se limita a esperar el numero de segundos indicados en el argumento. 

{:.activity}
### Desconexión

Duración aproximada : 2 minutos

1. Desconéctese de la sesión gráfica.
2. Desconéctese de todos los terminales virtuales texto de diferentes maneras.

## Entrega y presentación

La entrega de esta práctica debe ser un documento PDF con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.pdf". Por ejemplo, en mi caso el nombre del documento PDF sería "RuizGarcía_Marcos_Práctica\<NúmeroDeLaPráctica\>.pdf".

Asegúrate de que el documento PDF cumple con los siguientes parámetros:

1. Debe contener una portada con título, nombre de la asignatura, curso, autor y fecha de realización.
2. Debe tener un índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
3. Debe tener cada página numerada.
4. Cada actividad debe estar numerada. 
5. Cada actividad debe tener el enunciado en negrita y la respuesta en texto normal.
6. Cada imagen debe tener un pie de foto la cual tenga el siguiente formato: "Figura \<número\>: \<BreveDescripciónDeLaFigura\>".
7. El documento no debe contener faltas ortográficas.
8. Los comandos y ficheros de configuración que hayas utilizado deben quedar reflejados en el PDF de la entrega en texto para que permitirte copiar y pegar el día del examen todos los comandos de una manera rápida.
9. Los comandos y documentos de configuración que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$ sudo apt install neofetch`.

## Bibliografía

- [Prácticas de LINUX](https://www.ediciones-eni.com/open/mediabook.aspx?idR=0a8c20d27a126debe5747e874c9710ed)


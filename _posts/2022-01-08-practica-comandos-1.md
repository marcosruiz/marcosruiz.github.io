---
title: "Práctica: Comandos GNU Linux (Parte 1)"
date: 2022-01-14 02:00:00 +0100
categories: [Sistemas Microinformáticos y Redes]
tags: [gnu linux, comandos, terminal, bash, redes locales, practica, servicios en red, seguridad informática]
---

## Objetivo

El objetivo de esta práctica es ser capaz de conectarse a un sistema GNU Linux y ejecutar sus primeros comandos en línea de comandos.

Duración: 5 h.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.
Debes realizar todas las actividades en la máquina virtual de Zorin OS.
Tras la realización de cada actividad debes realizar una captura o varias capturas de pantalla que demuestren la realización de dicha actividad.
Cada captura debe tener solo la información que sea necesaria, es decir, debéis evitar que se vea la interfaz de cualquier cosa que no sea la máquina virtual de Zorin.

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

En la mayoría de las distribuciones Linux, las teclas [F1] a [F6] representan seis consolas virtuales en modo texto y [F7] corresponde a la consola virtual gráfica.

Sin embargo en las últimas distribuciones CentOS, Fedora y RedHat, por ejemplo, [F1] corresponde a la consola gráfica, las consolas texto se representan por la tecla [F2] a [F6]. 

Para acceder a las distintas consolas virtuales en Zorin OS Lite se debe realizar la combinación de teclas [Ctrl][Alt][F1-F7] si tenemos un host Windows o [Host][^host][F1-F7] si estamos en un host de GNU/Linux.

[^host]: En las máquinas virtuales la tecla [Host] es la tecla [Ctrl] de la derecha del teclado.

{:.activity}
### Conexión, autenticación

Duración aproximada : 10 minutos

1. Crea los usuarios "\<tuNombreDeUsuario\>", "\<tuNombreDeUsuario\>2" con contraseña "chabacier". En mi caso es "mruizg" y "mruizg2". Puedes hacerlo utilizando la interfaz gráfica (manera fácil) o usando el terminal (buscando en Google cómo).
1. Conéctese a la segunda consola virtual texto (tty2) con el nombre de conexión "\<tuNombreDeUsuario\>" y la contraseña "chabacier". El nombre de conexión (login) y la contraseña dependen de la cuenta de usuario previamente creada por el administrador del sistema GNU/Linux al que se conecte.
1. Conéctese a la tercera terminal virtual texto (tty3) con el nombre de conexión "\<tuNombreDeUsuario\>2" y la contraseña "chabacier".
1. Si posee la contraseña de administrador, conéctese como root en la cuarta terminal texto (tty4). ¿Observa alguna diferencia con respecto a los otros terminales? En el caso de Zorin OS Lite no hay contraseña para el usuario root por lo que no se puede hacer login directamente por cuestiones de seguridad. Para hacer login como root se necesita hacer login como usuario administrador para posteriormente ejecutar la instrucción `sudo su root` o `sudo su`. Tras esto te pedirá la contraseña de tu usuario actual.
1. Cambie a la consola gráfica y conéctese de nuevo como usuario "\<tuNombreDeUsuario\>".
1. Inicie varios emuladores de terminal a partir de su sesión gráfica.

{:.activity}
### Identidad de los usuarios

Duración aproximada : 8 minutos

1. Vuelva a la segunda consola virtual (tty2) y liste los usuarios conectados al sistema de diferentes maneras. Los comandos `who` y `finger` permiten listar los usuarios conectados al sistema.
2. Muestre únicamente la línea relativa a la conexión con su shell actual. Utilizar el comando `who` con un atributo. Puedes consultar el atributo utilizando el comando `man`.
3. Vuelva a la tercera consola virtual (tty3) y muestre el nombre de conexión (login) del usuario conectado. Utilizar el comando `who` con un atributo. Puedes consultar el atributo utilizando el comando `man`.
4. Muestre la descripción de la cuenta de usuario "\<tuNombreDeUsuario\>". Utilizar el comando `finger` con un atributo. Puedes consultar el atributo utilizando el comando `man`.

{:.activity}
### Cambio de contraseña

Duración aproximada : 10 minutos

1. Vuelva a la segunda consola virtual (tty2) y modifique la contraseña de "\<tuNombreDeUsuario\>2". ¿Es posible? Utilice el comando `passwd`. Escoja una contraseña autorizada por el sistema (con un mínimo de seis caracteres y no basada en palabras del diccionario).
2. Cambie su contraseña por "qdgj". ¿Es posible? ¿Por qué?
3. Cambie su contraseña por "azertyui". ¿Es posible? ¿Por qué?
4. Cambie de nuevo su contraseña por "gnulinux". ¿Es posible?
5. Modifique su contraseña para que vuelva a ser "chabacier". Recuerde esta última para poderse reconectar posteriormente.

{:.activity}
### Recuento

Duración aproximada: 5 minutos

1. ¿Cuántas líneas, palabras y caracteres comportan el archivo /etc/services? Utilice el comando `wc`.
2. ¿Cuántas cuentas de usuario están definidas en el sistema? Cada línea del archivo /etc/passwd define una cuenta de usuario. 

{:.activity}
### Visualización

Duración aproximada: 5 minutos

1. Borre la pantalla. Utilice el comando `clear`.
2. Visualice la cadena de caracteres "a b" sin las comillas (letras "a" y "b" separadas por un espacio). Utilice el comando `echo`.
3. Visualice la cadena de caracteres "a  b" sin las comillas (letras "a" y "b" separadas por dos espacios). ¿Qué observa?
4. Visualice la cadena de caracteres "a   b" sin las comillas (letras "a" y "b" separadas por un tabulador). Puede ser necesario utilizar la secuencia de teclas [Ctrl]-V para desactivar la terminación de palabras con la tecla [Tab]; será entonces posible introducir una tabulación en la línea de comandos. 

{:.activity}
### Tiempo

Duración aproximada : 10 minutos

1. Visualice la fecha del sistema. Utilice el comando `date`.
2. Visualice el calendario del mes en curso. Utilice el comando `cal`.
3. Visualice el calendario del mes de enero del año 5, después el del año 2005. ¿Hay alguna diferencia? Utilice el comando `cal` con los argumentos adecuados.
4. Visualice el calendario del mes de septiembre de 1752. ¿Qué observa?

{:.activity}
### Utilización del ratón y del teclado

Duración aproximada : 10 minutos

1. Siempre en la segunda consola virtual texto (tty2), visualice el calendario del año 2005. ¿Ve los días del mes de enero, febrero y marzo? Utilice el comando `cal`.
2. Desplácese verticalmente con el fin de mostrar las líneas precedentes visualizadas en el terminal.
3. Borre la pantalla rápidamente. Utilice el atajo de teclado [Ctrl]-L.
4. Recuerde los comandos tecleados anteriormente. Utilice el comando `history`.
5. Recupere los últimos comandos que contengan la cadena de caracteres "ho". Utilice la secuencia de teclas [Ctrl]-R. Si pulsa más veces [Ctrl]-R una vez ha buscado una cadena de carácteres seguirá encontrando comandos cada vez más viejos.
6. Ejecute el comando `sleep 999` y cancele su ejecución transcurridos unos pocos segundos. El comando `sleep` se limita a esperar el numero de segundos indicados en el argumento. Para cancelar un proceso en ejecución se usa [Ctrl]-C.
7. Compruebe la terminación de palabras con comandos y nombres de archivos. Utilice la tecla [Tab].
8. Vuelva a la consola gráfica y verifique la función de copiar/pegar del ratón con el click derecho.

{:.activity}
### Desconexión

Duración aproximada : 2 minutos

1. Desconéctese de la sesión gráfica.
2. Desconéctese de todos los terminales virtuales texto de diferentes maneras. Puedes usar `exit`, `logout` o [Ctrl]-D.

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


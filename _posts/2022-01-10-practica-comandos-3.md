---
title: "Práctica: Comandos GNU Linux (Parte 3)"
date: 2022-01-10 12:00:00 +0100
categories: [Sistemas Microinformáticos y Redes]
tags: [gnu linux, comandos, terminal, bash, seguridad informática, redes locales, servicios en red, práctica]
---

⚠️ La "Práctica: Comandos GNU Linux 2" NO existe.

## Objetivo

El objetivo de esta práctica es ser capaz de moverse por el árbol de los sistemas de archivos Linux, de manipular los archivos y los directorios.

Duración: 5 h.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Requisitos previos

Responde a las siguientes preguntas:

1. ¿Qué significa el carácter "." (punto) al principio del nombre de un archivo?
2. ¿Cuáles son los siete tipos de archivos en Linux?
3. ¿Qué tipo de ruta son las siguientes (absoluta, relativa, personal)?
    1. /home/tux/.bashrc
    1. ~nicolas/.bashrc
    1. /etc
    1. ./services
    1. ~Desktop
    1. ../home
    1. fic
4. ¿Qué comando permite cambiar de directorio actual?
    1. `pwd`
    1. `cd`
    1. `mv`
    1. `mkdir`
5. ¿Dónde se almacenan los nombres de archivos en un sistema de archivos Linux?
    1. En los bloques de datos reservados a los archivos.
    1. En el inodo de los archivos.
    1. En los bloques de datos reservados a los directorios.
    1. En el inodo de los directorios.
6. ¿Qué comandos permiten visualizar el contenido de un archivo de texto?
    1. `cat`
    1. `more`
    1. `od`
    1. `strings`
    1. `less`

{:.activity}
### Exploración del árbol de Linux

1. Conéctese a la segunda consola virtual texto (tty2) como el usuario "\<tuNombreDeUsuario\>".
2. Indique con un comando en que directorio se encuentra.
3. Vaya al directorio /usr/share/doc, después verifique la ruta de su directorio actual.
4. Remonte al directorio padre y verifíquelo.
5. Vaya a su directorio personal sin teclear su ruta.
6. Vuelva al directorio precedente sin teclear su ruta.
7. Vuelva a su directorio personal y liste los archivos presentes.
8. Liste ahora todos los archivos (incluso los ocultos).
9. Visualice de forma detallada el contenido del directorio /usr sin cambiar de directorio de trabajo.
10. Visualice el árbol de archivos contenidos en /var, siempre sin cambiar de directorio de trabajo.
11. Visualice de forma detallada el contenido del directorio /var/log ordenando los archivos del más antiguo al más reciente.
12. Visualice la información detallada del directorio /home sin listar su contenido.
13. ¿Cuál es el formato de los archivos /etc/passwd, /usr/bin/passwd, /bin/ls y /usr?
14. Visualice también la información contenida en los inodos de los archivos anteriores.

#### Pistas

3. Utilice el comando `cd`; podrá ayudarse de la finalización de palabras con la tecla [Tab].
4. El directorio padre se referencia por "..".
6. El directorio precedente en el que usted se encontraba es /usr/share.
7. Utilice el comando `ls`.
10. Utilice la opción volviendo al comando...

{:.activity}
### Consulta de archivos

Duración estimada: 10 minutos

1. Visualice el contenido del archivo /etc/issue. ¿Qué contiene?
2. Visualice página por página el contenido del archivo /etc/services. ¿Qué contiene?
3. Determine el formato del archivo /bin/false y visualice su contenido con el comando adecuado.
4. Consulte la página del manual del comando od y visualice ahora el contenido del archivo /bin/false en hexadecimal.
5. Visualice las cadenas de caracteres contenidas en el archivo /bin/false.

#### Pistas

1. Utilice el comando `cat`, `more` o `less`.
2. Utilice el comando `more` o `less`.
3. Un archivo binario no debe visualizarse con la ayuda de herramientas reservadas a los archivos de texto. En efecto, ciertos caracteres no imprimibles contenidos en estos archivos pueden modificar el comportamiento del terminal si son visualizados como tales; esto puede acarrear por ejemplo una visualización como la siguiente en el terminal: `images/0401CAT.png`.
4. Si se encuentra desafortunadamente en este caso, puede teclear el comando reset (a "ciegas") para reinicializar su terminal.
5. Utilice el comando strings.

{:.activity}
### Directorios

Duración estimada: 15 minutos

1. Como "\<tuNombreDeUsuario\>", vaya a su directorio personal.
2. Cree un directorio con el nombre capítulo3.
3. Vaya a su directorio capítulo3.
4. Cree el árbol dir1/dir2/dir3/dir4.
5. Liste el contenido del directorio actual de forma recursiva.
6. Suprima el directorio dir1. ¿Es posible?
7. Suprima el árbol de directorios dir1/dir2/dir3/dir4, después verifíquelo listando el directorio actual de forma recursiva.
8. Cree ahora el árbol siguiente en su directorio actual (/home/\<tuNombreDeUsuario\>/capítulo3) sin cambiar de directorio: "images/0402arbo.png".

#### Pistas

1. Utilice el comando `cd`.
2. Utilice el comando `mkdir`. Asegúrese de especificar correctamente la ruta del directorio a crear, ya sea como ruta relativa, absoluta o personal.
4. Utilice el comando `mkdir` con la opción adecuada.
5. Utilice el comando `ls` con la opción adecuada.
6. Utilice el comando `rmdir`.
7. Utilice el comando `rmdir` con la opción adecuada.
8. Es posible pasar varios argumentos en el mismo comando `mkdir`.

{:.activity}
### Archivos

Duración estimada: 40 minutos

1. Copie el archivo /etc/services en su directorio capítulo3.
2. ¿A quién pertenece el archivo que acaba de copiar? ¿Cuál es la fecha de la última modificación?
3. Cree archivos que no contengan ningún dato y con los nombres siguientes: redondo, triángulo, cuadrado, rectángulo, verde y azul.
4. Mueva el archivo redondo al directorio curva, y los archivos triángulo, cuadrado y rectángulo al directorio ángulo.
5. Mueva ahora los archivos verde y azul al directorio frío.
6. Vaya al directorio color y muestre el contenido del directorio de forma recursiva.
7. Copie el directorio frío con el nuevo nombre: caliente. ¿Es posible? ¿Cómo?
8. Vaya al directorio caliente y renombre el archivo azul como rojo y verde como amarillo.
9. Efectúe un vínculo duro ("hard link") con el nombre rosa hacia el archivo rojo.
10. Efectúe un vínculo simbólico ("soft link") con el nombre naranja hacia el archivo rojo.
11. ¿Cuál es el tipo, el tamaño, la fecha y el número de inodo de cada archivo presente en el directorio? ¿Que observa?
12. Efectúe un segundo vínculo simbólico con el nombre naranjaAbsoluta hacia el archivo rojo especificando esta vez el archivo rojo con una ruta absoluta.
13. Remonte al directorio capítulo3 y renombre el directorio color como pintura. ¿Es necesario especificar...

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


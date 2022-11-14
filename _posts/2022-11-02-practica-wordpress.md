---
title: "Práctica: Wordpress"
date: 2022-11-02 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, práctica]
img_path: /assets/img/practica-wordpress/
---

## Objetivo y duración

El objetivo de esta práctica es aprender a instalar y configurar Wordpress de manera manual.

Duración: 7 h

## Entrega y presentación

La entrega de esta práctica debe ser un documento PDF con un nombre en el siguiente formato: "\<Apellidos\>_\<Nombre\>_P\<NúmeroDeLaPráctica\>.zip". Por ejemplo, en mi caso el nombre del documento PDF sería "RuizGarcía_Marcos_P07.pdf".

1. Debe contener una portada con título, nombre de la asignatura, curso, autor y fecha de realización.
2. Debe tener un índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
3. Debe tener cada página numerada.
4. Las actividades deberán estar numeradas y ordenadas de manera que se ignore el "3.". Por ejemplo, la sección "3.1. Actividad" será "1. Actividad" o "Actividad 1" en la entrega del alumno.
5. Cada actividad debe tener **el enunciado en negrita** y la respuesta en texto normal.
6. Cada imagen debe tener un pie de foto la cual tenga el siguiente formato: "Figura \<número\>: \<BreveDescripciónDeLaFigura\>".
7. El documento no debe contener faltas ortográficas.
8. Los comandos y ficheros de configuración que hayas utilizado deben quedar reflejados en el PDF de la entrega en texto para permitirte copiar y pegar el día del examen todos los comandos de una manera rápida.
9. Los comandos y documentos de configuración que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$ sudo apt install neofetch`.
10. Para las actividades a mano se deberá hacer una foto a la resolución del ejercicio y añadirla al PDF.

## Actividades

A continuación se listan las actividades que se deben realizar. Recuerda que el HTML solo marca la estructura y contenido del documento y CSS la parte estilística y visual.

{:.activity}
### Instalar máquina virtual de Ubuntu Server

Descarga de [la sección de descargas de Ubuntu](https://ubuntu.com/download/server) e instala en una máquina virtual Ubuntu Server.

> 📷 Haz una captura para demostrar la realización de esta actividad.
{:.prompt-info}

{:.activity}
### Instalar un servidor SSH

Una manera de trabajar cómodamente con servidores es utilizar SSH.

Primero deberás habilitar otro adaptador en la Configuración de tu máquina virtual del tipo "Adaptador sólo-anfitrión". Si quieres saber más de los tipos de adaptadores puedes leer el artículo [Diferencias entre nat, red nat, adaptador puente, internal y solo anfitrión en Virtualbox](https://danitic.wordpress.com/2018/10/24/diferencias-entre-nat-red-nat-adaptador-puente-internal-y-solo-anfitrion-en-virtualbox/).

Resulta muy fácil instalar un servidor SSHH como se puede ver en el artículo [Servicio SSH](/posts/servicio-ssh/). 

Tras ello deberás ser capaz de conectarte desde un cliente SSH de tu host al servidor de la máquina virtual.

![Conexión SSH desde Windows a una máquina virtual](conexionSsh.png)
_Conexión SSH desde Windows a una máquina virtual_

Para conectarte desde tu máquina Windows yo recomiendo el programa "PowerShell" o "Windows Terminal".

> 📷 Haz una captura donde se vea que estás conectado a través de ssh desde tu máquina host Windows.
{:.prompt-info}

{:.activity}
### Instalar Wordpress en la máquina virtual

Puedes instalar WordPress. Puedes seguir los pasos del artículo [Cómo instalar WordPress en Ubuntu 18.04 usando el Stack de LAMP](https://www.hostinger.es/tutoriales/instalar-wordpress-ubuntu).

> 📷 Haz una captura del escritorio de administración de Wordpress.
{:.prompt-info}

{:.activity}
### Crea categorías

Crea las siguientes Categorías:
- Crea una Categoría llamada "ejercicios", y otra Categoría llamada "blog". 
- Crea dos Categorías más, llamadas "matemáticas" y "lengua", y haz que dependan de la Categoría "ejercicios".

> 📷 Haz una captura de pantalla de la página de edición de Categorías, y copia la captura en un documento que entregaremos como resultado de esta tarea. 
{:.prompt-info}

{:.activity}
### Crea entradas

Crea dos Entradas en tu Wordpress, tituladas "Ejercicio de mates" y "Ejercicio de escritura", de forma que:

- Contengan algo de texto, o una imagen.
- Estén clasificadas por la Categoría llamada "ejercicios".
- Además, la entrada "Ejercicio de mates" esté clasificada con la Categoría "matemáticas", y la de "Ejercicio de escritura" por la Categoría "lengua"
- Ahora utilizaremos las Etiquetas. Para ello, clasifica una de las dos entradas con la Etiqueta "optativo", y la otra con la Etiqueta "obligatorio".

> 📷 Haz una captura de pantalla de la configuración de una de las dos entradas y cópiala en el documento resultado.
{:.prompt-info}

{:.activity}
### Instala un plugin

Instala y activa el plugin WP Statistics para ver las estadísticas de tu nueva web.

> 📷 Haz una captura de pantalla de la configuración del plugin WP Statistics.
{:.prompt-info}
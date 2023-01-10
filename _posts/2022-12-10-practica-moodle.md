---
title: "Práctica: Moodle"
date: 2022-11-02 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, práctica]
img_path: /assets/img/practica-moodle/
---

## Objetivo y duración

El objetivo de esta práctica es aprender a instalar y configurar Moodle de manera manual.

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

## Evaluación

La realización de la práctica valdrá un 50% y el test sobre la misma el otro 50%.

## Actividades

A continuación se listan las actividades que se deben realizar.

Tienes a tu disposición mi artículo [Tutorial: Instalar Moodle en Ubuntu Server 22.04](/posts/tutorial-moodle/) que te servirá de apoyo para la realización de esta práctica.

{:.activity}
### Crear máquina virtual e instalar Ubuntu Server 22.04 con un servidor SSH

Crea una máquina virtual e instala Ubuntu Server 22.04 con un servidor SSH para poder controlarlo desde un cliente SSH "remoto" similar a como se haría en la realidad.

> 📷 Haz una captura para demostrar que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}

{:.activity}
### Instalar pila LAMP

Para instalar Moodle primero se debe instalar la pila LAMP, es decir, Linux (Ubuntu 22.04 en nuestro caso), Apache, MySQL y PHP.

{:.activity}
### Instalar Moodle 4.1 en la máquina virtual

Instala y configura Moodle 4.1.

> 📷 Haz varias capturas para demostrar que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}

{:.activity}
### Crea un curso

Crea un curso con al menos un usuario con rol de alumno y un usuario con rol de profesor. El alumno deberá tener tú nombre y el profesor el mío. Deberás hacer login con el usuario profesor y el usuario alumno y ambos deberán estar matriculados en el mismo curso. Se valorará positivamente que añadas más de un alumno y más de un profesor.

> 📷 Haz varias capturas para demostrar que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}

{:.activity}
### Crea una actividad

Crea una actividad Cuestionario como profesor en tu nuevo curso con una sola pregunta tipo test. Haz que la haga al menos un alumno.

> 📷 Haz varias capturas para demostrar que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}

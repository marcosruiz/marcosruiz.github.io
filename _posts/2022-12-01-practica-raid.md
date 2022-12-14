---
title: "Práctica: RAID por software"
date: 2022-12-01 09:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, seguridad pasiva, raid]
img_path: /assets/img/practica-raid/
---

## Objetivo

El objetivo de esta práctica va a ser aprender a configurar y montar discos RAID en GNU Linux por terminal. Concretamente RAID0, RAID1, RAID1+0 y RAID5.

Duración: 4 horas

## Entrega y presentación

La entrega de esta práctica debe ser un fichero PDF con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_P\<NúmeroDeLaPrácticaCon2Dígitos\>.pdf". Por ejemplo, en mi caso el nombre del fichero PDF sería "RuizGarcía_Marcos_P0X.pdf".

Asegúrate de que el documento PDF cumple con los siguientes parámetros:

1. Debe contener una portada con título, nombre de la asignatura, curso, autor y fecha de realización.
2. Debe tener un índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
3. Debe tener cada página numerada.
4. Cada actividad debe estar numerada. 
5. Cada actividad debe tener **el enunciado en negrita** y la respuesta en texto normal.
6. Cada imagen debe tener un pie de foto la cual tenga el siguiente formato: "Figura \<número\>: \<BreveDescripciónDeLaFigura\>".
7. El documento no debe contener faltas ortográficas.
8. Los comandos y ficheros de configuración que hayas utilizado deben quedar reflejados en el PDF de la entrega en texto para permitirte copiar y pegar el día del examen todos los comandos de una manera rápida.
9. Los comandos y documentos de configuración que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$sudo apt install neofetch`.
10. Para las actividades a mano se deberá hacer una foto a la resolución del ejercicio y añadirla al PDF. 

## Evaluación

La realización de la práctica valdrá un 50% y el test sobre la misma el otro 50%.

## Actividades

A continuación se listan las actividades que se deben realizar. Debes documentar cada paso que realices para llevar a cabo está instalación y configuración de cada actividad. Debes realizar capturas de pantalla que demuestren la autoría de la práctica.

{:.activity}
### Máquina virtual con Ubuntu Server 22.04

Instala Ubuntu Server en una máquina virtual. Puedes leer el artículo [Tutorial: Instalar Ubuntu Server 22.04](/posts/tutorial-ubuntu-server-22-04) para llevar esta actividad a cabo.

> 📷 Haz una captura para demostrar la realización de este apartado.
{:.prompt-info}

Añade al menos 5 discos virtuales de **100MB** cada uno para la realización de las siguientes actividades.

> 📷 Haz una captura para demostrar la realización de este apartado.
{:.prompt-info}

Posteriormente haz una instantánea para poder volver atrás en caso de necesidad.

> 📷 Haz una captura para demostrar la realización de este apartado.
{:.prompt-info}

{:.activity}
### RAID 0

Configura un sistema de matriz de discos redundante RAID0 en una máquina Ubuntu Server con dos o tres discos. Crea un fichero con tu nombre de usuario en dicho RAID.

{:.question}
¿Cuántos discos necesitaremos como mínimo? ¿Y cómo máximo cuantos podríamos poner?

> 📷 Haz una captura para demostrar la realización de esta actividad.
{:.prompt-info}

{:.activity}
### RAID 1

Configura un sistema de matriz de discos redundante RAID1 en una máquina Ubuntu Server con dos discos. Crea un fichero con tu nombre de usuario en dicho RAID.

> 📷 Haz una captura para demostrar la realización de este apartado.
{:.prompt-info}

{:.question}
¿Cuántos discos necesitaremos como mínimo?  ¿Y cómo máximo cuantos podríamos poner?

Crea un fichero de texto con la herramienta `fortune`.

> 📷 Haz una captura para demostrar la realización de este apartado.
{:.prompt-info}

Desactiva un disco y comprueba que ocurre.

> 📷 Haz una captura para demostrar la realización de este apartado.
{:.prompt-info}

Introduce un disco nuevo y haz que se sincronicen.

> 📷 Haz una captura para demostrar la realización de este apartado.
{:.prompt-info}

{:.activity}
### RAID 1+0

Configura un sistema de matriz de discos redundante RAID1+0 en una máquina Ubuntu Server con cuatro discos. Crea un fichero con tu nombre de usuario en dicho RAID.

> 📷 Haz una captura para demostrar la realización de este apartado.
{:.prompt-info}

{:.question}
¿Cuántos discos necesitaremos como mínimo? ¿Y cómo máximo?

Crea un fichero de texto con la herramienta `fortune`.

Desactiva un disco y comprueba que ocurre.

> 📷 Haz una captura para demostrar la realización de este apartado.
{:.prompt-info}

Introduce un disco nuevo y comprueba como se copian.

> 📷 Haz una captura para demostrar la realización de este apartado.
{:.prompt-info}

{:.activity}
### RAID 5

Genera un sistema RAID nivel 5 en una máquina Ubuntu Server. Para ello, se crearán tres discos y se usarán para el nuevo RAID. A diferencia de la solución para un RAID1, se activará el módulo raid5 con modprobe raid5 y se usará el nivel 5 en el comando:

```console
#mdadm --create /dev/md0 --level=raid5 --raid-devices=3 /dev/sdd1 /dev/sde1 /dev/sdf1
```

> 📷 Haz una captura para demostrar la realización de este apartado.
{:.prompt-info}

{:.question}
¿Cuántos discos necesitaremos como mínimo? ¿Y cómo máximo?

Crea un fichero de texto con la herramienta `fortune`.

Desactiva un disco y comprueba que ocurre.

> 📷 Haz una captura para demostrar la realización de este apartado.
{:.prompt-info}

Introduce un disco nuevo y comprueba como se copian.

> 📷 Haz una captura para demostrar la realización de este apartado.
{:.prompt-info}

## Bibliografía


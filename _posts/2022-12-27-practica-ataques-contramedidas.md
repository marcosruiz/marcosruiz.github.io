---
title: "Práctica: Ataques y contramedidas"
date: 2022-12-21 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría, seguridad activa]
img_path: /assets/img/practica-ataques-contramedidas/
---

## Objetivo y duración

El objetivo de esta práctica es aprender a utilizar diversos sistemas de seguridad activa para controlar las redes.

Duración: 7 h

## Entrega y presentación

La entrega de esta práctica debe ser un documento PDF con un nombre en el siguiente formato: "\<Apellidos\>_\<Nombre\>_P\<NúmeroDeLaPrácticaConDosDígitos\>.pdf". Por ejemplo, en mi caso el nombre del documento PDF sería "RuizGarcía_Marcos_P\<NúmeroDeLaPrácticaConDosDígitos\>.pdf".

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

A continuación se listan las actividades que se deben realizar.

{:.activity}
### Ataque ARP Spoofing

{:.activity}
### Ataque DNS Spoofing

{:.activity}
### Aircrack-ng

Realizar las tareas de [Wifi Hacking 101](https://tryhackme.com/room/wifihacking101).

{:.activity}
### WebGoat

<iframe width="560" height="315" src="https://www.youtube.com/embed/AFp7hG-8q0s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

```console
$sudo su
#apt get install aircrack-ng
#airmon-ng start wlan0
#service network-manager stop
#airodump-ng wlan0
#airodump-ng --ivs --write captura --bssid 00:13:49:XX:XX:34 --channel 9 wlan0
#aircrack-ng *.ivs
```

## Bibliografía

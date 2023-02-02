---
title: "Práctica: WLAN con Packet Tracer"
date: 2022-03-08 14:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, wlan, práctica]
---

## Objetivo

El objetivo de esta práctica es aprender que es una WLAN y como configurarla utilizando la herramienta Packet Tracer.

## Entrega y presentación

La entrega de esta práctica debe ser un fichero ZIP con un nombre en el siguiente formato `<Apellidos>_<Nombre>_P<NúmeroDeLaPrácticaConDosDígitos>.zip`{: .filepath}. Por ejemplo, en mi caso el nombre del fichero ZIP sería `RuizGarcía_Marcos_P09.zip`{: .filepath}.

En la raíz del fichero ZIP deben encontrarse el documento PDF con el nombre `<Apellidos>_<Nombre>_P<NúmeroDeLaPrácticaConDosDígitos>.pdf`{: .filepath} y las actividades de Packet Tracer en formato PKT con el nombre `<NúmeroDeActividad>.pkt`{: .filepath}.

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

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Un router WRT300N

Con ayuda de [Tutorial: WLAN con Packet Tracer](/posts/tutorial-wlan-packet-tracer) realizar el siguiente esquema de red de manera funcional.

![Gestión de permisos en GNU Linux](/assets/img/practica-wlan-packet-tracer/esquemaRed1.png)
_Esquema de red_

{:.question}
¿Qué diferencias hay entre un Router-PT Generic y el router WRT300N?

> 📷 Haz una o varias capturas para demostrar que la actividad ha sido realizada satisfactoriamente por ti. Deberá verse la topología junto al envío de mensajes.
{:.prompt-info}


{:.activity}
### Tres router WRT300N

Añade dos routers WRT300N más a la topología anterior utilizando redes de tipo C. Deberás usar redes tipo C privadas para la parte "interna" y redes tipo C públicas para la parte "externa".

{:.question}
¿Puedo usar la misma dirección tipo C privada en las tres partes "internas" sin que haya conflictos? ¿Por qué?

> 📷 Haz una o varias capturas para demostrar que la actividad ha sido realizada satisfactoriamente por ti. Deberá verse la topología junto al envío de mensajes.
{:.prompt-info}
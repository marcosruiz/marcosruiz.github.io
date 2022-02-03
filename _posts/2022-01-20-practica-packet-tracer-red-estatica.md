---
title: "Práctica: Red estática en Packet Tracer"
date: 2022-01-20 12:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, práctica]
---

## Objetivo

El objetivo de esta práctica es que el alumno se familiarice con la herramienta Packet Tracer.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Red de ordenadores

Tenemos que construir una red de ordenadores a partir de la IP 199.35.20.0/24. Y queremos disponer de 20 máquinas en cada subred. Calcular:

1. Máscara de subred que le permitiría tener 20 hosts en cada subred.
1. Número máximo de subredes que se pueden definir.
1. Especificar cada subred, será independiente una de otra.
1. Realizar un esquema de las misma usando Packet Tracer (usa direccionamiento estático)
    - Debes guardar ejercicio en formato .pkt
    - Cada subred debe tener al menos dos PCs. Un PC contendrá la primera IP asignable a equipos (la siguiente a la del router) y el otro tendrá la última IP asignable a equipos.
1. Explica en el documento PDF:
    1. Cómo has obtenido la máscara de subred modificada.
    1. Cómo has obtenido las subredes.
    1. Cómo has configurado cada dispositivo explicando las razones de tus decisiones.

Si necesitas ayuda con el cálculo de subredes puedes ver este vídeo:

<iframe width="100%" height="315" src="https://www.youtube.com/embed/lEKR7WtKzDA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Si necesitas ayuda con la creación de subredes en Packet Tracer puedes ver este vídeo:

<iframe width="100%" height="315" src="https://www.youtube.com/embed/Mk8UZYTP3Xo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Entrega y presentación

La entrega de esta práctica debe ser un fichero ZIP con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.zip". Por ejemplo, en mi caso el nombre del fichero ZIP sería "RuizGarcía_Marcos_Práctica\<NúmeroDeLaPráctica\>.zip".

En la raíz del fichero ZIP deben encontrarse el documento PDF con el nombre "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.pdf" y las actividades de Packet Tracer en formato PKT con el nombre "actividad_\<NúmeroDeActividad\>.pkt".

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
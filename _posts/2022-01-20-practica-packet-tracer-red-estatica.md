---
title: "Práctica: Subredes sin enrutamiento en Packet Tracer"
date: 2022-01-20 12:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, práctica]
---

## Objetivo

El objetivo de esta práctica es que el alumno se familiarice con la herramienta Packet Tracer en el uso de subredes.

## Entrega y presentación

La entrega de esta práctica debe ser un fichero ZIP con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.zip". Por ejemplo, en mi caso el nombre del fichero ZIP sería "RuizGarcía_Marcos_Práctica\<NúmeroDeLaPráctica\>.zip".

En la raíz del fichero ZIP deben encontrarse el documento PDF con el nombre "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.pdf" y las actividades de Packet Tracer en formato PKT con el nombre "actividad_\<NúmeroDeActividad\>.pkt".

Asegúrate de que el documento PDF cumple con los siguientes parámetros:

1. Cada actividad de Packet Tracer 6.2 debe tener una o varias capturas que demuestren que el sistema funciona correctamente.
2. El fichero .pkt debe tener indicadas con dibujos cada red con su @ de red.
3. Debe contener una portada con título, nombre de la asignatura, curso, autor y fecha de realización.
4. Debe tener un índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
5. Debe tener cada página numerada.
6. Cada actividad debe estar numerada. 
7. Cada actividad debe tener el enunciado en negrita y la respuesta en texto normal.
8. Cada imagen debe tener un pie de foto la cual tenga el siguiente formato: "Figura \<número\>: \<BreveDescripciónDeLaFigura\>".
9. El documento no debe contener faltas ortográficas.
10. Los comandos y ficheros de configuración que hayas utilizado deben quedar reflejados en el PDF de la entrega en texto para que permitirte copiar y pegar el día del examen todos los comandos de una manera rápida.
11. Los comandos y documentos de configuración que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$ sudo apt install neofetch`.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Tres subredes a partir de red de tipo C

Tenemos que construir una red de ordenadores a partir de la IP 199.35.20.0/24. Y queremos disponer de 20 máquinas en cada subred. Calcular:

1. Máscara de subred en notación decimal punteada y en notación prefija que le permitiría tener 20 hosts en cada subred.
2. Número máximo de subredes reales que se pueden definir (totales y útiles).
3. Numero máximo de host reales que se pueden definir en cada subred (totales y útiles).
4. Especificar cada subred con su @ de red, su 1ª @ IP disponible, su última @ IP disponible y su dirección de broadcast.
5. Realizar un esquema de las mismas usando Packet Tracer 6.2 con al menos 3 subredes: La subred 1, la subred 3 y la subred 5.
    - Debes guardar ejercicio en formato .pkt. 
    - Cada subred debe tener al menos dos PCs. Un PC contendrá la primera @ IP asignable a equipos (la siguiente a la del router) y el otro tendrá la última @ IP asignable a equipos.
6. Explica en el documento PDF:
    1. Cómo has obtenido la máscara de subred modificada.
    2. Cómo has obtenido las subredes.
    3. Cómo has configurado cada dispositivo explicando las razones de tus decisiones.

Si necesitas ayuda con la creación de subredes en Packet Tracer puedes ver este vídeo:

<iframe src="https://www.youtube.com/embed/Mk8UZYTP3Xo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


{:.question}
¿Es 199.35.20.0 una dirección de red? ¿Por qué?

{:.question}
¿Es 199.35.20.0 una dirección pública o privada?

{:.activity}
### Tres subredes a partir de red de tipo A

Tenemos que construir una red de ordenadores a partir de la IP 23.0.0.0/8. Y queremos disponer de 8 subredes útiles.

Calcular:

1. Máscara de subred en notación decimal punteada y en notación prefija.
2. Número máximo de subredes reales que se pueden definir (totales y útiles).
3. Numero máximo de host reales que se pueden definir en cada subred (totales y útiles).
4. Especificar cada subred con su @ de red, su 1ª @ IP disponible, su última @ IP disponible y su dirección de broadcast.
5. Realizar un esquema de las mismas usando Packet Tracer 6.2 con al menos 3 subredes: La subred 1, la subred 4 y la subred 8.
    - Debes guardar ejercicio en formato .pkt. 
    - Cada subred debe tener al menos dos PCs. Un PC contendrá la primera @ IP asignable a equipos (la siguiente a la del router) y el otro tendrá la última @ IP asignable a equipos.

{:.question}
¿Es 23.0.0.0 una dirección de red? ¿Por qué?

{:.question}
¿Es 23.0.0.0 una dirección pública o privada?
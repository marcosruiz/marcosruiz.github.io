---
title: "Práctica: NAT con Packet Tracer"
date: 2022-03-07 14:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, nat, práctica]
---

## Objetivo

El objetivo de esta práctica es aprender que es un NAT y como configurarlo utilizando la herramienta Packet Tracer. Puedes obtener ayuda de los siguientes enlaces donde se explica como configurar el NAT estático, el NAT dinámico y el PAT:

- [Configuración de la NAT](https://ccnadesdecero.es/configuracion-nat-estatica-dinamica-pat)
- [Configuración de NAT Estática](https://ccnadesdecero.es/configuracion-nat-estatica/)
- [Configuración de NAT Dinámica](https://ccnadesdecero.es/configuracion-nat-dinamica/)
- [Configuración de PAT (NAT con sobrecarga)](https://ccnadesdecero.es/configuracion-pat-nat-sobrecarga/)

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Un router y un router NAT estático

Seguir los pasos del artículo [Tutorial: Configurar un NAT estático en Packet Tracer](/posts/tutorial-nat-estatico-packet-tracer).

{:.question}
¿Qué ventajas tiene utilizar una NAT estática sobre no utilizarla?

{:.question}
¿Cuales son los rangos de las direcciones IPv4 privadas?

{:.activity}
### Tres router 

Seguir los pasos del artículo [Tutorial: NAT y PAT en Packet Tracer](/posts/tutorial-nat-pat-packet-tracer).

## Entrega y presentación

La entrega de esta práctica debe ser un fichero ZIP con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.zip". Por ejemplo, en mi caso el nombre del fichero ZIP sería "RuizGarcía_Marcos_Práctica\<NúmeroDeLaPráctica\>.zip".

En la raíz del fichero ZIP deben encontrarse el documento PDF con el nombre "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.pdf" y las actividades de Packet Tracer en formato PKT con el nombre "\<NúmeroDeActividad\>_actividad.pkt".

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
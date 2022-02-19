---
title: "(En proceso) Práctica: VLAN con Packet Tracer"
date: 2022-02-16 14:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, vlan, práctica]
---

## Objetivo

El objetivo de esta práctica es:
- Aprender que son las VLAN 
- Aprender como configurar VLAN en switches utilizando la herramienta Packet Tracer.
- Verificar la conectividad extremo a extremo.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Tutorial

Seguir los pasos del artículo [Práctica: VLAN con Packet Tracer](/posts/practica-vlan-packet-tracer).

{:.activity}
### Tres VLAN y dos switches

Configurar tres VLAN con dos switches como se ve en la siguiente figura:


![img-description](/assets/img/practica-vlan-packet-tracer/tresVlanDosSwitches.png)
_Distribución de red_

Cada VLAN deberá tener el siguiente nombre:

- VLAN 2: INFORMATICA
- VLAN 3: SISTEMAS
- VLAN 4: MECATRÓNICA

Pasos para resolver la tarea:

1. Configurar Switch 0
1. Configurar Switch 1
1. Configurar las tres VLAN en el Switch 0
1. Configurar las tres VLAN en el Switch 1
1. Asignar interfaces a las VLAN
1. Verificar la implementación de las VLAN


{:.activity}
### 

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

## Bibliografía

- [Ejercicios resueltos con Cisco Packet Tracer parte 2: VLAN y enlaces troncales](https://parzibyte.me/blog/2018/05/22/ejercicios-resueltos-cisco-vlan-enlaces-troncales/)
- [Configuración de VLANs en Packet Tracer](https://www.raulprietofernandez.net/blog/packet-tracer/configuracion-de-vlans-en-packet-tracer)
- [Enrutamiento entre VLANs con Packet Tracer](https://www.raulprietofernandez.net/blog/packet-tracer/enrutamiento-entre-vlans-con-packet-tracer)
- [Packet Tracer: Configuración de redes VLAN](https://examenredes.com/3-3-12-packet-tracer-configuracion-de-redes-vlan-respuestas/)
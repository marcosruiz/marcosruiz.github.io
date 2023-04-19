---
title: "Práctica: IPv6 en Packet Tracer"
date: 2022-05-15 12:20:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, práctica]
img_path: /assets/img/practica-ipv6/
---

## Introducción y objetivo

El objetivo de esta práctica es entender cómo usar IPv6 junto a IPv4 en Packet Tracer.

## Entrega y presentación

La entrega será en formato ZIP. La práctica puede ser realizada **por parejas**. Leer [Entrega y presentación de prácticas](/posts/entrega-presentacion-practicas/).

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Vídeo de IPv6 de NASeros

Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/LQf1azzcG7s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Y responde a las siguientes preguntas sobre el mismo:

1. ¿Por qué existe IPv6?
1. ¿Es necesario el uso de NATs en IPv6?
1. ¿Por qué se sigue usando IPv4?
1. ¿Cuál es el porcentaje de adopción de IPv4 en España según MacJosan?
1. ¿Qué países son líderes en la implantación de IPv6? ¿Por qué?

{:.activity}
### Artículo de tipos de direcciones IPv6

Lee el artículo [Tipos de Direcciones IPv6](https://ccnadesdecero.es/tipos-direcciones-ipv6/) y contesta a las siguientes preguntas sobre el mismo:

1. ¿Cuál es la longitud de prefijo recomendada para la mayoría de las subredes IPv6?
   1. /32
   1. /48
   1. /64
   1. /128
1. ¿Qué parte de un GUA es asignada por el ISP?
   1. Prefijo de routing global
   1. Prefijo de enrutamiento global e ID de subred
   1. Prefijo
   1. Prefijo RIR
1. ¿Qué tipo de dirección de unidifusión IPv6 no se puede enrutar entre redes?
   1. dirección local única
   1. GUA
   1. dirección IPv4 incrustada
   1. LLA
1. Verdadero o Falso: el campo ID de subred de un GUA debe tomar prestados bits del ID de interfaz.
   1. Verdadero
   1. Falso
1. ¿Qué tipo de dirección IPv6 comienza con fe80?
   1. GUA
   1. LLA
   1. dirección de multidifusión
   1. Ninguno. Una dirección IPv6 debe comenzar con 2001

{:.activity}
### Dos redes y un router

Sigue los pasos del siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/K9GgC5EX2io" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

> Indica los comandos que has utilizado en texto plano. 📷 Haz una captura del escritorio al completo para demostrar que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}

{:.question}
¿Cuál es la parte de red y la parte de host de las dos redes IPv6 utilizadas en el vídeo?

{:.question}
Entra en modo simulación y haz un `ping` desde el terminal a la dirección `FF02::1` y `FF02::2` y observa que ocurre pulsando en el botón "Capture / Forward". ¿Qué ocurre? ¿Por qué?. En el artículo [Direcciones Multicast IPv6](https://ccnadesdecero.es/direcciones-multicast-ipv6/) encontrarás la respuesta.

{:.activity}
### Artículo de división de subredes de una red IPv6

Lee el artículo [División de Subredes de una Red IPv6](https://ccnadesdecero.es/dividir-redes-ipv6/) y contesta a las siguientes preguntas sobre el mismo:

1. ¿Verdadero o falso? IPv6 se diseñó teniendo en cuenta las subredes.
   1. Verdadero
   1. Falso
1. ¿Qué campo de un GUA IPv6 se utiliza para subredes?
   1. Prefijo
   1. Red
   1. Prefijo de routing global
   1. ID de subred
   1. ID de interfaz
1. Dado un prefijo de enrutamiento global /48 y un prefijo /64, ¿cuál es la parte de subred de la siguiente dirección: 2001:db8:cafe: 1111:2222:3333:4444:5555
   1. cafe
   1. 1111
   1. 2222
   1. 3333
   1. 4444
1. Dado un prefijo de enrutamiento global /32 y un prefijo /64, ¿cuántos bits se asignarían para el ID de subred?
   1. 8
   1. 16
   1. 32
   1. 48
   1. 64

{:.activity}
### Enrutamiento estático con IPv6



{:.activity}
### Enrutamiento dinámico con IPv6

Implementa la siguiente topología de red usando redes IPv6 y enrutamiento dinámico:

![imgDescription](topologiaEnrutamientoDinamico.png)
_Topología objetivo_

```console
ipv6 unicast-routing
ipv6 router rip RIP-AS
interface gigabitethernet 0/0
no shutdown
exit
interface serial 0/0/0
ipv6 rip RIP-AS enable
no shutdown
```

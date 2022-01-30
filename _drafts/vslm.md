---
title: VSLM
date: 2022-01-08 17:17:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, subnetting, subredes, vslm]
---


## Introducción

VLSM del Inglés Variable Length Subnet Mask o Máscara de Subred de Longitud Variable en español, es una técnica que se creó para hacer un uso más eficiente del espacio de direccionamiento de una red. A diferencia de la técnica tradicional de subdividir redes (FLSM), VLSM se enfoca en el número de Hosts de cada red, así a cada subred se le asigna una máscara diferente en función del número de hosts que ésta va a conectar.

## Ejemplo de desperdicio de direcciones

Si se utiliza una máscara de subred de tamaño fijo (la misma máscara de subred en todas las subredes), todas las subredes van a tener el mismo tamaño. Por ejemplo, si la subred más grande necesita 200 hosts, todas las subredes van a tener el mismo tamaño de 256 direcciones IP (nota: se ha redondeado hacia arriba, hacia la siguiente potencia, de 2). Si una subred que necesita 10 equipos, se asigna la misma subred de 256 direcciones, aunque las restantes 246 direcciones no se utilicen. Incluso los enlaces seriales (WAN), que solo necesitan dos direcciones IP, requieren una subred de 256 direcciones. (nota: en realidad serían 254 direcciones asignables a los hosts, ya que hay que descontar la dirección de la subred (todo ceros en la parte de la identificación del host) y la dirección de broadcast (todo unos en la parte de la identificación del host)). 

## Bibliografía

- [Subredes VLSM paso a paso](https://arcadio.gq/subredes-vlsm-paso-a-paso.html#)
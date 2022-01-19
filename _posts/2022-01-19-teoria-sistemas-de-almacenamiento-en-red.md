---
title: "Teoría: Sistemas de almacenamiento en red"
date: 2022-01-19 00:30:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [gnu linux, comandos, terminal, bash, seguridad informática, servicios en red, smr, asir]
---

## Introducción

Existen varias soluciones para permitir al acceso de datos a través de la red:

- DAS
- NAS
- SAN

El siguiente video explica brevemente los tres sistemas de almacenamiento:

<iframe width="100%" height="315" src="https://www.youtube.com/embed/CAmTfNc3vlA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## ¿Qué es un DAS o Direct Attached Storage?

El almacenamiento de conexión directa o DAS (Direct Attached Storage), **es el método tradicional de almacenamiento**. Consiste en conectar el dispositivo de almacenamiento directamente al servidor o estación de trabajo, es decir, físicamente conectado al dispositivo que hace uso de él.

Tanto en DAS como en Storage Area Network (SAN), las aplicaciones y programas de usuarios hacen sus peticiones de datos al sistema de archivos directamente. La diferencia entre ambas tecnologías reside en la manera en la que dicho sistema de archivos obtiene los datos requeridos del almacenamiento. En un DAS, el almacenamiento es local al sistema de archivos, mientras que en un SAN, el almacenamiento es remoto. 

## ¿Qué es un NAS o Network Attached Storage?

El almacenamiento conectado en red o NAS (Network Attached Storage) es el nombre dado a una tecnología de almacenamiento dedicada a compartir la capacidad de almacenamiento de un computador/ordenador (servidor) con computadoras personales o servidores clientes a través de una red.

### Usos del NAS

NAS es muy útil para proporcionar el almacenamiento centralizado a computadoras clientes en entornos con grandes cantidades de datos. NAS puede habilitar sistemas fácilmente y con bajo costo con balance de carga, tolerancia a fallos y servidor web para proveer servicios de almacenamiento. El crecimiento del mercado potencial para NAS es el mercado de consumo donde existen grandes cantidades de datos multimedia. 

- Copia de seguridad y restauración.
- Nube privada.
- Compartición de archivos.
- Servidor de impresión.

## ¿Qué es un SAN o Storage Area Network?

Una red de área de almacenamiento o SAN (Storage Area Network), es una red de almacenamiento integral. Se trata de una arquitectura completa que agrupa los siguientes elementos.

- Una red de alta velocidad de canal de fibra o iSCSI.
- Un equipo de interconexión dedicado (conmutadores, puentes, etc).
- Elementos de almacenamiento de red (discos duros).

## DAS vs NAS vs SAN

Las ventajas del NAS sobre la conexión directa (DAS) son la capacidad de compartir las unidades, un menor costo, la utilización de la misma infraestructura de red y una gestión más sencilla. Por el contrario, NAS tiene un menor rendimiento y confiabilidad por el uso compartido de las comunicaciones. 

![img-description](/assets/img/teoria-sistemas-de-almacenamiento-en-red/das-nas-san.png)
_DAS vs NAS vs SAN_

## Bibliografía

- [Almacenamiento de conexión directa (Wikipedia)](https://es.wikipedia.org/wiki/Almacenamiento_de_conexi%C3%B3n_directa)
- [Almacenamiento conectado en red (Wikipedia)](https://es.wikipedia.org/wiki/Almacenamiento_conectado_en_red)
- [Red de área de almacenamiento (Wikipedia)](https://es.wikipedia.org/wiki/Red_de_%C3%A1rea_de_almacenamiento)
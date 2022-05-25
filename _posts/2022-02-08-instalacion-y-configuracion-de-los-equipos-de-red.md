---
title: (No definitiva) Instalación y configuración de los equipos de red
date: 2022-02-08 11:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [gnu linux, comandos, terminal, bash, redes locales, teoría]
---

<details class="card mb-2">
  <summary class="card-header">Índice</summary>
  <div class="card-body" markdown="1">

- [Diapositivas (deprectated)](#diapositivas-deprectated)
- [Introducción](#introducción)
- [Estructura TCP/IP](#estructura-tcpip)
- [Capa de enlace en las redes locales](#capa-de-enlace-en-las-redes-locales)
  - [MAC y LLC](#mac-y-llc)
  - [Direccionamiento físico. Direcciones MAC.](#direccionamiento-físico-direcciones-mac)
  - [Tramas](#tramas)
- [Capa de red o capa de Internet.](#capa-de-red-o-capa-de-internet)
  - [Direcciones IP, IPv4 e IPv6](#direcciones-ip-ipv4-e-ipv6)
  - [Protocolo IPv4 y máscaras de red](#protocolo-ipv4-y-máscaras-de-red)
  - [Subredes](#subredes)
  - [Protocolo ARP](#protocolo-arp)
  - [Protocolo ICMP](#protocolo-icmp)
- [Capa de transporte](#capa-de-transporte)
  - [Direccionamiento y puertos](#direccionamiento-y-puertos)
  - [Protocolo TCP](#protocolo-tcp)
  - [Conexiones](#conexiones)
  - [Establecimiento de una conexión](#establecimiento-de-una-conexión)
    - [Memes](#memes)
  - [Cierre de una conexión](#cierre-de-una-conexión)
  - [Protocolo UDP](#protocolo-udp)
    - [Memes](#memes-1)

<!-- Comentario para que no se descuajeringue la cosa -->

  </div>
</details>

## Diapositivas (deprectated)

<iframe title="slides" src="https://docs.google.com/presentation/d/e/2PACX-1vQmMQscE7BwqTDO9vgsC8Hvy9lje2aUTFjF0VmAMf4QVb4oFalfrh0wUebc9iscHho8PaiVenyDoCd3/embed?start=false&loop=false&delayms=10000" frameborder="0" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

## Introducción

Para que los elementos de una red puedan comunicarse de una manera fiable y eficaz deben regirse por un conjunto de reglas y normas denominado protocolo.

Dos elementos que quieran comunicarse deben utilizar exactamente los mismos protocolos.

Los protocolos rigen todos los aspectos de las comunicaciones entre dispositivos.

Uno de los organismos más importante que se encarga de regular estas normas es el IEEE.

{:.question}
¿Qué significan las siglas IEEE?


## Estructura TCP/IP

- Las aplicaciones de los usuarios se comunican con el nivel de aplicación. En esta capa nos encontramos: SMTP, FTP, HTTP, etc.
- Los protocolos del nivel de aplicación se comunican con los del nivel de transporte: TCP y UDP.
- El protocolo del nivel de Internet IP añade información de direccionamiento de los paquetes que le llegan del nivel de transporte.
- El nivel de acceso a la red toma los paquetes que recibe del nivel de Internet. Esta capa recibe los paquetes, que pasan a llamarse tramas. Los protocolos que se usan en esta capa dependerá de la topología de red. Aunque la más popular es Ethernet (LLC + MAC).


![img-description](osiVsTcpIp.png)
_Modelo OSI vs Arquitectura TCP/IP_

![img-description](arquitecturaTcpIp.png)
_Arquitectura TCP/IP_

![Capas y Reddit](/assets/img/instalacion-y-configuracion-de-los-equipos-de-red/layersMeme.jpg)
_Capas y Reddit_


## Capa de enlace en las redes locales

### MAC y LLC

### Direccionamiento físico. Direcciones MAC.

### Tramas

## Capa de red o capa de Internet.

### Direcciones IP, IPv4 e IPv6

### Protocolo IPv4 y máscaras de red

Leer el artículo [Direcciones IPv4](/posts/direcciones-ipv4/).

### Subredes

Leer el artículo [¿Qué son las subredes?](/posts/subredes/).

### Protocolo ARP

ARP (Address Resolution Protocol) o Protocolo de resolución de direcciones.

Traducción de direcciones IP a direcciones MAC.

¿Cómo encuentro a Diego?

Hago una petición broadcast solicitando que el equipo que tiene esta IP responda con su MAC.

![Ejemplo de ARP](/assets/img/instalacion-y-configuracion-de-los-equipos-de-red/arp.png)
_Ejemplo de ARP_

### Protocolo ICMP

ICMP (Internet Control Message Protocol) o Protocolo de mensajes de control de Internet.

Se usa para comunicar mensajes de estado y error.

Los mensajes ICMP viajan en el campo de datos de un datagrama IP.

![img-description](/assets/img/instalacion-y-configuracion-de-los-equipos-de-red/icmp.png)
_Mensaje ICMP_


![img-description](/assets/img/instalacion-y-configuracion-de-los-equipos-de-red/cabeceraIcmp.png)
_Cabecera ICMP_

## Capa de transporte

### Direccionamiento y puertos

<iframe src="https://www.youtube.com/embed/hmGmeGDRUAU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Protocolo TCP
### Conexiones
### Establecimiento de una conexión


#### Memes

![Gobierno: Para parar el covid deberemos parar todos de hacer handshaking. TCP: O.o](/assets/img/instalacion-y-configuracion-de-los-equipos-de-red/tcpVsUdpMeme5.png)
_Gobierno: Para parar el covid deberemos parar todos de hacer handshaking. TCP: O.o_

### Cierre de una conexión
### Protocolo UDP

#### Memes

![TCP vs UDP](/assets/img/instalacion-y-configuracion-de-los-equipos-de-red/tcpVsUdpMeme.png)
_TCP vs UDP_

![TCP vs UDP](/assets/img/instalacion-y-configuracion-de-los-equipos-de-red/tcpVsUdpMeme4.jpg)
_TCP vs UDP_


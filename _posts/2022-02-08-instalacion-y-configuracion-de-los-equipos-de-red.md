---
title: (No definitiva) Instalación y configuración de los equipos de red
date: 2022-02-08 11:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [gnu linux, comandos, terminal, bash, redes locales, teoría]
---

## Introducción
## Nivel de enlace en las redes locales
### MAC y LLC
### Direccionamiento físico. Direcciones MAC.
### Tramas
## Estructura TCP/IP
## TCP/IP: Capa de red o capa de Internet.
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

![img-description](/assets/img/instalacion-y-configuracion-de-los-equipos-de-red/arp.png)
_Ejemplo de ARP_

### Protocolo ICMP

ICMP (Internet Control Message Protocol) o Protocolo de mensajes de control de Internet.

Se usa para comunicar mensajes de estado y error.

Los mensajes ICMP viajan en el campo de datos de un datagrama IP.

![img-description](/assets/img/instalacion-y-configuracion-de-los-equipos-de-red/icmp.png)
_Mensaje ICMP_


![img-description](/assets/img/instalacion-y-configuracion-de-los-equipos-de-red/cabeceraIcmp.png)
_Cabecera ICMP_

## TCP/IP: Nivel de transporte
### Direccionamiento y puertos

<iframe src="https://www.youtube.com/embed/hmGmeGDRUAU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Protocolo TCP
### Conexiones
### Establecimiento de una conexión
### Cierre de una conexión
### Protocolo UDP
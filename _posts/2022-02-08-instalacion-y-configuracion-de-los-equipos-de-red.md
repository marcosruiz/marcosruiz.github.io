---
title: Instalación y configuración de los equipos de red
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
### Protocolo IP
### Clases IP: A, B, C, D, E

![img-description](/assets/img/instalacion-y-configuracion-de-los-equipos-de-red/clasesIPv4RedHost.png)
_Clases IPv4_


- 0.X.X.X y 127.X.X.X están reservadas para test.
- 127.0.0.1 está reservada para el host local.
- Las direcciones cuya parte de Número de host es todo 0 o todo 1 están reservadas.
    - Todo ceros: para referirnos a la red en sí misma.
    - Todo unos: es la dirección broadcast.

![img-description](/assets/img/instalacion-y-configuracion-de-los-equipos-de-red/clasesIPv4Rangos.png)
_Clases IPv4 (públicas y privadas)_

#### IPv4 privadas

- Clase A: 10.0.0.0 a 10.255.255.255
- Clase B: 172.16.0.0 a 172.31.255.255
- Clase C: 192.168.0.0 a 192.168.255.255

### Subredes y máscaras de red

Leer el artículo [¿Qué son las subredes?](/posts/subredes/).

### Protocolo ARP
### Protocolo ICMP
## TCP/IP: Nivel de transporte
### Direccionamiento y puertos
### Protocolo TCP
### Conexiones
### Establecimiento de una conexión
### Cierre de una conexión
### Protocolo UDP
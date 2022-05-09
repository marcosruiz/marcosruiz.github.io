---
title: (No definitiva) Caracterización de una LAN
date: 2022-05-06 12:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [gnu linux, comandos, terminal, bash, redes locales, teoría]
---

## Diapositivas

<iframe title="slides" src="https://docs.google.com/presentation/d/e/2PACX-1vTr9UXXd5ILoWRA5u1iEeFZE_T4S-vNrWKBnulqLCkjoUw766RC0ETZRgHtPQHt-H23EiYdy2EG02TV/embed?start=false&loop=false&delayms=10000" frameborder="0" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

## Introducción

Los ordenadores son máquinas especializadas en procesar información de acuerdo con las instrucciones recogidas en un programa. Sin embargo, no siempre la información se produce o se almacena en el lugar donde se procesa. Esto añade la necesidad de transportar los datos desde su lugar de origen o almacenamiento hasta el de su proceso, originando una comunicación.

A través del cableado de la red se pueden transmitir señales eléctricas adecuadas a la naturaleza del cable, pero la red no solo debe entregar esta señal en su destino, sino que además debe garantizar que la información que originó el emisor llega al receptor de forma íntegra durante todo el recorrido.

{:.question}
¿Es lo mismo transmisión que comunicación?

## Sistemas de comunicaciones

Un sistema de comunicaciones es un conjunto de elementos que permiten transmitir información desde un punto a otro.
Estos elementos son:
- **El transmisor:** es el que envía la información.
- **El canal de transmisión:** es la conexión física entre el transmisor y el receptor (Ejemplo: un cable, el aire, etc.).
- **La señal:** es el fenómeno físico que porta la información sobre el canal de transmisión (Ejemplo: ondas sonoras, señales eléctricas, etc.)
- **El receptor:** es el destinatario de la información.

## Componentes de una red de ordenadores

Para poder formar una red de ordenadores se requieren varios elementos: 

- **Hardware:**
    - **Dispositivos de usuario final:** son los ordenadores, impresoras, escáneres, y demás elementos que brindan servicios directamente al usuario.
    - **Dispositivos de red:** son todos aquellos que conectan entre sí a los dispositivos de usuario final, posibilitando su intercomunicación.
- **Software:** Es el conjunto de programas y ficheros de configuración que permiten la comunicación entre elementos de una red. Los podemos dividir en dos.
- **Protocolos:** Son un conjunto de reglas que se establecen entre el transmisor y receptor de un proceso de comunicación que permite asegurar la transmisión de datos entre los dos extremos. Ejemplo: protocolo IP (dicta las reglas para las direcciones IP).

## Ventajas de usar una red de ordenadores

1. Mayor facilidad en la comunicación entre usuarios
1. Reducción en el presupuesto para software
1. Reducción en el presupuesto para hardware
1. Posibilidad de organizar grupos de trabajo
1. Mejoras en la administración de los equipos y programas
1. Mejoras en la integridad de los datos
1. Mayor seguridad para acceder a la información

## Velocidad de transmisión

Se trata de relacionar la cantidad de información que se transfiere con el tiempo que tarda en ser transferida.

Velocidad = información/ tiempo

1. El tiempo se representa en segundos
1. La información en bits o Bytes
1. 1 bit es un 0 o un 1
1. 1 Byte son 8 bits
1. 1 KB son 1024 B
1. 1 MB son 1024 KB
1. 1 GB son 1024 MB

### ¿Qué unidades de velocidad existen?

- bps ➡ bits por segundo
- Bps ➡ Bytes por segundo = 8 bps
- Kbps ➡ kilobits por segundo
- KBps ➡ KiloBytes por segundo = 8 Kbps
- Mbps ➡ Megabits por segundo
- MBps ➡ MegaBytes por segundo = 8Mbps

{:.question}
¿A qué velocidad en Mbps se transfiere un fichero de 3 MB si tarda 8 segundos en llegar?

{:.question}
¿Por qué un KB son 1024 MB?

<ul>
  <li>Velocidad = información/ tiempo</li>
  <li>Velocidad = 3 MB / 8 seg</li>
  <li>Como 1 Byte son 8 bits...</li>
  <li>Velocidad = 3*8 Mb / 8 seg </li>
  <li>Velocidad = 3 Mb/seg = 3 Mbps</li>
</ul>


## Clasificación de redes

### Por área de distribución: PAN, LAN, MAN y WAN.
### Por medio de transmisión: Guiadas y no guiadas.
### Por relación funcional: P2P, Cliente-Servidor.
### Por tecnología: 

#### P2P

#### Broadcast



### Por topología física: Estrella, anillo, bus, árbol, malla, totalmente conexa, mixta.
### Por direccionalidad: Simplex, half-duplex, full-duplex.


## El modelo de referencia OSI

## Arquitecturas de red

## Arquitectura TCP/IP

## Adelantando conceptos de TCP/IP

## OSI vs TCP/IP

## Computación en la nube, interred y estándares


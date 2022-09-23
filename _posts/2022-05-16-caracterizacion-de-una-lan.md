---
title: Caracterización de una LAN
date: 2022-05-16 12:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [gnu linux, comandos, terminal, bash, redes locales, teoría]
img_path: /assets/img/caracterizacion-de-una-lan/
---

<details class="card mb-2">
  <summary class="card-header">Índice</summary>
  <div class="card-body" markdown="1">

- [1. Introducción](#1-introducción)
- [2. Sistemas de comunicación](#2-sistemas-de-comunicación)
- [3. Elementos de la red](#3-elementos-de-la-red)
  - [3.1. Cableado](#31-cableado)
  - [3.2. Dispositivos específicos de red](#32-dispositivos-específicos-de-red)
  - [3.3. Nodos de la red](#33-nodos-de-la-red)
  - [3.4. Software de la red](#34-software-de-la-red)
- [4. Ventajas de usar una red de ordenadores](#4-ventajas-de-usar-una-red-de-ordenadores)
- [5. Componentes de una red de ordenadores](#5-componentes-de-una-red-de-ordenadores)
- [6. Clasificación de redes](#6-clasificación-de-redes)
- [7. Modelos de red: OSI vs TCP/IP](#7-modelos-de-red-osi-vs-tcpip)
- [8. Computación en la nube, interred y estándares](#8-computación-en-la-nube-interred-y-estándares)
  - [8.1. Computación en la nube](#81-computación-en-la-nube)
  - [8.2. Interred](#82-interred)
  - [8.3. Estándares](#83-estándares)
    - [8.3.1. Estándares de facto (o hecho)](#831-estándares-de-facto-o-hecho)
    - [8.3.2. Estándares de iure (o jure)](#832-estándares-de-iure-o-jure)
    - [8.3.3. Estándares de acuerdo](#833-estándares-de-acuerdo)
- [9. Bibliografía](#9-bibliografía)

<!-- Comentario para que no se descuajeringue la cosa -->

  </div>
</details>



## 1. Introducción

Los ordenadores son máquinas especializadas en procesar información de acuerdo con las instrucciones recogidas en un programa. Sin embargo, no siempre la información se produce o se almacena en el lugar donde se procesa. Esto añade la necesidad de transportar los datos desde su lugar de origen o almacenamiento hasta el de su proceso, originando una comunicación.

A través del cableado de la red se pueden **transmitir** señales eléctricas adecuadas a la naturaleza del cable, pero la red no solo debe entregar esta señal en su destino, sino que además debe garantizar que la información que originó el emisor llega al receptor de forma íntegra durante todo el recorrido.

{:.question}
¿Es lo mismo transmisión que comunicación?

## 2. Sistemas de comunicación

Un sistema de comunicaciones es un conjunto de elementos que permiten transmitir información desde un punto a otro.
Estos elementos son:
- **El transmisor:** es el que envía la información.
- **El canal de transmisión:** es la conexión física entre el transmisor y el receptor (Ejemplo: un cable, el aire, etc.).
- **La señal:** es el fenómeno físico que porta la información sobre el canal de transmisión (Ejemplo: ondas sonoras, señales eléctricas, etc.)
- **El receptor:** es el destinatario de la información.

## 3. Elementos de la red

### 3.1. Cableado

Es el elemento más específico de la red. En el caso de las redes inalámbricas no existe ya que se sustituye por antenas.

El cableado puede ser:

- Cobre
  - Ethernet
  - Coaxial
- Fibra óptica

Cada tipo de cableado lleva su propio conector.

### 3.2. Dispositivos específicos de red

Son máquinas especializadas en una o varias funciones de red. Entre estos dispositivos están:

- **Modem** o modulador: para realizar conexiones remotas mediante líneas telefónicas, concentradores y repetidores para regenerar la señal eléctrica en distintos segmentos de red.
- **Switch** o conmutador: para el intercambio selectivo de tramas de datos entre diferentes segmentos de red.
- **Router** o enrutador: para transportar paquetes entre redes.
- **Bridge** o pasarela: como pueden ser cortafuegos, antivirus, etc.

### 3.3. Nodos de la red

Cada nodo posee una al menos una interfaz de red que es soportada mediante una tarjeta de red. Es decir, un dispositivo físico sobre el que pueda interactuar el software de la red.

### 3.4. Software de la red

Todos los dispositivos activos de la red debe ejecutar operaciones informáticas avanzadas para cumplir con los protocolos de red por lo que deben tener un software de red.

## 4. Ventajas de usar una red de ordenadores

1. Mayor facilidad en la comunicación entre usuarios
1. Reducción en el presupuesto para software
1. Reducción en el presupuesto para hardware
1. Posibilidad de organizar grupos de trabajo
1. Mejoras en la administración de los equipos y programas
1. Mejoras en la integridad de los datos
1. Mayor seguridad para acceder a la información

## 5. Componentes de una red de ordenadores

Para poder formar una red de ordenadores se requieren varios elementos: 

- **Hardware:**
    - **Dispositivos de usuario final:** son los ordenadores, impresoras, escáneres, y demás elementos que brindan servicios directamente al usuario.
    - **Dispositivos de red:** son todos aquellos que conectan entre sí a los dispositivos de usuario final, posibilitando su intercomunicación.
- **Software:** Es el conjunto de programas y ficheros de configuración que permiten la comunicación entre elementos de una red. Los podemos dividir en dos.
- **Protocolos:** Son un conjunto de reglas que se establecen entre el transmisor y receptor de un proceso de comunicación que permite asegurar la transmisión de datos entre los dos extremos. Ejemplo: protocolo IP (dicta las reglas para las direcciones IP).

## 6. Clasificación de redes

Leer artículo [Clasificación de redes](/posts/clasificacion-de-redes/).

## 7. Modelos de red: OSI vs TCP/IP

Leer artículo [Modelos de red: OSI vs TCP/IP](/posts/modelos-red-osi-vs-tcp-ip).

## 8. Computación en la nube, interred y estándares

### 8.1. Computación en la nube

La computación en la nube (cloud computing) es un nuevo modelo de utilización de los servicios informáticos de modo que se brinda como servicio deslocalizado. 

Por ejemplo: aunque se esté trabajando desde un ordenador personal, el espacio de almacenamiento en donde se guardan los ficheros puede estar en un proveedor de almacenamiento al otro lado de Internet (en la nube).

{:.question}
Nombrad tres ventajas de la computación en la nube

{:.question}
¿Os podéis crear una nube en vuestra propia casa?

{:.question}
¿Conoces alguna alternativa a OneDrive/ Dropbox que puedas instalar en tu casa?


### 8.2. Interred

Un conjunto de redes conectadas se le denomina interred. Lo más habitual es encontrar un conjunto de LANs conectadas mediante una WAN. No obstante, el término interred representa la interconexión de varias redes diferentes. Por tanto, una interred puede estar formada únicamente por dos LANs conectadas sin necesidad de WAN.


### 8.3. Estándares

Los estándares son unas guías para los fabricantes, vendedores, agencias de gobierno y otros proveedores de servicios, para asegurar el tipo de interconectividad necesario en los mercados actuales y en las comunicaciones internacionales.

Se pueden clasificar en 3 categorías:

- Estándares de facto (o hecho)
- Estándares de iure (o jure)
- Estándares de acuerdo

#### 8.3.1. Estándares de facto (o hecho)

Son estándares que no han sido aprobados por una organización reconocida pero han sido aceptados como estándares debido a su amplio uso. Hay dos tipos:

- Estándares propietarios o cerrados. 🔒
- Estándares no propietarios o abiertos. 🔓

#### 8.3.2. Estándares de iure (o jure)

Son aquellos que han sido legislados por un organismo oficialmente reconocido. 

#### 8.3.3. Estándares de acuerdo

Son aquellos que son definidos por convenio, alianza o pacto entre proveedores, usuarios o manufactureros.

{:.question}
¿Qué es un estándar de facto?

## 9. Bibliografía

- [¿1KByte = 1000 Bytes o 1KByte = 1024 Bytes?](https://platzi.com/tutoriales/1277-redes/4929-1kbyte-1000-bytes-o-1kbyte-1024-bytes/)
---
title: Clasificación de redes
date: 2022-05-16 12:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [gnu linux, comandos, terminal, bash, redes locales, teoría]
img_path: /assets/img/clasificacion-de-redes/
---

## 1. Introducción

Existen varias formas de clasificar las redes:

- Por área de distribución: PAN, LAN, MAN y WAN
- Por medio de transmisión: Guiadas y no guiadas
- Por relación funcional: P2P, Cliente-Servidor
- Por tecnología: P2P, Broadcast
- Por topología física: Estrella, anillo, bus, árbol, malla, totalmente conexa, mixta.
- Por direccionalidad: Simplex, half-duplex, full-duplex.

## 2. Por área de distribución

- **PAN (Personal Area Network)** es una red de ordenadores usada para la comunicación entre los dispositivos de la computadora cerca de una persona.
- **LAN (Local Area Network)** es una red que se limita a un área especial relativamente pequeña tal como un cuarto, un solo edificio, una nave.
- **MAN (Metropolitan Area Network)** es una red de alta velocidad (banda ancha) que da cobertura en un área geográfica más extensa como una ciudad.
- **WAN (Wide Area Network)** son redes informáticas que se extienden sobre un área geográfica extensa utilizando medios como: satélites, cables interoceánicos, Internet, fibras ópticas públicas, etc...

![img-description](tiposDeRedesDeComputadorasPorArea.jpg)
_Clasificación de redes por área de distribución_

{:.question}
¿Qué es la WAN?


### 2.1. PAN

En los últimos años a surgido la necesidad de conectar dispositivos muy cercanos entre sí. Esto ha llevado a desarrollar las redes de área personal o PAN (Personal Area Network). Las características de estas redes son:

- La configuración de acceso a la red debe ser muy sencilla o automática.
- El radio de acción de la red debe ser geográficamente muy limitado.
- El medio de transmisión suele ser el inalámbrico.
- Los costes de la red deben ser pequeños o nulos.

{:.question}
Nombrad cuatro ejemplos de PAN

### 2.2. LAN

Una red de área local (LAN, Local Area Network) es un conjunto de elementos físicos y lógicos que proporcionan interconexión entre dispositivos en un área privada y restringida. La red de área local tiene las siguientes características:

- Una restricción geográfica: una oficina, una planta, un edificio o incluso un campus universitario.
- La velocidad de transmisión debe ser relativamente elevada.
- Debe ser privada, es decir, perteneciente a una misma organización.
- La tasa de error debe ser muy baja.

Tecnologías LAN:

- Ethernet
- Token Ring
- FDDI

### 2.3. MAN

Una red metropolitana es una red de distribución de datos para un área geográfica en el entorno de una ciudad. Este tipo de redes es apropiado, por ejemplo, para la distribución de televisión por cable en el ámbito de una población.


### 2.4. WAN

Una red de área extensa (WAN, Wide Area Network) es una red que intercomunica equipos en un área geográfica muy amplia. Este tipo de redes tienen las siguientes características:

- Las transmisiones en una WAN se realizan a través de líneas públicas.
- La capacidad de transmisión suele ser menor que las de las redes locales.
- Las líneas son compartidas por muchos usuarios.

Internet es un ejemplo de WAN de alcance mundial que utiliza multitud de protocolos de comunicación, equipamientos de diversos fabricantes y posibilidad de diferentes líneas de transmisión.

Tecnologías WAN:

- Modems
- RDSI
- DSL
- Frame Relay
- Series de portadoras

{:.question}
¿Por qué diferenciamos entre MAN y WAN?

## 3. Por medio de transmisión

### 3.1. Medios guiados

Usan cables para transmitir sus señales. Como por ejemplo:

- Cable coaxial
- Par trenzado
- Fibra óptica


### 3.2. Medios no guiados

Usan antenas para transmitir señales. Como por ejemplo:

- Infrarrojos
- Bluetooth
- Wi-Fi
- WiMAX

| Ventajas | Inconvenientes |
|---|---|
| Fácil instalación | Más probabilidades de ataques maliciosos. |
| Comodidad de conexión | Mayor probabilidad de congestión. |
|  | Normalmente, menor velocidad de conexión. |


## 4. Por relación funcional

- **Redes entre iguales (Peer-to-Peer o P2P):** Todos los ordenadores tienen las mismas funciones. ➡ Difícil de controlar los recursos.
- **Redes privilegiadas (Cliente-Servidor):** Al menos uno de los ordenadores es un servidor. El resto de ordenadores solicitan los servicios a estos servidores los cuales están especializados para cumplir alguna función. ➡ Fácil de controlar ya que la administración de servicios está centralizada en los servidores.
  - Cliente: es un equipo que se aprovecha de los servicios que le brinda otro equipo llamado servidor
  - Servidor: es un equipo que brinda servicios a otros equipos. Ejemplo: un servidor de archivos FTP.

![img-description](comunicacionClienteServidor.png)
_Comunicación cliente/servidor_

## 5. Por tecnología

- **Red Point-To-Point (PPP):** Es aquella en la que existe multitud de conexiones entre parejas individuales de máquinas.
- **Red Broadcast:** Se caracteriza por transmitir datos por un sólo canal de comunicación que comparten todas las máquinas de la red.
  - Unicast: Comunicación establecida entre un transmisor y un receptor.
  - Multicast: Comunicación establecida entre un transmisor y varios receptores.
  - Broadcast: Comunicación establecida entre un transmisor y todos los elementos de la red.

## 6. Por topología física

La topología de red es la propiedad que indica la forma física de la red, es decir, el modo en que se disponen los equipos y el sistema de cableado que los interconecta.

<iframe width="560" height="315" src="https://www.youtube.com/embed/W1M_-lETphg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/04jfARpozAc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


### 6.1. Red en estrella

En una red en estrella las estaciones están conectadas directamente a un punto central y todas las comunicaciones se han de hacer necesariamente a través de éste.

![img-description](redEstrella.png){: w="250" }


### 6.2. Red en anillo

En una red en anillo cada estación está conectada a la siguiente y la última está conectada a la primera.

![img-description](redAnillo.png){: w="250" }

![img-description](redAnillo2.png){: w="250" }

{:.question}
¿Qué ocurre si cortamos el cable que une dos nodos?

{:.question}
¿Cuál es la principal ventaja de una red en anillo?

### 6.3. Red en anillo doble

En una red en anillo cada estación está conectada a la siguiente y la última está conectada a la primera de manera doble.

![img-description](redAnilloDoble.png){: w="250" }

{:.question}
¿Qué ocurre si cortamos el cable que une dos nodos?

### 6.4. Red en bus

La red en bus se caracteriza por tener un único canal de comunicaciones.

![img-description](redBus.png){: w="250" }

### 6.5. Red en malla

En una red en malla cada nodo está conectado a todos los otros.

![img-description](redMalla.png){: w="250" }

### 6.6. Red en malla totalmente conexa

Como la red en malla pero totalmente conectada.

![img-description](redMallaCompleta.png){: w="250" }

### 6.7. Red en árbol

En una red en árbol los nodos están colocados en forma de árbol. Desde una visión topológica, la conexión en árbol es parecida a una serie de redes en estrella interconectadas salvo en que no tiene un nodo central.

![img-description](redArbol.png){: w="250" }


### 6.8. Red mixta

En una red mixta se da cualquier combinación de las anteriores.

![img-description](redMixta.png){: w="250" }

## 7. Por direccionalidad

### 7.1. Simplex

Un equipo terminal de datos transmite y otro recibe. Por ejemplo: la radio o la televisión.

![img-description](redSimplex.png){: w="250" }

### 7.2. Half-duplex

El método o protocolo de envío de información es bidireccional pero no simultáneo bidireccional, sólo un equipo transmite a la vez. Por ejemplo: los Walkie-talkies.

![img-description](redHalfDuplex.png){: w="250" }

### 7.3. Full-duplex

Los dos equipos involucrados en la comunicación lo pueden hacer de forma simultánea, transmitir y recibir. Por ejemplo: el teléfono.

![img-description](redFullDuplex.png){: w="250" }


## 8. Bibliografía

- [Token, Token Ring – qué es, definición y para qué sirven](https://www.profesionalreview.com/2020/02/21/token-token-ring-que-es/)
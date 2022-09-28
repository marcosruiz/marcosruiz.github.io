---
title: Instalación y configuración de los equipos de red
date: 2022-05-24 11:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [gnu linux, comandos, terminal, bash, redes locales, teoría]
img_path: /assets/img/instalacion-y-configuracion-de-los-equipos-de-red/
---

<details class="card mb-2">
  <summary class="card-header">Índice</summary>
  <div class="card-body" markdown="1">

- [1. Introducción](#1-introducción)
- [2. Estructura TCP/IP](#2-estructura-tcpip)
- [3. Capa de enlace en las redes locales](#3-capa-de-enlace-en-las-redes-locales)
  - [3.1. MAC](#31-mac)
    - [3.1.1. Trama MAC](#311-trama-mac)
    - [3.1.2. Direcciones MAC](#312-direcciones-mac)
  - [3.2. LLC](#32-llc)
    - [3.2.1. Formato de mensaje LLC](#321-formato-de-mensaje-llc)
- [4. Capa de red o capa de Internet](#4-capa-de-red-o-capa-de-internet)
  - [4.1. Protocolo IPv4 y máscaras de red](#41-protocolo-ipv4-y-máscaras-de-red)
  - [4.2. Características de IP](#42-características-de-ip)
  - [4.3. Subredes](#43-subredes)
  - [4.4. Protocolo ARP](#44-protocolo-arp)
  - [4.5. Protocolo ICMP](#45-protocolo-icmp)
- [5. Capa de transporte](#5-capa-de-transporte)
  - [5.1. Direccionamiento y puertos](#51-direccionamiento-y-puertos)
  - [5.2. Protocolo TCP](#52-protocolo-tcp)
    - [5.2.1. Conexiones o sockets](#521-conexiones-o-sockets)
    - [5.2.2. Establecimiento de una conexión](#522-establecimiento-de-una-conexión)
      - [5.2.2.1. Memes](#5221-memes)
    - [5.2.3. Protocolo de ventana deslizante](#523-protocolo-de-ventana-deslizante)
    - [5.2.4. Cierre de una conexión](#524-cierre-de-una-conexión)
    - [5.2.5. Formato del segmento TCP](#525-formato-del-segmento-tcp)
  - [5.3. Protocolo UDP](#53-protocolo-udp)
  - [5.4. TCP vs UDP](#54-tcp-vs-udp)
- [6. Bibliografía](#6-bibliografía)

<!-- Comentario para que no se descuajeringue la cosa -->

  </div>
</details>

## 1. Introducción

Para que los elementos de una red puedan comunicarse de una manera fiable y eficaz deben regirse por un conjunto de reglas y normas denominado protocolo.

Dos elementos que quieran comunicarse deben utilizar exactamente los mismos protocolos.

Los protocolos rigen todos los aspectos de las comunicaciones entre dispositivos.

Uno de los organismos más importante que se encarga de regular estas normas es el IEEE.

{:.question}
¿Qué significan las siglas IEEE?


## 2. Estructura TCP/IP

Leer del apartado [Modelo TCP/IP](/posts/modelos-red-osi-vs-tcp-ip/#3-modelo-tcpip) en adelante.

**A modo de resumen...**

- Las aplicaciones de los usuarios se comunican con el nivel de aplicación. En esta capa nos encontramos: SMTP, FTP, HTTP, etc.
- Los protocolos del nivel de aplicación se comunican con los del nivel de transporte: TCP y UDP.
- El protocolo del nivel de Internet IP añade información de direccionamiento de los paquetes que le llegan del nivel de transporte.
- El nivel de acceso a la red toma los paquetes que recibe del nivel de Internet. Esta capa recibe los paquetes, que pasan a llamarse tramas. Los protocolos que se usan en esta capa dependerá de la topología de red. Aunque la más popular es Ethernet (LLC + MAC).

![img-description](osiVsTcpIp.png){: w="300"}
_Modelo OSI vs Arquitectura TCP/IP_

![img-description](arquitecturaTcpIp.png)
_Arquitectura TCP/IP_

## 3. Capa de enlace en las redes locales

La capa de enlace de datos se divide en dos subniveles:

- MAC
- LLC

![img-description](subnivelesCapaEnlace.png)
_Subniveles de la capa de enlace_

<iframe src="https://www.youtube.com/embed/y3A9QBJBbCM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 3.1. MAC

El subnivel MAC es el más cercano al nivel físico. Sus funciones son:

- **Empaquetar los datos en tramas** la información que le llega del subnivel LLC, junto con la información de direccionamiento y detección de errores.
- **Desempaquetar tramas**.
- El **control de acceso al medio** cuando hay un medio compartido.

Tipos de control de acceso al medio:

- **Distribuidos**: Los nodos cooperan en igualdad.
- **Centralizados**: Existe un nodo centralizado que organiza el acceso al medio.

Dependiendo de la topología de red podemos clasificar los mecanismos de control de acceso al medio de la siguiente forma:

- **Rotación circular**: El turno va pasando de una estación a la siguiente.
  - Distribuida
  - Centralizada
- **Reserva**: El tiempo se divide en intervalos, ranuras o slots.
  - Distribuida
  - Centralizada
- **Contienda**: Las estaciones compiten para acceder al medio.
  - Distribuida

{:.question}
¿Sabrías poner un ejemplo de control de acceso al medio que todos puedan entender?

{:.question}
¿Ventajas e inconvenientes de sistemas distribuidos?

<details class="card mb-2">
  <summary class="card-header question">¿Ventajas e inconvenientes de control de acceso centralizado?</summary>
  <div class="card-body" markdown="1">

**👍 Ventajas**:
- Realizar un control de acceso al medio más avanzado.
- Resolución de conflictos más sencilla.
- El software de las estaciones es sencillo.

**👎 Inconvenientes**:
- Nodo central que puede ser un cuello de botella.
- Fallo del nodo central hará que nada funcione.

<!-- Comentario para que no se descuajeringue la cosa -->

  </div>
</details>

#### 3.1.1. Trama MAC

Depende de la topología de red en la que nos encontramos.

![img-description](ethernetY8023.png)
_Trama MAC_

- **Preamble**: Sincronización bit "10101010" (x7).
- **SOF**: Delimitador de comienzo de trama "10101011".
- **Destination/source address**: 
  - 3 bytes -> OUI: Identificador organización.
  - En OUI hay 2 bits interesantes:
  - El bit de Unicast (si es 0) o Multicast (si es 1)
  - El bit de Globales (0) o Locales (1)
  - 3 bytes -> NIC: Id. Tarjeta interfaz de Red.
  - Notación (por ejemplo): F2:3E:C1:8A:B1:01
  - Dirección de difusión (broadcast) FF:FF:FF:FF:FF:FF. Este tipo de dirección se utiliza para que todos los equipos conectados en el mismo dominio de difusión recojan la trama.
- **Lenght**: Para IEEE este campo pasó a significar Longitud de la trama. Para diferenciar a qué se refiere (si a Tipo o a Longitud) un valor en ese campo se llegó a esto:
  - DIX Valores > 1536.
  - IEEE Valores < 1536.
- **DATA**:
  - Trama mínima de 64 bytes (512 bits -> 51,2 μs).
  - Como Tx ≥ 2Tp: Datos+Relleno ≥ 46 bytes.
- **FCS**: Secuencia de chequeo de trama.

{:.question}
¿Por qué existen dos tipos tramas: Ethernet e IEEE 802.3?

#### 3.1.2. Direcciones MAC

Cada tarjeta de red posee un identificador único grabado en su memoria ROM.

Sería algo equivalente a un DNI.

La dirección MAC está formada por 6 bytes representados por 12 dígitos hexadecimales.

Por ejemplo: 00:00:0D:1A:12:35

{:.question}    
¿Qué es una memoria ROM?


<details class="card mb-2">
  <summary class="card-header question">¿Qué es CSMA/CD?</summary>
  <div class="card-body" markdown="1">

El estándar IEEE 802.3 especifica el método de control del medio (MAC) denominado CSMA/CD por las siglas en ingles de acceso múltiple con detección de portadora y detección de colisiones (carrier sense multiple access with collision detection).

  </div>
</details>

{:.question}
Si el límite máximo de un cable Ethernet es de 100m. ¿Puede ser esta distancia aumentada si usamos un hub? ¿Y si usamos un switch?


### 3.2. LLC

LLC ("Logical Link Control") o Control de enlace lógico es el encargado de la transmisión de tramas entre máquinas conectadas sin nodos intermedios entre ellas. Sus funciones son:

- **Proporcionar al nivel de red una interfaz uniforme**, es decir, independiente de la topología de red.
- **Control de errores**, es decir, comprobación y reenvío de tramas.
- **Control de flujo**, es decir, el mecanismo para controlar la velocidad de transmisión de datos.

LLC ofrece al nivel de red tres tipos de servicio al nivel de red:

- Servicio no orientado a conexión sin confirmación.
- Servicio orientado a conexión.
- Servicio no orientado a conexión con confirmación.

{:.question}
¿Cuándo se usa el no orientado a conexión?

#### 3.2.1. Formato de mensaje LLC

- **DSAP** (Destination Service Action Point): Identifica al receptor al que va dirigido el mensaje.
- **SSAP** (Source Service Action Point): Identifica al emisor del mensaje.
- **Control**: Indica el tipo de servicio utilizado.
Paquete de red: Datos del nivel de red.

![img-description](mensajeLlc.png)
_Formato de mensaje LLC_


## 4. Capa de red o capa de Internet

Este nivel equivale al nivel de red del modelo OSI.
Se encarga de guiar los datos a través de la red desde una máquina a otra.
Asociados al nivel de internet existen los siguientes protocolos:

- IP (Internet Protocol) o protocolo de internet.
- ARP (Address Resolution Protocol) o protocolo de resolución de direcciones.
- ICMP (Internet Control Message Protocol) o protocolo de mensajes de control.

### 4.1. Protocolo IPv4 y máscaras de red

Leer el artículo [Direcciones IPv4](/posts/direcciones-ipv4/).

**A modo de resumen...**

- Secuencia de 32 bits (4 bytes)
- Se presentan como una secuencia de cuatro números entre 0 y 255 separados por puntos. Este formato se llama formato - decimal punteado.
- Permite 2<sup>32</sup> direcciones de red.

### 4.2. Características de IP

- Protocolo que envía paquetes, es decir, envía los datos troceados.
- Es un protocolo no orientado a conexión, es decir, los paquetes son independientes los unos de los otros.
- Ofrece un servicio no fiable, es decir, IP no garantiza la entrega, ni orden ni no duplicidades.
- Permite fragmentación.
- Direccionamiento lógico y jerárquico.
- Si se detecta error, el paquete se descarta.
- El paquete propio del protocolo IP se denomina **datagrama**.

IP proporciona a TCP dos servicios:
- Envío
- Entrega

![img-description](serviciosIP.png){: w="300"}
_Servicios IP_

![img-description](formatoIPv4.png)
_Formato de IPv4_

{:.question}
¿Qué significa cada apartado?

### 4.3. Subredes

Leer el artículo [¿Qué son las subredes?](/posts/subredes/).

### 4.4. Protocolo ARP

ARP (Address Resolution Protocol) o Protocolo de resolución de direcciones.

Traducción de direcciones IP a direcciones MAC.

<details class="card mb-2">
  <summary class="card-header question">¿Cómo encuentro a Diego?</summary>
  <div class="card-body" markdown="1">

Hago una petición broadcast solicitando que el equipo que tiene esta IP responda con su MAC.


  </div>
</details>


![Ejemplo de ARP](arp.png)
_Ejemplo de ARP_

### 4.5. Protocolo ICMP

ICMP (Internet Control Message Protocol) o Protocolo de mensajes de control de Internet.

Se usa para comunicar mensajes de estado y error.

Los mensajes ICMP viajan en el campo de datos de un datagrama IP.

![img-description](icmp.png)
_Mensaje ICMP_

![img-description](cabeceraIcmp.png)
_Cabecera ICMP_

![img-description](tiposDeMensajesIcmp.png)
_Tipos de mensajes ICMP_

{:.question}
¿Qué es un checksum?

## 5. Capa de transporte

El nivel de la pila de protocolos de TCP/IP se encuentra entre el nivel de aplicación y el de Internet. Se encarga de la transferencia de datos extremo a extremo, ocultando los detalles de la red o subredes subyacentes. En el caso de TCP, incluye mecanismos de seguridad.

Son 2:
- TCP (segmentos): Burofax
- UDP (datagramas): Carta


### 5.1. Direccionamiento y puertos

<iframe src="https://www.youtube.com/embed/hmGmeGDRUAU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

- Puerto reservado: el 0
- Puertos bien conocidos: del 1 al 1023
- Puertos registrados: del 1024 al 49151
- Puertos efímeros: del 49152 al 65535

### 5.2. Protocolo TCP

El protocolo garantiza que los datos serán entregados en su destino sin errores y en el mismo orden en que se transmitieron. 

Proporciona un mecanismo para distinguir distintas aplicaciones dentro de una misma máquina, a través del concepto de puerto.

Las aplicaciones pueden comunicarse en forma segura (gracias al "acuse de recibo" -ACK- del protocolo TCP) independientemente de las capas inferiores.

En este caso el PDU (Protocol Data Unit) es llamado segmento.

#### 5.2.1. Conexiones o sockets

<iframe src="https://www.youtube.com/embed/-7DiO35rbN8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

![img-description](socket.png)
_Socket_


#### 5.2.2. Establecimiento de una conexión

![img-description](establecimientoDeConexionTcp.png)
_Establecimiento de una conexión_

##### 5.2.2.1. Memes

![Gobierno: Para parar el covid deberemos parar todos de hacer handshaking. TCP: O.o](tcpVsUdpMeme5.jpg)
_Gobierno: Para parar el covid deberemos parar todos de hacer handshaking. TCP: O.o_

#### 5.2.3. Protocolo de ventana deslizante

![img-description](ventanaDeslizanteTcp.png)
_Protocolo de ventana deslizante_

#### 5.2.4. Cierre de una conexión

![img-description](cierreConexionTcp.png)
_Cierre de una conexión_

#### 5.2.5. Formato del segmento TCP

![img-description](formatoTcp.png)
_Formato del segmento TCP_

{:.question}
¿Cual es el objetivo de cada campo? (Pag 136)

### 5.3. Protocolo UDP

![img-description](formatoUdp.png)
_Formato del segmento UDP_

- **Puerto UDP origen**. 16 bits que identifican el puerto de la máquina origen.
- **Puerto UDP destino**. 16 bits que identifican el puerto de la máquina destino.
- **Longitud del mensaje UDP**. 16 bits que indican la longitud en bytes del mensaje UDP incluyendo la cabecera. La longitud mínima es de 8 bytes.
- **Checksum**. Campo opcional de 16 bits que porta la suma de comprobación de errores del mensaje.
- **Datos**. Información que envía la aplicación.

### 5.4. TCP vs UDP

![TCP vs UDP](tcpVsUdpMeme.png)
_TCP vs UDP_

![TCP vs UDP](tcpVsUdpMeme4.jpg)
_TCP vs UDP_

## 6. Bibliografía

- [Protocolo de datagramas de usuario (Wikipedia)](https://es.wikipedia.org/wiki/Protocolo_de_datagramas_de_usuario)
- [Unidad de datos de protocolo (Wikipedia)](https://es.wikipedia.org/wiki/Unidad_de_datos_de_protocolo)
- [Protocolo de control de transmisión (Wikipedia)](https://es.wikipedia.org/wiki/Protocolo_de_control_de_transmisi%C3%B3n)
- [CCNA Desde Cero](https://ccnadesdecero.com/curso/ccna-capitulo-1/)
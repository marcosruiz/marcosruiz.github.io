---
title: Introducción a las redes locales
date: 2022-05-16 12:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, teoría, smr]
img_path: /assets/img/introduccion-redes-locales/
---

{:.section}
## Introducción

Los ordenadores son máquinas especializadas en procesar información de acuerdo con las instrucciones recogidas en un programa. Sin embargo, no siempre la información se produce o se almacena en el lugar donde se procesa. Esto añade la necesidad de transportar los datos desde su lugar de origen o almacenamiento hasta el de su proceso, originando una comunicación.

A través del cableado de la red se pueden **transmitir** señales eléctricas adecuadas a la naturaleza del cable, pero la red no solo debe entregar esta señal en su destino, sino que además debe garantizar que la información que originó el emisor llega al receptor de forma íntegra durante todo el recorrido.


<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo transmisión que comunicación?</summary>
  <div class="card-body" markdown="1">

No

  </div>
</details>


{:.section}
## Sistemas de comunicación

Un sistema de comunicaciones es un conjunto de elementos que permiten transmitir información desde un punto a otro.
Estos elementos son:
- **El transmisor:** es el que envía la información.
- **El canal de transmisión:** es la conexión física entre el transmisor y el receptor (Ejemplo: un cable, el aire, etc.).
- **La señal:** es el fenómeno físico que porta la información sobre el canal de transmisión (Ejemplo: ondas sonoras, señales eléctricas, etc.)
- **El receptor:** es el destinatario de la información.

{:.section}
## Ventajas de usar una red de ordenadores

1. Mayor facilidad en la comunicación entre usuarios.
1. Reducción en el presupuesto para software.
1. Reducción en el presupuesto para hardware.
1. Posibilidad de organizar grupos de trabajo.
1. Mejoras en la administración de los equipos y programas.
1. Mejoras en la integridad de los datos.
1. Mayor seguridad para acceder a la información.

<details class="card mb-2">
  <summary class="card-header question">¿Qué es una red de área local?</summary>
  <div class="card-body" markdown="1">

Una red de área local (LAN) es un sistema informático que permite la conexión entre los ordenadores que se encuentran físicamente próximos entre sí. Sus **características** son:

- Tecnología Broadcast (difusión) con el medio de transmisión compartido.
- Capacidad de transmisión comprendida entre 1 Mbps y 1 Gbps.
- Extensión máxima no superior a 3 km (una FDDI puede llegar a 200 km).
- Uso de un medio de comunicación privado.
- La simplicidad del medio de transmisión que utiliza (Cable coaxial, Cables telefónicos y Fibra óptica).
- La facilidad con que se pueden efectuar cambios en el Hardware y el Software.
- Gran variedad y número de dispositivos conectados.
- Posibilidad de conexión con otras redes.
- Limitante de 100m, puede llegar a mas si se usan Repetidores.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Componentes de una red de ordenadores

Para poder formar una red de ordenadores se requieren varios elementos: 

- Cableado (Hardware)
- Dispositivos de usuario final (Hardware)
- Dispositivos de red (Hardware)
- Software de la red y protocolos

{:.subsection}
### Cableado (Hardware)

Es el elemento más específico de la red. En el caso de las redes inalámbricas no existe ya que se sustituye por antenas.

El cableado puede ser:

- Cable de cobre
  - Cable telefónico
  - Cable coaxial
  - Cable UTP, STP, etc.
- Fibra óptica
  - Mononodo
  - Multinodo

> Lo veremos en detalle en la capa física
{:.prompt-info}

Cada tipo de cableado lleva su propio conector.

{:.subsection}
### Dispositivos de usuario final (Hardware)

Son los ordenadores, impresoras, escáneres, y demás elementos que brindan servicios directamente al usuario.

Cada nodo posee una al menos una **interfaz de red** que es soportada mediante una tarjeta de red. Es decir, un dispositivo físico sobre el que pueda interactuar el software de la red.

![NIC (Network Interface Card)](nic.jpg)
_NIC (Network Interface Card)_

{:.question}
¿Qué es una interfaz de red?

{:.subsection}
### Dispositivos específicos de red (Hardware)

Son todos aquellos que conectan entre sí a los dispositivos de usuario final, posibilitando su intercomunicación. Son máquinas especializadas en una o varias funciones de red. Entre estos dispositivos están:

- **Modem** o modulador: para realizar conexiones remotas mediante líneas telefónicas, concentradores y repetidores para regenerar la señal eléctrica en distintos segmentos de red.
- **Cablemodem**: parecido al modem pero envia datos a través del cable coaxial. Está pensado para transportar señales de televisión.
- **Switch o conmutador**: para el intercambio selectivo de tramas de datos entre diferentes segmentos de red.
- **Router o enrutador**: para transportar paquetes entre redes.
- **Bridge o puente/pasarela**: como pueden ser cortafuegos, antivirus, etc.
- **Repetidor**: Se utiliza para regenerar la señal eléctrica de transmisión, ya que esta va perdiendo calidad en función de la distancia de la conexión.
- **Hub o concentrador**: Lo mismo que el repetidor pero multipuerto/multiinterfaz.
- **Firewall o cortafuegos**: Dispositivo encargado de gestionar la seguridad de la red.

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo un conmutador y un interruptor on/off?</summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


{:.subsection}
### Software de la red y protocolos

Todos los dispositivos activos de la red debe ejecutar operaciones informáticas avanzadas para cumplir con los **protocolos** de red por lo que deben tener un software de red.
Es decir, es el conjunto de programas y ficheros de configuración que permiten la comunicación entre elementos de una red. Los podemos dividir en dos.

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un protocolo?</summary>
  <div class="card-body" markdown="1">

Son un conjunto de reglas que se establecen entre el transmisor y receptor de un proceso de comunicación que permite asegurar la transmisión de datos entre los dos extremos. Ejemplo: protocolo IP (dicta las reglas para las direcciones IP).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Binario

Leer el artículo [Binario](/posts/binario).

{:.section}
## Velocidad de transmisión

<iframe width="560" height="315" src="https://www.youtube.com/embed/K6aEiwbcl7c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Se trata de relacionar la cantidad de información que se transfiere con el tiempo que tarda en ser transferida.

Velocidad = información / tiempo

1. El tiempo se representa en segundos
2. La información en bits o Bytes
3. 1 bit es un 0 o un 1
4. 1 Byte son 8 bits
5. **1 KB son 1024 B**
6. 1 MB son 1024 KB
7. 1 GB son 1024 MB

> Nosotros vamos a usar los KiloBytes antiguos
{:.prompt-warning}

<details class="card mb-2">
  <summary class="card-header question">¿Por qué un KiloByte son 1024 Bytes?</summary>
  <div class="card-body" markdown="1">

Trabajando con un sistema binario puede resultar natural utilizar potencias de dos por lo que se hizo una aproximación al sistema internacional de medida utilizando base 2.
    
> 2<sup>10</sup> bytes = 1024 bytes = 1 Kilobyte

Aunque técnicamente deberíamos utilizar la palabra kibi en lugar de Kilo ya que Kilo significa 1000.

> 2<sup>10</sup> bytes = 1024 bytes = 1 kibibyte ✅

Esta última nomenclatura ha sido adoptada por Ubuntu y por Apple pero no por Microsoft.

  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Cuantos kilobits son un Kilobyte?</summary>
  <div class="card-body" markdown="1">

- 1 KByte son 1024 Bytes
- 1024 Bytes son 8192 bits
- 8192 bits son 8,192 Kbits

> ¡No es solo multiplicar por 8! ¡Hay que pasar a bits y después a la unidad que nos pidan!
{:.prompt-warning}

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Cuantos Kilobytes son un kilobit?</summary>
  <div class="card-body" markdown="1">

- 1 Kbit son 1000 bits
- 1000 bits son 125 Bytes
- 125 Bytes son 0,122 Kbytes

> ¡No es solo dividir por 8! ¡Hay que pasar a bits y después a la unidad que nos pidan!
{:.prompt-warning}

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


{:.subsection}
### ¿Qué unidades de velocidad existen?

- bps = b/s ➡ bits por segundo
- Bps = B/s ➡ Bytes por segundo
- Kbps = Kb/s ➡ kilobits por segundo
- KBps = KB/s ➡ KiloBytes por segundo
- Mbps = Mb/s ➡ Megabits por segundo
- MBps = MB/s ➡ MegaBytes por segundo

<details class="card mb-2">
  <summary class="card-header question">¿A qué velocidad en Mbps se transfiere un fichero de 3 MB si tarda 8 segundos en llegar?</summary>
  <div class="card-body" markdown="1">

- Velocidad = información / tiempo
- Velocidad = 3 MB / 8 seg
- Velocidad = 3 * 1.024 KB / 8 seg
- Velocidad = 3.072 KB / 8 seg
- Velocidad = 3.072 KB * 1.024 B / 8 seg
- Velocidad = 3.145.728 B / 8 seg
- Velocidad = 3.145.728 * 8 b / 8 seg
- Velocidad = 3.145.728 b / seg
- Velocidad = 3.145,728 Kb / seg
- Velocidad = 3,145728 Mb / seg 
- Velocidad = 3,145728 Mbps
  
<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿A cuántos Mbps se transfiere 1 GB en  4 minutos y 16 segundos?

{:.section}
## Clasificación de redes

Leer artículo [Clasificación de redes](/posts/clasificacion-de-redes/).

{:.section}
## Modelos de red: OSI vs TCP/IP

Leer artículo [Modelos de red: OSI vs TCP/IP](/posts/modelos-red-osi-vs-tcp-ip).

{:.section}
## Computación en la nube, interred y estándares

{:.subsection}
### Computación en la nube

La computación en la nube (cloud computing) es un nuevo modelo de utilización de los servicios informáticos de modo que se brinda como servicio deslocalizado. 

Por ejemplo: aunque se esté trabajando desde un ordenador personal, el espacio de almacenamiento en donde se guardan los ficheros puede estar en un proveedor de almacenamiento al otro lado de Internet (en la nube).

{:.question}
Nombrad tres ventajas de la computación en la nube

<details class="card mb-2">
  <summary class="card-header question" markdown="1">

¿Os podéis crear una nube en vuestra propia casa?

  </summary>
  <div class="card-body" markdown="1">

Si. Existen varias formas:

- Con un PC o portatil viejo se puede montar un servidor FTP o de Nextcloud.
- Comprando un NAS

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>



{:.question}
¿Conoces alguna alternativa a OneDrive/ Dropbox que puedas instalar en tu casa?


{:.subsection}
### Interred

Un conjunto de redes conectadas se le denomina interred. Lo más habitual es encontrar un conjunto de LANs conectadas mediante una WAN. No obstante, el término interred representa la interconexión de varias redes diferentes. Por tanto, una interred puede estar formada únicamente por dos LANs conectadas sin necesidad de WAN.

{:.subsection}
### Estándares

Los estándares son unas guías para los fabricantes, vendedores, agencias de gobierno y otros proveedores de servicios, para asegurar el tipo de interconectividad necesario en los mercados actuales y en las comunicaciones internacionales.

Se pueden clasificar en 3 categorías:

- Estándares de facto (o hecho)
- Estándares de iure (o jure)
- Estándares de acuerdo

{:.subsubsection}
#### Estándares de facto (o hecho)

Son estándares que no han sido aprobados por una organización reconocida pero han sido aceptados como estándares debido a su amplio uso. Hay dos tipos:

- Estándares propietarios o cerrados. 🔒
- Estándares no propietarios o abiertos. 🔓

{:.subsubsection}
#### Estándares de iure (o jure)

Son aquellos que han sido legislados por un organismo oficialmente reconocido. 

{:.subsubsection}
#### Estándares de acuerdo

Son aquellos que son definidos por convenio, alianza o pacto entre proveedores, usuarios o manufactureros.

{:.question}
¿Qué es un estándar de facto?

{:.subsubsection}
#### IEEE 802

IEEE 802 del Institute of Electrical and Electronics Engineers (máz conocido por sus siglas, IEEE). Se identifica también con las siglas LMSC (LAN/MAN Standards Committee). Su misión se centra en desarrollar estándares de redes de área local (LAN) y redes de área metropolitana (MAN), **principalmente en las dos capas inferiores del modelo OSI**.

IEEE 802 fue un proyecto creado en febrero de 1980 paralelamente al diseño del Modelo OSI. Se desarrolló con el fin de crear estándares para que diferentes tipos de tecnologías pudieran integrarse y trabajar juntas. El proyecto 802 define aspectos relacionados con el cableado físico y la transmisión de datos.

Los grupos de trabajo de trabajo del IEEE 802 son:

- 802.1d 	Spanning Tree Protocol
- IEEE 802.2 	Control de enlace lógico (LLC)
- IEEE 802.3 	CSMA / CD (ETHERNET)
- IEEE 802.3ab 	Gigabit Ethernet sobre 4 pares de cable UTP Cat5e o superior
- IEEE 802.3ae 	10 Gigabit Ethernet
- IEEE 802.5 	Token ring LAN (topología en anillo)
- IEEE 802.11 	Redes inalámbricas WLAN. (Wi-Fi)
- IEEE 802.16 	Redes de acceso metropolitanas sin hilos de banda ancha (WIMAX)

{:.section}
## Bibliografía

- [¿1KByte = 1000 Bytes o 1KByte = 1024 Bytes?](https://platzi.com/tutoriales/1277-redes/4929-1kbyte-1000-bytes-o-1kbyte-1024-bytes/)
- [Red de área local (LAN)](https://www.ecured.cu/Red_de_%C3%A1rea_local_(LAN)#Caracter.C3.ADsticas_importantes)
- [IEEE 802 (Wikipedia)](https://es.wikipedia.org/wiki/IEEE_802)
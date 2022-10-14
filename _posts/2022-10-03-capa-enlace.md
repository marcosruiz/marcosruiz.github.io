---
title: "Capa de enlace"
date: 2022-10-03 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, smr, teoría]
img_path: /assets/img/capa-enlace/
---

<!--## 1. Introducción

Para que los elementos de una red puedan comunicarse de una manera fiable y eficaz deben regirse por un conjunto de reglas y normas denominado protocolo.

Dos elementos que quieran comunicarse deben utilizar exactamente los mismos protocolos.

Los protocolos rigen todos los aspectos de las comunicaciones entre dispositivos.

Uno de los organismos más importante que se encarga de regular estas normas es el IEEE.

## 2. Resumen de TCP/IP

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

## 3. Capa de enlace en las redes locales -->

## 1. Introducción

Los elementos de la capa de enlace son:

- Dispositivos de red
- Enlaces
- Enlaces lógicos

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un dispositivo de acceso al medio?</summary>
  <div class="card-body" markdown="1">

Un dispositivo que opera en capa 2.

<!-- Comentario para que no se descuajeringue la cosa -->

  </div>
</details>


<details class="card mb-2">
  <summary class="card-header question">¿Qué tipos de enlaces hay?</summary>
  <div class="card-body" markdown="1">

PPP y de difusión.

<!-- Comentario para que no se descuajeringue la cosa -->

  </div>
</details>


<details class="card mb-2">
  <summary class="card-header question">¿Cuándo hay un enlace lógico y no físico?</summary>
  <div class="card-body" markdown="1">

Por ejemplo, cuando tenemos dos PCs conectados a través de un switch.

<!-- Comentario para que no se descuajeringue la cosa -->

  </div>
</details>


## 2. Servicios de la capa de enlace de datos

- Segmentación y Agrupación
- Sincronización de octeto y carácter
- Delimitación de trama
- Control de errores
- Control de flujo
- Recuperación de fallos
- Gestión y coordinación de la comunicación

Leer el artículo [Capa de enlace de datos](https://es.wikipedia.org/wiki/Capa_de_enlace_de_datos) de la Wikipedia.

## 3. Subcapas MAC y LLC

La capa de enlace de datos se divide en dos subniveles:

- MAC
- LLC

![img-description](subnivelesCapaEnlace.png)
_Subniveles de la capa de enlace_

<iframe src="https://www.youtube.com/embed/y3A9QBJBbCM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 3.1. MAC

El subnivel MAC es el **más cercano al nivel físico**. Sus funciones son:

- **Empaquetar los datos en tramas** la información que le llega del subnivel LLC, junto con la información de direccionamiento y detección de errores.
- **Desempaquetar tramas**.
- El **control de acceso al medio** cuando hay un medio compartido.

<!-- Tipos de control de acceso al medio:

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
  - Distribuida -->

### 3.2. LLC

LLC ("Logical Link Control") o Control de enlace lógico es el encargado de multiplexar protocolos sobre un mismo enlace, al control de flujo y a la retransmisión de tramas en caso de error. Sus funciones son:

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

## 4. Direcciones físicas MAC

Cada tarjeta de red posee un identificador único grabado en su memoria ROM.

Sería algo equivalente a un DNI.

La dirección MAC está formada por 6 bytes representados por 12 dígitos hexadecimales.

Por ejemplo: 00:00:0D:1A:12:35

{:.question}    
¿Qué es una memoria ROM?

Leer artículo [¿Qué es la dirección MAC?](https://ccnadesdecero.com/curso/direccion-mac/).

{:.question}
Si el límite máximo de un cable Ethernet es de 100m. ¿Puede ser esta distancia aumentada si usamos un hub? ¿Y si usamos un switch?

## 5. Métodos de acceso al medio

Entre las diferentes implementaciones de los protocolos de la capa de enlace de datos, hay diferentes métodos de control de acceso a los medios. Estas técnicas de control de acceso al medio definen si los nodos comparten los medios y de qué manera lo hacen.

El control de acceso al medio es el equivalente a las reglas de tráfico que regulan la entrada de vehículos a una autopista. La ausencia de un control de acceso al medio sería el equivalente a vehículos ignorando el resto del tráfico e ingresando al camino sin tener en cuenta a los otros vehículos.  Sin embargo, no todos los caminos y entradas son iguales. El tráfico puede ingresar a un camino confluyendo, esperando su turno en una señal de parada o respetando el semáforo. Un conductor sigue un conjunto de reglas diferente para cada tipo de entrada.

De la misma manera, hay diferentes formas de regular la colocación de tramas en los medios. Los protocolos en la capa de enlace de datos definen las reglas de acceso a los diferentes medios. Algunos métodos de control de acceso al medio utilizan procesos altamente controlados para asegurar que las tramas se coloquen con seguridad en los medios. Estos métodos se definen mediante protocolos sofisticados, que requieren mecanismos que introducen sobrecargas a la red. El método de control de acceso al medio utilizado depende de:

- Compartir medios: si y cómo los nodos comparten los medios.
- Topología: cómo la conexión entre los nodos se muestra a la capa de enlace de datos.

### 5.1. Basados en particionado de canal

- TDM: Multiplexación por división de tiempo
- FDM: Multiplexación por división de frecuencia
- CDMA: Acceso múltiple por división de código ➡ No es necesario conocerlo

<details class="card mb-2">
  <summary class="card-header question">¿Qué significa multiplexar?</summary>
  <div class="card-body" markdown="1">

Leer artículo [Diferencia entre TDM y FDM](https://es.gadget-info.com/difference-between-tdm).

  </div>
</details>

### 5.2. Basados en toma de turnos

- Polling: Protocolo de sondeo
- Token passing: Protocolo de paso de testigo

### 5.3. Basados en el acceso aleatorio

Son los siguientes:

- Aloha
- CSMA
- CSMA/CD
- CSMA/CA

## 6. Aloha

Este método permite que un dispositivo emita directamente cuando lo necesita. En este caso el receptor debe confirmar al emisor haber recibido la trama. Si la confirmación no se recibe al cabo de un tiempo predefinido (timeout), ya sea porque se ha perdido la trama o bien porque se ha producido una colisión, entonces la estación emisora, tras esperar un tiempo aleatorio lo vuelve a intentar.


## 7. CSMA/CD

Carrier Sense Multiple Access with Collision Detection, es decir, acceso múltiple con escucha de portadora y **detección** de colisiones.

La operación se suele comparar con el comportamiento de un grupo de personas que conversan de manera respetuosa: para que se puedan comunicar adecuadamente, es necesario que no todos los participantes hablen a la vez, sino uno tras otro, de manera que todos puedan comprender plenamente las contribuciones de los demás a la conversación. De forma natural, en una conversación de este tipo nos comportamos conforme a un protocolo: cuando otra persona está hablando, nosotros solamente escuchamos.

Una vez que el interlocutor ha terminado su contribución por el momento, aguardamos un tiempo antes de empezar a hablar para asegurarnos de que este u otro interlocutor no va a iniciar una nueva contribución. Si accidentalmente empezamos a hablar al mismo tiempo que otra persona, dejamos de intentarlo y aguardamos de nuevo antes de volver a empezar otra vez.

El protocolo CSMA/CD se basa también en un procedimiento muy similar. Primero, la estación examina el medio de transmisión. Mientras el medio esté ocupado, la estación sigue examinándolo. Solo cuando el medio se queda libre, la estación envía un paquete de datos durante un cierto tiempo (conocido como "espacio entre tramas"). Mientras tanto, el transmisor continúa examinando el medio para detectar colisiones. Si ninguna otra estación ha intentado enviar sus datos a través del medio compartido antes del final de la transmisión, es decir, cuando no se produce ninguna colisión, la transmisión se realiza correctamente.

En cambio, cuando se detecta una colisión, la estación que la detecta interrumpe de inmediato la transmisión y en su lugar envía una señal de interferencia (señal JAM), que informa a todas las estaciones de la red de dicha colisión. La estación espera un tiempo aleatorio (Backoff) y vuelve a intentar la transmisión. El Backoff debe ser aleatorio para que no se produzca de inmediato una segunda colisión. Puesto que las dos estaciones seleccionan un valor aleatorio, la probabilidad de que ambas estaciones inicien un intento de transmisión al mismo tiempo es baja.

Se cuenta el número de intentos de retransmisión. Si los siguientes intentos siguen fallando y se alcanza el número máximo de intentos(16), la estación notifica el error a la capa de red superior e interrumpe la transmisión de forma permanente. Puesto que es muy poco probable que una estación alcance el número máximo de intentos durante un proceso normal, si esto ocurre se interpreta que se ha producido un error en el sistema.

Su uso está especialmente extendido en redes Ethernet.

## 8. CSMA/CA

Con las siglas CSMA se describe un proceso fundamental para regular la comunicación de los integrantes de una red que usan un mismo medio de transmisión estructurado de forma descentralizada. Comprende tres variantes distintas en función del medio de transmisión: CSMA/CA, CSMA/CD y CSMA/CR. Mientras la primera se usa principalmente en redes inalámbricas, CSMA/CD se creó para Ethernet. CSMA/CR se emplea con el protocolo de comunicación Controller Area Networks (CAN), usado principalmente en máquinas y coches.

Para poder entender realmente en qué consiste el protocolo Carrier Sense Multiple Access with Collision Avoidance (acceso múltiple por detección de portadora y prevención de colisiones) es necesario analizar cada una de sus partes:

- **Carrier Sense** (CA): la idea principal es que los miembros de una red solo pueden enviar datos a través de ella cuando el medio de transmisión no esté ocupado. Para que esto sea posible en todo momento se está realizando un reconocimiento de la red para comprobar el estado del canal (detección de portadora). Solo cuando esté libre, se pueden enviar los datos.
- **Multiple Access** (MA): distintos nodos comparten el mismo medio de transmisión. Por eso es determinante que se atengan a un mismo protocolo para que la comunicación fluya.
- **Collision Avoidance** (CA): para prevenir colisiones se recurre a una compleja organización del tiempo que permite evitar que dos o más miembros de una red comiencen la transmisión a la vez. Eso sí, en el caso de que los datos se superpongan, se reconoce el problema en la transmisión y se inicia de nuevo el envío.

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

## 9. Conmutación de tramas

La conmutación de tramas consiste en utilizar una topología física en estrella en el que un switch o conmutador redirige el tráfico al enlace concreto en el que se encuentra el destinatario.

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un dominio de colisión?</summary>
  <div class="card-body" markdown="1">

Un dominio de colisión es un segmento físico de una red en el que las estaciones comparten un medio de transmisión.

  </div>
</details>

{:.question}
¿Qué es un dominio de difusión?

## 10. Protocolos de enlace

### 10.1. LAN cableadas

- Ethernet DIX
- IEEE 802.3
- Ethernet DIX-II
- Ethernet II
- Token Ring y el estándar IEEE 802.5

{:.question}
¿Qué significan las siglas IEEE?

### 10.2. LAN inalámbricas

- Wifi y la familia de estándares IEEE 802.11
- Bluetooth y los estándares IEEE 802.15

{:.question}
¿En que frecuencias trabaja el Bluetooth? ¿Son más altas o mas bajas que las del Wifi?

## 11. Trama Ethernet II

![img-description](ethernetY8023.png)
_Formato de una trama Ethernet II_

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
¿Por qué existen dos tipos tramas: DIX-II e IEEE 802.3?

{:.question}
¿Qué método de acceso al medio usa Ethernet II? ¿CSMA/CD o CSMA/CA?


<!-- ## 4. STP (Spanning Tree Protocol)

Cuando la topología global de la red se hace compleja es posible que se formen bucles en la red, ya que una trama puede alcanzar sU destino por varios caminos. Estas situaciones son muy interesantes porque proveen redundancia de caminos, lo que hace a la red menos sensible trente a averías en el sistema de cableado, pero también son una fuente de problemas puesto que se pueden generar tormentas de broadcast. 

Por un lado, hay una necesidad de bucles para que haya redundancia pero, por otro lado, hay que impedir que se produzcan tormentas de broadcast. Para conseguir esto la IEEE ha propuesto un protocolo que impide los bucles en un nivel lógico, evitando las tormentas de broadcast, pero que reconfigura la red cuando algún segmento talla para utilizar las ventajas de la redundancia de segmentos físicos. Se trata del protocolo IEEE 802.1D o STP (Spanning Tree Protocol, Protocolo de árbol de expansión).

### 4.1. Ejemplo de STP

En la siguiente Figura se puede ver la representación gráfica de una red conmutada con tres Switches con caminos redundantes que será útil para estudiar el modo de operación básica de SIP. Efectivamente, para que una trama con origen en PCI legue a PC3, caben dos caminos: el camino más sencillo consiste en enviar la trama por el camino 2 hacia el conmutador C y él se encargará de conducirla hacia su destino en PC3. El segundo camino tiene un mayor coste y consiste en transmitir la trama por el camino hacia el conmutador B y que este redirija la trama por el camino 3 hacia el conmutador C que es quien tiene la conexión física con el destino PC3.

![img-description](stp.png)
_Ejemplo de redundancia de caminos en una red conmutada para el estudio del protocolo STP._

La red reúne todos los elementos para que se genere una tormenta de broadcast puesto que tiene bucles. Por ello, es necesario habilitar en los tres conmutadores el protocolo STP o RSTP. Una vez habilitados los conmutadores negociarán quién debe tomar la función de root bridge. Supongamos que esta función sea asumida por el conmutador A, como aparece en la figura. 

Una vez que haya convergido el proceso de confección del árbol de caminos de STP, el protocolo habrá decidido anular el camino 3. Esto no quiere decir que haya que quitar el latiguillo de conexión de este segmento, sencillamente, STP anulará ese camino impidiendo que por él pasen tramas de datos. 

De este modo, PC1 podrá comunicar con PC2 a través el camino 1, PCl podrá comunicarse con PC3 mediante el camino 2, mientras que PC2 se comunicará con PC3 utilizando los caminos 1 y 2 a través del conmutador A. 

Si en un momento dado el camino 1 deja de estar disponible, entonces quedarán incomunicadas todas las estaciones que tienen que utilizar este camino l en sus comunicaciones. STP se da cuenta del fallo de red y genera un nuevo árbol anulando el camino 1. 

En este caso, STP elegirá los caminos 2 y 3 para asegurar sus comunicaciones y así, PCI podrá comunicarse con PC3 a través del camino 2, PC2 se comunicará con PC3 por el camino 3 y PCI lo hará con PC2 a través de los caminos 2 y 3. 

Por tanto, STP ha sido capaz de utilizar la redundancia física de la topología de la red, impidiendo que se tomen bucles lógicos que causen tormentas de broadcast.-->

## 12. Bibliografía

- [¿Cómo Funciona un Switch?](https://ccnadesdecero.com/curso/como-funciona-un-swtich/)
- [Qué es Ethernet y cómo funciona el estándar IEEE](https://ccnadesdecero.com/curso/estandar-ethernet-ieee/)
- [STP: ¿Qué es y Para qué Sirve?](https://ccnadesdecero.com/curso/stp/)
- [STP: ¿Cómo Funciona?](https://ccnadesdecero.com/curso/como-funciona-stp/)
- [4.2.2 Métodos de Acceso al Medio](http://cidecame.uaeh.edu.mx/lcc/mapa/PROYECTO/libro27/422_mtodos_de_acceso_al_medio.html)
- [CSMA/CD: protocolo de transmisión anticolisiones](https://www.ionos.es/digitalguide/servidores/know-how/csmacd/)
- [CSMA/CA: definición y mecánica del protocolo](https://www.ionos.es/digitalguide/servidores/know-how/csmaca-protocolo-de-acceso-al-medio-para-redes-inalambricas/)

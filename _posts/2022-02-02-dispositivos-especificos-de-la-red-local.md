---
title: Dispositivos específicos de la red local
date: 2022-02-02 09:30:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [gnu linux, redes locales]
---

{:.section}
## Introducción

Una LAN utiliza los siguientes elementos en su infraestructura:

- Los **medios de trasmisión** que pueden ser cableados o inalámbricos y que conectan a los nodos de red entre sí.
- Los **adaptadores de red** o tarjetas de **interfaz de red** que son los dispositivos que se instalan los ordenadores y periféricos para que puedan estar conectados a una red de área local.
- Los **dispositivos de interconexión**, que sirven de punto de conexión dentro de la red y dependiendo del número de ordenadores que vayamos a tener nos interesará implantar un dispositivo u otro:
    - Repetidores
    - Hubs (repetidores multipuerto)
    - Switches (conmutadores)
    - Bridges (puentes)
    - Routers (enrutadores o encaminadores)
    - Modems

{:.section}
## Medios de transmisión

Ya nos hemos visto con anterioridad pero como recordatorio: los medios de transmisión se encargan de distribuir la información por la red ya sea tras un cable o del aire. Cuando el movemos la información estamos moviendo la energía que puede ser:

- En forma de energía eléctrica cuando usamos un material conductor, el cobre por ejemplo.
- En forma de energía lumínica cuando el material conduce la luz, la fibra óptica.
- En forma de energía electromagnética no guiada cuando usamos el espacio radioeléctrico, por ejemplo las ondas de radio.

{:.section}
## Adaptadores de red

Si queremos que nuestro equipo esté conectado con otros equipos de una red local es necesario que cuente con adaptador de red.

Este es un dispositivo electrónico que proporciona la interfaz física necesaria para que el equipo pueda recibir datos de otros equipos y transmitir datos hacia otros equipos de la red. Entendiendo equipo tanto ordenadores, impresoras en red, como sistemas electrónicos de propósito específico como por ejemplo videoconsolas.

Estos dispositivos se pueden insertar en una ranura de la placa base o bien en el exterior mediante algún puerto estándar (USB).

Debe tener un software controlador (llamado driver) del adaptador y que este estado del equipo. Y además el adaptador tiene que estar conectado correctamente a la red mediante un cable.

La elección de un adaptador u otro determinada los parámetros de cada uno de ellos:

- El estándar que cumple.
- La velocidad máxima operación.
- El tipo de acceso que proporciona.

{:.section}
## Dispositivos de interconexión cableadas

Permiten obtener mayor aprovechamiento de las características de una red. Distinguiremos entre redes cableadas y redes inalámbricas ya que los dispositivos son distintos.

Dispositivos de interconexión cableadas:

- Modems
- Dispositivos específicos de red local:
    - Repetidores
    - Hubs (repetidores multipuerto)
    - Switches (conmutadores)
    - Bridges (puentes)
- Dispositivos de interconexión de redes:
    - Routers (enrutadores)

También, existen dispositivos de interconexión para redes inalámbricas que veremos en otra unidad:

- Repetidores inalámbricos
- Puntos de acceso
- Puentes inalámbricos

{:.subsection}
### Modems

Estrictamente hablando, el modem es un conversor analógico-digital que se utiliza para transmitir información digital por las lineas telefónicas apropiadas para la transmisión de señales analógicas. Sin embargo, también suele aplicarse este término para el caso de los módems ADSL o los módems de cable.

{:.subsubsection}
#### Modem ADSL

DSL son las siglas de Digital Subscriber Line. Delante de estas siglas suele ponerse otra le tra que identifica la familia especifica dentro de DSL, por ello nos referiremos, en general, a tecnologías xDSL. 

Con ADSL se trata de aprovechar el mismo cableado del teléfono analógico para la transmisión de datos a Internet a alta velocidad estableciendo dos canales de comunicación sobre la misma línea física.

{:.subsubsection}
#### Cable-modem

Un modem de cable o cable-modem es un dispositivo que nos permite acceder a Internet a alta velocidad utilizando la intraestructura de las redes de televisión por cable. Las velocidades de transmisión son muy variables, pero suelen estar entre los 300 Kbps y los 10 Mbps, aunque la tecnología permitiría transmisiones hasta los 40 Mbps. 

Los usuarios pueden estar recibiendo sus canales de televisión y simultáneamente estar transmitiendo o recibiendo datos de Internet.

{:.subsection}
### Repetidores (capa 1)

Si las distancias entre estaciones pertenecientes a una red son demasiado elevadas, la señal enviada entre ambas va perdiendo calidad.

Por ello es necesario utilizar dispositivos que regeneren dicha señal a su estado original o lo más cercano a ello posible. Estos son los amplificadores y repetidores.

Estos dispositivos también amplifican el ruido y esto puede hacer que se pierda la señal original.

![img-description](/assets/img/dispositivos-especificos-de-la-red-local/capasHub.png)
_Modelo de capas para un repetidor o hub. El repetidor opera con señales por eso es un dispositivo que solo contempla la capa física para unir los nodos origen y destino._

{:.subsection}
### Hubs o repetidores multipuerto (capa 1)

Los concentradores o hubs son repetidores multipuerto.

En vez de distribuir la señal de estación de trabajo en estación de trabajo, en la mayoría de redes locales se usa un concentrador que reúne todas las conexiones de modo que el fallo de una de ellas no afecta en las demás.

Este tipo de conexiones conforma una topología en estrella.

También son llamados repetidores multipuerto.

![img-description](/assets/img/dispositivos-especificos-de-la-red-local/capasHub.png)
_Modelo de capas para un repetidor o hub. El repetidor opera con señales por eso es un dispositivo que solo contempla la capa física para unir los nodos origen y destino._

{:.question}
¿Qué es un dominio de colisión?

{:.subsection}
### Bridges o puentes (capa 2)

Es un componente que interconecta redes con distintas topologías y protocolos de nivel 2.

Su misión principal es la adaptación de la información de una red a otra, es decir, realiza la función de traductor, de modo que puede transformar las tramas que sean compatibles entre sí.

Un puente o bridge conecta segmentos de red formando una sola subred (permite conexión entre equipos sin necesidad de routers). Funciona a través de una tabla de direcciones MAC detectadas en cada segmento al que está conectado. Cuando detecta que un nodo de uno de los segmentos está intentando transmitir datos a un nodo del otro, el bridge copia la trama para el otro segmento de red, teniendo la capacidad de desechar la trama (filtrado) en caso de no tener dicho segmento de red como destino. Para conocer por dónde enviar cada trama que le llega (encaminamiento) incluye un mecanismo de aprendizaje automático (auto aprendizaje) por lo que no necesitan configuración manual.

![img-description](/assets/img/dispositivos-especificos-de-la-red-local/capasSwitch.png)
_Modelo de capas para un bridge o un switch. El switch opera con tramas por eso es un dispositivo que trabaja en la capa de enlace para unir los nodos origen y destino._

{:.subsection}
### Switches o conmutadores (capa 2)

Un switch es un dispositivo de nivel 2 que viene a reducir los problemas de los concentradores o hubs, ya que estos sí analizan las tramas a nivel 2 para saber quien es el destinatario de la información.

![img-description](/assets/img/dispositivos-especificos-de-la-red-local/capasSwitch.png)
_Modelo de capas para un bridge o un switch. El switch opera con tramas por eso es un dispositivo que trabaja en la capa de enlace para unir los nodos origen y destino._

Gracias a ello, una vez tienen la tabla de encaminamiento elaborada reducen el número de difusiones, lo que permite optimizar la gestión del tráfico de la red.

Hoy en día también existen switches de capa 3.

{:.question}
¿Qué es un dominio de difusión?

En la Sección 6.6 del libro está muy bien explicado.

#### Ejemplo de conmutación con switches

Si al switch le llega una trama cuya dirección física de destino es MAC4, el conmutador buscará esa dirección entre sus tablas de direcciones, la hallará disponible en el puerto 2 y conmutará la trama para que salga por ese puerto. La trama llegará al hub que está conectado a ese Puerto segundo y el hub la transmitirá por todos sus puertos llegando a las estaciones PC4 [su destino) y PC5.

![img-description](/assets/img/dispositivos-especificos-de-la-red-local/tablasMac.png)
_Tablas de direcciones físicas en los puertos de un conmutador._

#### Cableado de switches

La conexión de las estaciones a los puertos de conmutador se hace mediante un cable directo. En cambio, los cables que conectan varios switches entre si requieren cables cruzados. La mayor parte de los switches actuales tienen algún puerto especial que hace internamente el cruce de pares de modo que se pueda utilizar también un cable directo para interconectarlo con otro switch utilizando este puerto. Estos puertos suelen venir etiquetados con el identificador MDIX o MD-X (Interfaz cruzada dependiente del medio, Medium Dependent Interface Crossover) para diferenciarlos de los puertos MDI que son los que no hacen crossover (puertos normales para conectar mediante cable directo). 

En un estadio más avanzado, el puerto puede tener inteligencia suficiente como para admitir tanto una conexión MDI (cable directo como MDI-X (cable cruzado): en este caso, el identificador del puerto suele ser MDI/MDI-X. En cualquier caso, siempre con viene consultar las especificaciones del fabricante para conocer con exactitud las prestaciones de cada puerto.

{:.subsection}
### Tecnologías específicas de los switches

{:.subsubsection}
#### VLAN

Leer artículo [¿Qué es una VLAN?](/posts/vlan/).

{:.subsubsection}
#### STP (Spanning Tree Protocol)

Cuando la topología global de la red se hace compleja es posible que se formen bucles en la red, ya que una trama puede alcanzar sU destino por varios caminos. Estas situaciones son muy interesantes porque proveen redundancia de caminos, lo que hace a la red menos sensible trente a averías en el sistema de cableado, pero también son una fuente de problemas puesto que se pueden generar tormentas de broadcast. 

Por un lado, hay una necesidad de bucles para que haya redundancia pero, por otro lado, hay que impedir que se produzcan tormentas de broadcast. Para conseguir esto la IEEE ha propuesto un protocolo que impide los bucles en un nivel lógico, evitando las tormentas de broadcast, pero que reconfigura la red cuando algún segmento talla para utilizar las ventajas de la redundancia de segmentos físicos. Se trata del protocolo IEEE 802.1D o STP (Spanning Tree Protocol, Protocolo de árbol de expansión).

##### Ejemplo de STP

En la siguiente Figura se puede ver la representación gráfica de una red conmutada con tres Switches con caminos redundantes que será útil para estudiar el modo de operación básica de SIP. Efectivamente, para que una trama con origen en PCI legue a PC3, caben dos caminos: el camino más sencillo consiste en enviar la trama por el camino 2 hacia el conmutador C y él se encargará de conducirla hacia su destino en PC3. El segundo camino tiene un mayor coste y consiste en transmitir la trama por el camino hacia el conmutador B y que este redirija la trama por el camino 3 hacia el conmutador C que es quien tiene la conexión física con el destino PC3.

![img-description](/assets/img/dispositivos-especificos-de-la-red-local/stp.png)
_Ejemplo de redundancia de caminos en una red conmutada para el estudio del protocolo STP._

La red reúne todos los elementos para que se genere una tormenta de broadcast puesto que tiene bucles. Por ello, es necesario habilitar en los tres conmutadores el protocolo STP o RSTP. Una vez habilitados los conmutadores negociarán quién debe tomar la función de root bridge. Supongamos que esta función sea asumida por el conmutador A, como aparece en la figura. 

Una vez que haya convergido el proceso de confección del árbol de caminos de STP, el protocolo habrá decidido anular el camino 3. Esto no quiere decir que haya que quitar el latiguillo de conexión de este segmento, sencillamente, STP anulará ese camino impidiendo que por él pasen tramas de datos. 

De este modo, PC1 podrá comunicar con PC2 a través el camino 1, PCl podrá comunicarse con PC3 mediante el camino 2, mientras que PC2 se comunicará con PC3 utilizando los caminos 1 y 2 a través del conmutador A. 

Si en un momento dado el camino 1 deja de estar disponible, entonces quedarán incomunicadas todas las estaciones que tienen que utilizar este camino l en sus comunicaciones. STP se da cuenta del fallo de red y genera un nuevo árbol anulando el camino 1. 

En este caso, STP elegirá los caminos 2 y 3 para asegurar sus comunicaciones y así, PCI podrá comunicarse con PC3 a través del camino 2, PC2 se comunicará con PC3 por el camino 3 y PCI lo hará con PC2 a través de los caminos 2 y 3. 

Por tanto, STP ha sido capaz de utilizar la redundancia física de la topología de la red, impidiendo que se tomen bucles lógicos que causen tormentas de broadcast.

{:.subsection}
### Bridges vs switches

Un Bridge o Puente de red conecta dos redes de área local. Un Switch o Conmutador de red, por otro lado, conecta varios clientes a una red. Esto es lo que debes saber sobre estos dos componentes de red.

Cada Switch es un Bridge, pero los Bridges no son realmente Switches.

{:.subsection}
### Routers, enrutadores o encaminadores (capa 3)

Son los responsables de adaptar los paquetes de información, en el nivel de red (3), cuando las máquinas origen y destino se encuentran en distintas redes.

Son dispositivos (software o hardware) configurables para encaminar paquetes entre sus puertos de red. Para ello, se puede utilizar la dirección IP (no la MAC).

Este encaminamiento lógico hace que el funcionamiento no sea muy rápido, ya que se debe analizar el contenido del paquete a encaminar. A pesar de esto, los enrutadores permiten gran flexibilidad en la interconexión de redes.

![img-description](/assets/img/dispositivos-especificos-de-la-red-local/capasRouter.png)
_Modelo de capas para un router._

{:.subsubsection}
#### Usos de los routers

- Como cortafuegos o firewall, filtrando paquetes.
- Como integrador de diferentes tecnologías físicas.
- Como elemento que permite la escalabilidad de la red ya que se permiten diferentes rutas.


## Bibliografía

- [Cuál es la diferencia entre Bridge y Switch](https://ccnadesdecero.es/diferencia-bridge-y-switch/)
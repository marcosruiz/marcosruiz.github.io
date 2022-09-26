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
¿Qué redes son más rápidas: LAN, MAN o WAN?

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

### 4.1. Redes entre iguales (Peer-to-Peer o P2P)

Una red peer-to-peer (P2P) o red de pares, es una red de computadoras en la que todos o algunas propiedades funcionan sin clientes ni servidores fijos, sino que son serie de nodos con un comportamiento igual entre sí. De allí su nombre red de pares o iguales.

Esto quiere decir que actúan de manera simultánea como clientes y servidores con respecto a los demás nodos que tiene la red. Este tipo de funcionamiento permite el intercambio directo de información, en cualquier formato, entre todas las computadoras interconectadas.

La particularidad de que mediante este sistema se pueda compartir e intercambiar información directa entre dos o más usuario ha llevado a que los usuarios utilicen esta red para intercambiar archivos cuyo contenido está sujeto a las leyes de copyright, lo que ha provocado una gran polémica frente a este sistema.

Estas redes peer-to-peer aprovechan, administran y optimizan el uso del ancho de banda de los restantes usuarios de la red a través de la conectividad que se da entre ellos, obteniendo así conexiones y transferencias con más rendimiento que con métodos convencionales.

### 4.2. Redes privilegiadas (Cliente-Servidor)

Es aquella red de comunicaciones en la que todos los clientes están conectados a un servidor, en el que se centralizan los diversos recursos y aplicaciones con que se cuenta; y que los pone a disposición de los clientes cada vez que estos son solicitados.

Esto significa que todas las gestiones que se realizan se concentran en el servidor, de manera que en él se disponen los requerimientos provenientes de los clientes que tienen prioridad, los archivos que son de uso público y los que son de uso restringido, los archivos que son de sólo lectura y los que, por el contrario, pueden ser modificados, etc.

La principal característica es que en este tipo de redes los roles están bien definidos y no se intercambian: los clientes en ningún momento pueden tener el rol de servidores y viceversa, de esta manera se puede mantener un control centralizado de la información, aportando con esto mayor seguridad y mayor rendimiento a menores costos

![img-description](comunicacionClienteServidor.png)
_Comunicación cliente/servidor_

## 5. Por tecnología

### 5.1. Red Broadcast

Se caracteriza por transmitir datos por un sólo canal de comunicación que comparten todas las máquinas de la red.

- **Unicast**: Comunicación establecida entre un transmisor y un receptor.
- **Multicast**: Comunicación establecida entre un transmisor y varios receptores.
- **Broadcast**: Comunicación establecida entre un transmisor y todos los elementos de la red.

Típicamente es la tecnología usada en redes LAN.

### 5.2. Red Point-To-Point (PPP)

Es aquella en la que existe multitud de conexiones entre parejas individuales de máquinas.

Para poder transmitir los paquetes de una máquina a otra a veces es necesario que estos pasen por máquinas intermedias, siendo obligado en tales casos un trazado de rutas mediante routers.

Típicamente es la tecnología usada en redes WAN.

## 6. Por topología física

La topología de red es la propiedad que indica la **forma física de la red**, es decir, el modo en que se disponen los equipos y el sistema de cableado que los interconecta.

<iframe width="560" height="315" src="https://www.youtube.com/embed/W1M_-lETphg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/04jfARpozAc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 6.1. Red en bus

La red en bus se caracteriza por tener un único canal de comunicaciones.

La topología de Bus se basa en un cable central, el cual lleva la información a todas las computadoras de la red, en forma de ramificaciones, de modo, que la información viaja de manera secuencial hacia los nodos de la red.

![img-description](redBus.png){: w="250" }

![img-description](redBusConTerminador.png){: w="250" }


<details class="card mb-2">
  <summary class="card-header question">¿Qué significa CSMA/CD?</summary>
  <div class="card-body" markdown="1">

Carrier Sense Multiple Access with Collision Detection, es decir, acceso múltiple con escucha de portadora y **detección** de colisiones.

La operación se suele comparar con el comportamiento de un grupo de personas que conversan de manera respetuosa: para que se puedan comunicar adecuadamente, es necesario que no todos los participantes hablen a la vez, sino uno tras otro, de manera que todos puedan comprender plenamente las contribuciones de los demás a la conversación. De forma natural, en una conversación de este tipo nos comportamos conforme a un protocolo: cuando otra persona está hablando, nosotros solamente escuchamos.

Una vez que el interlocutor ha terminado su contribución por el momento, aguardamos un tiempo antes de empezar a hablar para asegurarnos de que este u otro interlocutor no va a iniciar una nueva contribución. Si accidentalmente empezamos a hablar al mismo tiempo que otra persona, dejamos de intentarlo y aguardamos de nuevo antes de volver a empezar otra vez.

El protocolo CSMA/CD se basa también en un procedimiento muy similar. Primero, la estación examina el medio de transmisión. Mientras el medio esté ocupado, la estación sigue examinándolo. Solo cuando el medio se queda libre, la estación envía un paquete de datos durante un cierto tiempo (conocido como “espacio entre tramas”). Mientras tanto, el transmisor continúa examinando el medio para detectar colisiones. Si ninguna otra estación ha intentado enviar sus datos a través del medio compartido antes del final de la transmisión, es decir, cuando no se produce ninguna colisión, la transmisión se realiza correctamente.

En cambio, cuando se detecta una colisión, la estación que la detecta interrumpe de inmediato la transmisión y en su lugar envía una señal de interferencia (señal JAM), que informa a todas las estaciones de la red de dicha colisión. La estación espera un tiempo aleatorio (Backoff) y vuelve a intentar la transmisión. El Backoff debe ser aleatorio para que no se produzca de inmediato una segunda colisión. Puesto que las dos estaciones seleccionan un valor aleatorio, la probabilidad de que ambas estaciones inicien un intento de transmisión al mismo tiempo es baja.

Se cuenta el número de intentos de retransmisión. Si los siguientes intentos siguen fallando y se alcanza el número máximo de intentos(16), la estación notifica el error a la capa de red superior e interrumpe la transmisión de forma permanente. Puesto que es muy poco probable que una estación alcance el número máximo de intentos durante un proceso normal, si esto ocurre se interpreta que se ha producido un error en el sistema.

Su uso está especialmente extendido en redes Ethernet.

  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un dominio de colisión?
</summary>
  <div class="card-body" markdown="1">

Un dominio de colisión es un segmento físico de una red en el que las estaciones comparten un medio de transmisión.

  </div>
</details>
#### 6.1.1. Ventajas

- Fácil de implementar y expandir.
- Tiene uno de los costos de red más bajos.
- Si un PC falla, la comunicación se mantiene.

#### 6.1.2. Desventajas

- Si el bus falla, la comunicación falla.
- Baja seguridad de los datos que transitan por la red.
- Longitud de cable y número de estaciones limitadas
- El rendimiento se deteriora con la adición de estaciones.

### 6.2. Red en estrella

En una red en estrella las estaciones están conectadas directamente a un punto central y todas las comunicaciones se han de hacer necesariamente a través de éste.

![img-description](redEstrella.png){: w="250" }

#### 6.2.1. Ventajas

- Fácil adición de posiciones.
- Fácil localización de fallos.
- Desconectar una conexión no paraliza el resto de la red.
- Posible simplicidad del equipo a nivel de nodo: es el hub o switch el que es inteligente.
- Posible evolución jerárquica del material. Puede moverse fácilmente un dispositivo en la red.

#### 6.2.2. Desventajas

- Más cara que una red de topología de bus (compra del switch y tantos cables como nodos)
- Si el switch está defectuoso, toda la red está inactiva.
- Uso de múltiples routers switch para poder comunicarse entre diferentes redes o computadoras.


### 6.3. Red en anillo

En una red en anillo cada estación está conectada a la siguiente y la última está conectada a la primera.

Es un tipo de topología de red simple, en donde las estaciones de trabajo o computadoras, se encuentran conectadas entre sí en forma de un anillo, es decir, forman un círculo entre ellas. La información viaja en un solo sentido, por lo tanto, que si un nodo deja de funcionar se cae la red o deja de abastecer información a las demás computadoras que se encuentran dentro del anillo, por lo tanto, es poco eficaz.

{:.question}
¿Qué ocurre si cortamos el cable que une dos nodos?

{:.question}
¿Cuál es la principal ventaja de una red en anillo?

![img-description](redAnillo.png){: w="250" }

![img-description](tokenRing.png){: w="250" }
_Token Ring_

![img-description](mau.jpg)
_MAU (Multistation Access Units) de Token Ring_

<details class="card mb-2">
  <summary class="card-header question">¿Es Token Ring una topología en anillo?</summary>
  <div class="card-body" markdown="1">

A nivel lógico si, a nivel físico, no.

  </div>
</details>


<details class="card mb-2">
  <summary class="card-header question">¿Qué significa CSMA/CA?</summary>
  <div class="card-body" markdown="1">

Carrier Sense Multiple Access with Collision Avoidance, es decir, acceso múltiple por detección de portadora y **prevención** de colisiones.

  </div>
</details>


#### 6.3.1. Ventajas

- Se reduce la cantidad de cable necesaria.
- El protocolo es sencillo, evita la gestión de colisiones.
- Tasa de utilización óptima del ancho de banda (cerca del 90%).
- Funciona mejor que una topología de bus con una gran carga de red.
- Es bastante fácil de instalar y reconfigurar, ya que agregar o quitar hardware solo requiere mover dos conexiones.

#### 6.3.2. Desventajas

- La retirada o el fallo de un ordenador activo paraliza el tráfico de la red.
- El retraso de la comunicación es directamente proporcional al número de nodos de la red.
- Mover, agregar y modificar máquinas conectadas puede afectar la red.


### 6.4. Red en anillo doble

Una topología en anillo doble consta de dos anillos concéntricos, donde cada Host de la red está conectado a ambos anillos, aunque los dos anillos no están conectados directamente entre sí. Es análoga a la topología de anillo, con la diferencia de que, para incrementar la confiabilidad y flexibilidad de la red, hay un segundo anillo redundante que conecta los mismos dispositivos. La topología de anillo doble actúa como si fueran dos anillos independientes, de los cuales se usa solamente uno por vez.


![img-description](redAnilloDoble.png){: w="250" }

{:.question}
¿Qué ocurre si cortamos el cable que une dos nodos?


### 6.5. Red en malla

La red en malla es una topología de red que califica las redes (cableadas o no) en las que todos los ordenadores están conectados entre pares sin una jerarquía central, formando así una estructura en forma de red.

Por tanto, cada nodo debe recibir, enviar y retransmitir datos.

![img-description](redMalla.png){: w="250" }

La red de Internet se basa en una topología de malla (en la red de área amplia “WAN”, garantiza la estabilidad en caso de falla de un nodo).

### 6.6. Red en malla totalmente conexa

Como la red en malla pero totalmente conectada.

![img-description](redMallaCompleta.png){: w="250" }

Las redes diseñadas con dicha topología suelen ser muy caras de configurar, pero siempre proporcionan un alto grado de confiabilidad, ya que hay muchas rutas para los datos, que es proporcionada por la gran cantidad de enlaces redundantes entre nodos.

Este tipo de topologías existentes se ve principalmente en aplicaciones militares.

### 6.7. Red en árbol

En una red en árbol los nodos están colocados en forma de árbol. Desde una visión topológica, la conexión en árbol es parecida a una serie de redes en estrella interconectadas salvo en que no tiene un nodo central.

![img-description](redArbol.png){: w="250" }

### 6.8. Red mixta o hibrida

En una red mixta se da cualquier combinación de las anteriores por lo que hereda las ventajas y desventajas de las topologías incluidas.

![img-description](redMixta.png){: w="250" }

#### 6.8.1. Ventajas

- Fiable ya que la detección de errores y la resolución de problemas son fáciles.
- Eficaz.
- Escalable, ya que podemos conectar otras redes informáticas con las redes existentes con diferentes topologías.
- Flexible.

#### 6.8.2. Desventajas

- La detección de fallas es difícil.
- La instalación es difícil.
- El diseño es complejo, por lo que el mantenimiento es elevado y, por tanto, caro.

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
- [ANÁLISIS DE TRÁFICO DE UNA RED LOCAL UNIVERSITARIA](https://www.redalyc.org/pdf/784/78411787002.pdf)
- [TOPOLIGÍAS DE RED](https://www.areatecnologia.com/informatica/topologias-de-red.html#Red_en_Bus)
- [Tipos de redes según su relación funcional](https://lasredesinformaticasenlaactualidad.home.blog/tipos-de-redes-segun-su-relacion-funcional/)
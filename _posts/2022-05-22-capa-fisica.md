---
title: Capa física
date: 2022-05-22 12:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, teoría, smr]
img_path: /assets/img/capa-fisica/
---

{:.section}
## Introducción

En esta unidad vamos a detallar los diversos medios de transmisión que pueden usarse para transportar la información, así como los distintos espacios y equipos que componen un sistema de cableado en red local.

{:.section}
## Aspectos básicos en la transmisión de datos

El medio de transmisión es el elemento que conecta dos elementos participantes en una comunicación. Por ejemplo, un cable o el espacio radioeléctrico. La posición del medio de transporte en el modelo OSI está ubicada en la **capa física**.

{:.subsection}
### Tipos de transmisión

Existen dos tipos de transmisión:

- Banda base
- Banda ancha

{:.subsubsection}
#### Banda base

El término banda base se refiere a la banda de frecuencias producida por un transductor, tal como un micrófono, un manipulador telegráfico u otro dispositivo generador de señales que no es necesario adaptarlo al medio por el que se va a transmitir.

Esta técnica no necesita módems.

{:.subsubsection}
#### Banda ancha

Banda ancha significa que lleva más de una señal y cada una de ellas se transmite en diferentes canales, hasta su número máximo de canal. La señal original sufre una serie de variaciones en su amplitud, frecuencia y/o fase, se dice que la señal se modula.

{:.question}
¿Cuál es la diferencia entre banda base y banda ancha?

<details class="card mb-2">
  <summary class="card-header">Sabías que...</summary>
  <div class="card-body" markdown="1">

La televisión y la radio FM son dos medios de comunicación que utilizan la técnica de transmisión en banda ancha. Los canales son enviados por el mismo medio (en este caso el aire) siendo transportados cada uno por una onda portadora (cada una de ellas a una frecuencia distinta). 

Imaginemos dos cadenas musicales. Una de ellas se emite en la frecuencia portadora de 89.2 MHz y la otra en la frecuencia portadora de 97.1 MHz. Ambas cadenas comparten el medio, pero tienen adquiridos los derechos de emitir por una frecuencia sin que nadie más pueda hacerlo. De esta forma podemos seleccionar qué cadena escuchar. Se dice entonces que sintonizamos un canal especifico. 

La asignación de un canal específico tiene un coste asociado y la realiza la Secretaria General de Telecomunicaciones. 

Por otro lado, un claro ejemplo de comunicación en banda base es el que se realiza mediante la emisión de voz a través de ondas acústicas mediante un hilo tensado. 

En este caso el medio es un medio guiado, sobre el cual se transmite una onda de presión (acústica). Esta presión, puesto que el cable está tensado, viaja por el hilo. La información transmitida es la voz que no sufre ningún tipo de modulación, por lo cual utiliza todos los recursos del medio para su transporte.

  </div>
</details>

{:.question}
¿Funciona Ethernet (IEEE 802.3) por banda base o por banda ancha?

{:.question}
¿Qué diferencia existe entre las señales analógicas o digitales?

{:.question}
¿Qué tipo de señales se transmiten por un cable de cobre de Ethernet? ¿Señales analógicas o digitales?

{:.subsection}
### Limitaciones o perturbaciones en la transmisión

Lo que hemos hablado hasta ahora de velocidades en los medios de transmisión se refiere siempre a condicione óptimas, pero nunca se dan estas condiciones. Vamos a estudiar ahora qué factores afectan a las transmisiones.

- Atenuación
- Interferencias electromagnéticas
- Diafonía o crosstalk
- Dispersión

{:.subsubsection}
#### Atenuación

La atenuación es la disminución paulatina de la amplitud de la señal de onda.

Depende de la distancia recorrida: a mayor distancia la atenuación es mayor.

![Atenuación](atenuacion.png){: w="300"}
_Atenuación_

{:.subsubsection}
#### Interferencia electromagnética

El medio de transmisión puede ser afectado por ondas electromagnéticas emitidas por equipos eléctricos o por comunicaciones inalámbricas. Estas perturbaciones afectan a las comunicaciones basadas en señales electromagnéticas (cables de par trenzado coaxial), no así a las ópticas.

![Interferencia electromagnética](interferenciaElectromagnetica.png){: w="200"}
_Interferencia electromagnética_

{:.subsubsection}
#### Diafonía o crosstalk

Interferencias entre señales que se producen cuando los cables están muy juntos.

{:.subsubsection}
#### Dispersión

Se da en medios de transmisión de fibra óptica, conforme el haz de luz que transporta la información va rebotando en las paredes de la fibra hay una variación gradual del ángulo de incidencia del haz que provoca pérdida de señal luminosa.

![img-description](dispersion.png)
_Dispersión_

{:.question}
¿Qué es la diafonía?


{:.subsection}
### Ancho de banda y velocidad de transmisión

Ancho de banda y velocidad de transmisión de un medio suelen ser conceptos que se utilizan habitualmente como sinónimos.

Cualquier señal de información puede formarse a partir de un conjunto de señales periódicas de tipo senoidal. En este sentido, se puede decir que el ancho de banda es el rango de frecuencias que un medio de transmisión permite transportar.

Se mide en hercios (Hz).

Por norma general, a mayor frecuencia más sensible es la señal a interferencias pero mayor es la cantidad de información que se puede transmitir.

<iframe src="https://www.youtube.com/embed/dpGM6DOvkUM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.section}
## Medios de transmisión

{:.question}
¿Qué diferencia hay entre los medios de transmisión guiados y no guiados?

{:.subsection}
### Guiados

{:.subsubsection}
#### Par trenzado

Dos conductores generalmente de cobre recubiertos de un plástico para aislarlos. Ambos hilos se trenzan.

Este tipo de cable está extendido en la red telefónica.

##### UTP

Unshielded Twisted Pair. Cable sin recubrimiento metálico externo.

![img-description](utp.png){: w="200"}
_UTP_

##### FTP

Foiled Twisted Pair. Cable con recubrimiento metálico externo.

![img-description](ftp.png){: w="300"}
_FTP_

##### STP

Shielded Twisted Pair. Par trenzado blindado individual.

![img-description](stp.png){: w="200"}
_STP_

##### SFTP

Screened Foiled Twisted Pair. Cable laminado apantallado individual.


![img-description](sftp.png){: w="200"}
_SFTP_

##### SSTP

Screened Shielded Twisted Pair. Cable de pares trenzados laminado blindado individual.


![img-description](sstp.png){: w="200"}
_SSTP_

##### Clasificación de pares trenzados

###### Por categoría

Especifica el tipo de cable que se utilizará en cada situación y contrucción.

Dependiendo de la velocidad de transmisión, ha sido dividida en diferentes categorías

Las categorías son: 1, 2, 3, 4, 5, 5e, 6, 6a, 7, 7a, 8, 9 y 10

| Categoría | Ancho de banda | Uso | Características |
|---|---|---|---|
| 1 | – | Telefonía y modem | Cable UTP |
| 2 | 4 Mbps | Antiguos terminales (en desuso) | Cable UTP |
| 3 | 10-16 Mbps 16 MHz | 10 BASE-T / 100 BASE-T4 Ethernet | Cable UTP |
| 4 | 16 Mbps 20 MHz | Token Ring | Cable UTP |
| 5 | 100 Mbps 100 MHz | 10 BASE-T / 100 BASE-TX Ethernet | Cable UTP |
| 5e | 1 Gbps 100 MHz | 100 BASE-TX / 1000 BASE-T Ethernet | Cable UTP/FTP |
| 6 | 1 Gbps 250 MHz | 1000 BASE-T Ethernet | Cable FTP/STP/SFTP/SSTP |
| 6e | 10 Gbps 500 MHz | 10GBASE-T Ethernet | Cable FTP/STP/SFTP/SSTP |
| 7 | Multitrasferencia 600 MHZ | Telefonía + televisión + 1000BASE-T Ethernet | Cable FTP/STP/SFTP/SSTP |
| 7a | Multitrasferencia 1000 MHz | Telefonía + televisión + 1000BASE-T Ethernet | Cable SFTP/SSTP |
| 8 | 40 Gbps 1200 MHz | 40GBASE-T Ethernet ó Telefonía + televisión + 1000BASE-T Ethernet | Cable SFTP/SSTP |
| 9 | 25000 MHz | En creación | Cable SFTP/SSTP de 8 pares |
| 10 | 75000 MHz | En creación | Cable SFTP/SSTP de 8 pares |

{:.question}
Dos razones por lo que se trenzan los pares trenzados


###### Por clase

Especifica el ancho de banda máximo del cable. Son las siguientes:

- Clase C: 16 MHz
- Clase D: 100 MHz
- Clase E: 250 MHz
- Clase Ea: 500 MHz
- Clase F: 600 MHz
- Clase Fa: 1000 MHz

{:.subsubsection}
#### Cable coaxial

El cable coaxial es un tipo de cable que se utiliza para transportar señales eléctricas de alta frecuencia.

Presenta un gran blindaje contra las interferencias externas. Por ello se utiliza para transmitir grandes distancias con una buena velocidad.

Se llama coaxial porque está constituido por un conductor principal y una serie de capas concéntricas, cada una con una misión específica.

Está formado por un conductor central de cobre que constituye el núcleo, por donde circulan los datos y tres capas que aíslan el núcleo

Por el diseño, el cable es un poco rígido y no permite que se doble en un ángulo de 90 grados, ya que podría partirse el cable o producirse un cortocircuito.
Su uso principal es entre la antena y el televisor.

![img-description](coaxial.jpg)
_Cable coaxial_

{:.subsubsection}
#### Fibra óptica

La fibra, que suele ser de vidrio u otros materiales plásticos, es insensible a interferencias electromagnéticas externas.

Son necesarias fuentes especializadas: fuentes láser y diodos LED.

![img-description](fibraOptica.png){: w="300"}
_Fibra óptica_

{:.question}
¿Por qué el cable de fibra óptica de vuestra casa puede girar esquinas de 90º?

<details class="card mb-2">
  <summary class="card-header question">¿Qué es más rápida la luz de la fibra o la corriente eléctrica del cobre?</summary>
  <div class="card-body" markdown="1">

A estas alturas, todo el mundo sabe que los cables de fibra óptica son considerablemente más rápidos que los de cobre. Pero, ¿se ha preguntado alguna vez por qué? La fibra óptica transmite la luz, mientras que el cobre conduce la electricidad.    La señal del cable de fibra óptica viaja a través del vidrio a dos tercios de la velocidad de la luz. Impresionante, ¿verdad? Pero, ¡espera un segundo! La velocidad de la electricidad que viaja a través del cobre también es rápida. De hecho, es más rápida que la fibra: hasta nueve décimas de la velocidad de la luz.

El ancho de banda es la clave. Permite una mayor capacidad de transmisión de datos: puede transferir desde un mínimo de 10 Gbps hasta cantidades ilimitadas (si se tiene en cuenta lo rápido que se está desarrollando la tecnología).

Para enviar las señales de luz se utilizan hilos muy finos de fibra de vidrio o plástico. La luz viaja hasta el núcleo, el centro de la fibra óptica. El núcleo está rodeado por el revestimiento, un material óptico que atrapa en el núcleo, mediante la técnica de "reflexión interna total". Un revestimiento primario protege la fibra de la humedad u otros daños. El nivel de protección se ve reforzado por el cable, que mantiene la fibra y los elementos de resistencia en su interior y está cubierto por una funda.
    
<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<iframe width="560" height="315" src="https://www.youtube.com/embed/CdAl3cECvJI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

##### Fibra monomodo

Utiliza un núcleo estrecho que es atravesado por un láser en un único camino

![img-description](fibraMonomodo.png){: w="200"}
_Fibra monomodo_

##### Fibra multimodo

Conduce la luz procedente de múltiples diodos láser cada uno con un ángulo distinto. La luz rebota en las paredes para avanzar.

![img-description](fibraMultimodo.png){: w="200"}
_Fibra multimodo_


{:.subsection}
### No guiados

Son los sistemas inalámbricos.

|👍Pros|👎Contras|
|---|---|
|Comodidad|Velocidad de transmisión|
|Flexibilidad|Depende del medio atmosférico|
|Movilidad||

{:.subsubsection}
#### Ondas de radio

##### Ventajas

- Son omnidireccionales.
- Movilidad.
- Facilidad de conexión a la red y de ampliación.
- Facilidad de integración con redes de cable.
- Pueden atravesar paredes.

##### Desventajas

- Son omnidireccionales.
- Pueden atravesar paredes.
- Interferencias.
- Seguridad.

{:.subsubsection}
#### Microondas

Son unidireccionales: transmisor y receptor deben alinearse de manera muy precisa y el emisor y receptor deben estar en la misma línea de vista.

Las microondas de frecuencia muy alta no penetran las paredes.

<iframe src="https://www.youtube.com/embed/82rmlxB2so8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.subsubsection}
#### Infrarrojos

Es unidireccional (y en interiores).

Corto alcance, ya que no pueden atravesar objetos, esto hace se eviten interferencias (por ejemplo, mando a distancia del vecino).

Pueden alcanzar velocidades superiores a 1 Gbps.

{:.subsubsection}
#### Láser

Es unidireccional y no pueden atravesar objetos.

Se puede usar en exteriores (es común encontrar su uso para conectar redes en dos edificios que tengan visión directa).

Gran influencia negativa de los fenómenos meteorológicos. Elevado coste de los equipos.

{:.subsubsection}
#### Medios guiados vs medios no guiados

{:.section}
## Despliegue del cableado

La elección de un buen sistema de cableado es de vital importancia en las instalaciones reales en las que se producirá el fenómeno de la comunicación. **La inversión estimada para cables en una instalación es inferior al 10% del coste total. Sin embargo, está comprobado que el 70% de los fallos producidos en una red se deben a defectos del cableado.** Por tanto, merece la pena no escatimar en el gasto que deba producirse en los medios de transmisión.

{:.subsection}
### Espacios

{:.subsection}
### Cuartos de comunicaciones

![img-description](cuartoComunicaciones.jpg){: w="200"}
_Cuartos de comunicaciones_

{:.subsection}
### Conectores y tomas de red

Un conector es un dispositivo que sirve para unir circuitos eléctricos.

Frecuentemente, los conectores de una misma familia se duplican en forma de "macho" o "hembra", que deben acoplarse mecánicamente en la instalación.

- **RJ11, RJ12, RJ45**: Estos conectores se suelen utilizar con cables UTP, STP.
- **AUI, DB15**: Utilizados en la formación de topologías en estrella con cables de pares, o para la conexión de transceptores a las estaciones
- **BNC**: Se utiliza con cable coaxial fino, típico de Ethernet. Mantiene la estructura coaxial del cable en cada conexión.
- **T coaxial**: Es el modo natural de conectar una estación en un bus de cable coaxial.
- **DB25 y DB9**: Son conectores utilizados para transmisiones serie.


![img-description](rj11.png){: w="200"}
_RJ11_

![img-description](rj12.png){: w="200"}
_RJ12_

![img-description](rj45.png){: w="200"}
_RJ45_

![img-description](aui.png){: w="300"}
_AUI_

![img-description](db15.png){: w="200"}
_DB15_

![img-description](bnc.png){: w="200"}
_BNC_

![img-description](tCoaxial.png){: w="200"}
_T coaxial_

![img-description](db25.png){: w="200"}
_DB25_

![img-description](db9.jpg){: w="200"}
_DB9_

{:.question}
¿Para qué se utiliza cada RJ?

{:.question}
¿Es el conector DB9 el mismo que el de los conectores VGA?

{:.subsubsection}
#### Conectores para fibra óptica

Los conectores más comunes utilizados en instalaciones de fibra óptica para redes de área local son los conectores ST y SC . En redes FDDI suele utilizarse el conector.

![img-description](sc.png){: w="200"}
_SC (Straight Connection)_

![img-description](st.png){: w="200"}
_ST (Straight Tip)_

{:.question}
¿Qué diferencias hay entre SC y ST?

{:.subsection}
### Armarios de comunicaciones y paneles de parcheo

![img-description](armarioDeComunicaciones.jpg){: w="300"}
_Armario de comunicaciones_

![img-description](panelDeParcheo.jpg){: w="300"}
_Panel de parcheo_

<iframe width="560" height="315" src="https://www.youtube.com/embed/XlIlfLreEvI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.subsection}
### Canalizaciones

![img-description](canalizaciones.png)
_Canalizaciones de una zona de trabajo_

1. Montaje sobre falso techo.
2. Montaje bajo falso techo.
3. Bandejas para cables.
4. Canaletas de pared para el tendido de cables.
5. Canaletas en el techo para el tendido de cables.
6. Canaletas para rodapiés.
7. Canaletas para repisas de ventanas.
8. Canaletas para dinteles de ventanas.

{:.subsection}
### Herramientas

Las principales herramientas en el manejo de cables de área local son las siguientes.

{:.subsubsection}
#### Cortadores y peladores de cables

![img-description](pelacables.jpg){: w="200"}
_Pelacables_

{:.subsubsection}
#### Crimpadora

![img-description](crimpadora.jpg){: w="200"}
_Crimpadora_

<iframe src="https://www.youtube.com/embed/YCEGfxOX5Ws" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/PnAiE2vInt8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.subsubsection}
#### Insertadora

![img-description](insertadora.jpg){: w="200"}
_Insertadora_

{:.subsubsection}
#### Testers de cable

![img-description](testerRj45.jpg){: w="200"}
_Tester RJ45_

{:.subsection}
### Creación de cables

Para la creación de cables existen los estándares T568A y T568B.

![img-description](t568a.webp)
_T568A y T568B_

{:.subsubsection}
#### Cable de red directo

Un cable de red directo es un tipo de cable de par trenzado que se usa en las redes de área local para conectar un ordenador a un núcleo de red como por ejemplo un enrutador.

En un cable directo, los colores de cada par de cable coinciden. Para el cable de red directo se aplica solo un estándar de cableado: ambos extremos del cable deben tener la misma dirección: T568A a T568A o T568B a T568B.

![img-description](cableRedDirecto.png)
_Cable de red directo (T568B a T568B)_

{:.subsubsection}
#### Cable de red cruzado

Un cable de red cruzado es un tipo de cable Ethernet que se utiliza para conectar dispositivos de computación directamente. A diferencia de los cables de red directo, los cables cruzados utilizan dos estándares de cableado diferentes: un extremo usa el estándar de cableado T568A y el otro utiliza el estándar de cableado T568B (T568A a T568B). 

El cableado interno de los cables de red cruzados invierte las señales de transmisión y recepción. Este tipo de cable se usa con más frecuencia para conectar dos dispositivos del mismo tipo: por ejemplo, dos ordenadores (a través del controlador de interfaz de red) o dos switches entre sí.

![img-description](cableRedCruzado.png)
_Cable de red cruzado (T568A a T568B)_

{:.question}
¿Qué sentido tiene cruzar los cables en el cable de red?

{:.subsubsection}
#### Cable de consola

<iframe width="560" height="315" src="https://www.youtube.com/embed/WMmdX26ti9M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.subsection}
### Recomendaciones de la instalación del cableado

- **Subsistema troncal (vertical) o backbone**: porta el tráfico a cada planta, y se suele realizar con soportes de gran ancho de banda, como fibra óptica.
- **Subsistema horizontal**: soporta el tráfico de una planta, puede realizarse con cable de menor ancho de banda como UTP-6.
- **Subsistema administrativo**: conecta el vertical con el horizontal. Suelen ubicarse en cuartos de comunicaciones que contienen los armarios o rack de pared y contienen los paneles de conexión, los concentradores y conmutadores de cada planta. De este modo, es fácil llevar a cabo tareas de mantenimiento en la red.
- **Subsistema de puesto de trabajo**: cable que une rosetas con conectores RJ11, RJ45, etc., con la tarjeta de red del equipo. A estos cables se les denomina latiguillos.
- La distribución vertical se conecta con la red pública de comunicaciones, o con el **subsistema de campus**, en el cuadro de entrada de servicios.

{:.subsection}
### Otros elementos

{:.subsubsection}
#### Balums o transceptores

Son capaces de adaptar la señal pasándola de coaxial, twinaxial, dual coaxial a UTP o, en general, a cables de pares, sean o no trenzados.

La utilización de este tipo de elementos produce pérdidas de señal ya que deben adaptar la impedancia de un tipo de cable al otro.

{:.subsubsection}
#### Rack

Es un armario que recoge de modo ordenado las conexiones de toda o una parte de la red.

![img-description](rack.png){: w="200"}
_Rack_

{:.subsubsection}
#### Latiguillos

Son cables cortos utilizados para prolongar los cables entrantes o salientes del rack.

![img-description](latiguillo.jpg){: w="200"}
_Latiguillo_

{:.subsubsection}
#### Canaleta

Es una estructura metálica o de plástico, adosada al suelo o a la pared, que alberga en su interior todo el cableado de red, de modo que el acceso a cualquier punto esté más organizado y se eviten deterioros indeseados en los cables.

![img-description](canaleta.png){: w="200"}
_Canaleta_

{:.subsubsection}
#### Placas de conectores y rosetas

Son conectores que se insertan en las canaletas, o se adosan a la pared y que sirven de interfaz entre el latiguillo que lleva la señal al nodo y el cable de red.

![img-description](roseta.png){: w="200"}
_Roseta empotrable RJ45_

{:.subsubsection}
#### Herramientas utilizadas en la conectorización

- Macarrón termorretráctil
- Bridas
- Etiquetas identificativas
- Otro tipo de herramientas más comunes como tijeras, pelacables, destornilladores, punzones, cuchillas, pinzas, resinas, cinta aislante, etc.

![img-description](macarronTermorretractil.jpg){: w="200"}
_Macarrón termorretractil_

![img-description](bridas.png){: w="200"}
_Bridas_

![img-description](etiquetasIdentificativas.png){: w="300"}
_Etiquetas identificativas_

## Bibliografía

- [¿Qué es Ethernet (IEEE 802.3)?](https://www.ionos.es/digitalguide/servidores/know-how/ethernet-ieee-8023/)
- [Banda base](https://es.wikipedia.org/wiki/Banda_base)
- [T568A y T568B: dos estándares de cable de red RJ45](https://community.fs.com/es/blog/t568a-vs-t568b-difference-between-straight-through-and-crossover-cable.html)
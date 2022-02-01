---
title: Dispositivos específicos de la red local
date: 2022-01-08 17:17:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [gnu linux, comandos, terminal, bash, seguridad informática]
---

{:.section}
## Introducción

- Los **medios de trasmisión** que pueden ser cableados o inalámbricos y que conectan a los nodos de red entre sí.
- Los **adaptadores de red** o tarjetas de **interfaz de red** que son los dispositivos que se instalan los ordenadores y periféricos para que puedan estar conectados a una red de área local.
- Los **dispositivos de interconexión**, que sirven de punto de conexión dentro de la red y dependiendo del número de ordenadores que vayamos a tener nos interesará implantar un dispositivo u otro:
    - Un concentrador (Hub)
    - El conmutador (Switch)
    - Un encaminador (Router)

{:.subsection}
### Medios de transmisión

Ya nos hemos visto con anterioridad pero como recordatorio: los medios de transmisión se encargan de distribuir la información por la red ya sea tras un cable o del aire. Cuando el movemos la información estamos moviendo la energía que puede ser:

- En forma de energía eléctrica cuando usamos un material conductor, el cobre por ejemplo.
- En forma de energía lumínica cuando el material conduce la luz, la fibra óptica.
- En forma de energía electromagnética no guiada cuando usamos el espacio radioeléctrico, por ejemplo las ondas de radio.

{:.subsection}
### Adaptadores de red

Si queremos que nuestro equipo esté conectado con otros equipos de una red local es necesario que cuente con adaptador de red.

Este es un dispositivo electrónico que proporciona la interfaz física necesaria para que el equipo pueda recibir datos de otros equipos y transmitir datos hacia otros equipos de la red. Entendiendo equipo tanto ordenadores, impresoras en red, como sistemas electrónicos de propósito específico como por ejemplo videoconsolas.

Estos dispositivos se pueden insertar en una ranura de la placa base o bien en el exterior mediante algún puerto estándar (USB).

Debe tener un software controlador (llamado driver) del adaptador y que este estado del equipo. Y además el adaptador tiene que estar conectado correctamente a la red mediante un cable.

La elección de un adaptador u otro determinada los parámetros de cada uno de ellos:

- El estándar que cumple.
- La velocidad máxima operación.
- El tipo de acceso que proporciona.

{:.subsection}
### Dispositivos de interconexión de redes cableadas

Permiten obtener mayor aprovechamiento de las características de una red. Distinguiremos entre redes cableadas y redes inalámbricas ya que los dispositivos son distintos.

Dispositivos de interconexión para redes cableadas:

- Repetidores
- Hubs (Repetidores multipuerto)
- Switches (Conmutadores)
- Routers (Enrutadores)
- Bridges (Puentes)

También, existen dispositivos de interconexión para redes inalámbricas que veremos en otra unidad:

- Repetidores inalámbricos
- Puntos de acceso
- Puentes inalámbricos

{:.subsubsection}
#### Repetidores (capa 1)

Si las distancias entre estaciones pertenecientes a una red son demasiado elevadas, la señal enviada entre ambas va perdiendo calidad.

Por ello es necesario utilizar dispositivos que regeneren dicha señal a su estado original o lo más cercano a ello posible. Estos son los amplificadores y repetidores.

Estos dispositivos también amplifican el ruido y esto puede hacer que se pierda la señal original.

{:.subsubsection}
#### Hubs (capa 1)

Los concentradores o hubs son repetidores multipuerto.

En vez de distribuir la señal de estación de trabajo en estación de trabajo, en la mayoría de redes locales se usa un concentrador que reúne todas las conexiones de modo que el fallo de una de ellas no afecta en las demás.

Este tipo de conexiones conforma una topología en estrella.

También son llamados repetidores multipuerto.

{:.subsubsection}
#### Bridges (capa 2)

Es un componente que interconecta redes con distintas topologías y protocolos de nivel 2.

Su misión principal es la adaptación de la información de una red a otra, es decir, realiza la función de traductor, de modo que puede transformar las tramas que sean compatibles entre sí.

Un puente o bridge conecta segmentos de red formando una sola subred (permite conexión entre equipos sin necesidad de routers). Funciona a través de una tabla de direcciones MAC detectadas en cada segmento al que está conectado. Cuando detecta que un nodo de uno de los segmentos está intentando transmitir datos a un nodo del otro, el bridge copia la trama para el otro segmento de red, teniendo la capacidad de desechar la trama (filtrado) en caso de no tener dicho segmento de red como destino. Para conocer por dónde enviar cada trama que le llega (encaminamiento) incluye un mecanismo de aprendizaje automático (auto aprendizaje) por lo que no necesitan configuración manual.

{:.subsubsection}
#### Switches (capa 2)

Un switch es un dispositivo de nivel 2 que viene a reducir los problemas de los concentradores o hubs, ya que estos sí analizan las tramas a nivel 2 para saber quien es el destinatario de la información.

Gracias a ello, una vez tienen la tabla de encaminamiento elaborada reducen el número de difusiones, lo que permite optimizar la gestión del tráfico de la red.

Hoy en día existen switches de capa 3.

{:.subsubsection}
#### Bridges vs switches

Un Bridge o Puente de red conecta dos redes de área local. Un Switch o Conmutador de red, por otro lado, conecta varios clientes a una red. Esto es lo que debes saber sobre estos dos componentes de red.

Cada Switch es un Bridge, pero los Bridges no son realmente Switches.

{:.subsubsection}
#### Routers (capa 3)

Son los responsables de adaptar los paquetes de información, en el nivel de red (3), cuando las máquinas origen y destino se encuentran en distintas redes.

Son dispositivos (software o hardware) configurables para encaminar paquetes entre sus puertos de red. Para ello, se puede utilizar la dirección IP (no la MAC).

Este encaminamiento lógico hace que el funcionamiento no sea muy rápido, ya que se debe analizar el contenido del paquete a encaminar. A pesar de esto, los enrutadores permiten gran flexibilidad en la interconexión de redes.

##### Usos de los routers

- Como cortafuegos o firewall, filtrando paquetes.
- Como integrador de diferentes tecnologías físicas.
- Como elemento que permite la escalabilidad de la red ya que se permiten diferentes rutas.

{:.section}
## Despliegue de cableado

Cuando queremos realizar la instalación de una red local en un edificio se debe hacer considerando que por ocupar varias salas. Las mismas pueden estar en distintas plantas del edificio. La forma la cual hacemos el tendido del cableado viene recogido en varias normas internacionales, denominando a este problema como sistema de cableado estructurado (SCE).

{:.subsection}
### Recomendaciones en la instalación

{:.subsubsection}
#### Precableado horizontal

Partiendo del plano del edificio se representa los siguientes elementos: áreas de trabajo, situación de las canalizaciones que hacen llegar el cable de una zona u otro, situación de generadores de interferencias electromagnéticas por ejemplo generadores, fotocopiadoras etc.

En primer lugar se distribuyen las losetas de conexión en las zonas de trabajo debiendo ponerse al menos dos: una de voz y otra de datos, siendo la superficie útil 10 m².

En segundo lugar se ubicarán los distribuidores de planta, cumpliendo lo siguiente requisitos: 

- un distribuidor por cada mil m², 
- si la planta tiene poco espacio útil puede colocarse el distribuidor en el piso adyacente, 
- debe situarse lejos de las fuentes electromagnéticas y céntricos respecto al área que atienden,
- las ubicaciones deben estar cerradas y acondicionadas para albergar el equipo necesario.

En tercer lugar para que trazar la rutas entre los distribuidores y las tomas de red, siguiendo esta recomendaciones:

- Los cruces deben hacerse en ángulo recto, 
- Las paredes y los pisos deben atravesarse por sitios habilitados para ello,
- En la medida lo posible el tendido será a ras de suelo, para evitar interferencias electromagnéticas.

{:.subsubsection}
#### Precableado vertical

El punto de partida que superó al edificio donde se presentan los siguientes elementos:

- Bajantes, canaletas y bandejas existentes que pueden usarse para hacer llegar los cables a su destino.
- Las fuentes de interferencias electromagnéticas.

En primer lugar situaremos el distribuidor del edificio y la sala principal de equipos, lejos de las fuentes interferencias, en lugar seguro y cerca de bajantes.

Posteriormente metimos las distancias a los distribuidores de la planta, comprobamos que se cumplen las limitaciones establecidas por la norma.

{:.subsubsection}
#### Precableado de campus

De nuevo el punto de partida tiene que ser el plano distribución del campus (zona donde tenemos nuestras oficinas) donde ubicamos los edificios a comunicar así como los elementos que dificulten o ayuden a la distribución del tendido (carreteras, calles, cursos de agua, líneas de alta tensión, etc.).

En primer lugar situaremos el distribuidor en la sala principal de equipos del edificio mejor acondicionado o más céntrico.

A continuación se comprueban que nos encontramos en las distancias máximas.

{:.subsubsection}
#### Recomendaciones generales

A la hora de realizar un diseño de un SCE tomamos las siguientes sugerencias:

- Diferenciar los elementos que pertenecen al equipamiento el edificio y que son permanentes de aquellos que se modifican a lo largo de la vida del edificio.
- El diseño debería enfocarse a los usuarios del edificio.
- Debe ponerse el cable siempre en formato de estrella.
- Hay que sobredimensionar sistema previendo el crecimiento de los equipos que debe soportar el SCE.
- Etiquetar los elementos que forman parte del SCE, es decir, rosetas de usuarios, un panel de parcheo, armarios, cableada vertical, etcétera.

{:.section}
## Acceso remoto

Al compartir recursos en una red, lo más básico en seguridad es protegerlo contra los accesos inadecuados. Para ello los usuarios deben identificarse de forma correcta asignando permisos sobre cada recurso.

{:.subsection}
### Cuentas de usuario y grupo

La cuenta de usuario es la forma habitual de personalizar el acceso a la red. Dos usuarios no deben compartir la misma cuenta.
Una cuenta de grupo es una colección de cuentas de usuario, al hacer que un usuario pertenezca a un grupo hacemos que se le asignen automáticamente las propiedades, derechos, características, permisos y privilegios de ese grupo.
Es una forma sencilla de configurar los permisos de red a un conjunto de usuarios.

{:.subsection}
### Derechos de acceso y permisos

Lee los siguientes puntos del artículo [Permisos en GNU Linux](/posts/permisos-gnu-linux/):

- Tipos de usuario
- Tipos de permisos sobre ficheros y directorios
- ¿Cómo ver los permisos de un fichero?
- Tipo de fichero y sus permisos

{:.section}
## Instalación de una red local cableada

Los principales pasos de la instalación de una red cableada serán los siguientes:

- Instalación del **hardware de red**: Lo que implica instalar los adaptadores de red bien PCI o bien USB, salvo que venga integrado la placa base del ordenador.
- Instalación del **hub** o del **switch** conectándolo a la corriente.
- Conectar el cable desde los adaptadores al dispositivo de interconexión.
- Instalación del **software de red**: Consistente en instalar los controladores, configuración de TCP/IP, dar nombre al equipo y el grupo de trabajo

## Bibliografía

- [Cuál es la diferencia entre Bridge y Switch](https://ccnadesdecero.es/diferencia-bridge-y-switch/)
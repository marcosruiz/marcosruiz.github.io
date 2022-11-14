---
title: Enrutamiento o encaminamiento
date: 2022-02-08 13:30:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, smr, teoría]
img_path: /assets/img/enrutamiento/
---

{:.section}
## ¿Qué es un router?

Un router (también llamado enrutador o encaminador) es un equipo que conecta entre sí dos o más redes distintas.

La función principal de un router es encaminar elegir el camino adecuado, según diferentes criterios, para que los datagramas IP (paquetes en protocolos orientados a la conexión) lleguen a su destino. 

Cuando un equipo intenta enviar paquetes a una IP exterior, llegan al router, que determinará la interfaz por la que deberán salir para llegar a su destino.

{:.question}
¿Cuántas redes ves a continuación?

![img-description](cuantas-redes.png)
_¿Cuántas redes ves a continuación?_

Hay 15 LAN convencionales + 4 redes formadas por pares de routers conectados entre sí.

![img-description](cuantas-redes-solucion.png)
_¿Cuántas redes ves a continuación? Solución_

Cada una de las redes que hay tras un router o entre dos routers se les llama dominios de difusión (o dominios broadcast), y tienen distintas puertas de enlace. Cuando se envía un paquete a una dirección de difusión (broadcast) perteneciente a otro dominio de difusión, por regla general, el router descarta ese paquete. 

{:.question}
¿Qué es un dominio de difusión?

Esto se debe a una cuestión de seguridad: los routers no dejan que una red que no es la propia se inunde (flood) de paquetes de difusión, provocando caídas de servicio en esa red o bajando drásticamente su rendimiento. 

Para que los routers sepan por qué interfaz (NIC) deben sacar los paquetes de información se utilizan tablas de encaminamiento en las que se indica cuáles son las rutas que deben seguir los paquetes para intentar llegar alas diferentes redes de destino.

El router extrae las direcciones IP que le llegan en las tramas de la capa de enlace para hacer llegar los paquetes desde la red de origen a la red de destino. Para poder dirigir el tráfico de una red a otra, el router guarda en su memoria un fichero conocido como tabla de enrutamiento (al estilo de la tabla MAC del switch).

La tabla de enrutamiento es una base de datos donde se guarda información sobre la ruta que deben seguir los paquetes que van desde una red hasta otra.

Puede ser creada por el administrador de red, lo que se conoce como enrutamiento estático o bien crearla el propio router lo que se denomina enrutamiento dinámico.

Los routers guardan esta tabla en su memoria RAM, que es volátil. Esto quiere decir que, cada vez que el router se reinicia, la tabla de enrutamiento se crea de nuevo. No obstante, existen router de gama media-alta que posee una NVRAM que permite guardar la configuración que el administrador de red va creando, incluida la tabla de enrutamiento. El concepto de tabla de enrutamiento se da tanto en routers como en ordenadores y diversos nodos de red.

{:.section}
## Campos de la tabla de enrutamiento

Los campos de la tabla de enrutamiento son los siguientes:

- **Destino de red** →  junto con la máscara, determina la correspondencia con la IP de destino especificada.
- **Máscara de red** →  delimita los bits de la dirección Ip destino.
- **Puerta de enlace** →  es la dirección IP que utiliza el host para reenviar los paquetes a otras redes cuya ruta exacta desconoce. Es decir, cuando un dispositivo no sabe qué hacer con un datagrama, lo reenvía a la puerta de enlace con la certeza de que esta encontrará la ruta correcta.
- **Interfaz** →  IP del adaptador de red.
- **Métrica** →  indica el número de saltos que realiza un paquete para llegar al destino, es decir, el número de routers que ha atravesado el datagrama hasta llegar. Si existen varias rutas que llevan al mismo destino con métricas distintas, se escoge la que tenga una métrica menor. 

{:.section}
## Recordatorio: Puerta de enlace predeterminada (Gateway)

Es un nodo de red, un router o un servidor que actúa como punto de acceso a redes externas  a los hosts de una LAN; es decir, es un punto de entrada y de salida a una red.

- Cuando se genera un paquete que no se localiza en la tabla de enrutamiento, automáticamente este se envía a la puerta de enlace predeterminada con la certeza de que será capaz de encontrar la ruta correcta hacia el destino.
- La puerta de enlace, en ocasiones, debe tener dos direcciones IP: una IP privada que le conecta con la red interna y otra IP pública que le conecta con la red externa e Internet.
    - Por convenio,  a la IP privada de la puerta de enlace, se le concede el número más bajo disponible de la red (o en algunas ocasiones el más alto).
    - Por ejemplo si una red privada tiene la dirección de red 192.168.12.0/24 la dirección de la puerta de enlaces o gateway será 192.168.12.1 (o la 192.168.12.254)

{:.section}
## Tipos de enrutamiento o encaminamiento

Existen dos tipos de enrutamiento o encaminamiento:

- Estático
- Dinámico

{:.subsection}
### Encaminamiento estático

Para rellenar el contenido de la tabla de encaminamiento de un router, se puede hacer manualmente. Este encaminamiento estático se suele utilizar en routers corporativos organizados jerárquicamente o en redes donde se emplea un único ISP para salir a internet. Es un método muy eficiente, no sobrecarga al router con tareas de procesamiento, pero es costoso de programar.

Esta técnica asegura que los paquetes circulen por buenas rutas de diseño.

Las características principales del enrutamiento estático son las siguientes:

- Es fácil de configurar en redes pequeñas.
- Los routers no tienen que descubrir nuevas rutas en la red, por lo que el tráfico de red disminuye.
- Para llegar a un destino, los paquetes siguen siempre la misma ruta.
- Consume menos recursos del router y de la red; por tanto, ahorra ancho de banda para la comunicación de los dispositivos.
- Las redes son más seguras porque los paquetes están completamente dirigidos, lo que facilita las tareas de monitorización y de administración general de la red.
- Cada vez que cambia la topología de la red, el administrador debe introducir los cambios en las tablas de rutas, trabajo que en redes grandes puede ser bastante tedioso.

En GNU Linux, podemos utilizar el comando `netstat` para consultar la tabla de encaminamiento del router al que la máquina está conectado.

![Tabla de enrutamiento en GNU Linux](netstat.png)
_Ejemplo de ejecución de netstat en GNU Linux para consultar la tabla de encaminamiento del router al que la máquina está conectado_

{:.subsection}
### Encaminamiento dinámico

El router rellena la tabla de manera automática mediante el intercambio de información periódica entre las tablas de enrutamiento y los routers vecinos. Tiene la ventaja de adaptarse a los cambios que puedan surgir en una red y el inconveniente de que no siempre se escoge el camino óptimo para que los paquetes lleguen a su destino, ya que no se tienen en cuenta el retardo, la distancia o la sobrecarga.

El enrutamiento dinámico consiste en configurar algún protocolo de enrutamiento de los que posee el router para que este sea capaz por sí mismo de descubrir las direcciones IP que le conducen a nuevas rutas.

Los protocolos de enrutamiento pueden ser:

- **Vector-distancia**: Es un algoritmo que se basa en calcular el número de routers que traspasa cada datagrama hasta llegar a su destino. Esto determina la métrica de la tabla de enrutamiento. Los protocolos más empleados son:
    - **RIP v1 (Routing Information Protocol):** bastante eficiente, pero sólo funciona en redes con clase.
    - **RIP v2 (Routing Information Protocol):** menos eficiente que RIP v1, pero válido en redes sin clase.
    - **BGP (Border Gateway Protocol)**
- **Estado de enlace** →  cada router comunica a qué distancia se halla respecto de sus routers vecinos y la velocidad de conexión que tiene con ellos. Con esta información, los routers pueden construir un mapa virtual de la red global y calcular el camino óptimo para cada datagrama. Los protocolos más empleados son:
    - **OSPF (Open Shortest Path First)**
    - **IS-IS (Intermediate System to Intermediate System)**

En el enrutamiento dinámico las tablas de enrutamiento se actualizan automáticamente. Entre otros parámetros, varían las métricas, lo que ocasiona que los datagramas puedan ir por rutas distintas hacia un mismo destino.

Las características del enrutamiento dinámico son:

- Es muy útil para redes grandes y complejas donde es muy costosa la introducción de rutas estáticas.
- Normalmente los protocolos de enrutamiento son más difíciles de configurar.
- El administrador de red debe dominar el protocolo dinámico que configura para evitar la sobrecarga de paquetes en la red.

{:.section}
## Casos de estudio

{:.subsection}
### Caso 1: Dos redes LAN unidas por un router

- Asignaremos IP a los adaptadores del router (interfaces Fa0/0 y Fa0/1).
- Activaremos los adaptadores (por defecto, los NIC están desactivados).
- Configuraremos en las estaciones la puerta de enlace predeterminada con la
dirección IP del interfaz del router correspondiente.

![Dos redes LAN unidas por un router](caso1.png)
_Dos redes LAN unidas por un router_

{:.subsection}
### Caso 2: Dos redes, cada una con su propio router

- Asignaremos IP a los adaptadores de los routers. Para este caso hemos considerado que las interfaces Fa0/0 serán las correspondientes a las LAN, y las interfaces Fa0/1 para la conexión entre routers.
- Activaremos los adaptadores (como siempre, los NIC de los routers Cisco están desactivados por defecto).
- Configuraremos en las estaciones la puerta de enlace predeterminada con la dirección IP del router correspondiente en su interfaz LAN (la interfaz Fa0/0).
- Tendremos tres dominios de difusión: el 10.0.0.0/8 (red de portátiles), el172.16.0.0/16 (red de sobremesas) y el 192.168.0.0/24 (red entre los dos routers).
- Tendremos que configurar también el encaminamiento que vamos a usar.Veremos un ejemplo de encaminamiento dinámico y otro de encaminamiento estático.

![Dos redes, cada una con su propio router](caso2.png)
_Dos redes, cada una con su propio router_

{:.subsubsection}
#### Encaminamiento dinámico con RIPv1

- Pulsar sobre el router a configurar.
- En el apartado Enrutamiento - RIP, indicar las direcciones de subred de los dominios de difusión con los que está conectado el router.
- Desde ese momento, el router aplicará un algoritmo de encaminamiento para descubrir el camino que deben seguir los paquetes.

![Encaminamiento dinámico con RIPv1](caso2-encaminamiento-dinamico.png)
_Encaminamiento dinámico con RIPv1_

{:.subsubsection}
#### Encaminamiento estático

- Pulsar sobre el router a configurar
- En el apartado Enrutamiento - Estática, indicar las direcciones de subred de aquellas subredes a las que se puede acceder desde los routers inmediatamente conectados al actual, y a través de qué IP se llega a esas subredes.
- Quedará definida esta ruta estática en la tabla de encaminamiento del router, sin necesidad de aplicar algoritmo alguno.

![Desde este router se puede llegar a la red 10.50.0.0/16 a través de la interfaz del router cuya IP es 192.168.0.200](caso2-encaminamiento-estatico.png)
_Desde este router se puede llegar a la red 10.50.0.0/16 a través de la interfaz del router cuya IP es 192.168.0.200_

{:.subsection}
### Caso 3: Routers unidos con conexiones serie

- Daremos IP a los adaptadores de los routers. Dejaremos las interfaces Serial0/1 para la conexión entre routers, y los activaremos y configuraremos en las estaciones la puerta de enlace predeterminada como siempre.
- Importantísimo: la velocidad de las comunicaciones serie va controlada con un reloj. Para que la comunicación se produzca, los dos routers tendrán que ir configurados a la misma velocidad de reloj.
- Las interfaces que suelen emplearse en comunicaciones serie con routers Cisco son los interfaces DTE V.35. Conectores DB-60 en los routers y Winchester en el otro extremo.

![Routers unidos con conexiones serie](caso3.png)
_Routers unidos con conexiones serie_

{:.section}
## Vídeos

<iframe src="https://www.youtube.com/embed/MWBciUDZct8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe src="https://www.youtube.com/embed/gFNnab1Gf7M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


## Bibliografía

- [UT4: REDES INALÁMBRICAS](http://mceducativa.blogspot.com/2015/03/apuntes-para-el-modulo-redes-locales.html)
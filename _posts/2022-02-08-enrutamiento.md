---
title: ¿Cómo funciona el enrutamiento de paquetes?
date: 2022-02-08 13:30:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, smr, teoría]
---

## Introducción

<iframe width="100%" height="315" src="https://www.youtube.com/embed/MWBciUDZct8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="100%" height="315" src="https://www.youtube.com/embed/gFNnab1Gf7M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

El router extrae las direcciones IP que le llegan en las tramas de la capa de enlace para hacer llegar los paquetes desde la red de origen a la red de destino. Para poder dirigir el tráfico de una red a otra, el router guarda en su memoria un fichero conocido como tabla de enrutamiento (al estilo de la tabla MAC del switch).

La tabla de enrutamiento es una base de datos donde se guarda información sobre la ruta que deben seguir los paquetes que van desde una red hasta otra.

Puede ser creada por el administrador de red, lo que se conoce como enrutamiento estático o bien crearla el propio router lo que se denomina enrutamiento dinámico.

Los routers guardan esta tabla en su memoria RAM, que es volátil.

- Esto quiere decir que, cada vez que el router reinicia, la tabla de enrutamiento se crea de nuevo. No obstante, existen router de gama media-alta que posee una NVRAM que permite guardar la configuración que el administrador de red va creando, incluida la tabla de enrutamiento.
- El concepto de tabla de enrutamiento se da tanto en routers como en ordenadores y diversos nodos de red.

## Campos de la tabla de enrutamiento

Los campos de la tabla de enrutamiento son los siguientes:

- **Destino de red** →  junto con la máscara, determina la correspondencia con la IP de destino especificada.
- **Máscara de red** →  delimita los bits de la dirección Ip destino.
- **Puerta de enlace** →  es la dirección IP que utiliza el host para reenviar los paquetes a otras redes cuya ruta exacta desconoce. Es decir, cuando un dispositivo no sabe qué hacer con un datagrama, lo reenvía a la puerta de enlace con la certeza de que esta encontrará la ruta correcta.
- **Interfaz** →  IP del adaptador de red.
- **Métrica** →  indica el número de saltos que realiza un paquete para llegar al destino, es decir, el número de routers que ha atravesado el datagrama hasta llegar. Si existen varias rutas que llevan al mismo destino con métricas distintas, se escoge la que tenga una métrica menor. 

## Puerta de enlace predeterminada (Gateway)

Es un nodo de red, un router o un servidor que actúa como punto de acceso a redes externas  a los hosts de una LAN; es decir, es un punto de entrada y de salida a una red.

- Cuando se genera un paquete que no se localiza en la tabla de enrutamiento, automáticamente este se envía a la puerta de enlace predeterminada con la certeza de que será capaz de encontrar la ruta correcta hacia el destino.
- La puerta de enlace, en ocasiones, debe tener dos direcciones IP: una IP privada que le conecta con la red interna y otra IP pública que le conecta con la red externa e Internet.
    - Por convenio,  a la IP privada de la puerta de enlace, se le concede el número más bajo disponible de la red (o en algunas ocasiones el más alto).
    - Por ejemplo si una red privada tiene la dirección de red 192.168.12.0/24 la dirección de la puerta de enlaces o gateway será 192.168.12.1 (o la 192.168.12.254)

## Tipos de enrutamiento

Existen dos tipos de enrutamiento:

- Estático
- Dinámico

### Estático

Se rellena manualmente la tabla de enrutamiento que deben seguir los paquetes que lleguen al router. Esta técnica asegura que los paquetes circulen por buenas rutas de diseño.

Las características principales del enrutamiento estático son las siguientes:

- Es fácil de configurar en redes pequeñas.
- Los routers no tienen que descubrir nuevas rutas en la red, por lo que el tráfico de red disminuye.
- Para llegar a un destino, los paquetes siguen siempre la misma ruta.
- Consume menos recursos del router y de la red; por tanto, ahorra ancho de banda para la comunicación de los dispositivos.
- Las redes son más seguras porque los paquetes están completamente dirigidos, lo que facilita las tareas de monitorización y de administración general de la red.
- Cada vez que cambia la topología de la red, el administrador debe introducir los cambios en las tablas de rutas, trabajo que en redes grandes puede ser bastante tedioso.

### Dinámico

El router rellena la tabla de manera automática mediante el intercambio de información periódica entre las tablas de enrutamiento y los routers vecinos. Tiene la ventaja de adaptarse a los cambios que puedan surgir en una red y el inconveniente de que no siempre se escoge el camino óptimo para que los paquetes lleguen a su destino, ya que no se tienen en cuenta el retardo, la distancia o la sobrecarga.

El enrutamiento dinámico consiste en configurar algún protocolo de enrutamiento de los que posee el router para que este sea capaz por sí mismo de descubrir las direcciones IP que le conducen a nuevas rutas.

Los protocolos de enrutamiento pueden ser:

- **Vector-distancia** →  es un algoritmo que se basa en calcular el número de routers que traspasa cada datagrama hasta llegar a su destino. Esto determina la métrica de la tabla de enrutamiento. (RIP)
- **Estado de enlace** →  cada router comunica a qué distancia se halla respecto de sus routers vecinos y la velocidad de conexión que tiene con ellos. Con esta información, los routers pueden construir un mapa virtual de la red global y calcular el camino óptimo para cada datagrama. (OSPF)

En el enrutamiento dinámico las tablas de enrutamiento se actualizan automáticamente. Entre otros parámetros, varían las métricas, lo que ocasiona que los datagramas puedan ir por rutas distintas hacia un mismo destino.

Las características del enrutamiento dinámico son:

- Es muy útil para redes grandes y complejas donde es muy costosa la introducción de rutas estáticas.
- Normalmente los protocolos de enrutamiento son más difíciles de configurar.
- El administrador de red debe dominar el protocolo dinámico que configura para evitar la sobrecarga de paquetes en la red.
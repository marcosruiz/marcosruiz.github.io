---
title: "Sistemas de almacenamiento en red: DAS, NAS y SAN"
date: 2022-03-29 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [seguridad informática, servicios en red, smr, teoría]
---

{:.section}
## Introducción

Existen varias soluciones para permitir al acceso de datos a través de la red:

- DAS
- NAS
- SAN

{:.section}
## ¿Qué es un DAS o Direct Attached Storage?

El almacenamiento de conexión directa o DAS (Direct Attached Storage), **es el método tradicional de almacenamiento**. Consiste en conectar el dispositivo de almacenamiento directamente al servidor o estación de trabajo, es decir, físicamente conectado al dispositivo que hace uso de él.

Tanto en DAS como en Storage Area Network (SAN), las aplicaciones y programas de usuarios hacen sus peticiones de datos al sistema de archivos directamente. La diferencia entre ambas tecnologías reside en la manera en la que dicho sistema de archivos obtiene los datos requeridos del almacenamiento. En un DAS, el almacenamiento es local al sistema de archivos, mientras que en un SAN, el almacenamiento es remoto. 

{:.section}
## ¿Qué es un NAS o Network Attached Storage?

Un NAS es un dispositivo que está conectado a la red de la empresa u organización y cuya misión es almacenar los datos de toda la red a través del servidor y, simultáneamente, realizar copias de seguridad. A veces, se considera como NAS al propio servidor aunque lo más habitual es hablar del dispositivo hardware. Funcionan conectados a una red TCP / IP, típicamente Ethernet y, por lo general, utiliza los protocolos NFS o CIFS, aunque hay disponibles otras opciones como HTTP.

Es una solución ideal para pequeños negocios por varios motivos. El primero, por su coste. Un NAS es una solución asequible en términos económicos y, además, es sencillo de configurar y utilizar. Proporciona funcionalidades básicas suficientes como para minimizar riesgos (dentro de un orden), simplificar procesos, mejorar la productividad y asegurar los datos, garantizando además la disponibilidad de los datos 24/7.

Los protocolos de comunicaciones NAS están basados en archivos. Esto significa que el cliente solicitará archivos completos al servidor para trabajar sobre él en local, así que están orientados a manipular una gran cantidad de pequeños archivos. Esta es, a la vez, su limitación más conocida: al depender de una red y de un sistema de ficheros, la velocidad de servicio estará limitada, y habrá alguna dificultad en cuestiones de escala.

<iframe src="https://www.youtube.com/embed/-hG-fG72_24" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe src="https://www.youtube.com/embed/o4aKcd8_vyQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Qué significan las siglas NAS?

{:.question}
¿A qué se conecta un NAS?

{:.question}
¿Es suficiente un cable de un Gigabit Ethernet para editar vídeo 4K?

{:.question}
¿Es suficiente un cable de 10Gigabit Ethernet para editar vídeo 4K?

{:.question}
¿Qué beneficios tiene un NAS?

{:.question}
¿Qué cable es mejor que el de 10Gigabit Ethernet?

{:.question}
¿Qué marcas existen de NAS?

{:.question}
¿Qué diferencia hay entre un HDD de tu PC y un HDD para NAS?

{:.question}
¿Para qué sirve un RAID5?

{:.question}
¿Se pueden recuperar los datos de un RAID5 si alguien los borra del sistema de ficheros?

<details class="card mb-2">
  <summary class="card-header question">¿Qué dos desventajas tiene usar un RAID5?</summary>
  <div class="card-body">
    <ul>
      <li>Uso de más discos.</li>
      <li>Escrituras más lentas.</li>
    </ul>
  </div>
</details>

{:.question}
¿Para que sirve la caché de un NAS?

{:.question}
¿El RAID0 tiene redundancia de datos?

{:.question}
¿Qué ventaja tiene este NAS respecto a un servidor GNU Linux?

<iframe src="https://www.youtube.com/embed/o1KXOn8mulE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.section}
## ¿Qué es un SAN o Storage Area Network?

SAN es una red dedicada de alto rendimiento para almacenamiento consolidado a nivel de bloque. La red interconecta dispositivos de almacenamiento, conmutadores y hosts. Los servidores se conectan a SAN mediante adaptadores de host. Los servidores identifican la SAN como si fuesen un almacenamiento físico local, por lo que varios servidores pueden compartir un grupo de almacenamiento.

La conexión suele ser a través de redes de alta velocidad, y si es mediante fibra es posible disponer de un ancho de banda de 10 Gbps. A diferencia de los NAS, SAN realiza las peticiones de información al sistema de archivos. Esto significa que su rendimiento es óptimo y perfecto para almacenamiento de bases de datos, virtualización de sistemas y otros servicios.

Esta arquitectura permite compartir datos entre diversos equipos sin que la capacidad se vea afectada; el tráfico está separado del tráfico de usuario, y esto juega en favor de SAN en cuestiones de escala. Es una de las grandes ventajas de SAN frente a NAS.

Tanto NAS como SAN son a la vez  soluciones complementarias que rivalizan entre sí. Cada una tiene ventaja sobre la otra dependiendo del caso de uso y, por tanto, las compañas que tienen los recursos suficientes y las necesidades más completas pueden optar por implementar las dos arquitecturas.

{:.section}
## NAS vs SAN

1. **Estructura**. NAS utiliza redes TCP/IP, sobre todo Ethernet. Las SAN tradicionales normalmente se ejecutan en redes de alta velocidad, aunque es posible encontrar soluciones más baratas y menos complejas.
1. **Procesamiento de datos**. Ambas soluciones se diferencian a la hora de procesar los datos: NAS se basa en archivos y SAN en bloques.
1. **Protocolos**. NAS se conecta directamente a una red Ethernet, y puede emplear varios protocolos para conectarse con servidores como NFS, SMB/CIFS y HTTP. En cuanto a SAN, los servidores se comunican con los dispositivos de unidad de disco SAN mediante el protocolo SCSI.
1. **Prestaciones**. Las SAN ofrecen mayor rendimiento en entornos que necesitan tráfico de alta velocidad, como bases de datos de transacciones elevadas y sitios web de comercio electrónico, entre otros. NAS tiene un rendimiento más bajo y una latencia más alta, pero una red de alta velocidad puede compensar, en parte, esa pérdida de rendimiento.
1. **Escalabilidad**. Los dispositivos de nivel básico y NAS no son altamente escalables, pero los sistemas NAS de gama alta se escalan a petabytes utilizando clusters o nodos de escalamiento horizontal. En contraste, la escalabilidad es un factor importante para comprar una SAN. Su arquitectura de red permite a los administradores escalar el rendimiento y la capacidad en configuraciones de ampliación.
1. **Coste**. En general el NAS es menos costoso a la hora de adquirirlo y mantenerlo. Los dispositivos NAS tienen menos componentes de administración de hardware y software que una red de área de almacenamiento.
1. **Gestión**.  NAS es más fácil de administrar. Las SAN requieren más tiempo de administración que NAS. Además, la implantación de SAN puede requerir cambios físicos en el Centro de Datos, y administradores especializados.

{:.section}
## DAS vs NAS vs SAN

Video en inglés con subtítulos en español:

<iframe src="https://www.youtube.com/embed/3yZDDr0JKVc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

![img-description](/assets/img/teoria-sistemas-de-almacenamiento-en-red/das-nas-san.png)
_Imagen resumen de DAS vs NAS vs SAN_

## Preguntas

- ¿Es lo mismo un NAS que un RAID en red?
- ¿Afecta trafico de red al trafico de datos de un SAN?
- ¿Es un SAN más rápido que un NAS?
- ¿Es un SAN más robusto que un NAS?
- ¿Es un SAN más barato que un NAS por norma general?
- ¿NFS es un protocolo de NAS?
- ¿Cón que tipo de cable se suele realizar la conexión entre dispositivos SAN?
- ¿Detectaría un PC un disco SAN como disco de red o como disco local?
- ¿Es un SAN altamente escalable?
- ¿Es más rápido un cable SATA 3 que un cable Ethernet Gigabit?
- ¿Es más rápido un cable SATA 3 que un cable USB 3.0?

## Bibliografía

- [Almacenamiento de conexión directa (Wikipedia)](https://es.wikipedia.org/wiki/Almacenamiento_de_conexi%C3%B3n_directa)
- [Almacenamiento conectado en red (Wikipedia)](https://es.wikipedia.org/wiki/Almacenamiento_conectado_en_red)
- [Red de área de almacenamiento (Wikipedia)](https://es.wikipedia.org/wiki/Red_de_%C3%A1rea_de_almacenamiento)
- [7 diferencias fundamentales entre NAS y SAN](https://www.arsys.es/blog/diferencias-nas-san-storage)

---
title: (No definitiva) Caracterización de una LAN
date: 2022-05-16 12:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [gnu linux, comandos, terminal, bash, redes locales, teoría]
img_path: /assets/img/caracterizacion-de-una-lan/
---

## 1. Diapositivas

<iframe title="slides" src="https://docs.google.com/presentation/d/e/2PACX-1vTr9UXXd5ILoWRA5u1iEeFZE_T4S-vNrWKBnulqLCkjoUw766RC0ETZRgHtPQHt-H23EiYdy2EG02TV/embed?start=false&loop=false&delayms=10000" frameborder="0" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

## 2. Introducción

Los ordenadores son máquinas especializadas en procesar información de acuerdo con las instrucciones recogidas en un programa. Sin embargo, no siempre la información se produce o se almacena en el lugar donde se procesa. Esto añade la necesidad de transportar los datos desde su lugar de origen o almacenamiento hasta el de su proceso, originando una comunicación.

A través del cableado de la red se pueden transmitir señales eléctricas adecuadas a la naturaleza del cable, pero la red no solo debe entregar esta señal en su destino, sino que además debe garantizar que la información que originó el emisor llega al receptor de forma íntegra durante todo el recorrido.

{:.question}
¿Es lo mismo transmisión que comunicación?

## 3. Sistemas de comunicaciones

Un sistema de comunicaciones es un conjunto de elementos que permiten transmitir información desde un punto a otro.
Estos elementos son:
- **El transmisor:** es el que envía la información.
- **El canal de transmisión:** es la conexión física entre el transmisor y el receptor (Ejemplo: un cable, el aire, etc.).
- **La señal:** es el fenómeno físico que porta la información sobre el canal de transmisión (Ejemplo: ondas sonoras, señales eléctricas, etc.)
- **El receptor:** es el destinatario de la información.

## 4. Componentes de una red de ordenadores

Para poder formar una red de ordenadores se requieren varios elementos: 

- **Hardware:**
    - **Dispositivos de usuario final:** son los ordenadores, impresoras, escáneres, y demás elementos que brindan servicios directamente al usuario.
    - **Dispositivos de red:** son todos aquellos que conectan entre sí a los dispositivos de usuario final, posibilitando su intercomunicación.
- **Software:** Es el conjunto de programas y ficheros de configuración que permiten la comunicación entre elementos de una red. Los podemos dividir en dos.
- **Protocolos:** Son un conjunto de reglas que se establecen entre el transmisor y receptor de un proceso de comunicación que permite asegurar la transmisión de datos entre los dos extremos. Ejemplo: protocolo IP (dicta las reglas para las direcciones IP).

## 5. Ventajas de usar una red de ordenadores

1. Mayor facilidad en la comunicación entre usuarios
1. Reducción en el presupuesto para software
1. Reducción en el presupuesto para hardware
1. Posibilidad de organizar grupos de trabajo
1. Mejoras en la administración de los equipos y programas
1. Mejoras en la integridad de los datos
1. Mayor seguridad para acceder a la información

## 6. Velocidad de transmisión

Se trata de relacionar la cantidad de información que se transfiere con el tiempo que tarda en ser transferida.

Velocidad = información/ tiempo

1. El tiempo se representa en segundos
1. La información en bits o Bytes
1. 1 bit es un 0 o un 1
1. 1 Byte son 8 bits
1. 1 KB son 1024 B
1. 1 MB son 1024 KB
1. 1 GB son 1024 MB

### 6.1. ¿Qué unidades de velocidad existen?

- bps ➡ bits por segundo
- Bps ➡ Bytes por segundo = 8 bps
- Kbps ➡ kilobits por segundo
- KBps ➡ KiloBytes por segundo = 8 Kbps
- Mbps ➡ Megabits por segundo
- MBps ➡ MegaBytes por segundo = 8Mbps

{:.question}
¿A qué velocidad en Mbps se transfiere un fichero de 3 MB si tarda 8 segundos en llegar?


<details class="card mb-2">
  <summary class="card-header question">¿Por qué un KB son 1024 MB?</summary>
  <div class="card-body">
    <ul>
      <li>Velocidad = información/ tiempo</li>
      <li>Velocidad = 3 MB / 8 seg</li>
      <li>Como 1 Byte son 8 bits...</li>
      <li>Velocidad = 3*8 Mb / 8 seg </li>
      <li>Velocidad = 3 Mb/seg = 3 Mbps</li>
    </ul>
  </div>
</details>

## 7. Clasificación de redes

Leer artículo Clasificación de redes.

## 8. El modelo de referencia OSI

- Open System Interconnection
- Interconexión de Sistemas Abiertos
- OSI es un modelo de referencia para una arquitectura de capas para redes de ordenadores.
- OSI NO es una arquitectura, es un modelo de referencia teórico.
- La primera capa es la más cercana al medio físico de transmisión mientras que la séptima capa es la más cercana a las aplicaciones de usuario.
- Cuando un usuario necesita transmitir datos a un destino, el sistema de red añade información de control (cabeceras) para cada uno de los servicios que utilizará la red para transmitir dichos datos.
- Cada capa maneja una unidad de datos que coincide con la información que le pasa la capa inmediatamente superior.

### ¿Qué es una capa?

Con el fin de simplificar la complejidad de cualquier red, los diseñadores han estructurado los servicios que proveen en una serie de niveles o capas.

Cada capa se construye sobre su predecesora. La misión de cada capa es proveer servicios a las capas superiores. De este modo las capas superiores solo deben usar los servicios de su capa inmediatamente inferior. 

Es decir, cada capa solo se comunica con sus capas adyacentes. A las normas de intercomunicación entre capas se les llama interfaz.

### Pila OSI

| #| Nombre| Descripción| 
|---|---|---| 
| 7 | Capa de aplicación | Servicios de red a aplicaciones | 
| 6 | Capa de presentación | Representación de los datos | 
| 5 | Capa de sesión | Comunicación entre dispositivos de la red | 
| 4 | Capa de transporte | Conexión extremo-a-extremo y fiabilidad de datos | 
| 3 | Capa de red | Determinación de ruta e IP (direccionamiento lógico) | 
| 2 | Capa de enlace de datos | Direccionamiento físico (MAC y LLC) | 
| 1 | Capa física | Señal y transmisión binaria | 

#### Capa física

La capa física se encarga de definir las características mecánicas, eléctricas, funcionales y de procedimiento para poder establecer y liberar conexiones entre dos equipos de la red.

#### Capa de enlace de datos

La misión de la capa de enlace es establecer una línea de comunicación libre de errores que pueda ser utilizada por la capa inmediatamente superior (la capa de red).

- Esta capa fracciona el mensaje en tramas o frames.
- Cada trama se envía de manera secuencial por el medio de transmisión.
- Esta capa se encarga del tratamiento de errores eliminando tramas erróneas, solicitando retransmisiones, descartando tramas duplicadas adecuando el flujo de datos, etc.

Esta capa se puede dividir en dos subniveles:

- Subnivel de Control de Acceso al Medio (MAC): Este subnivel se encarga de averiguar si el canal de comunicación está libre para realizar una transmisión. Esta subcapa se encarga del reparto de recursos de transmisión entre los nodos de la red. Las características de este nivel dependen del tipo de red.
- Subnivel de Control Lógico de Enlace (LLC): Este subnivel se encarga de del control de errores, la formación de tramas, el control del diálogo entre emisor y receptor y el direccionamiento de la subcapa MAC.
- 
#### Capa de red

La capa de red se ocupa del control de la subred.

La principal función de este nivel es del encaminamiento, es decir, el cómo elegir la ruta más adecuada para que el paquete llegue a su destino. 

Cada destino está identificado unívocamente en la subred por una dirección.

Otra función importante es el tratamiento de la congestión de la red. Si hay muchos paquetes en la red se generan cuellos de botella.

Tanto emisor como receptor deben usar el mismo protocolo para entenderse.

#### Capa de transporte

La capa de transporte lleva a cabo las comunicaciones entre ordenadores. En esta capa ya no tenemos en cuenta los puntos intermedios que hay entre emisor y receptor.

La capa de transporte lleva a cabo las comunicaciones entre un programa emisor y otro receptor.

En esta capa solo se tienen en cuenta la fuente, el destino y el tipo de servicio solicitado.


#### Capa de sesión

Esta capa permite el diálogo entre emisor y receptor estableciendo una sesión.

A través de una sesión se puede llevar a cabo un transporte de datos ordinario.

#### Capa de presentación


La capa de presentación se ocupa de la sintaxis y de la semántica de la información que se pretende transmitir, es decir, investiga el contenido informativo de los datos.

Función de la capa de presentación pueden ser:

- Comprimir los datos para que las comunicaciones sean menos costosas.
- Encriptación de la información que garantiza la privacidad de la misma.


#### Capa de aplicación

En esta capa se definen los protocolos que utilizan las aplicaciones y procesos que usen los usuarios.

La capa de aplicación puede tener las siguientes funciones:

- Establecer mecanismos de comunicación coherentes para los procesos (local vs distribuido).
- Aquí se entiende por aplicación a un modo específico de comunicarse: correo electrónico, descarga de ficheros, consulta de una página web, etc.
- Cada forma de comunicación da paso a uno o varios protocolos: SMTP, POP, IMAP, HTTP, FTP, etc.

{:.question}
¿Existe la capa 8?

### Cabeceras asociadas a cada nivel OSI

![img-description](cabecerasOsi2.png)

<details class="card mb-2">
  <summary class="card-header question">¿Qué significa AH, PH, SH, TH NH, NT ?</summary>
  <div class="card-body">
    <ul>
      <li>AH (Application Header): Cabecera de aplicación</li>
      <li>PH (Presentation Header): Cabecera de presentación</li>
      <li>SH (Session Header): Cabecera de sesión</li>
      <li>TH (Transport Header): Cabecera de transporte</li>
      <li>NH (Network Header): Cabecera de red</li>
      <li>DH/DT (Data link Header/ Data link Tail): Cabecera de enlace de datos</li>
    </ul>
  </div>
</details>


<details class="card mb-2">
  <summary class="card-header question">¿Qué significa PDU?</summary>
  <div class="card-body">
    Protocol Data Unit
  </div>
</details>

### Entidades

Una entidad es cualquier elemento del sistema, perteneciente a alguna de las capas del modelo OSI, que interviene activamente en la comunicación.

Las entidades que comparten el mismo protocolo se les llama entidades par.

Por ejemplo: Un cliente web y un servidor web usan el protocolo HTTP, por lo tanto son entidades pares.

### Envío y recepción en el modelo OSI



## 9. Arquitecturas de red

## 10. Arquitectura TCP/IP

## 11. Adelantando conceptos de TCP/IP

## 12. OSI vs TCP/IP

<iframe src="https://www.youtube.com/embed/iNh-62Mf0O4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Por qué es importante el modelo OSI si no se usa comercialmente?

## 13. Computación en la nube, interred y estándares


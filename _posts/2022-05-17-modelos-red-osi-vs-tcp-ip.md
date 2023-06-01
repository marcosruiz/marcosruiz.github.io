---
title: "Modelos OSI vs arquitectura TCP/IP"
date: 2022-05-17 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, smr, teoría]
img_path: /assets/img/modelos-red-osi-vs-tcp-ip/
---

{:.section}
## ¿Qué es un arquitectura de red?

Una **arquitectura de red** es un conjunto organizado de capas y protocolos que la red utiliza para producir sus comunicaciones entre nodos.

Si todos los fabricantes siguen la misma arquitectura sus dispositivos serán compatibles entre sí.

Existen las siguientes arquitecturas de red:

- NetWare
- NetBios
- AppleTalk
- **TCP/IP**

{:.subsection}
### ¿Qué es un protocolo?

Un **protocolo** es un conjunto de reglas perfectamente organizadas y convenidas de mutuo acuerdo entre los participantes en una comunicación.

{:.question}
¿Qué diferencia hay entre un protocolo y una arquitectura?

{:.subsection}
### ¿Qué es una capa?

Con el fin de simplificar la complejidad de cualquier red, los diseñadores han estructurado los servicios que proveen en una serie de niveles o capas.

Cada capa se construye sobre su predecesora. La misión de cada capa es proveer servicios a las capas superiores. De este modo las capas superiores solo deben usar los servicios de su capa inmediatamente inferior. 

Es decir, cada capa solo se comunica con sus capas adyacentes. A las normas de intercomunicación entre capas se les llama interfaz.

{:.section}
## Modelo de referencia OSI

El modelo OSI (Open Systems Interconnection o Interconexión de Sistemas Abiertos) es un modelo de red de la pila de protocolos de red OSI/ISO. Con este modelo, diferentes dispositivos de red pueden comunicarse entre sí. 

El proceso de organización del principio de interconexión, en las redes informáticas, es una tarea bastante compleja y desafiante, por lo que decidimos utilizar un enfoque bien conocido y versátil -la descomposición- para lograr esta tarea.

La descomposición es un método científico que utiliza la división de una tarea compleja en varias tareas más sencillas: series (módulos) conectadas entre sí.

Enfoque por niveles:

- Todos los módulos se dividen en grupos separados y se ordenan por niveles, creando así una jerarquía.
- Los módulos de un nivel sólo envían peticiones a los módulos del nivel subyacente inmediatamente adyacente para realizar sus tareas.
- Se activa el principio de encapsulación: un nivel proporciona un servicio, ocultando los detalles de su implementación a otros niveles.
- A la Organización Internacional de Normalización (International Standards Organization, ISO, fundada en 1946) se le encomendó la tarea de crear un modelo universal, que definiera y distinguiera claramente los diferentes niveles de interacción de los sistemas, con niveles nombrados y dando a cada nivel su tarea específica. Este modelo se denominó modelo de Interconexión de Sistemas Abiertos (OSI) o modelo ISO/OSI.

![img-description](matriuscas.png)
_Concepto de encapsulación_

<iframe src="https://www.youtube.com/embed/ODY4q4_3Acc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.subsection}
### Capas del modelo OSI

Las capas del modelo de referencia OSI representan una estructura vertical en la que todas las funciones de red se dividen en siete capas. Cabe destacar que cada una de estas capas corresponde a operaciones, equipos y protocolos estrictamente descritos.

Las interacciones entre las capas se organizan de la siguiente manera:

- **Verticalmente**: dentro de un mismo ordenador y sólo con los niveles vecinos.
- **Horizontalmente** – se organiza la interacción lógica – con el mismo nivel de otro ordenador en el otro extremo del canal de comunicación (es decir, el nivel de red de un ordenador interactúa con el nivel de red de otro ordenador).

![img-description](modeloCapasOsi.png)
_Envío de mensajes con modelo OSI_

Dado que el modelo OSI de siete capas consiste en una estructura jerárquica estricta, cualquier nivel superior utiliza las funciones del nivel inferior y reconoce exactamente en qué forma y de qué manera (es decir, a través de qué interfaz) debe enviarse el flujo de datos hacia él.

La primera capa es la más cercana al medio físico de transmisión mientras que la séptima capa es la más cercana a las aplicaciones de usuario.

| # |          Nombre         |                                          Responsabilidad                                          |
|-:|:-----------------------|:-------------------------------------------------------------------------------------------------|
| 7 | Capa de aplicación      | Responsable de los servicios de red para las aplicaciones                                         |
| 6 | Capa de presentación    | Transforma el formato de los datos y proporciona una interfaz estándar para la capa de aplicación |
| 5 | Capa de sesión          | Establece, administra y finaliza las conexiones entre las aplicaciones locales y las remotas      |
| 4 | Capa de transporte      | Proporciona transporte confiable y control del flujo a través de la red                           |
| 3 | Capa de red             | Responsable del direccionamiento lógico y el dominio del enrutamiento                             |
| 2 | Capa de enlace de datos | Proporciona direccionamiento físico y procedimientos de acceso a medios                           |
| 1 | Capa física             | Define todas las especificaciones eléctricas y físicas de los dispositivos                        |

{:.subsubsection}
#### Capa física

La capa física se encarga de definir las características mecánicas, eléctricas, funcionales y de procedimiento para poder establecer y liberar conexiones entre dos equipos de la red.

Esta capa es comparativamente más sencilla que las demás, porque aparte de los unos y los ceros no tiene ningún otro sistema de medida, no analiza la información y, por tanto, es el más bajo de los niveles. Es el principal responsable de la transmisión de información. La PDU (Protocol Data Unit) de esta capa se denomina **bit**.

<details class="card mb-2">
  <summary class="card-header question">¿Qué significa PDU?</summary>
  <div class="card-body" markdown="1">

Además del término "datos" (data) que se utiliza en el modelo OSI en las capas de aplicación, presentación y sesión, se utilizan otros términos en otras capas del modelo OSI para que sea posible identificar inmediatamente en qué capa del modelo OSI tiene lugar el procesamiento.

Las normas ISO utilizan un término genérico, Unidad de Datos de Protocolo (PDU, Protocol Data Unit), para referirse a la porción de datos que es manejada por los protocolos en varias capas del Modelo de Referencia OSI. A menudo se utilizan nombres especiales, como **trama**, **paquete** o **segmento**, para denotar bloques de datos a determinados niveles.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

El objetivo principal de la capa física es representar el cero y el uno como señales y transmitirlas a través del medio de transmisión de datos (un cable, el aire, etc.).

Funciones de la capa física:

- **Codificación de datos**: La capa física convierte los bits de datos que se van a enviar en señales físicas adecuadas para ser transmitidas a través del medio de comunicación. Esto implica la conversión de los bits en formas de onda eléctricas, ópticas o electromagnéticas que pueden ser transmitidas y recibidas por los dispositivos de red. En definitiva, se define la forma de representar "0" y "1".
- **Transmisión y recepción de señales**: La capa física se encarga de enviar las señales físicas a través del medio de comunicación y de recibir las señales entrantes para su posterior procesamiento. Esto implica la administración de la velocidad de transmisión, la modulación y demodulación de las señales y la sincronización adecuada entre el transmisor y el receptor.
- **Características eléctricas y mecánicas**: La capa física define las características eléctricas, mecánicas y funcionales de los conectores, cables y otros componentes físicos utilizados para la transmisión de datos. Esto incluye especificar:
  - Los tipos de conectores y cables.
  - Las tasas de transferencia de datos.
  - Las distancias máximas de transmisión.
  - Los niveles de voltaje requeridos para la correcta comunicación entre dispositivos.

Las funciones de la capa física se implementan en todos los dispositivos conectados a la red.

Los equipos que operan en la capa física son: Repetidor, Hub, Ethernet, Módem.

Ejemplos de interfaces de red pertenecientes a la capa física: conectores RS-232C, RJ-11, RJ-45, AUI, VNC.

{:.subsubsection}
#### Capa de enlace de datos

Esta capa se encarga de la transferencia de datos confiable entre nodos adyacentes en una red. Se ocupa de dividir los datos en tramas y proporcionar mecanismos para la detección y corrección de errores, así como para el control del flujo y el acceso al medio compartido. La PDU de esta capa se denomina **trama**.

Funciones a nivel de enlace de datos:

- **Encapsulación y desencapsulación**: El nivel de enlace de datos toma los paquetes de datos de la capa de red y los divide en tramas más pequeñas, agregando encabezado y posiblemente cola para crear la estructura de la trama. Al recibir las tramas entrantes, la capa de enlace de datos las desencapsula, extrayendo los datos y verificando la integridad de la trama.
- **Control del acceso al medio**: El nivel de enlace de datos se encarga de gestionar el acceso al medio compartido por múltiples dispositivos. Utiliza técnicas como el control de acceso al medio (MAC) para asegurar que solo un dispositivo pueda transmitir a la vez y evitar colisiones.
- **Detección y corrección de errores**: El nivel de enlace de datos verifica la integridad de las tramas mediante el uso de técnicas de detección de errores, como el checksum. Si se detectan errores en una trama, se puede solicitar una retransmisión para garantizar la entrega confiable de los datos.
- **Control de flujo**: El nivel de enlace de datos también controla el flujo de datos entre dos nodos adyacentes. Esto evita que un nodo sobrecargue al receptor enviando datos a una velocidad superior a la que puede procesar. El control de flujo asegura una transferencia de datos suave y evita la pérdida de datos debido a la congestión.
- **Dirección física**: Cada dispositivo en una red tiene una dirección física única conocida como dirección MAC. El nivel de enlace de datos asigna y maneja las direcciones MAC para garantizar que las tramas sean entregadas al destinatario correcto en la red.
- **Fragmentación y reensamblaje de tramas**: Si los datos de la capa de red son más grandes que el tamaño máximo permitido de la trama, el nivel de enlace de datos se encarga de dividir los datos en tramas más pequeñas y etiquetarlas para su posterior reensamblaje en el destino.

Equipos que operan en la capa de enlace de datos: Switches, Bridges (puentes de red).

Ejemplos de protocolos de capa de enlace: Ethernet, Token Ring, FDDI, Bluetooth, Wi-Fi, Wi-Max, X.25, FrameRelay, ATM.

En el caso de la LAN, la capa de enlace de datos se divide en dos subcapas:

- **LLC** (Logical Link Control) o Control Lógico de Enlace: Este subnivel se encarga de del control de errores, la formación de tramas, el control del diálogo entre emisor y receptor y el direccionamiento de la subcapa MAC.
- **MAC** (Media Access Control) o Control de Acceso al Medio: Este subnivel se encarga de averiguar si el canal de comunicación está libre para realizar una transmisión. Esta subcapa se encarga del reparto de recursos de transmisión entre los nodos de la red. Las características de este nivel dependen del tipo de red.

{:.subsubsection}
#### Capa de red

La capa de red es responsable de establecer rutas y gestionar el envío de paquetes de datos a través de una red. Se encarga de la selección de rutas, el enrutamiento de paquetes y la fragmentación y reensamblaje de los mismos si es necesario. También puede proporcionar funciones de control de congestión.

La PDU de esta capa se denomina **paquete** o **datagrama**.

<details class="card mb-2">
  <summary class="card-header question">¿A qué se refiere el término datagrama?</summary>
  <div class="card-body" markdown="1">

Un datagrama de red es una unidad de datos que contiene información de encabezado, que incluye la dirección IP de origen y destino, y el propio contenido de los datos. Estos datagramas son enrutados individualmente a través de la red de forma independiente, y pueden seguir diferentes rutas para llegar a su destino. No hay garantía de que todos los datagramas lleguen en orden o que todos ellos lleguen a su destino.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Cada destino está identificado unívocamente en la subred por una dirección lógica.

Otra función importante es el tratamiento de la congestión de la red. Si hay muchos paquetes en la red se generan cuellos de botella.

Tanto emisor como receptor deben usar el mismo protocolo para entenderse.

La etapa es similar al proceso de distribución de información. Por ejemplo, todos los usuarios se dividen en grupos y los paquetes de datos se distribuyen según direcciones IP de 32 bits. Es a través del trabajo de los routers en este punto que se eliminan todas las diferencias de la red. Esto es lo que se conoce como enrutamiento lógico.

La tarea principal es crear redes basadas en diferentes tecnologías de red: Ethernet, Wi-Fi o MPLS. La capa de red es la "columna vertebral" de Internet.

Funciones a nivel de capa de red:

- **Enrutamiento**: La función principal de la capa de red es determinar la ruta óptima para enviar los paquetes de datos desde el origen hasta el destino a través de una red. Utiliza algoritmos de enrutamiento para tomar decisiones sobre la selección de rutas, ya sea mediante enrutamiento estático (configurado manualmente) o mediante enrutamiento dinámico (utilizando protocolos de enrutamiento como OSPF o RIP).
- **Fragmentación y reensamblaje de paquetes**: Si los datos de la capa de transporte son más grandes que el tamaño máximo permitido por la capa de red para los paquetes, la capa de red se encarga de dividirlos en fragmentos más pequeños llamados paquetes. Estos paquetes se transmiten por separado a través de la red y, en el destino, se vuelven a ensamblar para reconstruir los datos originales.
- **Dirección lógica**: La capa de red asigna direcciones lógicas únicas a los dispositivos de la red, conocidas como direcciones IP. Estas direcciones IP permiten identificar y localizar de manera única tanto los sistemas finales (hosts) como los enrutadores en la red.
- **Encapsulación y desencapsulación**: La capa de red toma los paquetes de datos de la capa de transporte y los envuelve en un encabezado de capa de red, agregando información de direccionamiento y control necesaria para el enrutamiento y la entrega de los paquetes. Al llegar al destino, la capa de red en el receptor extrae el encabezado de capa de red y entrega los datos a la capa de transporte correspondiente.
- **Control de congestión**: La capa de red también puede realizar funciones de control de congestión para evitar la congestión en la red. Supervisa el estado de la red y toma medidas para evitar que se produzcan cuellos de botella y garantizar un flujo de datos equilibrado.
- **Detección de errores**: La capa de red puede realizar detección básica de errores en los paquetes de datos mediante técnicas como el checksum. Si se detectan errores, los paquetes pueden ser descartados o solicitada una retransmisión, según el protocolo utilizado.

{:.question}
¿Qué es un cuello de botella?

{:.question}
¿Qué es el checksum?

{:.question}
¿Qué significa conmutar? ¿Qué diferencia hay entre la conmutación de paquetes y la conmutación de circuitos?

Resuelve los problemas:

- Transmisión de mensajes a través de enlaces con una estructura no estándar.
- Conciliación de las diferentes tecnologías.
- Facilitar el direccionamiento en grandes redes.
- Crear barreras al tráfico no deseado entre redes a través de firewalls.

Equipo de la capa de red: un router.

Tipos de protocolos de capa de red:

- Protocolos de red (propagación de paquetes a través de la red: IP , ICMP).
- Protocolos de enrutamiento: RIP, OSPF.
- Protocolos de resolución de direcciones: ARP.

{:.subsubsection}
#### Capa de transporte

Esta capa se encarga de la entrega de datos de extremo a extremo (o punto a punto) de manera confiable y eficiente. Es decir, en esta capa ya no tenemos en cuenta los puntos intermedios que hay entre emisor y receptor. La capa de transporte lleva a cabo las comunicaciones entre un programa emisor y otro receptor. En esta capa solo se tienen en cuenta la fuente, el destino y el tipo de servicio solicitado.

La PDU de la capa de transporte se denomina **segmento** (en general) o **datagrama** (en caso de UDP).

Tenemos la siguiente tarea, un ordenador que está conectado a una red compleja recibe un paquete, hay muchas aplicaciones de red que se ejecutan en el ordenador (navegador web, Skype, correo), necesitamos entender qué aplicación necesita enviar este paquete. La interacción entre las aplicaciones de la red es gestionada por la capa de transporte.

La capa de transporte se caracteriza por la comunicación directa entre un ordenador y la capa de transporte del otro ordenador, y el resto de las capas se comunican a través de los enlaces de la cadena.

Esta capa proporciona una conexión de extremo a extremo entre dos aplicaciones de dos hosts que se comunican. La capa de transporte es independiente de la red y permite ocultar los detalles de la comunicación de la red a los desarrolladores de aplicaciones.

A partir de este nivel, los protocolos se implementan mediante herramientas de software en los nodos finales de la red, componentes de sus sistemas operativos de red.

Funciones de la capa de transporte:

- **Segmentación y desegmentación**: La capa de transporte divide los datos provenientes de la capa de sesión o de la capa de aplicación en segmentos más pequeños para su posterior transmisión. Al recibir los segmentos en el destino, la capa de transporte los reensambla en la secuencia correcta para entregar los datos completos a la capa superior.
- **Identificación y multiplexación de aplicaciones**: La capa de transporte utiliza los puertos de origen y destino para identificar las aplicaciones que se están comunicando en los sistemas finales. La multiplexación permite que múltiples aplicaciones se comuniquen a través de un solo canal de comunicación, utilizando diferentes números de puerto para diferenciar las comunicaciones.
- **Control de flujo**: La capa de transporte controla el flujo de datos entre los sistemas finales para asegurar una transferencia equilibrada y evitar que un sistema receptor se sature con una cantidad excesiva de datos. Esto implica el uso de técnicas como ventanas de recepción y confirmaciones de acuse de recibo para regular el flujo de datos.
- **Control de errores**: La capa de transporte implementa mecanismos de detección y corrección de errores para garantizar la integridad de los datos transmitidos. Esto puede incluir la utilización de sumas de comprobación (checksums) para detectar errores y, en algunos casos, la retransmisión de segmentos perdidos o dañados.
- **Control de conexión**: Dependiendo del protocolo de transporte utilizado, la capa de transporte puede establecer, mantener y finalizar conexiones lógicas entre las aplicaciones de origen y destino. Esto puede involucrar un proceso de establecimiento de conexión, intercambio de parámetros de control y liberación de la conexión una vez que se completa la comunicación.

Ejemplos: TCP, UDP, ATM.

{:.question}
¿Qué es un puerto?

{:.subsubsection}
#### Capa de sesión

Una sesión es un conjunto de interacciones en red centradas en una única tarea.

La creación de redes se ha vuelto más compleja y no consiste en simples preguntas y respuestas como antes. Por ejemplo, al cargar una página web para mostrarla en un navegador, primero hay que cargar el texto de la página web en sí (.html), el archivo de estilo (.css) que describe los elementos de diseño de la página web, la carga de imágenes. Por lo tanto, para completar la tarea, para cargar una página web, es necesario implementar varias operaciones de red separadas.

La capa de sesión determina si la transmisión de información entre 2 procesos de aplicación será semidúplex (transmitir y recibir datos por turnos); o full-dúplex (transmitir y recibir información al mismo tiempo).

Funciones a nivel de capa de sesión:

- **Establecimiento y terminación de sesiones**: La capa de sesión se encarga de establecer y terminar sesiones de comunicación entre aplicaciones en sistemas finales. Esto implica la negociación de parámetros y acuerdos entre las aplicaciones antes de iniciar la comunicación y finalizar la sesión adecuadamente una vez que se completa.
- **Sincronización**: La capa de sesión puede proporcionar mecanismos de sincronización para asegurar que los datos se transmitan y reciban en el orden correcto y que ambas aplicaciones estén al tanto del progreso de la comunicación.
- **Control de diálogo**: La capa de sesión puede permitir el control del diálogo entre las aplicaciones, lo que implica el establecimiento de un turno de habla y el control de quién tiene el derecho de transmitir en un momento dado. Esto evita conflictos y garantiza una comunicación ordenada. Por ejemplo a través del control de un token.
- **Manejo de interrupciones y recuperación**: La capa de sesión puede manejar interrupciones o fallas en la comunicación y proporcionar mecanismos para recuperar y reanudar la sesión correctamente después de una interrupción. La transmisión se garantiza colocando puntos de control en el flujo de datos a partir de los cuales se reanuda el proceso en caso de fallos.
- **Mantenimiento y administración de la sesión**: La capa de sesión se encarga de mantener y administrar la sesión durante toda la comunicación. Esto puede incluir el monitoreo del estado de la sesión, la gestión de cambios o actualizaciones en los parámetros de comunicación y el manejo de eventos y excepciones que pueden ocurrir durante la sesión.

{:.subsubsection}
#### Capa de presentación

Para describir esta capa, se utiliza la traducción automática en la red de diferentes idiomas. Por ejemplo, marcas un número de teléfono, hablas en español, la red traduce automáticamente al francés, transmite la información a España y la persona de allí coge el teléfono y escucha tu pregunta en español. Es una tarea que aún no se ha llevado a cabo.

Para proteger los datos enviados a través de la red, se utiliza el cifrado: Secure Sockets Layer (SSL) así como Transport Layer Security (TLS), estas tecnologías permiten cifrar los datos enviados a través de la red.

Los protocolos de la capa de aplicación utilizan TSL/SSL y se distinguen por la letra s al final. Por ejemplo, HTTPS, FTPS y otros. Si ves en el navegador que se utiliza HTTPS y el candado, significa que los datos a través de la red están protegidos por encriptación.

Funciones del nivel de capa de presentación:

- **Codificación y compresión de datos**: La capa de presentación se encarga de la codificación y compresión de los datos para garantizar su eficiencia en la transmisión y almacenamiento. Esto puede incluir técnicas de compresión de datos para reducir el tamaño de los datos y técnicas de codificación para convertir los datos en un formato adecuado para la transmisión.
- **Encriptación**: La capa de presentación puede proporcionar servicios de encriptación y seguridad para garantizar la confidencialidad y la integridad de los datos transmitidos. Esto implica el uso de algoritmos criptográficos para cifrar y descifrar los datos, así como la autenticación y el control de acceso para garantizar que solo los destinatarios autorizados puedan acceder a los datos.
- **Conversión de formato de datos**: La capa de presentación permite la conversión de formatos de datos incompatibles entre las aplicaciones que se comunican. Esto puede implicar la traducción de estructuras de datos, codificaciones de caracteres, representaciones de números, etc., para asegurar que los datos sean comprensibles y utilizable por las aplicaciones receptoras.
- **Representación y sintaxis**: La capa de presentación se encarga de la representación y sintaxis de los datos. Esto puede incluir el manejo de diferencias en el orden de los bytes (byte ordering), la conversión de tipos de datos y la interpretación de las estructuras de datos.

{:.question}
¿Tendría sentido desarrollar la forma de comprimir y descomprimir en cada aplicación de forma independiente?

{:.subsubsection}
#### Capa de aplicación

En esta capa se definen los protocolos que utilizan las aplicaciones y procesos que usen los usuarios.

La capa de aplicación puede tener las siguientes funciones:

- Establecer mecanismos de comunicación coherentes para los procesos (local vs distribuido).
- Aquí es donde los programas de usuario interactúan con la red, utilizando protocolos de aplicación.
- Cada forma de comunicación da paso a uno o varios protocolos: SMTP, POP, IMAP, HTTP, FTP, etc.

Esto es esencial para que las aplicaciones en red, como la web, el correo electrónico, Skype, etc. se comuniquen entre sí.

Esencialmente, se trata de un conjunto de especificaciones que permiten a un usuario acceder a páginas para encontrar la información que necesita. En pocas palabras, el trabajo de una aplicación es proporcionar acceso a los servicios de red. El contenido de esta capa es muy variado.

La capa de aplicación utiliza una variedad de protocolos de aplicación para permitir la comunicación entre las aplicaciones de usuario y los servicios de red.

Ejemplos: SMTP, POP3, IMAP, HTTP, SNMP, FTP.

{:.subsection}
### Cabeceras asociadas a cada capa OSI

Cuando un usuario necesita transmitir datos a un destino, el sistema de red añade información de control (cabeceras) para cada uno de los servicios que utilizará la red para transmitir dichos datos.

Cada capa maneja una unidad de datos que coincide con la información que le pasa la capa inmediatamente superior.

![img-description](cabecerasOsi3.png)
_Cabeceras de las capas del modelo de referencia OSI_

<details class="card mb-2">
  <summary class="card-header question">¿Qué significa AH, PH, SH, TH NH, NT?</summary>
  <div class="card-body" markdown="1">

- AH (Application Header): Cabecera de aplicación
- PH (Presentation Header): Cabecera de presentación
- SH (Session Header): Cabecera de sesión
- TH (Transport Header): Cabecera de transporte
- NH (Network Header): Cabecera de red
- DH/DT (Data link Header/ Data link Tail): Cabecera de enlace de datos

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Qué es una trama?

{:.question}
¿Qué es un paquete?

{:.question}
¿Qué es un datagrama?

{:.question}
¿Qué es un segmento?

{:.subsection}
### Entidades

Una entidad es cualquier elemento del sistema, perteneciente a alguna de las capas del modelo OSI, que interviene activamente en la comunicación.

<details class="card mb-2">
  <summary class="card-header question">¿Qué es una entidad par?</summary>
  <div class="card-body" markdown="1">

El término entidad par se refiere a una entidad o dispositivo que se encuentra en el mismo nivel o capa dentro del modelo OSI. En otras palabras, una entidad par es un par de dispositivos que se comunican directamente entre sí en el mismo nivel del modelo de capas.

El concepto de entidad par es útil para comprender cómo se organiza y se distribuye la comunicación en el modelo de capas de red, y cómo diferentes dispositivos en la misma capa se conectan y colaboran para garantizar una comunicación efectiva y confiable en una red.

En resumen, las entidades que comparten el mismo protocolo se les llama entidades par.

Por ejemplo: Un cliente web y un servidor web usan el protocolo HTTP, por lo tanto son entidades pares de la capa de aplicación.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### Conclusiones sobre el modelo OSI

Las siete capas del modelo de referencia OSI pueden clasificarse en uno de los dos grupos en términos de funcionalidad:

- Un grupo en el que las capas dependen de una implementación técnica particular de la red informática. Las capas física, de enlace de datos y de red son todas dependientes de la red, es decir, estas capas están ligadas al hardware específico de la red en uso.
- Un grupo en el que las capas están principalmente orientadas a la aplicación. Capas de sesión, presentación y aplicación: están orientadas a la aplicación y son en gran medida independientes del equipo de red específico utilizado en la red informática, es decir, independientes de la red.

{:.question}
¿Qué es un error de capa 8?

<details class="card mb-2">
  <summary class="card-header question">¿Qué significa OSI? </summary>
  <div class="card-body" markdown="1">

OSI significa Open Systems Interconnection o Interconexión de Sistemas Abiertos en español.

  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Quién desarrolló el modelo OSI?</summary>
  <div class="card-body" markdown="1">

ISO (International Organization for Standardization)

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Cuáles son las capas del modelo OSI? </summary>
  <div class="card-body" markdown="1">

Las capas son:

- Capa 1: Física.
- Capa 2: Enlace de datos.
- Capa 3: Red.
- Capa 4: Transporte.
- Capa 5: Sesión.
- Capa 6: Presentación.
- Capa 7: Aplicación.

Las capas ayudan a los profesionales de la red a visualizar lo que está sucediendo dentro de sus redes y pueden ayudar a los administradores de red a reducir los problemas.

  </div>
</details>

{:.section}
## Arquitectura TCP/IP

TCP/IP (Protocolo de Control de Transmisión/Protocolo de Internet) es un conjunto de protocolos de comunicación que se utilizan para interconectar dispositivos de red en Internet. TCP/IP también se puede utilizar como protocolo de comunicaciones en una red privada, o lo que es lo mismo, una intranet.

{:.question}
¿Qué es una intranet?

El conjunto completo de protocolos de Internet, un conjunto de reglas y procedimientos, se conoce comúnmente como TCP/IP, aunque otros están incluidos en el conjunto.

TCP/IP especifica cómo se intercambian los datos a través de Internet al proporcionar comunicaciones de extremo a extremo que identifican cómo deben dividirse en paquetes, direccionados, transmitidos, enrutados y recibidos en el destino. TCP/IP requiere poca administración central, y está diseñado para hacer que las redes sean confiables, con la capacidad de recuperarse automáticamente de la falla de cualquier dispositivo en la red.

Los dos protocolos principales en el conjunto de protocolos de Internet cumplen funciones específicas.

- **TCP** define cómo las aplicaciones pueden crear canales de comunicación a través de una red. También gestiona cómo se ensambla un mensaje en paquetes más pequeños antes de que se transmitan por Internet y se vuelvan a ensamblar en el orden correcto en la dirección de destino.
- **IP** define cómo direccionar y enrutar cada paquete para asegurarse de que llegue al destino correcto. Cada computadora de puerta de enlace en la red verifica esta dirección IP para determinar dónde reenviar el mensaje.

<iframe src="https://www.youtube.com/embed/JQDCL17sARA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.subsection}
### ¿Cómo funciona TCP/IP?

TCP/IP utiliza el modelo de comunicación cliente/servidor en el que un usuario o máquina (un cliente) recibe un servicio (como enviar una página web) por otra computadora (un servidor) en la red.

![img-description](comunicacionClienteServidor.png)
_Comunicación cliente/servidor_

Colectivamente, el conjunto de protocolos TCP/IP se clasifica como sin estado, lo que significa que cada solicitud de cliente se considera nueva porque no está relacionada con solicitudes anteriores. Estar sin estado libera rutas de red (no como con la línea telefónica) para que puedan usarse de forma continua.

La capa de transporte en sí, sin embargo, tiene estado. Transmite un solo mensaje, y su conexión permanece en su lugar hasta que todos los paquetes en un mensaje hayan sido recibidos y reensamblados en el destino.

El modelo TCP/IP difiere ligeramente del modelo de interconexión de sistemas abierto (OSI) de siete capas diseñado después, que define cómo las aplicaciones pueden comunicarse a través de una red.

{:.subsection}
### Capas del modelo TCP/IP

La funcionalidad TCP/IP se divide en cuatro capas, cada una de las cuales incluye protocolos específicos.

![img-description](arquitecturaTcpIp.png)
_Protocolos de la arquitectura TCP/IP_

![Envío de mensajes con el modelo TCP/IP](modeloCapasTcp.png)
_Envío de mensajes con el modelo TCP/IP_

<details class="card mb-2">
  <summary class="card-header">Y esto... ¿Para qué?</summary>
  <div class="card-body" markdown="1">

![Capas y Reddit](layersMeme.jpg)
_Capas y Reddit_

  </div>
</details>

{:.question}
¿Cuándo encapsulamos?

{:.question}
¿Cuándo desencapsulamos?

{:.subsubsection}
#### Capa de aplicación

La capa de aplicación o capa 7 proporciona aplicaciones con intercambio de datos estandarizado. Sus protocolos incluyen el Protocolo de transferencia de hipertexto (HTTP), el Protocolo de transferencia de archivos (FTP), el Protocolo de oficina de correo 3 (POP3), el Protocolo simple de transferencia de correo (SMTP) y el Protocolo simple de administración de red (SNMP).

{:.subsubsection}
#### Capa de transporte

La capa de transporte o capa 4 es responsable de mantener las comunicaciones de extremo a extremo a través de la red. TCP maneja las comunicaciones entre hosts y proporciona control de flujo, multiplexación y confiabilidad. Los protocolos de transporte incluyen TCP y User Datagram Protocol (UDP), que a veces se usa en lugar de TCP para fines especiales.

{:.subsubsection}
#### Capa de Internet

La capa de Internet o capa 3 se ocupa de los paquetes y conecta redes independientes para transportar los paquetes a través de los límites de la red. Los protocolos de la capa de red son el IP y el Protocolo de mensajes de control de Internet (ICMP), que se utilizan para informar errores.

{:.subsubsection}
#### Capa de interfaz de red

La capa de interfaz de red o capas 1 y 2 consiste en protocolos que operan solo en un enlace: el componente de red que interconecta nodos o hosts en la red. Los protocolos en esta capa incluyen Ethernet para redes de área local (LAN) y el Protocolo de resolución de direcciones (ARP).

{:.section}
## OSI vs TCP/IP

El modelo OSI es un modelo teórico porque en el mundo no se usa ninguna versión real de la pila OSI.

<details class="card mb-2">
  <summary class="card-header question">¿Por qué es útil e modelo OSI?</summary>
  <div class="card-body" markdown="1">

El modelo OSI es útil principalmente como una forma de entender los diferentes tipos de trabajo que deben realizarse en comunicaciones de red exitosas, y como un marco de referencia común para las discusiones sobre problemas y funciones de la red.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<iframe src="https://www.youtube.com/embed/iNh-62Mf0O4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

![img-description](osiVsTcpIp.png)
_Comparación del modelo OSI con el modelo TCP/IP_

<details class="card mb-2">
  <summary class="card-header question">¿Qué modelo es mejor, el modelo OSI o TCP/IP? </summary>
  <div class="card-body" markdown="1">

Ambos modelos tienen sus propias ventajas y desventajas. Si alguien se centra en la documentación debería preferir el modelo OSI sobre el modelo TCP/IP. Pero, si alguien se centra más en la implementación, confiabilidad y seguridad de la red, debería preferir el modelo TCP/IP.

  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Por qué es importante el modelo OSI si no se usa comercialmente?</summary>
  <div class="card-body" markdown="1">

El modelo OSI ha definido la terminología común utilizada en las discusiones y documentación de redes. Esto permite desarmar un proceso de comunicaciones muy complejo y evaluar sus componentes.

  </div>
</details>

{:.question}
¿Qué diferencias hay entre la arquitectura TCP/IP y el modelo OSI?

{:.question}
La capa de Internet, ¿a quién ofrece servicio?

<details class="card mb-2">
  <summary class="card-header question"><¿Es el modelo OSI una arquitectura de red?</summary>
  <div class="card-body" markdown="1">

No, ya que no define protocolos específicos en cada una de sus capas.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
A día de hoy ¿se usa la arquitectura TCP/IP o el modelo OSI?

## Bibliografía

- [Modelo OSI (Wikipedia)](https://es.wikipedia.org/wiki/Modelo_OSI)
- [Qué es el Modelo OSI: Capas y Explicación](https://ccnadesdecero.es/que-es-modelo-osi/)
- [TCP/IP](https://ccnadesdecero.es/que-es-tcp-ip/)
- [¿Cuál es la diferencia entre el modelo TCP/IP y el modelo OSI?](https://ccnadesdecero.es/diferencias-modelo-tcp-ip-y-modelo-osi/)
- [Breve historia de cómo TCP/IP se impuso a OSI, o una de las históricas batallas informática](https://www.javiergarzas.com/2013/09/tcpip-se-impuso-a-osi-2.html)

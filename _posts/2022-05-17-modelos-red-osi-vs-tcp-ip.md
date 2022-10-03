---
title: "Modelos de red: OSI vs TCP/IP"
date: 2022-05-17 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, teoría]
img_path: /assets/img/modelos-red-osi-vs-tcp-ip/
---

## 1. ¿Qué es un modelo o arquitectura de red?

Un **modelo o arquitectura de red** es un conjunto organizado de capas y protocolos que la red utiliza para producir sus comunicaciones entre nodos.

Si todos los fabricantes siguen la misma arquitectura sus dispositivos serán compatibles entre sí.

Existen las siguientes arquitecturas de red:

- NetWare
- NetBios
- AppleTalk
- **TCP/IP**

### 1.2. ¿Qué es un protocolo?

Un **protocolo** es un conjunto de reglas perfectamente organizadas y convenidas de mutuo acuerdo entre los participantes en una comunicación.

{:.question}
¿Qué diferencia hay entre un protocolo y una arquitectura?

### 1.3. ¿Qué es una capa?

Con el fin de simplificar la complejidad de cualquier red, los diseñadores han estructurado los servicios que proveen en una serie de niveles o capas.

Cada capa se construye sobre su predecesora. La misión de cada capa es proveer servicios a las capas superiores. De este modo las capas superiores solo deben usar los servicios de su capa inmediatamente inferior. 

Es decir, cada capa solo se comunica con sus capas adyacentes. A las normas de intercomunicación entre capas se les llama interfaz.

## 2. Modelo OSI

El modelo OSI (Open Systems Interconnection o Interconexión de Sistemas Abiertos) es un modelo de red de la pila de protocolos de red OSI/ISO. Con este modelo, diferentes dispositivos de red pueden comunicarse entre sí. 

El proceso de organización del principio de interconexión, en las redes informáticas, es una tarea bastante compleja y desafiante, por lo que decidimos utilizar un enfoque bien conocido y versátil -la descomposición- para lograr esta tarea.

La descomposición es un método científico que utiliza la división de una tarea compleja en varias tareas más sencillas: series (módulos) conectadas entre sí.

Enfoque por niveles:

- Todos los módulos se dividen en grupos separados y se ordenan por niveles, creando así una jerarquía;
- Los módulos de un nivel sólo envían peticiones a los módulos del nivel subyacente inmediatamente adyacente para realizar sus tareas;
- Se activa el principio de encapsulación: un nivel proporciona un servicio, ocultando los detalles de su implementación a otros niveles.
- A la Organización Internacional de Normalización (International Standards Organization, ISO, fundada en 1946) se le encomendó la tarea de crear un modelo universal, que definiera y distinguiera claramente los diferentes niveles de interacción de los sistemas, con niveles nombrados y dando a cada nivel su tarea específica. Este modelo se denominó modelo de Interconexión de Sistemas Abiertos (OSI) o modelo ISO/OSI.

![img-description](matriuscas.png)
_Concepto de encapsulación_

<iframe src="https://www.youtube.com/embed/ODY4q4_3Acc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 2.1. Capas del Modelo OSI

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

#### 2.1.1. Capa física

La capa física se encarga de definir las características mecánicas, eléctricas, funcionales y de procedimiento para poder establecer y liberar conexiones entre dos equipos de la red.

Esta etapa es comparativamente más sencilla que las demás, porque aparte de los unos y los ceros no tiene ningún otro sistema de medida, no analiza la información y, por tanto, es el más bajo de los niveles. Es el principal responsable de la transmisión de información. El principal parámetro de la carga es el **bit**.

El objetivo principal de la capa física es representar el cero y el uno como señales, transmitidas a través del medio de transmisión de datos.

Por ejemplo, hay un canal de comunicación (CW), un mensaje a enviar, un emisor y un receptor correspondientes. La capa física tiene sus propias características:

- El **ancho de banda**, medido en bps, es decir, la cantidad de datos que podemos transmitir por unidad de tiempo.
- **Latencia**, el tiempo que tarda un mensaje en llegar al emisor y al receptor.
- **Tasa de error**, si los errores son frecuentes, los protocolos deben proporcionar corrección de errores. Si se producen con poca frecuencia, pueden corregirse a un nivel superior, por ejemplo, la capa de transporte.

Funciones a nivel de capa física:

- Este nivel estandariza los tipos de conectores y la asignación de pines;
- Se define la forma de representar «0» y «1»;
- Es la interfaz entre el medio de red y el dispositivo de red (transmite señales eléctricas u ópticas al cable o a la radio, las recibe y las convierte en bits de datos);
- Las funciones de la capa física se implementan en todos los dispositivos conectados a la red;
- Equipos que operan en la capa física: Repetidor, Hub Ethernet, Módem.
- Ejemplos de interfaces de red pertenecientes a la capa física: conectores RS-232C, RJ-11, RJ-45, AUI, VNC.

#### 2.1.2. Capa de enlace de datos

La siguiente estación que visitará la información recordará a la aduana. A saber, se comparará la dirección IP para comprobar su compatibilidad con el medio de transmisión. También identifica y corrige las deficiencias del sistema. Para facilitar más operaciones, los bits se agrupan en **tramas**.

Funciones a nivel de enlace de datos:

- Los bits cero y uno de la capa física se organizan en tramas. Una trama es un trozo de datos que tiene un valor lógico independiente;
Organización del acceso al medio de transmisión;
- Tratamiento de los errores de transmisión de datos;
- Define la estructura de los enlaces entre los nodos y la forma en que se dirigen;
- Equipos que operan en la capa de enlace de datos: Switches, Bridges (puentes de red);
- Ejemplos de protocolos de capa de enlace: Ethernet, Token Ring, FDDI, Bluetooth, Wi-Fi, Wi-Max, X.25, FrameRelay, ATM.

En el caso de la LAN, la capa de enlace de datos se divide en dos subcapas:

- **LLC** (Logical Link Control) o Control Lógico de Enlace: Este subnivel se encarga de del control de errores, la formación de tramas, el control del diálogo entre emisor y receptor y el direccionamiento de la subcapa MAC.
- **MAC** (Media Access Control) o Control de Acceso al Medio: Este subnivel se encarga de averiguar si el canal de comunicación está libre para realizar una transmisión. Esta subcapa se encarga del reparto de recursos de transmisión entre los nodos de la red. Las características de este nivel dependen del tipo de red.

#### 2.1.3. Capa de red

La principal función de este nivel es del encaminamiento, es decir, el cómo elegir la ruta más adecuada para que el **paquete** llegue a su destino. 

Cada destino está identificado unívocamente en la subred por una dirección lógica.

Otra función importante es el tratamiento de la congestión de la red. Si hay muchos paquetes en la red se generan cuellos de botella.

Tanto emisor como receptor deben usar el mismo protocolo para entenderse.

La etapa es similar al proceso de distribución de información. Por ejemplo, todos los usuarios se dividen en grupos y los paquetes de datos se distribuyen según direcciones IP de 32 bits. Es a través del trabajo de los routers en este punto que se eliminan todas las diferencias de la red. Esto es lo que se conoce como enrutamiento lógico.

La tarea principal es crear redes basadas en diferentes tecnologías de red: Ethernet, Wi-Fi o MPLS. La capa de red es la «columna vertebral» de Internet.

Funciones a nivel de capa de red:

- Determina la ruta de transmisión de datos;
- Define la ruta más corta;
- Conmutación;
- Enrutamiento;
- Control de fallos y la congestión de la red.

Resuelve los problemas:

- Transmisión de mensajes a través de enlaces con una estructura no estándar;
- Conciliación de las diferentes tecnologías;
- Facilitar el direccionamiento en grandes redes;
- Creando barreras al tráfico no deseado entre redes.

Equipo de la capa de red: un router.

Tipos de protocolos de capa de red:

- Protocolos de red (propagación de paquetes a través de la red: IP , ICMP);
- Protocolos de enrutamiento: RIP, OSPF;
- Protocolos de resolución de direcciones: ARP.

#### 2.1.4. Capa de transporte

La capa de transporte lleva a cabo las comunicaciones entre ordenadores. En esta capa ya no tenemos en cuenta los puntos intermedios que hay entre emisor y receptor.

La capa de transporte lleva a cabo las comunicaciones entre un programa emisor y otro receptor.

En esta capa solo se tienen en cuenta la fuente, el destino y el tipo de servicio solicitado.

Tenemos la siguiente tarea, un ordenador que está conectado a una red compleja recibe un paquete, hay muchas aplicaciones de red que se ejecutan en el ordenador (navegador web, Skype, correo), necesitamos entender qué aplicación necesita enviar este paquete. La interacción entre las aplicaciones de la red es gestionada por la capa de transporte.

La capa de transporte se caracteriza por la comunicación directa entre un ordenador y la capa de transporte del otro ordenador, y el resto de las capas se comunican a través de los enlaces de la cadena.

Esta capa proporciona una conexión de extremo a extremo entre dos hosts que se comunican. La capa de transporte es independiente de la red y permite ocultar los detalles de la comunicación de la red a los desarrolladores de aplicaciones.

Los puertos utilizados para el direccionamiento en la capa de transporte son números del 1 al 65535. Los puertos se escriben así: 192.168.1.3:80 (dirección IP y puerto).

Funciones de la capa de transporte:

- Permite a las aplicaciones (o a las capas de aplicación y de sesión) transmitir datos con el grado de fiabilidad requerido, compensando las deficiencias de fiabilidad de las capas inferiores;
- Multiplexación y demultiplexación, es decir, recogida y desmontaje de paquetes;
- Los protocolos están diseñados para la comunicación punto a punto;
- A partir de este nivel, los protocolos se implementan mediante herramientas de software en los nodos finales de la red, componentes de sus sistemas operativos de red;
- Ejemplos: TCP , UDP.

#### 2.1.5. Capa de sesión

Una sesión es un conjunto de interacciones en red centradas en una única tarea.

La creación de redes se ha vuelto más compleja y no consiste en simples preguntas y respuestas como antes. Por ejemplo, al cargar una página web para mostrarla en un navegador, primero hay que cargar el texto de la página web en sí (.html), el archivo de estilo (.css) que describe los elementos de diseño de la página web, la carga de imágenes. Por lo tanto, para completar la tarea, para cargar una página web, es necesario implementar varias operaciones de red separadas.

Basado en la sesión determina si la transmisión de información entre 2 procesos de aplicación será semidúplex (transmitir y recibir datos por turnos); o dúplex (transmitir y recibir información al mismo tiempo).

Funciones a nivel de capa de sesión:

- Mantenimiento de la sesión, lo que permite que las aplicaciones se comuniquen entre sí durante un período de tiempo prolongado;
- Establecimiento/terminación de la sesión;
- Intercambio de información;
- Sincronización de tareas;
- Definir el derecho a transferir datos;
- Mantenimiento de la sesión durante los períodos de inactividad de la aplicación.
- La sincronización de la transmisión se garantiza colocando puntos de control en el flujo de datos a partir de los cuales se reanuda el proceso en caso de fallos.

#### 2.1.6. Capa de presentación

Para describir esta capa, se utiliza la traducción automática en la red de diferentes idiomas. Por ejemplo, marcas un número de teléfono, hablas en español, la red traduce automáticamente al francés, transmite la información a España y la persona de allí coge el teléfono y escucha tu pregunta en español. Es una tarea que aún no se ha llevado a cabo.

Para proteger los datos enviados a través de la red, se utiliza el cifrado: Secure Sockets Layer (SSL) así como Transport Layer Security (TLS), estas tecnologías permiten cifrar los datos enviados a través de la red.

Los protocolos de la capa de aplicación utilizan TSL/SSL y se distinguen por la letra s al final. Por ejemplo, HTTPS, FTPS y otros. Si ves en el navegador que se utiliza HTTPS y el candado, significa que los datos a través de la red están protegidos por encriptación.

Funciones del nivel de capa de presentación:

- Es responsable de la conversión del protocolo y de la codificación/decodificación de los datos. Convierte las peticiones de las aplicaciones recibidas de la capa de aplicación en un formato para su transmisión por la red, y convierte los datos recibidos de la red en un formato comprensible para las aplicaciones;
- Comprimir/descomprimir o codificar/decodificar los datos;
- Redirigir las peticiones a otro recurso de la red si no se pueden procesar localmente.

Ejemplo: el protocolo SSL (proporciona mensajería secreta para los protocolos de la capa de aplicación TCP/IP).

#### 2.1.7. Capa de aplicación

En esta capa se definen los protocolos que utilizan las aplicaciones y procesos que usen los usuarios.

La capa de aplicación puede tener las siguientes funciones:

- Establecer mecanismos de comunicación coherentes para los procesos (local vs distribuido).
- Aquí se entiende por aplicación a un modo específico de comunicarse: correo electrónico, descarga de ficheros, consulta de una página web, etc.
- Cada forma de comunicación da paso a uno o varios protocolos: SMTP, POP, IMAP, HTTP, FTP, etc.

Esto es esencial para que las aplicaciones en red, como la web, el correo electrónico, Skype, etc., se comuniquen entre sí.

Esencialmente, se trata de un conjunto de especificaciones que permiten a un usuario acceder a páginas para encontrar la información que necesita. En pocas palabras, el trabajo de una aplicación es proporcionar acceso a los servicios de red. El contenido de esta capa es muy variado.

Funciones del nivel de capa de aplicación:

- Es un conjunto de protocolos diversos a través de los cuales los usuarios de la red acceden a recursos compartidos y organizan el trabajo en colaboración;
- Identificación de los usuarios por su nombre de usuario, dirección de correo electrónico, contraseñas, firmas electrónicas;
- Permite la interacción entre la red y el usuario;
- Permite a las aplicaciones de usuario acceder a los servicios de red, como el gestor de consultas de la base de datos, el acceso a los archivos o el reenvío de correo electrónico;
- Es responsable de la transmisión de la información de servicio;
- Proporciona información sobre errores a las aplicaciones;
- Ejemplos: HTTP, POP3, SNMP, FTP.

### 2.2. Cabeceras asociadas a cada capa OSI

Cuando un usuario necesita transmitir datos a un destino, el sistema de red añade información de control (cabeceras) para cada uno de los servicios que utilizará la red para transmitir dichos datos.

Cada capa maneja una unidad de datos que coincide con la información que le pasa la capa inmediatamente superior.

![img-description](cabecerasOsi3.png)
_Cabeceras de las capas del modelo de referencia OSI_

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
  <div class="card-body" markdown="1">

Además del término «datos» (data) que se utiliza en el modelo OSI en las capas de aplicación, presentación y sesión, se utilizan otros términos en otras capas del modelo OSI para que sea posible identificar inmediatamente en qué capa del modelo OSI tiene lugar el procesamiento.

Las normas ISO utilizan un término genérico, Unidad de Datos de Protocolo (PDU, Protocol Data Unit), para referirse a la porción de datos que es manejada por los protocolos en varias capas del Modelo de Referencia OSI. A menudo se utilizan nombres especiales, como **trama**, **paquete** o **segmento**, para denotar bloques de datos a determinados niveles.

  </div>
</details>

{:.question}
¿Qué es una trama?

{:.question}
¿Qué es un paquete?

{:.question}
¿Qué es un segmento?

### 2.3. Entidades

Una entidad es cualquier elemento del sistema, perteneciente a alguna de las capas del modelo OSI, que interviene activamente en la comunicación.

Las entidades que comparten el mismo protocolo se les llama entidades par.

Por ejemplo: Un cliente web y un servidor web usan el protocolo HTTP, por lo tanto son entidades pares de la capa de aplicación.

### 2.4. Conclusiones sobre el modelo OSI

Las siete capas del modelo de referencia OSI pueden clasificarse en uno de los dos grupos en términos de funcionalidad:

- Un grupo en el que las capas dependen de una implementación técnica particular de la red informática. Las capas física, de enlace de datos y de red son todas dependientes de la red, es decir, estas capas están ligadas al hardware específico de la red en uso.
- Un grupo en el que las capas están principalmente orientadas a la aplicación. Capas de sesión, presentación y aplicación: están orientadas a la aplicación y son en gran medida independientes del equipo de red específico utilizado en la red informática, es decir, independientes de la red.

{:.question}
¿Existe la capa 8?

<details class="card mb-2">
  <summary class="card-header question">¿Qué significa OSI? </summary>
  <div class="card-body" markdown="1">

OSI significa Interconexión de Sistemas Abiertos (OSI, por sus siglas en inglés)

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

## 3. Modelo TCP/IP

TCP/IP, o Protocolo de control de transmisión/Protocolo de Internet, es un conjunto de protocolos de comunicación que se utilizan para interconectar dispositivos de red en Internet. TCP/IP también se puede utilizar como protocolo de comunicaciones en una red privada (una intranet o una extranet).

{:.question}
¿Qué es una intranet?

El conjunto completo de protocolos de Internet, un conjunto de reglas y procedimientos, se conoce comúnmente como TCP/IP, aunque otros están incluidos en el conjunto.

TCP/IP especifica cómo se intercambian los datos a través de Internet al proporcionar comunicaciones de extremo a extremo que identifican cómo deben dividirse en paquetes, direccionados, transmitidos, enrutados y recibidos en el destino. TCP/IP requiere poca administración central, y está diseñado para hacer que las redes sean confiables, con la capacidad de recuperarse automáticamente de la falla de cualquier dispositivo en la red.

Los dos protocolos principales en el conjunto de protocolos de Internet cumplen funciones específicas.

- **TCP** define cómo las aplicaciones pueden crear canales de comunicación a través de una red. También gestiona cómo se ensambla un mensaje en paquetes más pequeños antes de que se transmitan por Internet y se vuelvan a ensamblar en el orden correcto en la dirección de destino.
- **IP** define cómo direccionar y enrutar cada paquete para asegurarse de que llegue al destino correcto. Cada computadora de puerta de enlace en la red verifica esta dirección IP para determinar dónde reenviar el mensaje.

<iframe src="https://www.youtube.com/embed/JQDCL17sARA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 3.1. ¿Cómo funciona TCP/IP?

TCP/IP utiliza el modelo de comunicación cliente/servidor en el que un usuario o máquina (un cliente) recibe un servicio (como enviar una página web) por otra computadora (un servidor) en la red.

![img-description](comunicacionClienteServidor.png)
_Comunicación cliente/servidor_

Colectivamente, el conjunto de protocolos TCP/IP se clasifica como sin estado, lo que significa que cada solicitud de cliente se considera nueva porque no está relacionada con solicitudes anteriores. Estar sin estado libera rutas de red para que puedan usarse de forma continua.

La capa de transporte en sí, sin embargo, tiene estado. Transmite un solo mensaje, y su conexión permanece en su lugar hasta que todos los paquetes en un mensaje hayan sido recibidos y reensamblados en el destino.

El modelo TCP/IP difiere ligeramente del modelo de interconexión de sistemas abierto (OSI) de siete capas diseñado después, que define cómo las aplicaciones pueden comunicarse a través de una red.

### 3.2. Capas del modelo TCP/IP

La funcionalidad TCP/IP se divide en cuatro capas, cada una de las cuales incluye protocolos específicos.

![img-description](arquitecturaTcpIp.png)
_Protocolos de la arquitectura TCP/IP_

1. **Aplicación**: proporciona aplicaciones con intercambio de datos estandarizado. Sus protocolos incluyen el Protocolo de transferencia de hipertexto (HTTP), el Protocolo de transferencia de archivos (FTP), el Protocolo de oficina de correo 3 (POP3), el Protocolo simple de transferencia de correo (SMTP) y el Protocolo simple de administración de red (SNMP).
1. **Transporte**: es responsable de mantener las comunicaciones de extremo a extremo a través de la red. TCP maneja las comunicaciones entre hosts y proporciona control de flujo, multiplexación y confiabilidad. Los protocolos de transporte incluyen TCP y User Datagram Protocol (UDP), que a veces se usa en lugar de TCP para fines especiales.
1. **Red**, también llamada capa de Internet, se ocupa de los paquetes y conecta redes independientes para transportar los paquetes a través de los límites de la red. Los protocolos de la capa de red son el IP y el Protocolo de mensajes de control de Internet (ICMP), que se utilizan para informar errores.
1. **Física**: consiste en protocolos que operan solo en un enlace: el componente de red que interconecta nodos o hosts en la red. Los protocolos en esta capa incluyen Ethernet para redes de área local (LAN) y el Protocolo de resolución de direcciones (ARP).

![Envío de mensajes con el modelo TCP/IP](modeloCapasTcp.png)
_Envío de mensajes con el modelo TCP/IP_

<details class="card mb-2">
  <summary class="card-header">Y esto... ¿Para qué?</summary>
  <div class="card-body" markdown="1">

![Capas y Reddit](layersMeme.jpg)
_Capas y Reddit_

  </div>
</details>

## 4. OSI vs TCP/IP

El modelo OSI es un modelo teórico porque en el mundo no se usa ninguna versión real de la pila OSI. El modelo OSI es útil principalmente como una forma de entender los diferentes tipos de trabajo que deben realizarse en comunicaciones de red exitosas, y como un marco de referencia común para las discusiones sobre problemas y funciones de la red.

<iframe src="https://www.youtube.com/embed/iNh-62Mf0O4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

![img-description](osiVsTcpIp.png)
_Comparación del modelo OSI con el modelo TCP/IP_

<details class="card mb-2">
  <summary class="card-header question">¿Qué modelo es mejor, el modelo OSI o TCP/IP? </summary>
  <div class="card-body" markdown="1">

Ambos modelos tienen sus propias ventajas y desventajas. Si alguien se centra en la documentación debería preferir el modelo OSI sobre el modelo TCP / IP. Pero, si alguien se centra más en la implementación, confiabilidad y seguridad de la red, debería preferir el modelo TCP/IP.

  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Por qué es importante el modelo OSI si no se usa comercialmente?</summary>
  <div class="card-body" markdown="1">

El modelo OSI ha definido la terminología común utilizada en las discusiones y documentación de redes. Esto permite desarmar un proceso de comunicaciones muy complejo y evaluar sus componentes.

  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Por qué el modelo TCP/IP reemplazó el modelo OSI?</summary>
  <div class="card-body" markdown="1">

El modelo OSI tiene una clasificación más amplia de siete protocolos en su pila. Esto hace que los problemas de depuración sean mucho más fáciles. TCP/IP es la versión simplificada del modelo OSI en el que se basa Internet. La principal ventaja es la interoperabilidad e independencia de TCP/IP entre diferentes tipos de computadoras. Por lo tanto, TCP/IP se mantiene como estándar de la industria.

  </div>
</details>

{:.question}
¿Cuál es la diferencia entre el modelo TCP/IP y el modelo OSI?

{:.question}
¿Cuándo encapsulamos? 

{:.question}
¿Cuándo desencapsulamos?

{:.question}
La capa de Internet, ¿a quién ofrece servicio?


## 5. Bibliografía

- [Modelo OSI (Wikipedia)](https://es.wikipedia.org/wiki/Modelo_OSI)
- [Qué es el Modelo OSI: Capas y Explicación](https://ccnadesdecero.es/que-es-modelo-osi/)
- [TCP/IP](https://ccnadesdecero.es/que-es-tcp-ip/)
- [¿Cuál es la diferencia entre el modelo TCP/IP y el modelo OSI?](https://ccnadesdecero.es/diferencias-modelo-tcp-ip-y-modelo-osi/)
- [Breve historia de cómo TCP/IP se impuso a OSI, o una de las históricas batallas informática](https://www.javiergarzas.com/2013/09/tcpip-se-impuso-a-osi-2.html)
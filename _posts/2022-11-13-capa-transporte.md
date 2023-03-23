---
title: "Capa de transporte"
date: 2022-11-13 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, smr, teoría]
img_path: /assets/img/capa-transporte/
---

{:.section}
## Introducción

Los programas de capa de aplicación generan datos que deben intercambiarse entre los hosts de origen y de destino. La capa de transporte es responsable de las comunicaciones lógicas entre las aplicaciones que se ejecutan en diferentes hosts. Esto puede incluir servicios como el establecimiento de una sesión temporal entre dos hosts y la transmisión confiable de información para una aplicación.

Como se muestra en la imagen, la capa de transporte es el enlace entre la capa de aplicación y las capas inferiores que son responsables de la transmisión de la red.

La capa de transporte no tiene conocimiento del tipo de host de destino, el tipo de medio por el que deben viajar los datos, la ruta tomada por los datos, la congestión en un enlace o el tamaño de la red.

La capa de transporte incluye dos protocolos:

- Protocolo de Control de Transmisión: Transmission Control Protocol (TCP)
- Protocolo de Datagramas de Usuario: User Datagram Protocol (UDP)

{:.section}
## Responsabilidades de la capa de transporte

La capa de transporte tiene muchas responsabilidades:

- Seguir conversaciones individuales.
- Segmentar datos en segmentos y reensamblar los segmentos.
- Agregar información de encabezado.
- **Identificar las aplicaciones que se conectan a la red.**
- Multiplexar conversaciones.

{:.section}
## ¿Qué es un puerto? ¿Qué es un socket?

Los puertos juegan un papel básico en una conexión de red porque es el sistema por el que se identifican las aplicaciones o servicios que participan en ella. Cuando establecemos una conexión, a las aplicaciones implicadas en ella se les asigna un número entre 0 y 65535. Este número es el identificador que va a diferenciar esa aplicación en concreto del resto de las aplicaciones del equipo. Eso es lo que llamamos puerto.

Ya sabemos que en una conexión de internet enviamos la información troceada en paquetes y que en esos paquetes debemos indicar la IP origen y destino para poder localizar ambos equipos en la red. Además de las IPs de origen y destino en el paquete también deberemos incluir la información de puerto origen y destino. De esta manera además de localizar los equipos involucrados en la conexión **seremos capaces de identificar las aplicaciones en concreto** que participan en ella.

![Conexión y sockets](socket.png)
_Conexión y sockets_

Al conjunto IP - Puerto es lo que llamamos socket y se escribe poniendo primero IP seguido de dos puntos y a continuación el puerto. Por ejemplo un socket tendría esta forma: 145.34.210.89:4578.

Por lo tanto, la conexión se establece entre 2 sockets y queda identificada de manera única porque los sockets implicados en dicha conexión son únicos. No existe ninguna otra conexión que tenga esos dos mismos sockets. Puede haber otras conexiones con uno de los 2 sockets, pero nunca los 2.

<iframe src="https://www.youtube.com/embed/-7DiO35rbN8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Preguntas sobre el vídeo:

- ¿Qué analogía pone de ejemplo en el vídeo sobre los puertos?
- ¿Cuál es el rango de puertos? ¿Por qué?
- ¿Qué puerto usan por defecto los servidores web?
- ¿Puedo tener dos servidores web en el mismo host físico?
- ¿Un cliente web a que puerto destino envía los mensajes por defecto?
- ¿Qué es un socket?
- ¿Qué es una conexión?
- En la arquitectura cliente-servidor ¿qué es un cliente?
- ¿Qué analogía usa en el vídeo sobre la arquitectura cliente-servidor?
- ¿Cada navegador tiene un número de puerto diferente?
- ¿Cada pestaña de cada navegador tiene un número de puerto diferente?

{:.section}
## Tipos de puertos

En un equipo informático tenemos distintos tipos de puerto dependiendo de su número y de su función:

- **Puerto reservado**: El 0.
- **Puertos bien conocidos**: Del 1 al 1023. Son aquellos que están reservados para los protocolos, programas y servicios establecidos universalmente y conocidos por todos. Este rango de puertos está reservado para el sistema operativo y sólo puede asignarlo el usuario con privilegios elevados como un superusuario (root). Esto es porque son servicios bastante críticos y si un usuario cualquiera pudiera abrirlos podría generar problemas de seguridad.
  - Dentro de los puertos bien conocidos estarían el servidor web (80 - HTTP), servidor web seguro (443 - HTTPS), SSH (22), DNS (53), FTP (21), ...
- **Puertos registrados**: Del 1024 al 49151. Estos puertos están asignados por la IANA y van desde el 1024 hasta el 49151. Los puertos registrados son los que utilizan las aplicaciones cuando queremos conectarnos a ellas. Dentro de este grupo estarían todos los servicios y aplicaciones que podemos instalar en un equipo. Aquí estarían comprendidos los juegos, aplicaciones de mensajería, voz sobre IP (VoIP),...
  - Por ejemplo en los puertos registrados tenemos: Plex (32400), SIP (5060), VNC (5900), Zerotier (9993), Battlefield (14567), ...
- **Puertos efímeros**: Del 49152 al 65535. Son unos puertos temporales de usar y tirar que el sistema operativo asigna a las aplicaciones cuando los necesitan. Una vez que la conexión ha terminado ese puerto queda libre y puede ser reutilizado nuevamente por cualquier otra aplicación.

<iframe src="https://www.youtube.com/embed/hmGmeGDRUAU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Preguntas sobre el vídeo:

- ¿Cuántos tipos de puertos existen según Macjosan?
- ¿Quién puede asignar los puertos bien conocidos? ¿Por qué?
- ¿Quién asigna los puertos registrados? ¿Son de obligatorio cumplimiento?
- ¿Todos los sistemas operativos usan el mismo rango de puertos efímeros?
- ¿Qué puerto conocido se usa cuando nos conectamos a un servidor web? ¿Quién tiene abierto ese puerto: el cliente o el servidor?
- ¿Qué ejemplo pone Macjosan de uso de puertos efímeros?
- ¿Cada pestaña del navegador tiene un puerto diferente? ¿Qué tipo de puerto es? ¿Por qué?
- ¿Qué ocurre si tenemos dos sevicios iguales en el mismo host?
- ¿Podemos tener dos servidores web en hosts distintos en nuestra casa que usen el mismo puerto?

{:.section}
## Protocolo TCP

El protocolo garantiza que los datos serán entregados en su destino sin errores y en el mismo orden en que se transmitieron.

Proporciona un mecanismo para distinguir distintas aplicaciones dentro de una misma máquina, a través del concepto de puerto.

En este caso el PDU (Protocol Data Unit) es llamado segmento.

TCP se considera un protocolo de capa de transporte confiable y con todas las funciones, que garantiza que todos los datos lleguen al destino. TCP incluye campos que aseguran la entrega de los datos de la aplicación. Estos campos requieren un procesamiento adicional por parte de los hosts de envío y recepción.

El transporte TCP es análogo al envío de paquetes que se rastrean desde el origen hasta el destino. Si un pedido de envío se divide en varios paquetes, un cliente puede verificar en línea para ver el pedido de la entrega.

TCP proporciona confiabilidad y control de flujo utilizando estas operaciones básicas:

1. Numerar y rastrear segmentos de datos transmitidos a un host específico desde una aplicación específica
1. Confirmar datos recibidos
1. Volver a transmitir cualquier información no reconocida después de un cierto período de tiempo
1. Datos de secuencia que pueden llegar en orden incorrecto
1. Enviar datos a una velocidad eficiente que sea aceptable para el receptor

Para mantener el estado de una conversación y rastrear la información, TCP primero debe establecer una conexión entre el remitente y el receptor. Es por eso que TCP se conoce como un protocolo orientado a la conexión.

{:.subsection}
### Características de TCP

Además de admitir las funciones básicas de segmentación y reensamblado de datos, TCP también proporciona los siguientes servicios:

1. **Establece una sesión**: TCP es un protocolo orientado a la conexión que negocia y establece una conexión permanente (o sesión) entre los dispositivos de origen y destino antes de reenviar cualquier tráfico. A través del establecimiento de la sesión, los dispositivos negocian la cantidad de tráfico que se puede reenviar en un momento dado, y los datos de comunicación entre los dos se pueden administrar de cerca.
1. **Garantiza una entrega confiable**: por muchas razones, es posible que un segmento se corrompa o se pierda por completo, ya que se transmite a través de la red. TCP asegura que cada segmento que envía la fuente llega al destino.
1. **Proporciona entrega en el mismo orden**: dado que las redes pueden proporcionar múltiples rutas que pueden tener diferentes velocidades de transmisión, los datos pueden llegar en el orden incorrecto. Al numerar y secuenciar los segmentos, TCP garantiza que los segmentos se vuelvan a ensamblar en el orden correcto.
1. **Admite control de flujo**: los hosts de red tienen recursos limitados (es decir, memoria y potencia de procesamiento). Cuando TCP es consciente de que estos recursos están sobrecargados, puede solicitar que la aplicación de envío reduzca la velocidad del flujo de datos. Esto se hace mediante TCP que regula la cantidad de datos que transmite la fuente. El control de flujo puede evitar la necesidad de retransmitir los datos cuando los recursos del host receptor se ven desbordados.

{:.subsection}
### Formato del segmento TCP

![Formato del segmento TCP](formatoTcp.png)
_Formato del segmento TCP_

<details class="card mb-2">
  <summary class="card-header question">¿Cual es el objetivo de cada campo?</summary>
  <div class="card-body" markdown="1">

- **Puerto Origen** (16 bits): Identifica el puerto emisor.
- **Puerto de Destino** (16 bits): Identifica el puerto receptor.
- **Número de secuencia** (32 bits): Identifica el byte del flujo de datos enviado por el emisor TCP al receptor TCP.
- **Número de reconocimiento o acuse de recibo** (32 bits): Contiene el valor del siguiente número de secuencia que el emisor del segmento espera recibir.
- **Offset o Longitud de cabecera** (4 bits): Especifica el tamaño de la cabecera en palabras de 32 bits.
- **Reservado** (3 bits): Para uso futuro.
- **Bits de Bandera o Flag** (9 bits): Nueve banderas de 1 bit para distintos propósitos.
- **Ventana** (16 bits): Tamaño de ventana que especifica el número máximo de bytes que pueden ser metidos en el buffer de recepción.
- **Suma de control o verificación** (16 bits): Checksum utilizado para la comprobación de errores tanto en la cabecera como en los datos.
- **Urgente** (16 bits): Cantidad de bytes desde el número de secuencia que indica el lugar donde acaban los datos urgentes.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Protocolo UDP

UDP es un protocolo de capa de transporte más simple que TCP. No proporciona confiabilidad y control de flujo, lo que significa que requiere menos campos de encabezado. Debido a que los procesos UDP del emisor y del receptor no tienen que administrar la confiabilidad y el control de flujo, esto significa que los datagramas UDP pueden procesarse más rápido que los segmentos TCP. UDP proporciona las funciones básicas para entregar datagramas entre las aplicaciones apropiadas, con muy poca sobrecarga y verificación de datos.

UDP es un protocolo sin conexión. Debido a que UDP no proporciona confiabilidad o control de flujo, no requiere una conexión establecida. Debido a que UDP no rastrea la información enviada o recibida entre el cliente y el servidor, UDP también se conoce como un protocolo sin estado.

UDP también se conoce como un protocolo de entrega de mejor esfuerzo porque no hay reconocimiento de que los datos se reciben en el destino. Con UDP, no hay procesos de capa de transporte que informen al remitente de una entrega exitosa.

UDP es como colocar una carta regular, no registrada, en el correo. El remitente de la carta no tiene conocimiento de la disponibilidad del receptor para recibir la carta. La oficina de correos tampoco es responsable de rastrear la carta o informar al remitente si la carta no llega al destino final.

{:.subsection}
### Características de UDP

UDP es un protocolo de transporte de mejor esfuerzo. UDP es un protocolo de transporte liviano que ofrece la misma segmentación y reensamblaje de datos que TCP, pero sin la confiabilidad de TCP y el control de flujo.

UDP es un protocolo tan simple que generalmente se describe en términos de lo que no hace en comparación con TCP.

Las características UDP incluyen lo siguiente:

1. Los datos se reconstruyen en el orden en que se reciben.
1. Los segmentos que se pierden no se vuelven a enviar.
1. No hay establecimiento de sesión.
1. El envío no está informado sobre la disponibilidad de recursos.

{:.subsection}
### Encabezado UDP

UDP es un protocolo sin estado, lo que significa que ni el cliente ni el servidor rastrean el estado de la sesión de comunicación. Si se requiere confiabilidad cuando se usa UDP como protocolo de transporte, la aplicación debe manejarlo.

Uno de los requisitos más importantes para entregar video y voz en vivo a través de la red es que los datos continúen fluyendo rápidamente. Las aplicaciones de video y voz en vivo pueden tolerar cierta pérdida de datos con un efecto mínimo o nulo, y se adaptan perfectamente a UDP.

Los bloques de comunicación en UDP se denominan datagramas o segmentos. Estos datagramas se envían como el mejor esfuerzo por el protocolo de la capa de transporte.

El encabezado UDP es mucho más simple que el encabezado TCP porque solo tiene cuatro campos y requiere 8 bytes (es decir, 64 bits). La figura muestra los campos en un encabezado UDP.

![img-description](formatoUdp.png)
_Formato del segmento UDP_

<details class="card mb-2">
  <summary class="card-header question">¿Cuál es el objetivo de cada campo?</summary>
  <div class="card-body" markdown="1">

- **Puerto UDP origen**. Un campo de 16 bits utilizado para identificar la aplicación de origen por número de puerto.
- **Puerto UDP destino**. Un campo de 16 bits utilizado para identificar la aplicación de destino por número de puerto.
- **Longitud del mensaje UDP**. 16 bits que indican la longitud en bytes del mensaje UDP incluyendo la cabecera. La longitud mínima es de 8 bytes.
- **Checksum**. Un campo de 16 bits utilizado para la verificación de errores del encabezado y los datos del datagrama.
- **Datos**. Información viene de la capa de aplicación.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## TCP vs UDP

UDP necesita menos bytes en la cabecera por lo que utiliza menos ancho de banda y necesita menos consumo procesamiento.

TCP en cambio consume más ancho de banda que UDP, pero permite la retransmisión y evita congestión.

{:.question}
En la vida real ¿que ejemplo hay equivalente a TCP? ¿Y UDP?

<details class="card mb-2">
  <summary class="card-header">Spoiler</summary>
  <div class="card-body" markdown="1">

![TCP vs UDP](tcpVsUdpMeme.png)
_TCP vs UDP_

![TCP vs UDP](tcpVsUdpMeme4.jpg)
_TCP vs UDP_

![Gobierno: Para parar el covid deberemos parar todos de hacer handshaking. TCP: O.o](tcpVsUdpMeme5.jpg)
_Gobierno: Para parar el covid deberemos parar todos de hacer handshaking. TCP: O.o_

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Bibliografía

- [Protocolo de datagramas de usuario (Wikipedia)](https://es.wikipedia.org/wiki/Protocolo_de_datagramas_de_usuario)
- [Unidad de datos de protocolo (Wikipedia)](https://es.wikipedia.org/wiki/Unidad_de_datos_de_protocolo)
- [Protocolo de control de transmisión (Wikipedia)](https://es.wikipedia.org/wiki/Protocolo_de_control_de_transmisi%C3%B3n)
- [CCNA Desde Cero](https://ccnadesdecero.com/curso/ccna-capitulo-1/)
- [Protocolo TCP](https://ccnadesdecero.com/curso/tcp/)
- [Protocolo UDP](https://ccnadesdecero.com/curso/udp/)
- [Diferencia entre TCP y UDP](https://ccnadesdecero.com/curso/tcp-vs-udp/)
- [Que es un puerto y un socket. Curso de redes desde 0. Cap 5. 2020](https://naseros.com/2020/05/29/que-es-un-puerto-y-un-socket/)
- [Tipos de puerto. Curso de redes desde 0. Cap 6. 2020](https://naseros.com/2020/06/05/tipos-de-puerto-puerto-bien-comocido-asignado-y-efimero/)

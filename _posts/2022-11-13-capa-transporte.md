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
## Responsabilidades de la Capa de transporte

La capa de transporte tiene muchas responsabilidades:

- Seguimiento de conversaciones individuales.
- Segmentación de datos y reensamblado de segmentos.
- Agregar información de encabezado.
- Identificando las aplicaciones.
- Multiplexación de conversación.

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
### Conexiones o sockets

<iframe src="https://www.youtube.com/embed/-7DiO35rbN8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

![img-description](socket.png)
_Socket_

{:.subsection}
### Formato del segmento TCP

![img-description](formatoTcp.png)
_Formato del segmento TCP_

{:.question}
¿Cual es el objetivo de cada campo? (Pag 136)

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

- **Puerto UDP origen**. Un campo de 16 bits utilizado para identificar la aplicación de origen por número de puerto.
- **Puerto UDP destino**. Un campo de 16 bits utilizado para identificar la aplicación de destino por número de puerto.
- **Longitud del mensaje UDP**. 16 bits que indican la longitud en bytes del mensaje UDP incluyendo la cabecera. La longitud mínima es de 8 bytes.
- **Checksum**. Un campo de 16 bits utilizado para la verificación de errores del encabezado y los datos del datagrama.
- **Datos**. Información viene de la capa de aplicación.

{:.section}
## TCP vs UDP

Leer artículo [Diferencia entre TCP y UDP](https://ccnadesdecero.com/curso/tcp-vs-udp/).

{:.section}
## Direccionamiento y puertos

<iframe src="https://www.youtube.com/embed/hmGmeGDRUAU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

- Puerto reservado: el 0
- Puertos bien conocidos: del 1 al 1023
- Puertos registrados: del 1024 al 49151
- Puertos efímeros: del 49152 al 65535

## Resumen final

<details class="card mb-2">
  <summary class="card-header">Spoiler</summary>
  <div class="card-body" markdown="1">

![Gobierno: Para parar el covid deberemos parar todos de hacer handshaking. TCP: O.o](tcpVsUdpMeme5.jpg)
_Gobierno: Para parar el covid deberemos parar todos de hacer handshaking. TCP: O.o_

![TCP vs UDP](tcpVsUdpMeme.png)
_TCP vs UDP_

![TCP vs UDP](tcpVsUdpMeme4.jpg)
_TCP vs UDP_
    
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
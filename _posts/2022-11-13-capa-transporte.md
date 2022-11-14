---
title: "Capa de transporte"
date: 2022-11-13 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, smr, teoría]
img_path: /assets/img/capa-transporte/
---

## 1. Introducción

El nivel de la pila de protocolos de TCP/IP se encuentra entre el nivel de aplicación y el de Internet. Se encarga de la transferencia de datos extremo a extremo, ocultando los detalles de la red o subredes subyacentes. En el caso de TCP, incluye mecanismos de seguridad.

Son 2:
- TCP (segmentos): Burofax
- UDP (datagramas): Carta

## 2. Direccionamiento y puertos

<iframe src="https://www.youtube.com/embed/hmGmeGDRUAU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

- Puerto reservado: el 0
- Puertos bien conocidos: del 1 al 1023
- Puertos registrados: del 1024 al 49151
- Puertos efímeros: del 49152 al 65535

## 3. Protocolo TCP

El protocolo garantiza que los datos serán entregados en su destino sin errores y en el mismo orden en que se transmitieron. 

Proporciona un mecanismo para distinguir distintas aplicaciones dentro de una misma máquina, a través del concepto de puerto.

Las aplicaciones pueden comunicarse en forma segura (gracias al "acuse de recibo" -ACK- del protocolo TCP) independientemente de las capas inferiores.

En este caso el PDU (Protocol Data Unit) es llamado segmento.

### 3.1. Conexiones o sockets

<iframe src="https://www.youtube.com/embed/-7DiO35rbN8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

![img-description](socket.png)
_Socket_


### 3.2. Establecimiento de una conexión

![img-description](establecimientoDeConexionTcp.png)
_Establecimiento de una conexión_

### 3.3. Protocolo de ventana deslizante

![img-description](ventanaDeslizanteTcp.png)
_Protocolo de ventana deslizante_

### 3.4. Cierre de una conexión

![img-description](cierreConexionTcp.png)
_Cierre de una conexión_

### 3.5. Formato del segmento TCP

![img-description](formatoTcp.png)
_Formato del segmento TCP_

{:.question}
¿Cual es el objetivo de cada campo? (Pag 136)

## 4. Protocolo UDP

![img-description](formatoUdp.png)
_Formato del segmento UDP_

- **Puerto UDP origen**. 16 bits que identifican el puerto de la máquina origen.
- **Puerto UDP destino**. 16 bits que identifican el puerto de la máquina destino.
- **Longitud del mensaje UDP**. 16 bits que indican la longitud en bytes del mensaje UDP incluyendo la cabecera. La longitud mínima es de 8 bytes.
- **Checksum**. Campo opcional de 16 bits que porta la suma de comprobación de errores del mensaje.
- **Datos**. Información que envía la aplicación.

## 5. TCP vs UDP

Leer artículo [Diferencia entre TCP y UDP](https://ccnadesdecero.com/curso/tcp-vs-udp/).

## Memes

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


## 6. Bibliografía

- [Protocolo de datagramas de usuario (Wikipedia)](https://es.wikipedia.org/wiki/Protocolo_de_datagramas_de_usuario)
- [Unidad de datos de protocolo (Wikipedia)](https://es.wikipedia.org/wiki/Unidad_de_datos_de_protocolo)
- [Protocolo de control de transmisión (Wikipedia)](https://es.wikipedia.org/wiki/Protocolo_de_control_de_transmisi%C3%B3n)
- [CCNA Desde Cero](https://ccnadesdecero.com/curso/ccna-capitulo-1/)
- [Protocolo TCP](https://ccnadesdecero.com/curso/tcp/)
- [Protocolo UDP](https://ccnadesdecero.com/curso/udp/)
- [Diferencia entre TCP y UDP](https://ccnadesdecero.com/curso/tcp-vs-udp/)
---
title: Capa de aplicación
date: 2023-03-15 13:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [gnu linux, comandos, terminal, bash, redes locales, teoría]
mermaid: true
img_path: /assets/img/capa-aplicacion/
---

{:.section}
## Introducción

En los modelos OSI y TCP/IP, la capa de aplicación es la capa más cercana al usuario final. Esta es la capa la que proporciona la interfaz entre las aplicaciones utilizadas para comunicarse y la red subyacente a través de la cual se transmiten los mensajes. Los protocolos de capa de aplicación se utilizan para intercambiar datos entre programas que se ejecutan en los hosts de origen y destino.

Basado en el modelo TCP/IP, las tres capas superiores del modelo OSI (aplicación, presentación y sesión) definen funciones de la capa de aplicación TCP/IP.

Existen muchos protocolos de capa de aplicación, y siempre se desarrollan nuevos protocolos. Algunos de los protocolos de capa de aplicación más conocidos incluyen el Protocolo de transferencia de hipertexto (HTTP), el Protocolo de transferencia de archivos (FTP), el Protocolo trivial de transferencia de archivos (TFTP), el Protocolo de acceso a mensajes de Internet (IMAP) y el protocolo del Sistema de nombres de dominio (DNS).

{:.section}
## Servicios de red

Los servicios de red son utilizados desde hace varios años con el objetivo de poder facilitar la comunicación entre dos o más ordenadores. Esto con el fin de poder compartir recursos, ya sean hardware o software como programas, aplicaciones, información, datos, archivos entre otros.

Este tipo de redes permiten compartir dispositivos como impresoras o programas con los demás ordenadores conectados a la red. Una herramienta ideal para la mayoría de las empresas o casas de estudios donde tienen que compartir una misma información en varios equipos.

{:.subsection}
### Servicio DHCP

DHCP, Dynamic Host Configuration Protocol o Protocolo de configuración dinámica de host es un protocolo de red de tipo cliente/servidor mediante el cual un servidor DHCP asigna dinámicamente una dirección IP y otros parámetros de configuración de red a cada dispositivo en una red para que puedan comunicarse con otras redes IP.

Este servidor posee una lista de direcciones IP dinámicas y las va asignando a los clientes conforme estas van quedando libres, sabiendo en todo momento quién ha estado en posesión de esa IP, cuánto tiempo la ha tenido y a quién se la ha asignado después.

{:.question}
¿En que dispostivo suele estar alojado el servidor DHCP?

{:.subsubsection}
#### Modos de asignación de direcciones IP

- **Manual o estática:** Asigna una dirección IP a una máquina determinada. Se suele utilizar cuando se quiere controlar la asignación de dirección IP a cada cliente, y evitar, también, que se conecten clientes no identificados. Para asignar IPs se usa la MAC.
- **Automática (ilimitada):** Asigna una dirección IP a una máquina cliente la primera vez que hace la solicitud al servidor DHCP y hasta que el cliente la libera. Se suele utilizar cuando el número de clientes no varía demasiado. La utilización de una IP es ilimitada.
- **Dinámica (limitada):** El administrador de la red determina un rango de direcciones IP y cada dispositivo conectado a la red está configurado para solicitar su dirección IP al servidor cuando la tarjeta de interfaz de red se inicializa. Lo limitado es el tiempo de utilización de una IP.

{:.subsubsection}
#### Ventajas de utilizar el servicio DHCP

- 👍 Las IPs libres se van asignando secuencialmente a cada cliente cuando estos arrancan y lo solicitan, sin necesidad de intervención por parte del administrador.
- 👍 Se centraliza la información de manera que no puede haber IPs duplicadas o erróneas si el servidor está bien configurado.
- 👍 Se ahorra tiempo y esfuerzo de administración.
- 👍 El servidor DHCP puede facilitar a un cliente TODA la información que necesita para funcionar.
- 👍 El servidor DHCP puede procesar a la vez múltiples solicitudes de clientes.

{:.subsubsection}
#### Desventajas de utilizar el servicio DHCP

- 👎 Mayor esfuerzo inicial si las IPs han de ser reservadas para cada equipo en el servidor ya que se debe conocer la MAC o nombre de cada equipo.
- 👎 Cuando existe una falla en el servidor DHCP, los dispositivos renovarán su dirección IP, interrumpiendo la conexión e impidiendo su funcionamiento.

{:.subsection}
### Servicio DNS

Para conectarnos a un equipo que está fuera de nuestra red debemos conocer su IP pública. En el paquete que genera el ordenador se debe incluir la dirección de destino. Funciona como un servicio de paquetería o de correos.

El formato de esta IP es una ristra de números (IPv4), o de números y letras (IPv6). Para los humanos es muy complicado memorizar estas direcciones. Para nosotros es más fácil acordarnos de palabras, y por eso es más sencillo recordar la palabra Google, Apple, Amazon, Facebook,... que no sus direcciones públicas.

DNS es el acrónimo de Domain Name Server o servidor de nombre de dominios en español. Básicamente es un servidor con un listado con la equivalencia entre el nombre de una web o un servicio y su IP pública.

Cuando nosotros queremos acceder a una web, antes de crear el paquete preguntamos a un servidor de nombre de dominios cual es la IP pública de esa web, y una vez que nos responde creamos el paquete con la petición a dicha dirección.

La dirección del servidor DNS se puede configurar en el ordenador, smartphone, smartTV, tablet,... o en el router. Si lo configuramos en el router todos los equipos que se conectan a él utilizaran este DNS por defecto. Si configuramos un DNS distinto en el ordenador, éste tendrá preferencia sobre el del router y será el que utilizará.

{:.question}
¿Qué ocurre si una web cambia su dirección IP pública?

<details class="card mb-2">
  <summary class="card-header question">Qué es un DNS</summary>
  <div class="card-body" markdown="1">

Explicado de una manera muy rápida, un DNS es un servidor que se encarga de traducir el nombre de una dirección de internet  a una IP. Cuando nosotros tecleamos en el navegador la dirección de una página web, el navegador no sabe a dónde tiene que ir porque en internet las direcciones son un conjunto de números que es la IP del servidor donde está alojada esa web.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Se usa el servicio DNS para más casos que el de las páginas web?

{:.subsubsection}
#### DNS por defecto

Todos los proveedores de Internet tienen su propio servidor DNS y es el que viene por defecto en el router que nos suministran. Si no tocas nada en la configuración, ése será el DNS por defecto.

También existen muchos servidores DNS públicos que podemos utilizar. Los más famosos son:

- Google: 8.8.8.8
- Cloudflare: 1.1.1.1
- Quadnine: 9.9.9.9
- OpenDNS: 208.67.222.222

Estos podemos ponerlos en el router o en cada equipo dependiendo de lo que nos interese. Lo más habitual es poner el que nos guste en el router y así no tenemos que cambiarlo en cada equipo de la red.

<iframe src="https://www.youtube.com/embed/7XjJqUM0dvg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


#### Configuración del DNS

La configuración del DNS de una red no es algo trivial porque influye en los tiempos de carga de una web. Incluso gracias a los DNS podemos realizar un control parental y bloquear la publicidad de todos los dispositivos de la red.

El lado negativo es que a través de la manipulación de los DNS que tengamos configurados pueden engañarnos modificándolos para obtener nuestras credenciales al acceder a una web o servicio en nuestro nombre. También puede tener implicaciones negativas en nuestra privacidad.

Son tan importantes que incluso los gobiernos pueden tener cierto control sobre sus ciudadanos mediante la manipulación de los DNS de un país.

Aunque el DNS púbico más usado y famoso es el de Google (8.8.8.8), hay otros como los de Cloudflare (1.1.1.1), Quad9 (9.9.9.9), OpenDNS y los propios DNS de la operadora (ISP) que deberemos tener en cuenta.

Este es el primer vídeo de una serie en la que trataré de explicarte cómo qué es y cómo funciona un DNS, te enseñaré a configurarlos y a elegir el más adecuado para tu red, realizaremos controles parentales, bloquearemos publicidad, ...

<iframe src="https://www.youtube.com/embed/VpTIvKhSUj4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Conclusión

<details class="card mb-2">
  <summary class="card-header question">¿Cómo funciona Internet?</summary>
  <div class="card-body" markdown="1">

<iframe src="https://www.youtube.com/embed/T5ERzSRNaKw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


## Bibliografía

- [Aplicación, Presentación y Sesión](https://ccnadesdecero.es/capa-aplicacion-introduccion/)
- [Que es un DNS y para qué sirve. Curso de redes desde 0. | Cap 4 | 2020](https://naseros.com/2020/05/28/que-es-un-dns-y-para-que-sirve-curso-de-redes-desde-0-cap-4-2020/)
- [Qué es y cómo funciona un DNS. Importancia de los DNS](https://naseros.com/2019/02/03/que-es-y-como-funciona-un-dns/)

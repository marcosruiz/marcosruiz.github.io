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

👍 Las IPs libres se van asignando secuencialmente a cada cliente cuando estos arrancan y lo solicitan, sin necesidad de intervención por parte del administrador.

👍 Se centraliza la información de manera que no puede haber IPs duplicadas o erróneas si el servidor está bien configurado.

👍 Se ahorra tiempo y esfuerzo de administración.

👍 El servidor DHCP puede facilitar a un cliente TODA la información que necesita para funcionar.

👍 El servidor DHCP puede procesar a la vez múltiples solicitudes de clientes.

{:.subsubsection}
#### Desventajas de utilizar el servicio DHCP

👎 Mayor esfuerzo inicial si las IPs han de ser reservadas para cada equipo en el servidor ya que se debe conocer la MAC o nombre de cada equipo.

👎 Cuando existe una falla en el servidor DHCP, los dispositivos renovarán su dirección IP, interrumpiendo la conexión e impidiendo su funcionamiento.

{:.subsection}
### Servicio DNS

Existen otros protocolos específicos de capa de aplicación diseñados para facilitar la obtención de direcciones para dispositivos de red. Estos servicios son esenciales porque llevaría mucho tiempo recordar direcciones IP en lugar de direcciones URL o configurar manualmente todos los dispositivos de una red mediana a grande. El primer tema de este módulo le dio una visión general de estos protocolos. En este tema se detallan los servicios de direccionamiento IP, DNS y DHCP.

En las redes de datos, los dispositivos están etiquetados con direcciones IP numéricas para enviar y recibir datos a través de redes. Los nombres de dominio se crearon para convertir la dirección numérica en un nombre simple y reconocible.

En Internet, los nombres de dominio totalmente cualificado (FQDN), como <http://www.cisco.com>, son mucho más fácil que la gente recuerde que 198.133.219.25, que es la dirección numérica real para este servidor. Si Cisco decide cambiar la dirección numérica de  www.cisco.com, es transparente para el usuario porque el nombre de dominio sigue siendo el mismo. La nueva dirección simplemente está vinculada al nombre de dominio existente y se mantiene la conectividad.

El protocolo DNS define un servicio automatizado que hace coincidir los nombres de los recursos con la dirección de red numérica requerida. Incluye el formato para consultas, respuestas y datos. Las comunicaciones del protocolo DNS utilizan un único formato llamado mensaje. Este formato de mensaje se utiliza para todo tipo de consultas de clientes y respuestas de servidores, mensajes de error y la transferencia de información de registros de recursos entre servidores.

<iframe src="https://www.youtube.com/embed/7XjJqUM0dvg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe src="https://www.youtube.com/embed/VpTIvKhSUj4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Bibliografía

- [Aplicación, Presentación y Sesión](https://ccnadesdecero.es/capa-aplicacion-introduccion/)

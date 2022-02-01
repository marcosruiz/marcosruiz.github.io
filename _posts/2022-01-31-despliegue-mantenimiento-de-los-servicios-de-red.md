---
title: Despliegue y mantenimiento de los servicios de red
date: 2022-01-31 22:40:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [gnu linux, comandos, terminal, bash, redes locales]
---

{:.section}
## Sistema Operativo en red

Un Sistema Operativo en Red (SOR), conocido en inglés como Network Operating System, es un software que permite la interconexión de distintos ordenadores con el objeto de poder acceder a los servicios y recursos (tanto hardware como software) creando una red de ordenadores.

Estos sistemas se apoyan en los protocolos para poder conectar entre si los distintos equipos en el ámbito de una red. Normalmente viene integrados con el sistema operativo del equipo aunque solemos distinguir entre los sistemas operativos para servidores y los que usan los clientes. 

Los sistemas operativos en red más utilizados son:

- Microsoft Windows
- GNU Linux
- Mac OS
- Novell (Microfocus)

{:.section}
## Servicios de red

Los servicios de red son utilizados desde hace varios años con el objetivo de poder facilitar la comunicación entre dos o más ordenadores. Esto con el fin de poder compartir recursos, ya sean hardware o software como programas, aplicaciones, información, datos, archivos entre otros.

Este tipo de redes permiten compartir dispositivos como impresoras o programas con los demás ordenadores conectados a la red. Una herramienta ideal para la mayoría de las empresas o casas de estudios donde tienen que compartir una misma información en varios equipos.

{:.subsection}
### Discos, carpetas y ficheros

Son el recurso más solicitado en la mayoría de las redes locales, los discos y en concreto carpetas y ficheros que se encuentran en ellos. Los sistemas actuales hacen que sea transparente para el usuario dónde se encuentran los servidores trabajando en la actualidad en entornos virtualizados.

{:.subsection}
### Recursos de impresión de documentos

La impresión de documentos a través de la red, es otro recurso típico que realizado  mediante servidores de impresión dedicados a ello donde se parametriza: velocidad de impresión, calidad, privilegios prioridades, etc. Un ejemplo de protocolo es el IPP – Internet Printing Protocol – que usando el protocolo http se transmite la información a imprimir.

{:.subsection}
### Servicio DHCP

DHCP, Dynamic Host Configuration Protocol o Protocolo de configuración dinámica de host es un protocolo de red de tipo cliente/servidor mediante el cual un servidor DHCP asigna dinámicamente una dirección IP y otros parámetros de configuración de red a cada dispositivo en una red para que puedan comunicarse con otras redes IP.

Este servidor posee una lista de direcciones IP dinámicas y las va asignando a los clientes conforme estas van quedando libres, sabiendo en todo momento quién ha estado en posesión de esa IP, cuánto tiempo la ha tenido y a quién se la ha asignado después.

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

<iframe width="100%" height="315" src="https://www.youtube.com/embed/VpTIvKhSUj4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.section}
## Intranet

Una intranet es una red informática que utiliza la tecnología del protocolo de Internet para compartir información, sistemas operativos o servicios de computación dentro de una organización. Suele ser interna, en vez de pública como internet, por lo que solo los miembros de esa organización tienen acceso a ella. 

Los elementos que necesitaremos son: 

- **Una red de área local**, usando el protocolo TCP/IP que permite el uso de un sistema DNS.
- **Clientes de red**, que usen el protocolo TCP/IP además de un navegador.
- **Servidores de red**, que provean los servicios telemáticos en la red local: web, FTP, etc. No es necesario que un mismo nodo de todos los servicios requeridos.
- **Configuración del sistema**, tras haber instalado el hardware y el software de la Intranet, es preciso definir la ubicación de los documentos, la estructura jerárquica en forma de páginas que permitan la navegación y la definición de los permisos de acceso a cada una por parte de los usuarios.


{:.section}
## Sistemas de almacenamiento en red

Lee el artículo [Sistemas de almacenamiento en red](/posts/teoria-sistemas-de-almacenamiento-en-red/).
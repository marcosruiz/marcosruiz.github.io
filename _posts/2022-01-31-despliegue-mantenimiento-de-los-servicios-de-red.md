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
## Acceso remoto

Al compartir recursos en una red, lo más básico en seguridad es protegerlo contra los accesos inadecuados. Para ello los usuarios deben identificarse de forma correcta asignando permisos sobre cada recurso.

{:.subsection}
### Discos, carpetas y ficheros

Son el recurso más solicitado en la mayoría de las redes locales, los discos y en concreto carpetas y ficheros que se encuentran en ellos. Los sistemas actuales hacen que sea transparente para el usuario dónde se encuentran los servidores trabajando en la actualidad en entornos virtualizados.

{:.subsection}
### Cuentas de usuario y grupo

La cuenta de usuario es la forma habitual de personalizar el acceso a la red. Dos usuarios no deben compartir la misma cuenta.

Una cuenta de grupo es una colección de cuentas de usuario, al hacer que un usuario pertenezca a un grupo hacemos que se le asignen automáticamente las propiedades, derechos, características, permisos y privilegios de ese grupo.

Es una forma sencilla de configurar los permisos de red a un conjunto de usuarios.

{:.subsection}
### Derechos de acceso y permisos

Lee los siguientes puntos del artículo [Permisos en GNU Linux](/posts/permisos-gnu-linux/):

- Tipos de usuario
- Tipos de permisos sobre ficheros y directorios
- ¿Cómo ver los permisos de un fichero?
- Tipo de fichero y sus permisos

{:.subsection}
### Recursos de impresión de documentos

La impresión de documentos a través de la red, es otro recurso típico que realizado  mediante servidores de impresión dedicados a ello donde se parametriza: velocidad de impresión, calidad, privilegios prioridades, etc. Ejemplos

- IPP (Internet Printing Protocol) que usando el protocolo http se transmite la información a imprimir.
- CUPS (Common Unix Printing System) que es un sistema de impresión modular para sistemas operativos de tipo Unix que permite que un computador actúe como servidor de impresión.



{:.section}
## ¿Qué es una Intranet?

Una intranet es una red informática que utiliza la tecnología del protocolo de Internet para compartir información, sistemas operativos o servicios de computación dentro de una organización. Suele ser interna, en vez de pública como internet, por lo que solo los miembros de esa organización tienen acceso a ella. 

Los elementos que necesitaremos son: 

- **Una red de área local**, usando el protocolo TCP/IP que permite el uso de un sistema DNS.
- **Clientes de red**, que usen el protocolo TCP/IP además de un navegador.
- **Servidores de red**, que provean los servicios telemáticos en la red local: web, FTP, etc. No es necesario que un mismo nodo de todos los servicios requeridos.
- **Configuración del sistema**, tras haber instalado el hardware y el software de la Intranet, es preciso definir la ubicación de los documentos, la estructura jerárquica en forma de páginas que permitan la navegación y la definición de los permisos de acceso a cada una por parte de los usuarios.

{:.section}
## Sistemas de almacenamiento en red

Lee el artículo [Sistemas de almacenamiento en red](/posts/teoria-sistemas-de-almacenamiento-en-red/).
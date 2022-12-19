---
title: "Seguridad activa: Sistemas operativos"
date: 2022-12-19 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría]
img_path: /assets/img/seguridad-activa-sistemas-operativos/
---

## Introducción

{:.section}
## ¿Qué es la BIOS?

Se trata de las siglas de Basic Input Output System (en castellano, sistema básico de entrada/salida) y se refiere a un firmware almacenado en un dispositivo de memoria no volátil instalado sobre la placa base del ordenador. Tradicionalmente las BIOS han estado guardadas en una memoria ROM que, a diferencia de las memorias RAM habituales, no se elimina al apagar el PC y, por lo tanto, está de nuevo disponible al volver a encenderlo. Tan pronto como el usuario enciende cualquier PC de 64 u 86 bits, la BIOS se arranca automáticamente. Al contrario que los sistemas operativos, no tiene que instalarse, sino que ya está integrada en el hardware del ordenador.

> Si queremos poner la BIOS de nuestro PC a su estado de fábrica es tan sencillo como quitar la pila de la placa base.
{:.prompt-info}

### Funciones principales de la BIOS

La BIOS pone las funciones básicas de un ordenador a disposición del usuario. Al encenderlo, comprueba si las partes más importantes son funcionales, como la memoria, la CPU y otros componentes de hardware. Esta prueba se denomina autoprueba de arranque o power on self test (POST).

Si la BIOS detecta un error durante el POST, emite uno o más pitidos por los altavoces del equipo. Estos sonidos sirven para indicar al usuario dónde se ha detectado el problema y siguen diferentes códigos, dependiendo del fabricante: por ejemplo, con la BIOS de IBM, un pitido corto y dos largos indicarían un error de la tarjeta gráfica.

La BIOS soluciona uno de los principales problemas de los ordenadores, ya que cada programa debe cargarse en la memoria principal del equipo para poder ejecutarse. Este proceso también requiere un software que le indique al sistema dónde se encuentra ese programa, como el sistema operativo. Aquí entra en juego la BIOS, el firmware que asume esta tarea. Al mismo tiempo, la BIOS actúa de intermediaria entre la CPU y el software, formando la llamada capa de abstracción de hardware (en inglés, Hardware Abstraction Layer o HAL), una interfaz que permite que el software no tenga que acceder directamente al hardware, sino que pueda obtener sus datos de manera estandarizada.

{:.question}
¿Se puede poner contraseña a la BIOS?

### Tecnologías sucesoras: EFI y UEFI

Los elementos básicos de la BIOS apenas han cambiado desde la década de 1980, por lo que esta presenta cada vez más limitaciones frente a los requisitos del hardware moderno. No obstante, hay tecnologías sucesoras que llevan mucho tiempo desarrollándose. La EFI (del inglés Extensible Firmware Interface) se creó en la década de 1990. Desde la década de 2010, la UEFI se ha establecido como el estándar en los ordenadores de 64 bits y ofrece más y mejores funciones, siendo además más cómoda de utilizar que la BIOS original.

La UEFI cuenta con una interfaz gráfica de usuario, se puede utilizar con el ratón o el teclado y puede acceder a los componentes de red e Internet incluso sin iniciar el sistema operativo. Una de las características que más la diferencian de la BIOS es que la UEFI utiliza un gestor de arranque seguro (en inglés, secure bootloader), es decir, que evita que se inicien sistemas operativos no autorizados y software no deseado y, por lo tanto, aumenta la protección contra los ataques cibernéticos.

{:.question}
¿Qué es EFI y UEFI? ¿Qué diferencia hay entre UEFI y BIOS?

{:.section}
## ¿Qué es el GRUB?

GNU GRUB (GNU GRand Unified Bootloader) es un cargador de arranque múltiple, desarrollado por el proyecto GNU que nos permite elegir qué Sistema Operativo arrancar de los instalados.

Se usa principalmente en sistemas operativos GNU/Linux. 

{:.question}
¿Se puede fijar el orden de los dispositivos de arranque?

### GRUB 2

GRUB 2 es una reescritura de GRUB que comparte muchas características con su versión anterior, ahora conocida como GRUB Legacy. Las más importantes diferencias entre GRUB 2 y GRUB Legacy son:

- El fichero de configuración de GRUB 2 es ‘grub.cfg’ en lugar del ‘grub.conf’ o ‘menu.lst’. Se añade nueva sintaxis y muchos nuevos comandos. El fichero ‘grub.cfg’ es típicamente automáticamente generado por ‘grub2-mkconfig’ lo que facilita mucho el uso.
- Los números de partición en los nombres de los dispositivos GRUB ahora empiezan en 1, en lugar de en 0.
- Una pequeña cantidad de almacenamiento persistente está disponible entre reinicios, usando los comandos ‘save_env’ y ‘load_env’ y la utilidad ‘grub2-editenv’. Esto no está disponible en todas las configuraciones.
- GRUB 2 tiene formas más confiables de encontrar sus propios ficheros y los de los kernels de destino en sistemas de varios discos, y tiene comandos para buscar dispositivos usando etiquetas del sistema de archivos o identificadores únicos universales (UUID).
- GRUB 2 soporta muchos más sistemas de ficheros, incluyendo pero no limitado a Ext4, HFS+, y NTFS.
- GRUB 2 puede leer ficheros directamente de dispositivos LVM y RAID.
- GRUB 2 tiene disponible un terminal gráfico y un sistema de menú gráfico
- Los archivos de imagen que componen GRUB se han reorganizado; La etapa 1, la etapa 1.5 y la etapa 2 ya no existen. En su lugar GRUB 2 dispone de una variedad de imágenes de arranque (boot.img, diskboot.img, cdboot.img, pxeboot.img, lnxboot.img, kernel.img) para iniciar GRUB de varias formas, una imagen del núcleo (core.img) y un conjunto de módulos que se combinan con la imagen del núcleo (*.mod).6​
- GRUB 2 introduce muchas instalaciones en módulos cargados dinámicamente, lo que permite que la imagen del núcleo sea más pequeña y que se construya de formas más flexibles.


{:.section}
## Cifrado de particiones

[Cifra discos, particiones y archivos con LUKS en tu servidor Linux](https://www.redeszone.net/tutoriales/seguridad/cifrar-discos-particiones-archivos-luks-linux/)

{:.question}
¿Qué es LUKS?

{:.section}
## Autenticación en el sistema operativo

Hay varias maneras de autenticarte en un sistema operativo:

1. Usuario y contraseña
2. Tarjetas
3. Biometría
4. Elevación de privilegios

{:.section}
## Cuotas

{:.section}
## Actualizaciones y parches

{:.question}
¿Es lo mismo una actualización que un parche?

{:.section}
## Antivirus

{:.question}
¿Qué antivirus conoces?

- Avast
- AVG
- Windows defender
- Kaspersky
- McAfee
- Avira
- ESET
- Norton
- Panda

{:.section}
## Monitorización

{:.question}
¿Qué es un log?

{:.section}
## Aplicaciones web

{:.section}
## Cloud computing

![imgDescription](iaasVsPaasVsSaas.png)
_IaaS vs SaaS vs PaaS_

### SaaS

Software como servicio.

- Es el más usado.
- Lo usamos a diario en múltiples dispositivos.
- Servicios que no es necesario tener instalados.
- Es Software completo, ayuda directamente al usuario con una solución concreta.

#### Ejemplos SaaS

1. E-Mail
  - Escalable, podemos cambiar el almacenamiento.
  - Nos ofrece servicios adicionales.
  - Es más seguro al no estar en nuestros ordenadores.
  - Reduce costes al usuario.
  - No hay que instalar nada, desde un navegador tenemos acceso.
  - Ejemplos: Gmail, Outlook, etc.
1. Redes Sociales
  - 100% Cloud.
  - Conexión permanente.
  - Acceso desde cualquier dispositivo.
  - Acceso desde cualquier lugar.
  - Ejemplos: Facebook, Twitter, LinkedIn, Instagram, etc.
1. Música en la nube
  - 100% Cloud.
  - Conexión permanente.
  - Acceso desde cualquier dispositivo.
  - Acceso desde cualquier lugar.
  - A demanda.
  - Ejemplos: Spotify, Apple Music, YouTube Music, Amazon Music, Tidal, etc.
1. Video en la nube
  - 100% Cloud.
  - Conexión permanente.
  - Acceso desde cualquier dispositivo.
  - Acceso desde cualquier lugar.
  - A demanda.
  - Ejemplos: Disney+, prime video, Netflix, HBO NOW, YouTubeTV, hulu, etc.
1. Trabajo en línea y oficina virtual
  - 100% Cloud.
  - Conexión permanente.
  - Acceso desde cualquier dispositivo.
  - Acceso desde cualquier lugar.
  - Herramientas ofimáticas.
  - Herramientas de trabajos colaborativos.
  - Ejemplos: Office 365, Google Workspace, Trello, Dropbox, Slack, Zoom, etc.
1. Formación
  - 100% Cloud.
  - Conexión permanente.
  - Acceso desde cualquier dispositivo.
  - Acceso desde cualquier lugar.
  - Herramientas de estudio para los alumnos.
  - Herramientas de trabajos colaborativos.
  - Ejemplos: Moodle, Chamilo, Lifter LMS, Consortium Caroline, ATutor, etc.

### PaaS

Plataforma como servicio.

- Conjunto de software y hardware.
- No son aplicaciones acabadas que resuelven un problema.
- No se centra en dar una solución directa de software, sino que pone a disposición del usuario una serie de herramientas para que puedan desarrollar sus propias aplicaciones.

#### Ejemplos PaaS

1. Google App Engine
   1. Nos permite crear aplicaciones escalables para Google Cloud Platform.
   2. Se pueden crear y alojar aplicaciones web dentro
   3. de la plataforma de Google, sin necesidad de servidor.
   4. El desarrollador de la aplicación no tiene que preocuparse de la gestión de la infraestructura.
   5. Centrándose solo en el desarrollo de la APP.
2. AWS Elastic Beanstalk
   1. Servicio PaaS de AWS (Amazon)
   2. Permite desarrollar y escalar servicios y aplicaciones web en varios lenguajes de programación.
   3. Una vez se carga el código, el servicio se encarga autmática de la implementación, capacidad,
   4. equilibrio, escalado y monitorización de la aplicación.
3. Microsoft Azure
   1. Incluye servicio PaaS de Microsoft
   2. Permite desarrollar y escalar servicios y aplicaciones web en varios lenguajes de programación.
   3.  Soporta el ciclo de vida completo de desarrollos de aplicaciones web.


### IaaS

Infraestructura como servicio

Conjunto de herramientas que ofrecen los recursos imprescindibles para ejecutar los procesos de las aplicaciones y su
almacenamiento.

#### Ejemplos IaaS

Microsoft Azure

Incluye servicio IaaS de Microsoft
Administra la infraestructura, mientras el usuario desarrolla.
Google Cloud Platform
Servicio IaaS de Google.
Administra la infraestructura, mientras el usuario desarrolla.

#### Ejemplos XaaS

## Bibliografía

- [¿Qué es la BIOS?](https://www.ionos.es/digitalguide/servidores/know-how/que-es-la-bios-de-un-ordenador/)
- [GNU GRUB (Wikipedia)](https://es.wikipedia.org/wiki/GNU_GRUB)

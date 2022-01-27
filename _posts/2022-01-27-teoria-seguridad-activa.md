---
title: "Seguridad activa"
date: 2022-01-27 01:20:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [gnu linux, comandos, terminal, bash, seguridad informática, smr, seguridad activa, teoría, bios, grub, uefi, vpn, ssh, dmz, vlan, tcp wrapper, ids]
---

## ¿Qué es la BIOS?

Se trata de las siglas de Basic Input Output System (en castellano, sistema básico de entrada/salida) y se refiere a un firmware almacenado en un dispositivo de memoria no volátil instalado sobre la placa base del ordenador. Tradicionalmente las BIOS han estado guardadas en una memoria ROM que, a diferencia de las memorias RAM habituales, no se elimina al apagar el PC y, por lo tanto, está de nuevo disponible al volver a encenderlo. Tan pronto como el usuario enciende cualquier PC de 64 u 86 bits, la BIOS se arranca automáticamente. Al contrario que los sistemas operativos, no tiene que instalarse, sino que ya está integrada en el hardware del ordenador.

**Si queremos poner la BIOS de nuestro PC a su estado de fábrica es tan sencillo como quitar la pila de la placa base.**

### Funciones principales de la BIOS

La BIOS pone las funciones básicas de un ordenador a disposición del usuario. Al encenderlo, comprueba si las partes más importantes son funcionales, como la memoria, la CPU y otros componentes de hardware. Esta prueba se denomina autoprueba de arranque o power on self test (POST).

Si la BIOS detecta un error durante el POST, emite uno o más pitidos por los altavoces del equipo. Estos sonidos sirven para indicar al usuario dónde se ha detectado el problema y siguen diferentes códigos, dependiendo del fabricante: por ejemplo, con la BIOS de IBM, un pitido corto y dos largos indicarían un error de la tarjeta gráfica.

La BIOS soluciona uno de los principales problemas de los ordenadores, ya que cada programa debe cargarse en la memoria principal del equipo para poder ejecutarse. Este proceso también requiere un software que le indique al sistema dónde se encuentra ese programa, como el sistema operativo. Aquí entra en juego la BIOS, el firmware que asume esta tarea. Al mismo tiempo, la BIOS actúa de intermediaria entre la CPU y el software, formando la llamada capa de abstracción de hardware (en inglés, Hardware Abstraction Layer o HAL), una interfaz que permite que el software no tenga que acceder directamente al hardware, sino que pueda obtener sus datos de manera estandarizada.

### Tecnologías sucesoras: EFI y UEFI

Los elementos básicos de la BIOS apenas han cambiado desde la década de 1980, por lo que esta presenta cada vez más limitaciones frente a los requisitos del hardware moderno. No obstante, hay tecnologías sucesoras que llevan mucho tiempo desarrollándose. La EFI (del inglés Extensible Firmware Interface) se creó en la década de 1990. Desde la década de 2010, la UEFI se ha establecido como el estándar en los ordenadores de 64 bits y ofrece más y mejores funciones, siendo además más cómoda de utilizar que la BIOS original.

La UEFI cuenta con una interfaz gráfica de usuario, se puede utilizar con el ratón o el teclado y puede acceder a los componentes de red e Internet incluso sin iniciar el sistema operativo. Una de las características que más la diferencian de la BIOS es que la UEFI utiliza un gestor de arranque seguro (en inglés, secure bootloader), es decir, que evita que se inicien sistemas operativos no autorizados y software no deseado y, por lo tanto, aumenta la protección contra los ataques cibernéticos.

## ¿Qué es el GRUB?

GNU GRUB (GNU GRand Unified Bootloader) es un cargador de arranque múltiple, desarrollado por el proyecto GNU que nos permite elegir qué Sistema Operativo arrancar de los instalados.

Se usa principalmente en sistemas operativos GNU/Linux. 

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
- GRUB 2 introduce muchas instalaciones en módulos cargados dinámicamente, lo que permite que la imagen del núcleo sea más pequeña y que se construya de formas más flexibles

## ¿Qué es un IDS?

Leer el artículo [¿Qué es un IDS?](https://www.clavei.es/blog/que-es-un-ids-o-intrusion-detection-system/).

## ¿Qué es un UTM?

Leer el artículo [UTM, un firewall que ha ido al gimnasio](https://www.incibe.es/protege-tu-empresa/blog/utm-firewall-ha-ido-al-gimnasio).

## ¿Qué es una DMZ?

Leer el artículo [DMZ: utiliza la zona desmilitarizada y protege tu red interna](https://www.ionos.es/digitalguide/servidores/seguridad/en-que-consiste-una-zona-desmilitarizada-dmz/).

### Origen del término

El término zona desmilitarizada (DMZ, por sus siglas en inglés), aplicado a la seguridad informática procede probablemente de la franja de terreno neutral que separa a los países inmersos en un conflicto bélico. Es una reminiscencia de la Guerra de Corea, aún vigente y en tregua desde 1953. Paradójicamente, a pesar de que esta zona desmilitarizada es terreno neutral, es una de las más peligrosas del planeta, pues la franja no pertenece formalmente a ningún país, y cualquier inmersión en ella causará fuego de ambos bandos. 

### Red Perimetral

En el caso de un enrutador de uso doméstico, el DMZ perimetral se refiere a la dirección IP que tiene una computadora para la que un enrutador deje todos los puertos abiertos, excepto aquellos que estén explícitamente definidos en la sección NAT del enrutador. Es configurable en varios enrutadores y se puede habilitar y deshabilitar.

Con ello se persigue conseguir superar limitaciones para conectarse con cierto tipo de programas, aunque es un riesgo muy grande de seguridad que conviene tener solventado instalando un cortafuegos por software en el ordenador que tiene dicha ip en modo DMZ.

Para evitar riesgos es mejor no habilitar esta opción y usar las tablas NAT del enrutador y abrir únicamente los puertos que son necesarios. 

## ¿Qué es una VPN?

Una red privada virtual (RPV) (en inglés, Virtual Private Network, VPN) es una tecnología de red de ordenadores que permite una extensión segura de la red de área local (LAN) sobre una red pública o no controlada como Internet. Permite que el ordenador en la red envíe y reciba datos sobre redes compartidas o públicas como si fuera una red privada, con toda la funcionalidad, seguridad y políticas de gestión de una red privada. Esto se realiza estableciendo una conexión virtual punto a punto mediante el uso de conexiones dedicadas, cifrado o la combinación de ambos métodos.

Ejemplos comunes son la posibilidad de conectar dos o más sucursales de una empresa utilizando como vínculo Internet, permitir a los miembros del equipo de soporte técnico la conexión desde su casa al centro de cómputo o bien que un usuario pueda acceder a su equipo doméstico desde un sitio remoto, como por ejemplo un hotel. Todo ello utilizando la infraestructura de Internet.

La conexión VPN a través de Internet es técnicamente una unión wide area network (WAN) entre los sitios, pero al usuario le parece como si fuera un enlace privado: de allí la designación virtual private network.

### Características básicas de la seguridad

Para hacerlo posible de manera segura es necesario proporcionar los medios para garantizar la autentificación.

- Autentificación y autorización: ¿quién está del otro lado? Usuario/equipo y qué nivel de acceso debe tener.
- Integridad: de que los datos enviados no han sido alterados. Para ello se utilizan funciones de Hash. Los algoritmos de hash más comunes son los Message Digest (MD2 y MD5) y el Secure Hash Algorithm (SHA).
- Confidencialidad/Privacidad: dado que solamente puede ser interpretada por los destinatarios de la misma. Se hace uso de algoritmos de cifrado como Data Encryption Standard (DES), Triple DES (3DES) y Advanced Encryption Standard (AES).
- No repudio: es decir, un mensaje tiene que ir firmado, y quien lo firma no puede negar que envió el mensaje.
- Control de acceso: se trata de asegurar que los participantes autentificados tienen acceso únicamente a los datos a los que están autorizados.
- Auditoría y registro de actividades: se trata de asegurar el correcto funcionamiento y la capacidad de recuperación.
- Calidad del servicio: se trata de asegurar un buen rendimiento, que no haya una degradación poco aceptable en la velocidad de transmisión.

### Tipos de VPN

Básicamente existen cuatro arquitecturas de conexión VPN: 

#### VPN de acceso remoto

Es quizás el modelo más usado actualmente, y consiste en usuarios que se conectan con la empresa desde sitios remotos (oficinas comerciales, domicilios, hoteles, aviones preparados, etcétera) utilizando Internet como vínculo de acceso. Una vez autentificados tienen un nivel de acceso muy similar al que tienen en la red local de la empresa. Muchas empresas han reemplazado con esta tecnología su infraestructura dial-up (módems y líneas telefónicas)...

#### VPN punto a punto

Este esquema se utiliza para conectar oficinas remotas con la sede central de la organización. El servidor VPN, que posee un vínculo permanente a Internet, acepta las conexiones vía Internet provenientes de los sitios y establece el túnel VPN. Los servidores de las sucursales se conectan a Internet utilizando los servicios de su proveedor local de Internet, típicamente mediante conexiones de banda ancha. Esto permite eliminar los costosos vínculos punto a punto tradicionales (realizados comúnmente mediante conexiones de cable físicas entre los nodos), sobre todo en las comunicaciones internacionales. Es más común el siguiente punto, también llamado tecnología de túnel o tunneling.

#### Tunneling

La técnica de tunneling consiste en encapsular un protocolo de red sobre otro (protocolo de red encapsulador) creando un túnel dentro de una red de computadoras. El establecimiento de dicho túnel se implementa incluyendo una PDU (unidades de datos de protocolo) determinada dentro de otra PDU con el objetivo de transmitirla desde un extremo al otro del túnel sin que sea necesaria una interpretación intermedia de la PDU encapsulada. De esta manera se encaminan los paquetes de datos sobre nodos intermedios que son incapaces de ver en claro el contenido de dichos paquetes. El túnel queda definido por los puntos extremos y el protocolo de comunicación empleado, que entre otros, podría ser SSH.

El uso de esta técnica persigue diferentes objetivos, dependiendo del problema que se esté tratando, como por ejemplo la comunicación de islas en escenarios multicast, la redirección de tráfico, etc.

Uno de los ejemplos más claros de utilización de esta técnica consiste en la redirección de tráfico en escenarios IP Móvil. En escenarios de IP móvil, cuando un nodo-móvil no se encuentra en su red base, necesita que su home-agent realice ciertas funciones en su puesto, entre las que se encuentra la de capturar el tráfico dirigido al nodo-móvil y redirigirlo hacia él. Esa redirección del tráfico se realiza usando un mecanismo de tunneling, ya que es necesario que los paquetes conserven su estructura y contenido originales (dirección IP de origen y destino, puertos, etc.) cuando sean recibidos por el nodo-móvil. Se maneja de manera remota.

#### VPN over LAN

Este esquema es el menos difundido pero uno de los más poderosos para utilizar dentro de la empresa. Es una variante del tipo "acceso remoto" pero, en vez de utilizar Internet como medio de conexión, emplea la misma red de área local (LAN) de la empresa. Sirve para aislar zonas y servicios de la red interna. Esta capacidad lo hace muy conveniente para mejorar las prestaciones de seguridad de las redes inalámbricas (WiFi).

Un ejemplo clásico es un servidor con información sensible, como las nóminas de sueldos, ubicado detrás de un equipo VPN, el cual provee autenticación adicional más el agregado del cifrado, haciendo posible que solamente el personal de recursos humanos habilitado pueda acceder a la información.

Otro ejemplo es la conexión a redes Wi-Fi haciendo uso de túneles cifrados IPSec o SSL que además de pasar por los métodos de autenticación tradicionales (WEP, WPA, direcciones MAC, etc.) agregan las credenciales de seguridad del túnel VPN creado en la LAN interna o externa. 

## ¿Qué es un TCP Wrapper?

Leer el artículo [TCP Wrappers: qué son y cómo se utilizan en Linux](https://juncotic.com/tcp-wrappers-se-utilizan-linux/).

## ¿Qué es SSH?

Leer el artículo [Servicio SSH](/posts/servicio-ssh/).

## Preguntas que debes saber contestar

- ¿Qué es la BIOS?
- ¿Qué es el GRUB?
- ¿Qué ventajas/desventajas tiene cifrar un disco?
- ¿Qué protocolo de seguridad de redes inalámbricas no es seguro?
¿Qué diferencia hay entre la seguridad en la red local y la seguridad perimetral?
- ¿Qué es un IDS?
- En el contexto de un IDS ¿Qué es un falso positivo?
- En el contexto de un IDS ¿Qué es un falso negativo?
- ¿Qué son las reglas SNORT?
- ¿Qué significan las siglas UTM?
- ¿Qué es una DMZ?
- En el contexto de DMZ ¿A qué se le llama bastión?
- En el contexto de DMZ ¿En que consiste la configuración SOHO, multi-homed, screened host y screend subnet?
- ¿Qué es una VPN?
- ¿Qué ventajas aporta una VPN?
- En el contexto de VPN ¿Qué dos tipos de topologias existen principalemente?
- ¿Qué es un TCP Wrapper?
- ¿Qué es SSH? ¿Cómo funciona?
- ¿Qué es una auditoria de seguridad?
- ¿Qué es un test de intrusión?
- ¿Qué es un análisis forense?
- ¿Qué diferencia hay entre una copia de disco duro en frío y una en caliente?
- ¿En que consiste la destrucción lógica de datos?
- ¿En qué consiste la técnica Stak space de eliminación de datos del SO?
- ¿Cómo se llama al proceso que identifica y recupera archivos eliminados?
- ¿Cuándo debe realizarse un análisis forense?

## Bibliografía

- [¿Qué es la BIOS?](https://www.ionos.es/digitalguide/servidores/know-how/que-es-la-bios-de-un-ordenador/)
- [GNU GRUB (Wikipedia)](https://es.wikipedia.org/wiki/GNU_GRUB)
- [¿Qué es un IDS?](https://www.clavei.es/blog/que-es-un-ids-o-intrusion-detection-system/)
- [Zona desmilitarizada (informática) (Wikipedia)](https://es.wikipedia.org/wiki/Zona_desmilitarizada_(inform%C3%A1tica))
[Red privada virtual (Wikipedia)](https://es.wikipedia.org/wiki/Red_privada_virtual)
- [¿Cómo funciona el SSH?](https://www.hostinger.es/tutoriales/que-es-ssh)
- [Secure Shell (Wikipedia)](https://es.wikipedia.org/wiki/Secure_Shell)
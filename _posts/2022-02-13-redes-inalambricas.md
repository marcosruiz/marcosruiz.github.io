---
title: Redes inalámbricas
date: 2022-02-13 01:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, teoría, servicios en red, smr]
---

{:.section}
## Introducción

En una red inalámbrica (WLAN, Wireless LAN) como su nombre indica, no se usan cables para conectar los equipos. Por ese motivo no buscaremos un conector donde enchufar nada, lo que veremos es una pequeña antena o a veces ni eso dado que no está visible.

Las comunicaciones inalámbricas se realizan generando ondas electromagnéticas que se propagan por el medio.

{:.question}
¿Qué significan las siglas WLAN?

{:.section}
## Adaptadores de red

Necesitamos que:

- El adaptador esté conectado físicamente el equipo y tenga instalada la antena (incorporada o independiente).
- Que el controlador software del adaptador (driver) esté instalado en el equipo.
- Es necesario que el adaptador esté en la zona local de cobertura de otros equipos también con adaptadores inalámbricos.
- El estándar que cumple (WiFi habitualmente).
- La velocidad máxima operación sea lo más cerca posible, en la actualidad decenas de megabits por segundo.

Estos adaptadores realizarán lo mismo que los cableados: Construcción de tramas, detección de errores, acceso al medio.

{:.section}
## Conexión física de los adaptadores de red

Dentro de los modelos posibles de adaptadores observamos los siguientes:

- Integrada en la placa (PCI, PCI Express): Las opciones pueden ser con antena incorporada visible o bien con antena incorporada oculta (normalmente en dispositivos portátiles).

![img-description](/assets/img/redes-inalambricas/pciAntenaDualVisible.jpg)
_PCI Express con antena dual visible_

![img-description](/assets/img/redes-inalambricas/pciAntenaOculta.webp)
_PCI Express con antena oculta_

- Cardbus (PCMCIA) se usaba en equipos portátiles. 

![img-description](/assets/img/redes-inalambricas/cardbus.jpg)
_Cardbus_

- Expresscard similar a la de los adaptadores cableados en este caso inalámbrico. 

![img-description](/assets/img/redes-inalambricas/expresscard.jpg)
_Expresscard_

{:.question}
¿Sabrías diferenciar entre un cardbus y un expresscard?

- USB, no necesita instalación del hardware, pudiendo usarse un cable prolongador para colocarlo en un punto con mejor señal.

![img-description](/assets/img/redes-inalambricas/usbConAntenaVisible.jpg)
_USB con antena visible_

![img-description](/assets/img/redes-inalambricas/usbConAntenaOculta.webp)
_USB con antena oculta_

Cómo podemos comprobar en lugar de un conector hembra para intermediar entre la tarjeta y la red cableada, lo que hace es utilizar un módulo de radio y una antena a través de la cual puedan recibirse o transmitirse ondas de radio.

{:.section}
## Estándares

El estándar más extendido es el IEEE 802.11 también conocido como WiFi. Existen múltiples variantes del estándar que ofertan distintas velocidades y distancias de cobertura. A cada variante se le asigna una letra y operar con características diferentes. Como ejemplo la siguiente tabla:

![img-description](/assets/img/redes-inalambricas/estandaresWifi.png)
_Características de los distintos estándares WiFi_

![img-description](/assets/img/redes-inalambricas/24ghzVs5ghz.png)
_Comparativa entre bandas de 2,4 GHz y 5 Ghz_

{:.question}
¿Qué estándares 802.11 utilizan la banda de 2,4 GHz? ¿Cuáles la banda de 5GHz?

{:.question}
¿Qué estándar 802.11 tiene mayor velocidad máxima? ¿802.11 b o 802.11 ac?

{:.section}
## Aspectos generales de la configuración de redes inalámbricas

Deberemos informar de estos aspectos:

- SSID
- Canal
- Seguridad

{:.subsection}
### SSID

SSID (Service Set Identifier o Identificador del conjunto de servicio) es el identificador que se le da a la red, puede estar compuesta de letras y números. Podemos configurar el punto de acceso (AP, Access Point) para que no publique el nombre de la red inalámbrica de modo que sólo quien conoces el SSID pueda conectarse a ella.

{:.question}
¿Se puede ocultar el SSID de una red?

{:.subsection}
### Canal

El canal es la frecuencia de la señal de radio en la que va a trabajar la red. Es posible elegir un canal entre varios, ello es debido a la posibilidad de solaparse con otras redes.

Las especificaciones 802.11b, 8yn utilizan un espectro de frecuencias que va desde los 2412 MHz hasta los 2472 MHz. Este espectro se divide en canales, cada uno de ellos con un ancho de 22 MHz.

Cuando diferentes redes operan en canales muy próximos, sus rendimientos caen debido al solapamiento de dichos canales, que provoca interferencias.

Como vemos en el gráfico inferior, existen combinaciones de canales que no se solapan entre sí. Generalmente, los dispositivos inalámbricos están configurados para operar automáticamente en los canales 1, 6 y 11.

![img-description](/assets/img/redes-inalambricas/canales.webp)
_Canales WiFi_

{:.question}
¿Cuántos canales hay en el WiFi de 2,4 GHz?

<details class="card mb-2">
  <summary class="card-header question">¿A partir de que dispositivo empieza a poder haber interferencias?</summary>

A partir del 4º.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Los estándares 802.11a y 802.11n sobre 5 Ghz utilizan un sistema de canales mas complejo de estudiar que los que trabajan con 2,4 GHz.

Cada país o región establece su lista de canales válidos en el espectro de los 5 GHz. En nuestro caso, para toda la Unión Europea se emplean canales que tienen una anchura de 20 MHz (desde el 36 hasta el 48) o de 40 MHz (desde el 52 hasta el 140).

Cuando se emplean canales de 5 GHz no existe solapamiento. Los canales están adyacentes unos a otros y no existen problemas de interferencias entre ellos.

{:.subsection}
### Seguridad

Es el mecanismo que se utiliza para evitar que equipos autorizados puedan usar la red. Tenemos tres posibles mecanismos:

- Sistemas de cifrado
- Autenticación
- Filtrado MAC

{:.subsubsection}
#### Sistemas de cifrado

En WPA/WPA2 la información que se intercambia entre estaciones y APs va cifrada, ofreciendo no sólo un mecanismo de control de acceso sino también un mecanismo para garantizar la privacidad de la información. Los dos sistemas de cifrados usados en WPA/WPA2 son:

- **TKIP**: Cifrado basado en el intercambio de claves entre cada estación y el AP (Access Point) en cada sesión. Generalmente, en sistemas WPA2 ya no se incorpora la encriptación TKIP, aunque todavía se conserva por compatibilidad.
- **AES**: más potente que TKIP, es el sistema más usado en la actualidad.

{:.subsubsection}
#### Sistemas de autenticación

Es decir, que el usuario de la red debe suministrar sus credenciales (usuario y contraseña).

- **WEP**: sistema de acceso con una clave de 64 Ó 128 bits (5ó 13 caracteres ASCII). Es muy compatible, pero se puede romper con facilidad. Es el único sistema que puede utilizarse en redes Ad Hoc y en adaptadores más antiguos.
- **WPA/WPA2**: sistemas de acceso a APs mucho más seguros que WEP. WPA2 es una mejora de WPA. Existen dos modalidades para cada una de ellas:
  - **WPA/WPA2 PSK** (PreShared Key) o PERSONAL: requiere una palabra de paso de 8 caracteres como minimo, la misma para todos los usuarios que quieren conectarse a la WLAN. El inconveniente es que si se revela públicamente la PSK (clave precompartida) hay que cambiarla y comunicarlo de alguna forma a todos los usuarios de la red.
  - **WPA/WPA2 ENTERPRISE** (o WPA/WPA2 a secas): se administran pares de nombres de usuario/contraseñas. Ofrece las siguientes ventajas:
    - **Mayor control**: se puede monitorizar quién accede, cuando, etc. 
    - **Mayor seguridad**: si un usuario revela su usuario y clave, basta con eliminarlo sin que esto afecte al resto.

{:.subsubsection}
#### Filtrado MAC

FILTRADO MAC: En un AP se puede configurar un sistema que permite establecer mecanismos de acceso al mismo basados en la dirección MAC (0 dirección física) de los adaptadores inalámbricos. Existen dos tipos de filtrado:

- **LISTA DE ACCESO** (o LISTA BLANCA): filtrado MAC basado en la confección de una lista de direcciones físicas cuyo acceso al AP esté permitido, mientras que el resto NO.
- **LISTA DE PROHIBIDOS** (o LISTA NEGRA): filtrado MAC basado en la confección de una lista de direcciones físicas cuyo acceso al AP esté prohibido, mientras que el resto NO. Teniendo en cuenta que existen formas de suplantar una dirección MAC mediante software, se antoja más útil el empleo de listas blancas que de listas negras.

{:.subsubsection}
#### Servicio RADIUS

El servicio RADIUS (Remote Autenthication Dial-In User Service) permite la autenticación personalizada de usuarios para la entrada en una red. Resulta especialmente útil en redes inalámbricas con WPA/WPA2 ENTERPRISE. Las características de un servicio RADIUS para redes con WPA/WPA2 son las siguientes:

- El listado de usuarios y contraseñas se almacenan en un servidor de claves (servidor AAA o servidor RADIUS).
- Los clientes RADIUS serán los puntos de acceso inalámbrico de la red.
- El servidor RADIUS comparte con cada uno de los clientes una clave secreta (o SECRETO PRECOMPARTIDO).
- El puerto por defecto para RADIUS es el 1645 en equipamiento Cisco y 1812 en el resto.

![img-description](/assets/img/redes-inalambricas/configuracionClienteRadiusGui.png)
_Configuración de un cliente RADIUS a través del cliente web_

![img-description](/assets/img/redes-inalambricas/configuracionServidorRadiusPacketTracer.png)
_Configuración del servidor RADIUS en Packet Tracer_

{:.subsubsection}
#### WPS

WPS (Wi-Fi Protected Setup): es un mecanismo incorporado en APs y routers inalámbricos para simplificar la conexión de estaciones inalámbricas en entornos domésticos o de pequeña oficina (o SOHO: Small Office, Home Office). **No añade seguridad extra**.

Existen diferentes formas de agregar dispositivos a una red Wi-Fi con WPS:

- Introduciendo un **PIN** del AP en el momento en el que una estación intenta conectarse. Es el mínimo método para ser compatible con WPS.
- PBC: se presiona un **botón** físico (o software) en el AP, y durante un corto espacio de tiempo (de 1 a 2 minutos), las estaciones en el alcance se pueden conectara é directamente pulsando otro botón en ellas. Poco seguro, pues una estación no permitida puede aprovechar ese tiempo para autenticarse.
- Si la estación y el AP son compatibles con la tecnología **NFC** (Near Field Communication, identificándose por radiofrecuencia), la mera proximidad de la estación al AP la identifica y la autentica.
- Introduciendo una memoria **USB** en el AP con las credenciales de la estación.

{:.question}
¿Añade WPS seguridad extra?

{:.subsection}
### Repetidores

Son dispositivos que permiten extender el área de cobertura de una red inalámbrica. Conforme la señal viaja por el medio va perdiendo potencia. Los repetidores permiten que esa distancia pueda ser mayor. Estos dispositivos pueden regenerar la señal entre clientes o entre clientes y puntos de acceso.

{:.subsection}
### Puntos de Acceso

Son dispositivos que permiten conectar una red inalámbrica con la red cableada. También hacen la función de concentrador inalámbrico es decir de switch inalámbrico.

{:.question}
¿Qué es un concentrador?

Normalmente en el mercado encontramos routers con diferentes interfaces, una de ellas es la interfaz inalámbrica que hace de punto de acceso a todos los clientes inalámbricos. Ejemplo: El router de nuestra compañía telefónica.

Debemos tener en cuenta que cuantos más clientes se conecten en la red cableada a través de un punto de acceso más lento es el acceso.

{:.subsection}
### Puentes inalámbricos

Los puentes inalámbricos son elementos que permiten la interconexión de dos redes, inalámbrica con inalámbrica o inalámbrica con cableada, que pueden usar recientes arquitecturas de red o distintos protocolos. La diferencia con respecto a las cableadas es que estos puentes dan también conexión inalámbrica.

Uno de los usos más comunes de los puentes inalámbricos es el de conectar dos redes cableadas mediante un enlace inalámbrico.

{:.section}
## Topologías de red WLAN

En las redes inalámbricas (WLAN, Wireless LAN) encontramos distintas configuraciones y topologías en función de cómo estén distribuidos los clientes y los puntos de acceso.

Fundamentalmente hay dos configuraciones:

- Infraestructura
- Ad hoc

{:.subsection}
### Infraestructura

Es aquella en la que uno de los nodos de red se comunican con su punto de acceso. Los nodos no se comunican todos entre sí directamente mediante enlaces punto a punto, si no siempre a través del punto de acceso.

{:.subsection}
### Ad hoc

Todas las estaciones están conectadas entre sí (si el alcance lo permite) sin necesidad de un dispositivo intermediario de conexiones inalámbricas, formando una malla.

![img-description](/assets/img/redes-inalambricas/topologiaAdHoc.png)
_Topología Ad Hoc_

Las estaciones tienden a conectarse a las estaciones más cercanas. Aunque la instalación es sencilla y barata, proporciona menor rendimiento y seguridad que una red en infraestructura.

<details class="card mb-2">
  <summary class="card-header question">¿Qué significa "ad hoc" en español?</summary>
  <div class="card-body" markdown="1">

"Ad hoc" significa improvisado o improvisado, por lo que una red inalámbrica ad hoc es un tipo de red improvisada de dispositivo a dispositivo a demanda.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


{:.question}
¿Qué es Wifi Mesh? ¿Es un sistema ad hoc?

{:.section}
## Instalación de una red inalámbrica

La instalación de una red inalámbrica no varía mucho respecto a la instalación de una por cable. Los principales pasos son los siguientes:

- Instalación el hardware de red:
  - Instalación de los adaptadores de red WiFi.
  - Instalación y configuración del punto de acceso inalámbrico.
  - Encender los equipos que integran la red WiFi.
  - Configurar el sistema operativo.
- Instalación del software de red:
  - Instalación de los controladores de los adaptadores de red WiFi.
  - Configuración de TCP/IP.
  - Dar un nombre al equipo y al grupo de trabajo.
  - Conectarse a la red inalámbrica. Por ejemplo usando la herramienta de detección de redes WiFi.
  - Proteger la red inalámbrica, es decir, dotar de seguridad.

{:.section}
## Aplicaciones de las WLAN

Las aplicaciones más extendidas en redes locales inalámbricas son:

- **Enlace de áreas físicas independientes mediante puntos de acceso**. Es el caso de un edificio que tiene varias redes inalámbricas unidas mediante una red cableada.
- **Enlace o interconexión entre edificios**. Partiendo de dos redes LAN – bien cableadas o bien inalámbricas – se usa un enlace inalámbrico para unirlas utilizando puntos de acceso y puentes.
- **Redes inalámbricas en la misma área física**. Cuando queremos que dos o más redes inalámbricas puedan coexistir de forma simultánea en la misma área física de cobertura de sus antenas. Asignando canales en su configuración para poder operar en su ancho de banda.

## Bibliografía

- [UT4: REDES INALÁMBRICAS](https://docs.google.com/presentation/d/1WtQCC0onu9bGuN6yeUlCEdbqe7srCWYqWqTmaTPPV2c/present#slide=id.i0)

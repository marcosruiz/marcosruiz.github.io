---
title: Redes inalámbricas
date: 2022-02-13 01:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [gnu linux, comandos, terminal, bash, redes locales, teoría]
---

## Introducción

Hemos visto en el punto anterior cómo hacer una red cableada interconectando equipos, ahora vamos a ver cómo se puede hacer esto mismo con una red inalámbrica. 

En una red inalámbrica (WLAN – Wireless LAN) como su nombre indica, no se usan cables para conectar los equipos. Por ese motivo no buscaremos un conector donde enchufar nada, lo que veremos es una pequeña antena o a veces ni eso dado que no está visible. 

Las comunicaciones inalámbricas se realizan generando ondas electromagnéticas que se propagan por el medio. 

## Adaptadores de red

Necesitamos que: 

- El adaptador esté conectado físicamente el equipo y tenga instalada la antena (incorporada o independiente). 
- Que el controlador software del adaptador (driver) esté instalado en el equipo. 
- Es necesario que el adaptador esté en la zona local de cobertura de otros equipos también con adaptadores inalámbricos.
- El estándar que cumple (WiFi habitualmente).
- La velocidad máxima operación sea lo más cerca posible, en la actualidad decenas de megabits por segundo.

Estos adaptadores realizarán lo mismo que los cableados: Construcción de tramas, detección de errores, acceso al medio. 

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

- USB, no necesita instalación del hardware, pudiendo usarse un cable prolongador para colocarlo en un punto con mejor señal. 

![img-description](/assets/img/redes-inalambricas/usbConAntenaVisible.jpg)
_USB con antena visible_

![img-description](/assets/img/redes-inalambricas/usbConAntenaOculta.webp)
_USB con antena oculta_

Cómo podemos comprobar en lugar de un conector hembra para intermediar entre la tarjeta y la red cableada, lo que hace es utilizar un módulo de radio y una antena a través de la cual puedan recibirse o transmitirse ondas de radio.

El estándar más extendido es el IEEE 802.11 también conocido como WiFi. Existen múltiples variantes del estándar que ofertan distintas velocidades y distancias de cobertura. A cada variante se le asigna una letra y operar con características diferentes. Como ejemplo la siguiente tabla:

![img-description](/assets/img/redes-inalambricas/estandaresWifi.png)
_Características de los distintos estándares WiFi_

## Aspectos generales de la configuración de redes inalámbricas

Deberemos informar de estos aspectos:

- **SSID** (Service Set Identifier o Identificador del conjunto de servicio): Es el nombre que se le da a la red, puede estar compuesta de letras y números. Podemos configurar el punto de acceso para que no publique el nombre de la red inalámbrica de modo que sólo quien conoces el SSID pueda conectarse a ella.
- **Canal**: es la frecuencia de la señal de radio en la que va a trabajar la red. Es posible elegir un canal entre varios, ello es debido a la posibilidad de solaparse con otras redes. 
- **Seguridad**: es el mecanismo que se utiliza para evitar que equipos autorizados puedan usar la red. Tenemos tres posibles mecanismos: 
    - **Cifrado de la comunicación**: usar como método WPA2. 
    - **Autenticación**: es decir que el usuario de la red debe suministrar sus credenciales (usuario y contraseña). 
    - **Lista de acceso**: creamos una lista de aquellos equipos que pueden utilizar la red inalámbrica. 

Dependiendo del sistema operativo utilizar la forma de realizar la configuración difiere un poco, en Ubuntu usamos el comando `iwconfig` para obtener detalles de la interfaz inalámbrica.

En Windows la manera más sencilla es hacerlo de forma automática. Pulsando sobre el icono que representa un globo terráqueo con el botón derecho del ratón aparecen las opciones.

## Dispositivos de interconexión de redes inalámbricas

Para todas las variantes de WiFi tenemos una serie de conceptos comunes:

- Estaciones dispositivos con interfaz inalámbrica.
- Podemos definir los tipos de medios por radiofrecuencia y por infrarrojos
- Los puntos de acceso (AP, Access Point) que realiza las funciones de un puente, pudiendo conectar tu redes con niveles de enlace distintos y realizar las correspondientes conversiones de tramas. Suele ser el dispositivo que proporciona acceso cableado a una red inalámbrica.
- Conjunto de servicio básico (BSS, Basic Service Set) que se define como el grupo de estaciones que se comunican entre sí. Hay dos tipos:
    - Independientes o ad hoc: cuando las estaciones se comunican directamente entre sí sin usar puntos de acceso.
    - Infraestructura: cuando las estaciones se comunican a desde un punto de acceso. Y es el sistema habitual en la mayoría de las redes inalámbricas.
- Conjunto de servicio extendido (ESS) conocido como la unión de varios BSS.
- El sistema de distribución en su sistema que interconectar un conjunto de BSS y una LAN para crear un ESS.
- El área de servicio básico (BSA) es la zona donde se comunican las estaciones de una misma BSS. Se definen dependiendo del medio.
- La movilidad, que indica la capacidad de cambiar la ubicación de los terminales.
- Los límites de la red son difusos ya que pueden solaparse diferentes BSS.

### Repetidores

Son dispositivos que permiten extender el área de cobertura de una red inalámbrica. Conforme la señal viaja por el medio va perdiendo potencia por lo que los clientes no sepan distancia todo lo que carrillo. Los repetidores permiten que esa distancia pueda ser mayor. Estos dispositivos pueden regenerar la señal entre clientes o entre clientes y puntos de acceso. 

### Puntos de Acceso

Son dispositivos que permiten conectar una red inalámbrica con la red cableada. También hacen la función de concentrador inalámbrico es decir de switch inalámbrico.

Normalmente en el mercado encontramos routers con diferentes interfaces, una de ellas es la interfaz inalámbrica que hace de punto de acceso a todos los clientes inalámbricos. Ejemplo: el router de nuestra compañía telefónica.

Debemos tener en cuenta que cuantos más clientes se conecten en la red cableada a través de un punto de acceso más lento es el acceso.

### Puentes Inalámbricos

Los puentes inalámbricos son elementos que permiten la interconexión de dos redes, inalámbrica con inalámbrica o inalámbrica con cableada, que pueden usar recientes arquitecturas de red o distintos protocolos. La diferencia con respecto a las cableadas es que estos puentes dan también conexión inalámbrica.

Uno de los usos más comunes de los puentes inalámbricos es el de conectar dos redes cableadas mediante un enlace inalámbrico.

## Topologías de red WLAN

En las redes inalámbricas (WLAN, Wireless LAN) encontramos distintas configuraciones y topologías en función de cómo estén distribuidos los clientes y los puntos de acceso.

Fundamentalmente hay dos configuraciones:

- **Infraestructura**: es aquella en la que uno de los nodos de red que su punto de acceso. Los nodos no se comunican todos entre sí directamente mediante enlaces punto a punto, si no siempre a través del punto de acceso.
- **Independientes o ad hoc**: cuando las estaciones se comunican directamente entre sí (punto a punto) sin usar puntos de acceso. Es una red con topología en malla, en la que los enlaces se establecen entre equipos que se encuentran en la misma área de cobertura.

## Instalación de una red inalámbrica

La instalación de una red inalámbrica no varía mucho respecto a la instalación de una por cable. Los principales pasos son los siguientes: 
- Instalación el hardware de red: 
    - Instalación de los adaptadores de red WiFi, 
    - Instalación y configuración del punto de acceso inalámbrico. 
    - Encender los equipos que integran la red WiFi y 
    - Configurar el sistema operativo.
- Instalación del software de red: 
    - Instalación de los controladores de los adaptadores de red WIFI.
    - Configuración de TCP/IP.
    - Dar un nombre al equipo y al grupo de trabajo.
    - Conectarse a la red inalámbrica. Por ejemplo usando la herramienta de detección de redes WiFi.
    - Proteger la red inalámbrica, es decir, dotar de seguridad. 


## Aplicaciones de las WLAN

Las aplicaciones más extendidas en redes locales inalámbricas son:
- Enlace de áreas físicas independientes mediante puntos de acceso. Es el caso de un edificio que tiene varias redes inalámbricas unidas mediante una red cableada.
- Enlace o interconexión entre edificios. Partiendo de dos redes LAN – bien cableadas o bien inalámbricas – se usa un enlace inalámbrico para unirlas utilizando puntos de acceso y puentes. 
- Redes inalámbricas en la misma área física. Cuando queremos que dos o más redes inalámbricas puedan coexistir de forma simultánea en la misma área física de cobertura de sus antenas. Asignando canales en su configuración para poder operar en su ancho de banda.

## Bibliografía

- [](https://docs.google.com/presentation/d/1WtQCC0onu9bGuN6yeUlCEdbqe7srCWYqWqTmaTPPV2c/present#slide=id.i0
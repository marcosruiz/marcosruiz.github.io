---
title: "Tutorial: Introducción a Packet Tracer"
date: 2022-01-19 23:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, tutorial]
---

## ¿Qué es Packet Tracer?

Una de las herramientas más utilizadas en el mundo orientadas a la simulación de redes de datos es Packet Tracer, el cual consiste en un simulador gráfico de redes desarrollado y utilizado por Cisco como herramienta de entrenamiento para obtener la certificación CCNA. Packet Tracer, es un simulador de entorno de redes de comunicaciones de fidelidad media, que permite crear topologías de red mediante la selección de los dispositivos y su respectiva ubicación en un área de trabajo, utilizando una interfaz gráfica.

Packet Tracer es un simulador que permite realizar el diseño de topologías, la configuración de dispositivos de red, así como la detección y corrección de errores en sistemas de comunicaciones. Ofrece como ventaja adicional el análisis de cada proceso que se ejecuta en el programa de acuerdo a la capa de modelo OSI que interviene en dicho proceso; razón por la cuál es una herramienta de gran ayuda en el estudio y aprendizaje del funcionamiento y configuración de redes telemáticas, adicionalmente, es un programa muy útil para familiarizarse con el uso de los comandos del IOS (El sistema operativo de los dispositivos de red de Cisco).

## Descargar e instalar Packet Tracer

Antes de poder descargar Packet Tracer es necesario registrarse en un curso de NetAcad. Para ello iremos al siguiente enlace [Introduction to Packet Tracer](https://www.netacad.com/courses/packet-tracer/introduction-packet-tracer), bajamos hasta que encontremos el botón de "Sign up today!", hacemos click en él. Aparecerá un nuevo botón que pondrá "English" y también hacemos click en él.

![img-description](/assets/img/tutorial-packet-tracer/sign-up-today.png)
_Botón para crear una cuenta y matricularnos en un curso_

Una vez estamos inscritos en el curso deberemos ver algo parecido a esto:

![img-description](/assets/img/tutorial-packet-tracer/curso.png)
_Curso de NetAcad_


Una vez tenemos una cuenta y estamos inscritos en un curso puedes ir al siguiente enlace [Download Cisco Packet Tracer](https://www.netacad.com/portal/resources/packet-tracer) y descargar Packet Tracer. Debes seleccionar el programa para el sistema operativo que tengas.

![img-description](/assets/img/tutorial-packet-tracer/descargas.png)
_Descargas de Packet Tracer_

Una vez hemos descargado el .deb o el .exe hacer doble click en él e instalarlo siguiendo los pasos pertinentes.


## Interfaz de usuario

Esta herramienta software ofrece una interfaz basada en ventanas, la cual ofrece al usuario facilidades para el diseño, configuración y simulación de redes. Presenta tres modos de operación: 

- **Modo topology** (topología), que aparece en la ventana de inicio cuando se abre el programa, 
- **Modo simulation** (simulación), al cual se accede cuando se ha creado el modelo de la red; 
- **Modo realtime** (tiempo real), en donde se pueden programar mensajes SNMP (Ping), para detectar los dispositivos que están activos en la red y si existen algún problema de direccionamiento o tamaño de tramas entre las conexiones. 

A continuación se describirá brevemente cada uno de los modos de operación de Packet Tracer.

### Modo Topology

En el Modo Topology, se realizan tres tareas principales, la primera de ellas es el diseño de la red mediante la creación y organización de los dispositivos; por consiguiente en este modo de operación se dispone de un área de trabajo y de un panel de herramientas en donde se encuentran los elementos de red disponibles en Packet Tracer.

![img-description](/assets/img/tutorial-packet-tracer/secciones.png)
_Modo Topology_

En la figura se identifican claramente 4 secciones: 

- **Sección 1**: Consiste en la barra de herramientas con la cual se puede crear un nuevo esquema, guardar una configuración, zoom, entre otras funciones. 
- **Sección 2**: Corresponde al área de trabajo, sobre la cual se realiza el dibujo del esquema topológico de la red. 
- **Sección 3**: Sección correspondiente al grupo de elementos disponibles para la implementación de cualquier esquema topológico, el cual incluye: Routers, Switches, Cables para conexión, dispositivos terminales (PCs, impresoras, Servidores), Dispositivos Inalámbricos, entre otros. 
- **Sección 4**: Lista el conjunto de elementos que hacen parte del dispositivo seleccionado en la sección 3. A continuación se ilustran el conjunto de elementos que hacen parte de cada grupo de dispositivos.
    - Routers: Series 1800, 2600, 2800, Genéricos
    - Switches: Series 2950,2960, Genérico, Bridge
    - Dispositivos Inalámbricos: Access-Point, Router Inalámbrico
    - Tipos de conexiones disponibles: Cable Serial, consola, directo, cruzado, fibra óptica, teléfono, entre otras.
    - Dispositivos terminales: PC, Servidores, Impresoras, Teléfonos IP

![img-description](/assets/img/tutorial-packet-tracer/routers.png)
_Routers_

![img-description](/assets/img/tutorial-packet-tracer/switches.png)
_Switches_

![img-description](/assets/img/tutorial-packet-tracer/wireless-devices.png)
_Dispositivos Inalámbricos_

![img-description](/assets/img/tutorial-packet-tracer/connections.png)
_Tipos de conexiones disponibles_

![img-description](/assets/img/tutorial-packet-tracer/end-devices.png)
_Dispositivos terminales_

La herramienta está diseñada para orientar al estudiante en su manipulación adecuada. Dentro del modo de operación topology, existe una herramienta que permite hacer de forma automática, las conexiones entre los dispositivos de la red, ésta opción se activa cuando se selecciona el Simple Mode (modo simple) y esta selección hace que el programa sea el que elija tipo de enlace, de acuerdo con la conexión que se va a realizar.

Cuando se desactiva el Simple Mode, el usuario debe seleccionar el enlace y los puertos de los dispositivos por los cuales se efectuará dicha conexión.

Adicionalmente, re recomienda que en las primeras experiencias con el programa, se debe trabajar y configurar manualmente los dispositivos y enlaces, es decir con el Simple Mode inactivo; debido a que es así como realmente interactuará el usuario con cada una de las conexiones a la hora de realizar un montaje real con equipos de éste tipo.

### Modo Simulation

En el Modo Simulation, se crean y se programan los paquetes que se van a transmitir por la red que previamente se ha modelado.

![img-description](/assets/img/tutorial-packet-tracer/modo-simulacion.png)
_Modo Simulation_

Dentro de este modo de operación se visualiza el proceso de transmisión y recepción de información haciendo uso de un panel de herramientas que contiene los controles para poner en marcha la simulación.

Una de las principales características del modo de operación simulation, es que permite desplegar ventanas durante la simulación, en las cuales aparece una breve descripción del proceso de transmisión de los paquetes; en términos de las capas del modelo OSI. En a siguiente figura se ilustra un ejemplo en el que se envía un paquete desde el PC0 al PC5.

![img-description](/assets/img/tutorial-packet-tracer/modo-simulacion-2.png)
_Modo Simulación con ventana describiendo el proceso de transmisión de paquetes_

### Modo Realtime

Y finalmente el Modo Realtime, está diseñado para enviar pings o mensajes SNMP, con el objetivo de reconocer los dispositivos de la red que están activos, y comprobar que se puedan transmitir paquetes de un hosts a otro(s) en la red.

![img-description](/assets/img/tutorial-packet-tracer/modo-operacion-tiempo-real.png)
_Modo Realtime_

Dentro del modo Realtime, se encuentra el cuadro de registro Ping log, en donde se muestran los mensajes SNMP que han sido enviados y se detalla además el resultado de dicho proceso; con base en este resultado se puede establecer cuál o cuales de los terminales de la red están inactivos, a causa de un mal direccionamiento IP, o diferencias en el tamaño de bits de los paquetes. En la siguiente figura se ilustra claramente un ejemplo de una red, en donde se ingresa a uno de los equipos (PC5) y se hace PING al equipo PC0.


## Configuración de routers en Packet Tracer

En la pestaña CLI tenemos un terminal para administrar los routers. Desde este terminal podemos escribir comandos para configurar el router. A continuación se explican unos básicos. 

El siguiente comando habilita la administración del router

```console
Router>enable
```

El siguiente comando muestra la tabla de enrutamiento:

```console
Router#show ip route
```

El siguiente comando guarda la configuración actual como configuración de inicio. De esta manera no se perderá la configuración que hemos hecho aunque reiniciemos el router.

```console
copy running-config startup-config
```


## Errores habituales

- Cuando hacemos login en la aplicación de Packet Tracer o en la web de Cisco aparece el mensaje "Sorry, we can't find a NetAcad account associated with this Cisco account.". Para solucionar este problema lee la sección "Descargar e instalar Packet Tracer" de este artículo.
- Si da problemas al instalar la última versión de Packet Tracer, utilizar el comando `dpkg-reconfigure`.
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

Una vez tenemos una cuenta y estamos inscritos en un curso puedes ir al siguiente enlace [Download Cisco Packet Tracer](https://www.netacad.com/portal/resources/packet-tracer) y descargar la última versión de Packet Tracer. Debes seleccionar el programa para el sistema operativo que tengas.

![img-description](/assets/img/tutorial-packet-tracer/descargas.png)
_Descargas de Packet Tracer_

## Instalar Packet Tracer (Windows)

Haz click en [este enlace](https://www.filehorse.com/es/descargar-cisco-packet-tracer-32/27899/descargar/) y descarga Packet Tracer 6.2.

Si hemos descargado el .exe para Windows hacemos doble click en él y lo instalamos siguiendo los pasos pertinentes.

## Instalar Packet Tracer (Ubuntu Deb)

Si hemos descargado el .deb deberemos utilizar abrir el terminal y hacer un `cd` al directorio donde esté el fichero .deb descargado. Una vez ahi ejecutamos la siguiente instrucción `sudo dpkg -i <nombreDelFicheroDeb>`. Por ejemplo: `sudo dpkg -i CiscoPacketTracer_811_Ubuntu_64bit.deb`.

Si tras esto no funciona es recomendable probar el comando `sudo dpkg-reconfigure packettracer`.

## Instalar Packet Tracer (Ubuntu AppImage)

Si aún asi no te funciona puedes generar un fichero AppImage que es un ejecutable que debería funcionar en cualquier distribución GNU Linux.

Descargamos el programa que va a generar nuestro AppImage:

```console
git clone https://github.com/konradmb/PacketTracer-AppImage.git
cd PacketTracer-AppImage/
wget https://github.com/AppImage/pkg2appimage/raw/master/pkg2appimage
chmod +x pkg2appimage
```

Copiamos el siguiente fichero en PacketTracer-AppImage/PacketTracer.yml:

```yaml
# Version: 8.1.1
app: PacketTracer

ingredients:
  dist: jessie
  sources:
    - deb http://deb.debian.org/debian jessie main
  packages:
    - libpng12-0
    - libssl1.0.0
    - python3
    - libdouble-conversion1
    - qt-at-spi
  script:
    - FILENAME='CiscoPacketTracer_811_Ubuntu_64bit.deb'
    - URL='http://cs3.calstatela.edu/~egean/cs4471/software/Cisco%20Packet%20Tracer%208.1/CiscoPacketTracer_810_Ubuntu_64bit.deb'
    - CHECKSUM='8eae1801fb81dca8ee0bf5e0c892a386f456879e'
    - [ -f ../"$FILENAME" ] && ln -sf ../"$FILENAME" .
    - [ -f ../"$FILENAME" ] || wget -c "$URL"
    - echo "$CHECKSUM $FILENAME" > checksum
    - sha1sum -c checksum
    - [ -f ../etc/PacketTracerSettingsFix.py ] && cp ../etc/PacketTracerSettingsFix.py .
    - [ -f ../etc/PacketTracerSettingsFix.py ] || wget -c https://raw.githubusercontent.com/konradmb/PacketTracer-AppImage/master/etc/PacketTracerSettingsFix.py
    - chmod +x PacketTracerSettingsFix.py
    
script:
  # Fix overly restrictive permissions - we should be able do delete directory
  - find opt/pt/saves opt/pt/templates -type d -exec chmod +w {} +
  # Copy helper script to bin
  - cp ../PacketTracerSettingsFix.py usr/bin/
  # Copy .desktop file, icon and libs from extracted archive
  - cp usr/share/applications/cisco-pt.desktop ./PacketTracer.desktop
  - cp opt/pt/art/app.png ./PacketTracer.png
  - mkdir -p usr/lib/x86_64-linux-gnu/
  - mv opt/pt/bin/*.so.* usr/lib/x86_64-linux-gnu/
  # # Remove unused binaries
  - rm opt/pt/bin/linguist opt/pt/bin/meta
  # Fix wrong permissions - images shouldn't be executable. Cisco still cannot into permissions, even with deb. ;)
  - find opt/pt/help/default/images/ -type f -exec chmod -x {} +
  - chmod -x opt/pt/art/ComponentBox/*.png
  - chmod -x opt/pt/art/Toolbar/*.png
  # Add wrapper
  - cat > usr/bin/PacketTracerWrapper << EOF
  - #!/bin/sh
  # Fool PacketTracer into thinking that it's been already running from this directory
  - cd ..
  - usr/bin/python3 usr/bin/PacketTracerSettingsFix.py 8.1
  - cd opt/pt/bin
  - export PT8HOME="$(readlink -f ..)"
  - QT_AUTO_SCREEN_SCALE_FACTOR=1 ./PacketTracer "$@"
  - EOF
  # Make it executable
  - chmod +x usr/bin/PacketTracerWrapper
  # Patch PT bin - change $HOME/.packettracer string to something else
  # New file name must have the same length
  - sed -i 's!/.packettracer!/.ptappimage00!g' opt/pt/bin/PacketTracer
  # Change icon and executable path
  - sed -i 's!Icon=/opt/pt/art/app.png!Icon=PacketTracer.png!' PacketTracer.desktop
  - sed -i 's!Exec=/opt/pt/packettracer %f!Exec=PacketTracerWrapper %f!' PacketTracer.desktop
  - echo 'Categories=Education;ComputerScience;' >> PacketTracer.desktop

```
{: file="PacketTracer.yml" }

Instalamos las dependencias:

```console
sudo apt update
sudo apt install imagemagick
sudo apt install desktop-file-utils
sudo apt install binutils
```

Copiamos el fichero CiscoPacketTracer_811_Ubuntu_64bit.deb junto al fichero PacketTracer.yml.

Creamos el fichero AppImage:

```console
./pkg2appimage PacketTracer.yml
```

Tras esto debería haber un ejecutable (.AppImage) dentro del directorio `out/`.

## Interfaz de usuario

Esta herramienta software ofrece una interfaz basada en ventanas, la cual ofrece al usuario facilidades para el diseño, configuración y simulación de redes. Presenta tres modos de operación: 

- **Modo topology** (topología), que aparece en la ventana de inicio cuando se abre el programa, 
- **Modo simulation** (simulación), al cual se accede cuando se ha creado el modelo de la red; 
- **Modo realtime** (tiempo real), en donde se pueden programar mensajes SNMP (Ping), para detectar los dispositivos que están activos en la red y si existen algún problema de direccionamiento o tamaño de tramas entre las conexiones. 

A continuación se describirá brevemente cada uno de los modos de operación de Packet Tracer.

### Modo Topology

En el **Modo Topology**, se realizan tres tareas principales, la primera de ellas es el diseño de la red mediante la creación y organización de los dispositivos; por consiguiente en este modo de operación se dispone de un área de trabajo y de un panel de herramientas en donde se encuentran los elementos de red disponibles en Packet Tracer.

![img-description](/assets/img/tutorial-packet-tracer/secciones.png)
_Modo Topology_

En la figura se identifican claramente 4 secciones: 

- **Sección 1**: Consiste en la barra de herramientas con la cual se puede crear un nuevo esquema, guardar una configuración, zoom, entre otras funciones. 
- **Sección 2**: Corresponde al área de trabajo, sobre la cual se realiza el dibujo del esquema topológico de la red. 
- **Sección 3**: Sección correspondiente al grupo de elementos disponibles para la implementación de cualquier esquema topológico, el cual incluye: Routers, Switches, Cables para conexión, dispositivos terminales (PCs, impresoras, Servidores), Dispositivos Inalámbricos, entre otros. 
- **Sección 4**: Lista el conjunto de elementos que hacen parte del dispositivo seleccionado en la sección 3. A continuación se ilustran el conjunto de elementos que hacen parte de cada grupo de dispositivos.
    - **Routers**: Series 1800, 2600, 2800, Genéricos.
    - **Switches**: Series 2950,2960, Genérico, Bridge.
    - **Dispositivos** Inalámbricos: Access-Point, Router Inalámbrico.
    - **Tipos de conexiones disponibles**: Cable Serial, consola, directo, cruzado, fibra óptica, teléfono, entre otras.
    - **Dispositivos terminales**: PC, Servidores, Impresoras, Teléfonos IP.
    - **Dispositivos Adicionales**: PC con tarjeta inalámbrica.

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

![img-description](/assets/img/tutorial-packet-tracer/custom-made-devices.png)
_Dispositivos Adicionales_

La herramienta está diseñada para orientar al estudiante en su manipulación adecuada. Dentro del modo de operación topology, existe una herramienta que permite hacer de forma automática, las conexiones entre los dispositivos de la red, ésta opción se activa cuando se selecciona el Simple Mode (modo simple) y esta selección hace que el programa sea el que elija tipo de enlace, de acuerdo con la conexión que se va a realizar.

Cuando se desactiva el Simple Mode, el usuario debe seleccionar el enlace y los puertos de los dispositivos por los cuales se efectuará dicha conexión.

Adicionalmente, re recomienda que en las primeras experiencias con el programa, se debe trabajar y configurar manualmente los dispositivos y enlaces, es decir con el Simple Mode inactivo; debido a que es así como realmente interactuará el usuario con cada una de las conexiones a la hora de realizar un montaje real con equipos de éste tipo.

### Modo Simulation

En el **Modo Simulation**, se crean y se programan los paquetes que se van a transmitir por la red que previamente se ha modelado.

![img-description](/assets/img/tutorial-packet-tracer/modo-simulacion.png)
_Modo Simulation_

Dentro de este modo de operación se visualiza el proceso de transmisión y recepción de información haciendo uso de un panel de herramientas que contiene los controles para poner en marcha la simulación.

Una de las principales características del modo de operación simulation, es que permite desplegar ventanas durante la simulación, en las cuales aparece una breve descripción del proceso de transmisión de los paquetes; en términos de las capas del modelo OSI. En a siguiente figura se ilustra un ejemplo en el que se envía un paquete desde el PC0 al PC5.

![img-description](/assets/img/tutorial-packet-tracer/modo-simulacion-2.png)
_Modo Simulación con ventana describiendo el proceso de transmisión de paquetes_

### Modo Realtime

Y finalmente el **Modo Realtime**, está diseñado para enviar pings o mensajes SNMP, con el objetivo de reconocer los dispositivos de la red que están activos, y comprobar que se puedan transmitir paquetes de un hosts a otro(s) en la red.

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
Router#copy running-config startup-config
```

## Configuración de interfaz en Packet Tracer

Para ver siempre las interfaces ir a Options -> Preferences -> Interface,
y activar la opción "Always Show Port Labels in Logical Workspace". Esto nos simplificará mucho el trabajo.

## Errores habituales

- Cuando hacemos login en la aplicación de Packet Tracer o en la web de Cisco aparece el mensaje "Sorry, we can't find a NetAcad account associated with this Cisco account.". Para solucionar este problema lee la sección "Descargar e instalar Packet Tracer" de este artículo.
- Si da problemas al instalar la última versión de Packet Tracer, utilizar el comando `dpkg-reconfigure`.
- Si no puedes hacer login para matricularte en un curso tendrás que probar a recuperar la cuenta.

## Bibliografía

- [AppImage for Cisco Packet Tracer](https://github.com/konradmb/PacketTracer-AppImage)
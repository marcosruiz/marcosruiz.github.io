---
title: "Seguridad activa de acceso a redes"
date: 2022-12-19 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría, seguridad activa]
img_path: /assets/img/seguridad-activa-acceso-redes/
---

{:.section}
## Redes Cableadas

Hay que protegerse de los ataques que vengan por la red. Una máquina que ofrece servicios TCP/IP debe abrir ciertos puertos. A estos puertos pueden solicitar conexión máquinas fiables siguiendo el protocolo estándar, o máquinas maliciosas siguiendo una variación del protocolo que provoca un fallo en nuestro servidor. Las consecuencias de este fallo serán, como mínimo, que el servicio queda interrumpido; pero en algunos casos el atacante puede tomar el control de la máquina (por eso cada vez más los servicios se ejecutan con el mínimo de privilegios).

Las redes conmutadas tienen sus propias vulnerabilidades:

- Hay que **proteger el switch físicamente**: encerrarlo en un armario/rack con llave dentro de una sala con control de acceso. Así evitamos no solo el robo, sino que alguien acceda al botón de reset y lo configure a su modo.
- Hay que **proteger el switch lógicamente**: poner usuario/contraseña para acceder a su configuración.
- Hay que **hacer grupos de puertos**, porque en un switch suelen estar conectados grupos de máquinas que nunca necesitan comunicarse entre sí (por ejemplo, el departamento de marketing con el departamento de soporte). Debemos aislarlas para evitar problemas de rendimiento y seguridad.
- Hay que **controlar** qué equipos se pueden conectar y a qué puertos. Por el motivo anterior, al grupo de marketing solo deberían entrar máquinas de marketing.

{:.subsection}
### VLAN

Los grupos de puertos que hacemos en un switch gestionable para aislar un conjunto de máquinas constituyen una VLAN (LAN virtual). Se le llama virtual porque parece que están en una LAN propia, que la red está montada para ellos solos. Como hemos dicho antes, utilizar VLAN mejora el rendimiento y la seguridad, porque esas máquinas solo hablan entre ellas y nadie extraño las escucha. Al mismo tiempo, si ocurre un problema en una VLAN (un ataque, un problema de un servidor DHCP descontrolado), las otras VLAN no se ven afectadas. Pero un exceso de tráfico en una VLAN sí afectaría a todos porque, al fin y al cabo, comparten el switch.

Una VLAN basada en grupos de puertos no queda limitada a un switch; uno de los puertos puede estar conectado al puerto de otro switch, y, a su vez, ese puerto forma parte de otro grupo de puertos, etc.

Para interconectar VLAN (capa 2) generalmente utilizaremos un router (capa 3).

Capa 2. En el modelo TCP/IP la capa 2 o capa de enlace tiene una visión local de la red: sabe cómo intercambiar paquetes de datos (llamados tramas) con los equipos que están en su misma red. La comunicación es directa entre origen y destino (aunque cruce uno o varios switch).

Capa 3. La capa 3 o capa de red tiene una visión global de la red: sabe cómo hacer llegar paquetes de datos hasta equipos que no están en su misma red. La comunicación es indirecta, necesita pasar por una máquina más: el router.

{:.subsection}
### Autenticación en el puerto

Cualquiera puede meterse en un despacho, desconectar el cable RJ45 del ordenador del empleado, conectarlo a su portátil y ya estaría en esa VLAN. Como sigue siendo un switch, no podrá escuchar el trafico normal de los demás ordenadores de la VLAN, pero sí lanzar ataques contra ellos.

Para evitarlo, los switch permiten establecer autenticación en el puerto: solo podrá conectar aquel cuya MAC esté dentro de una lista definida en el propio switch, o, dado que las MAC son fácilmente falsificables (las tarjetas emiten los paquetes que genera el software de red del sistema operativo), el que sea autentificado mediante RADIUS en el estándar 802.1X.

{:.section}
## Redes inalámbricas

Los miedos a que las comunicaciones sean escuchadas por terceros no autorizados han desaparecido en las redes cableadas, pero están plenamente justificados en redes inalámbricas o WLAN (Wireless LAN), porque de nuevo el medio de transmisión (el aire) es compartido por todos los equipos y cualquier tarjeta en modo promiscuo puede perfectamente escuchar lo que no debe.

Aunque se pueden hacer redes inalámbricas entre equipos (redes ad hoc), lo más habitual son las redes de tipo infraestructura: un equipo llamado access point (AP, punto de acceso) hace de switch, de manera que los demás ordenadores se conectan a él, le envían sus paquetes y él decide cómo hacerlos llegar al destino, que puede ser enviarlo de nuevo al aire o sacarlo por el cable que le lleva al resto de la red. Salir por el cable es la configuración más habitual en las empresas, donde la WLAN se considera una extensión de la red cableada.

Como ocurría con el switch en las redes cableadas, hemos de:

- Proteger el access point físicamente. La protección física es más complicada que en el caso del switch, porque el AP tiene que estar cerca de los usuarios para que puedan captar la señal inalámbrica, mientras que para conectar la toma de red de la mesa con el switch podemos utilizar cable de varias decenas de metros.
- Proteger el access point lógicamente (usuario/contraseña).
- Controlar qué clientes pueden conectarse a él (autenticación).
- Podemos separar dos grupos de usuarios, haciendo que el mismo AP emita varias SSID distintas, con autenticaciones distintas. Estas distintas SSID suelen tener asociada una VLAN etiquetada.
- Sobre todo, hay que encriptar la transmisión entre el ordenador y el AP. Así, aunque alguien capture nuestras comunicaciones, no podrá sacar nada en claro.

{:.subsection}
### Asociación Y Transmisión

Para que un ordenador pueda trabajar en una red cableada normal (sin autenticación en el puerto), basta con enchufar un cable Ethernet entre la tarjeta de red del equipo y la toma de red en la pared, por ejemplo. En wifi se establecen dos fases: asociación y transmisión.

Durante la asociación el usuario elige la SSID a la que se quiere conectar y entonces su tarjeta inalámbrica contacta con el AP que ofrece esa SSID. Negocian varias características de la comunicación (protocolo b/g/n, velocidad, etc.), pero sobre todo el AP puede solicitar algún tipo de autenticación para decidir si debe dejarle asociarse o no. Generalmente es una clave alfanumérica que se registra en la configuración del AP y que el usuario debe introducir para poder trabajar con él.

Los AP admiten varios tipos de autenticación:

- **Abierta**: no hay autenticación, cualquier equipo puede asociarse con el AP.
- **Compartida**: la misma clave que utilizamos para cifrar la usamos para autenticar.
- **Acceso seguro**: usamos distintas claves para autenticar y cifrar. El usuario solo necesita saber una, la clave de autenticación: la clave de cifrado se genera automáticamente durante la asociación.
- **Autenticación por MAC**: el AP mantiene una lista de MAC autorizadas y solo ellas pueden asociarse.

Una vez asociados al AP, podemos empezar la fase de transmisión, durante la cual estableceremos conversaciones con el AP. Si queremos evitar que un tercero capture los paquetes intercambiados e intente conocer lo que transmitimos, el cliente y el AP deberán activar el cifrado de cada paquete. El tipo de cifrado (algoritmo, longitud de la clave, etc.) se negocia durante la asociación.

Por tanto, el AP admite varias combinaciones:

- **Autenticación abierta y sin cifrado**: se utiliza en lugares públicos (bibliotecas, cafeterías, etc.). La intención es no molestar al usuario introduciendo claves; además, si las ponemos, habría que dar a conocer la clave mediante un cartel en el interior del establecimiento, por lo que la tendrían todos, usuarios y atacantes. En estos casos, el sistema operativo nos avisa de que vamos a conectarnos a una red sin seguridad.
- **Autenticación abierta y transmisión cifrada**: es el esquema habitual de las primeras redes wifi.
- **Autenticación compartida y transmisión cifrada**: es una mala combinación (en Windows 7 ni siquiera se contempla), porque la autenticación es muy vulnerable y, conocida esa clave, tendrán acceso a descifrar las comunicaciones de cualquier ordenador conectado a ese AP.
- **Autenticación segura y transmisión cifrada**: es la mejor solución porque utiliza una clave distinta para cada cosa. La más conocida es WPA, como veremos en el siguiente apartado de esta unidad.

{:.subsection}
### Cifrado: WEP. WPA, WPA2

La necesidad de encriptar las comunicaciones inalámbricas apareció desde el primer momento. Había que dar a los usuarios la confianza de que su información viajaba segura. El primer estándar se llamó WEP (Wireline Equivalent Privacy, privacidad equivalente al cable), intentando compensar las dos realidades:

- En redes cableadas es difícil el acceso al cable, pero si alguien lo consigue, puede
capturar cualquier comunicación que pase por ahí.
- En redes inalámbricas cualquiera puede capturar las comunicaciones, pero, como
van cifradas, no le servirá de nada.

Sin embargo, en poco tiempo se encontraron debilidades al algoritmo de cifrado utilizado en WEP. Capturando cierto número de tramas, en poco tiempo (cada vez menos, con el aumento de la capacidad de proceso de los ordenadores personales) cualquiera podía obtener la clave WEP.

Las autoridades de estandarización empezaron a trabajar en un nuevo estándar. Se llamó WPA (Wi-Fi Protected Access) e introduce muchas mejoras:

- Nuevos **algoritmos más seguros** (TKIP, AES), tanto por el algoritmo en sí como por el aumento de longitud de las claves, lo que dificulta los ataques.
- **Rotación automática de claves**. Cada cierto tiempo (varios minutos) el AP y el cliente negocian una nueva clave. Por tanto, si algún atacante lograra acertar con la clave de una comunicación, solo le serviría para descifrar la información intercambiada durante ese intervalo de tiempo, pero no la anterior ni la siguiente.
- Por primera vez **se distingue entre los ámbitos personal y empresarial**. En el ámbito personal es suficiente con el esquema habitual de una única clave que conocen todos (WPA le llama PSK [Pre-Shared Key]); en el ámbito empresarial no tiene sentido, porque si una persona abandona la empresa, habría que cambiar la clave y comunicarlo de nuevo a todos los empleados. Para resolverlo, WPA empresarial introduce un servidor RADIUS donde poder almacenar un usuario y una clave para cada empleado.

{:.subsection}
### WPA Empresarial: RADIUS

para las necesidades de seguridad de una empresa no es suficiente con la solución de clave única compartida por todos. Además de la salida de empleados, ya sabemos que es una buena práctica cambiar las claves regularmente (no sabemos cuánto tiempo llevan intentando conocerla), se puede extraviar el portátil o el móvil de un empleado y quien lo encuentre puede sacar las claves almacenadas en el dispositivo, etc.

El esquema de funcionamiento de WPA empresarial es el siguiente:

-  Dentro de la LAN de la empresa hay un ordenador que ejecuta un software servidor RADIUS. En este servidor hay una base de datos de usuarios y contraseñas, y el servidor admite preguntas sobre ellos.
- Los AP de la empresa tienen conexión con ese ordenador.
- Los AP ejecutan un software cliente RADIUS. Este software es capaz de formular las preguntas y analizar las respuestas.
- El servidor RADIUS tiene la lista de las direcciones IP de los AP que le pueden preguntar. Además de estar en la lista, el AP necesita que le configuremos una contraseña definida en el servidor (una dirección IP es fácilmente falsificable).
- Cuando un cliente quiere asociarse a un AP, le solicita usuario y contraseña. Pero no las comprueba él mismo, sino que formula la pregunta al servidor RADIUS utilizando la contraseña configurada para ese servidor. Dependiendo de la respuesta, el AP acepta la asociación o no.

La rotación de claves que introdujo WPA fue un paso importante para disuadir a los hackers de intentar obtener la clave mediante el análisis de la captura de tramas de tráfico de equipos ya conectados al AP.

Entonces los hackers concentraron su trabajo en la clave PSK de la fase de asociación.

Utilizaron la fuerza bruta de dos formas:

- Probando contraseñas una tras otra. Las contraseñas serían todas las combinaciones posibles de letras y números, o una selección mediante un diccionario. Por desgracia, los AP no suelen tener un control del número de intentos fallidos, como sí ocurre en otros sistemas de autenticación.
- Si consiguieran capturar las tramas de inicio de conexión de un cliente, podrían aplicar un ataque de diccionario sobre la información de esas tramas. Si no queremos esperar a que aparezca un cliente nuevo, podemos forzar la desconexión de alguno.

{:.section}
## VPN

<iframe width="560" height="315" src="https://www.youtube.com/embed/2Dao6N0jWEs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/1ISXmbcZAm4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

El objetivo final de la VPN es que el empleado (más bien, su ordenador) no note si está en la empresa o fuera de ella. En ambos casos recibe una configuración IP privada (direcciones 10.X.X.X, por ejemplo), por lo que no necesita cambiar nada en la configuración de sus aplicaciones (correo, intranet, etc.).

El responsable de conseguir esta transparencia es el software de la VPN. En el ordenador del empleado hay que instalar un software cliente VPN. Este software instala un driver de red, de manera que para el sistema operativo es una tarjeta más. Ese driver se encarga de contactar con una máquina de la empresa, donde ejecuta un software servidor VPN que gestiona la conexión, para introducir los paquetes en la LAN. La gestión consiste en:

- **Autentificar al cliente VPN**. No podemos dejar que entre cualquiera, por lo que se utiliza el típico usuario/contraseña, tarjetas inteligentes, etc.
- **Establecer un túnel** a través de Internet. El driver de la VPN en el cliente le ofrece una dirección privada de la LAN de la empresa (la 10.0.1.45, por ejemplo), pero cualquier paquete que intente salir por esa tarjeta es encapsulado dentro de otro paquete. Este segundo paquete viaja por Internet desde la IP pública del empleado hasta la IP pública del servidor VPN en la empresa. Una vez allí, se extrae el paquete y se inyecta en la LAN. Para que alguien de la LAN envíe un paquete a la 10.0.1.45 el proceso es similar.
- **Proteger el túnel**. Como estamos atravesando Internet, hay que encriptar las comunicaciones (sobre todo si somos una empresa). Los paquetes encapsulados irán cifrados.
- **Liberar el túnel**. El cliente o el servidor pueden interrumpir la conexión cuando lo consideren necesario.

El software VPN en el cliente suele llevar una opción para que las conexiones a Internet se hagan directamente en la conexión del usuario, sin tener que pasar por el túnel y salir por la conexión a Internet de la empresa. Es decir, el túnel se usa solo para comunicaciones internas.

Leer artículo [VPN](/posts/vpn/).

{:.section}
## Servicios De Red. Nmap Y Netstat

<iframe width="560" height="315" src="https://www.youtube.com/embed/har1It-lW2A" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

La herramienta **Nmap**, disponible para sistemas Linux y Windows, se ha convertido en la navaja suiza de los hackers de red. Además del escaneo de puertos para determinar los servicios disponibles en una máquina, podemos pedir a la herramienta que intente la conexión a cada uno de ellos. Después analiza los mensajes que generan estos servidores para identificar la versión concreta del sistema operativo y la versión concreta del software de servidor (server fingerprint) que está escuchando en cada puerto.

Para cada puerto, la herramienta ofrece cuatro posibles estados:

- **open (abierto)**: la máquina acepta paquetes dirigidos a ese puerto, donde algún servidor
está escuchando y los procesará adecuadamente.
- **closed (cerrado)**: no hay ningún servidor escuchando.
- **filtered**: Nmap no puede decir si ese puerto está abierto o cerrado porque alguien
está bloqueando el intento de conexión (router, firewall).
- **unfiltered**: el puerto no está bloqueado, pero no se puede concluir si está abierto o
cerrado.

Leer artículo [Realiza escaneos de puertos con Nmap a cualquier servidor o sistema](https://www.redeszone.net/tutoriales/configuracion-puertos/nmap-escanear-puertos-comandos/).

## Bibliografía

- [SEGURIDAD ACTIVA: ACCESO A REDES](http://aleogao.blogspot.com/2017/02/seguridad-activa-acceso-redes.html)
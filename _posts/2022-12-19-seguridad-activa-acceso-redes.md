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

![VLAN entre dos switch](vlanEntre2Switch.png)
_VLAN entre dos switch_

Para interconectar VLAN (capa 2) generalmente utilizaremos un router (capa 3).

**Capa 2**. En el modelo TCP/IP la capa 2 o capa de enlace tiene una visión local de la red: sabe cómo intercambiar paquetes de datos (llamados tramas) con los equipos que están en su misma red. La comunicación es directa entre origen y destino (aunque cruce uno o varios switch).

**Capa 3**. La capa 3 o capa de red tiene una visión global de la red: sabe cómo hacer llegar paquetes de datos hasta equipos que no están en su misma red. La comunicación es indirecta, necesita pasar por una máquina más: el router.


![VLAN etiquetada](vlanEtiquetada.png)
_VLAN etiquetada_

{:.subsection}
### Autenticación en el puerto

Cualquiera puede meterse en un despacho, desconectar el cable RJ45 del ordenador del empleado, conectarlo a su portátil y ya estaría en esa VLAN. Como sigue siendo un switch, no podrá escuchar el trafico normal de los demás ordenadores de la VLAN, pero sí lanzar ataques contra ellos.

Para evitarlo, los switch permiten establecer autenticación en el puerto: solo podrá conectar aquel cuya MAC esté dentro de una lista definida en el propio switch, o, dado que las MAC son fácilmente falsificables (las tarjetas emiten los paquetes que genera el software de red del sistema operativo), el que sea autentificado mediante RADIUS en el estándar 802.1X.

{:.section}
## Redes inalámbricas

Los miedos a que las comunicaciones sean escuchadas por terceros no autorizados han desaparecido en las redes cableadas, pero están plenamente justificados en redes inalámbricas o WLAN (Wireless LAN), porque de nuevo el medio de transmisión (el aire) es compartido por todos los equipos y cualquier tarjeta en modo promiscuo puede perfectamente escuchar lo que no debe.

Aunque se pueden hacer redes inalámbricas entre equipos (redes ad hoc), lo más habitual son las redes de tipo infraestructura: un equipo llamado access point (AP, punto de acceso) hace de switch, de manera que los demás ordenadores se conectan a él, le envían sus paquetes y él decide cómo hacerlos llegar al destino, que puede ser enviarlo de nuevo al aire o sacarlo por el cable que le lleva al resto de la red. Salir por el cable es la configuración más habitual en las empresas, donde la WLAN se considera una extensión de la red cableada.


![WLAN en modo infraestructura](wlanInfraestructura.png)
_WLAN en modo infraestructura_

Como ocurría con el switch en las redes cableadas, hemos de:

- **Proteger el access point físicamente**. La protección física es más complicada que en el caso del switch, porque el AP tiene que estar cerca de los usuarios para que puedan captar la señal inalámbrica, mientras que para conectar la toma de red de la mesa con el switch podemos utilizar cable de varias decenas de metros.
- **Proteger el access point lógicamente** (usuario/contraseña).
- **Controlar qué clientes pueden conectarse a él** (autenticación).
- Podemos **separar dos grupos de usuarios**, haciendo que el mismo AP emita varias SSID distintas, con autenticaciones distintas. Estas distintas SSID suelen tener asociada una VLAN etiquetada.
- Sobre todo, hay que **encriptar la transmisión** entre el ordenador y el AP. Así, aunque alguien capture nuestras comunicaciones, no podrá sacar nada en claro.

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
- **Autenticación segura y transmisión cifrada**: es la mejor solución porque utiliza una clave distinta para cada cosa. La más conocida es WPA.

{:.subsection}
### Cifrado: WEP. WPA, WPA2

La necesidad de encriptar las comunicaciones inalámbricas apareció desde el primer momento. Había que dar a los usuarios la confianza de que su información viajaba segura. El primer estándar se llamó WEP (Wireline Equivalent Privacy, privacidad equivalente al cable), intentando compensar las dos realidades:

- En **redes cableadas** es difícil el acceso al cable, pero si alguien lo consigue, puede
capturar cualquier comunicación que pase por ahí.
- En **redes inalámbricas** cualquiera puede capturar las comunicaciones, pero, como
van cifradas, no le servirá de nada.

Sin embargo, en poco tiempo se encontraron debilidades al algoritmo de cifrado utilizado en WEP. Capturando cierto número de tramas, en poco tiempo (cada vez menos, con el aumento de la capacidad de proceso de los ordenadores personales) cualquiera podía obtener la clave WEP.

Las autoridades de estandarización empezaron a trabajar en un nuevo estándar. Se llamó WPA (Wi-Fi Protected Access) e introduce muchas mejoras:

- Nuevos **algoritmos más seguros** (TKIP, AES), tanto por el algoritmo en sí como por el aumento de longitud de las claves, lo que dificulta los ataques.
- **Rotación automática de claves**. Cada cierto tiempo (varios minutos) el AP y el cliente negocian una nueva clave. Por tanto, si algún atacante lograra acertar con la clave de una comunicación, solo le serviría para descifrar la información intercambiada durante ese intervalo de tiempo, pero no la anterior ni la siguiente.
- Por primera vez **se distingue entre los ámbitos personal y empresarial**. En el ámbito personal es suficiente con el esquema habitual de una única clave que conocen todos (WPA le llama PSK [Pre-Shared Key]); en el ámbito empresarial no tiene sentido, porque si una persona abandona la empresa, habría que cambiar la clave y comunicarlo de nuevo a todos los empleados. Para resolverlo, WPA empresarial introduce un servidor RADIUS donde poder almacenar un usuario y una clave para cada empleado.


<details class="card mb-2">
  <summary class="card-header question">¿Qué sistema de cifrado de seguridad de redes inalámbricas no es seguro?</summary>
  <div class="card-body" markdown="1">

WEP

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Es WEP inseguro por su sistema de cifrado?</summary>
  <div class="card-body" markdown="1">

No

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### WPA Empresarial: RADIUS

Para las necesidades de seguridad de una empresa no es suficiente con la solución de clave única compartida por todos. Además de la salida de empleados, ya sabemos que es una buena práctica cambiar las claves regularmente (no sabemos cuánto tiempo llevan intentando conocerla), se puede extraviar el portátil o el móvil de un empleado y quien lo encuentre puede sacar las claves almacenadas en el dispositivo, etc.

El esquema de funcionamiento de WPA empresarial es el siguiente:

- Dentro de la LAN de la empresa hay un ordenador que ejecuta un software servidor RADIUS. En este servidor hay una base de datos de usuarios y contraseñas, y el servidor admite preguntas sobre ellos.
- Los AP de la empresa tienen conexión con ese ordenador.
- Los AP ejecutan un software cliente RADIUS. Este software es capaz de formular las preguntas y analizar las respuestas.
- El servidor RADIUS tiene la lista de las direcciones IP de los AP que le pueden preguntar. Además de estar en la lista, el AP necesita que le configuremos una contraseña definida en el servidor (una dirección IP es fácilmente falsificable).
- Cuando un cliente quiere asociarse a un AP, le solicita usuario y contraseña. Pero no las comprueba él mismo, sino que formula la pregunta al servidor RADIUS utilizando la contraseña configurada para ese servidor. Dependiendo de la respuesta, el AP acepta la asociación o no.

La rotación de claves que introdujo WPA fue un paso importante para disuadir a los hackers de intentar obtener la clave mediante el análisis de la captura de tramas de tráfico de equipos ya conectados al AP.

Entonces los hackers concentraron su trabajo en la clave PSK de la fase de asociación.

Utilizaron la fuerza bruta de dos formas:

- **Probando contraseñas una tras otra**. Las contraseñas serían todas las combinaciones posibles de letras y números, o una selección mediante un diccionario. Por desgracia, los AP no suelen tener un control del número de intentos fallidos, como sí ocurre en otros sistemas de autenticación.
- Si consiguieran **capturar las tramas de inicio de conexión de un cliente**, podrían aplicar un ataque de diccionario sobre la información de esas tramas. Si no queremos esperar a que aparezca un cliente nuevo, podemos forzar la desconexión de alguno.

{:.section}
## VPN

Leer artículo [¿Qué es una VPN?](/posts/vpn/).

{:.section}
## Servicios De Red. Nmap Y Netstat

Leer artículo [Tutorial: Nmap](/posts/nmap/).

## Bibliografía

- [SEGURIDAD ACTIVA: ACCESO A REDES](http://aleogao.blogspot.com/2017/02/seguridad-activa-acceso-redes.html)
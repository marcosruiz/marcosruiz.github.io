---
title: "Seguridad activa de sistemas operativos"
date: 2022-12-18 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría, seguridad activa]
img_path: /assets/img/seguridad-activa-sistemas-operativos/
---

{:.section}
## Carrera de obstáculos

Por muchas medidas de control de acceso que pongamos, un hacker puede sentarse delante de un equipo de nuestra empresa. O directamente robar un portátil a uno de nuestros directivos. Vamos a intentar ponérselo difícil para que su «trabajo» sea una carrera de obstáculos y, seguramente, ante alguna barrera, desista.

{:.subsection}
### La Caja Del Ordenador

Lo primero es evitar que pueda abrir la caja del ordenador para llevarse el disco duro y "destriparlo" tranquilamente en casa. La mayoría de las cajas de los ordenadores de sobremesa llevan un par de anclajes donde colocar un candado normal. También esta la opción de cambiar un tornillo normal por un tornillo con llave.

Para los portátiles tenemos el famoso candado Kensington, que tiene una cabeza que se introduce por una ranura especial de la caja del portátil. La cabeza continúa en un cable de acero para que lo enrollemos en alguna parte fija (la mesa o algún anclaje especial). La cabeza puede utilizar una llave o una combinación de número.

{:.question}
¿Sabrías identificar un candado Kensington?

Los candados son poco efectivos, pero por lo menos obligamos al ladrón a traer alguna herramienta más y le hacemos perder un tiempo precioso. Incluso si lo abre, la mayoría de las cajas de ordenador profesionales llevan un detector que graba en la memoria de la BIOS la fecha y hora en que se ha producido la apertura. Al día siguiente, cuando el empleado encienda el ordenador, aparecerá un mensaje en pantalla avisándole.

{:.subsection}
### La BIOS del ordenador

Con el candado, el hacker ya no se podrá llevar el disco. Pero utilizando la técnica del arranque con LiveCD, podemos tranquilamente montar el disco duro local y hacer una copia del mismo en un dispositivo externo.

Para evitar que el hacker haga esto, habría que cambiar el orden de arranque. Deberíamos de cambiarlo para que el primero y el único sea el HDD.

Esta tarea se suele hacer cuando llega un nuevo equipo a la empresa. Tampoco hay que olvidar cambiar las contraseñas de administrador, porque si no ponemos ninguna o dejamos los valores por defecto, el hacker puede entrar en la BIOS y modificar el orden de arranque.

En algunas empresas incluso activan una contraseña de uso del ordenador. Es decir, al arrancar la BIOS siempre pide una contraseña, no solo cuando queremos acceder a su configuración.

Si hemos olvidado las contraseñas de la BIOS, la solución típica es retirar la pila que mantiene esos valores en memoria. Por eso hay que seguir evitando el acceso al interior de la caja del ordenador.

{:.question}
¿Se puede poner contraseña a la BIOS?

{:.question}
¿Cómo se puede quitar la contraseña de una BIOS?

#### ¿Qué es la BIOS?

Se trata de las siglas de Basic Input Output System (en castellano, sistema básico de entrada/salida) y se refiere a un firmware almacenado en un dispositivo de memoria no volátil instalado sobre la placa base del ordenador. Tradicionalmente las BIOS han estado guardadas en una memoria ROM que, a diferencia de las memorias RAM habituales, no se elimina al apagar el PC y, por lo tanto, está de nuevo disponible al volver a encenderlo. Tan pronto como el usuario enciende cualquier PC de 64 u 86 bits, la BIOS se arranca automáticamente. Al contrario que los sistemas operativos, no tiene que instalarse, sino que ya está integrada en el hardware del ordenador.

![BIOS](bios.jpg)
_BIOS_

{:.question}
¿Qué es un firmware?

{:.question}
¿Qué es una ROM?

> Si queremos poner la BIOS de nuestro PC a su estado de fábrica es tan sencillo como quitar la pila de la placa base.
{:.prompt-info}

#### Funciones principales de la BIOS

La BIOS pone las funciones básicas de un ordenador a disposición del usuario. Al encenderlo, comprueba si las partes más importantes son funcionales, como la memoria, la CPU y otros componentes de hardware. Esta prueba se denomina autoprueba de arranque.

Si la BIOS detecta un error durante la autoprueba de arranque, emite uno o más pitidos por los altavoces del equipo. Estos sonidos sirven para indicar al usuario dónde se ha detectado el problema y siguen diferentes códigos, dependiendo del fabricante: por ejemplo, con la BIOS de IBM, un pitido corto y dos largos indicarían un error de la tarjeta gráfica.

La BIOS soluciona uno de los principales problemas de los ordenadores, ya que cada programa debe cargarse en la memoria principal del equipo para poder ejecutarse. Este proceso también requiere un software que le indique al sistema dónde se encuentra ese programa, como el sistema operativo. Aquí entra en juego la BIOS, el firmware que asume esta tarea. Al mismo tiempo, la BIOS actúa de intermediaria entre la CPU y el software, formando la llamada capa de abstracción de hardware, una interfaz que permite que el software no tenga que acceder directamente al hardware, sino que pueda obtener sus datos de manera estandarizada.

#### Tecnologías sucesoras: EFI y UEFI

Los elementos básicos de la BIOS apenas han cambiado desde la década de 1980, por lo que esta presenta cada vez más limitaciones frente a los requisitos del hardware moderno. No obstante, hay tecnologías sucesoras que llevan mucho tiempo desarrollándose. La EFI (Extensible Firmware Interface) se creó en la década de 1990. Desde la década de 2010, la UEFI se ha establecido como el estándar en los ordenadores de 64 bits y ofrece más y mejores funciones, siendo además más cómoda de utilizar que la BIOS original.

La UEFI (Unified Extensible Firmware Interface) cuenta con una interfaz gráfica de usuario, se puede utilizar con el ratón o el teclado y puede acceder a los componentes de red e Internet incluso sin iniciar el sistema operativo. Una de las características que más la diferencian de la BIOS es que la UEFI utiliza un gestor de arranque seguro (en inglés, secure bootloader), es decir, que evita que se inicien sistemas operativos no autorizados y software no deseado y, por lo tanto, aumenta la protección contra los ataques cibernéticos.

![UEFI](uefi.jpg)
_UEFI_

{:.question}
¿Qué diferencias hay entre BIOS, EFI y UEFI?

{:.question}
¿Qué es GPT? ¿Y MBR?

{:.subsection}
### El Boot Manager

Ya hemos conseguido que el hacker no se pueda llevar nada y solo arranque la máquina desde nuestro disco local. En este disco puede ocurrir que tengamos instalados varios SO, de manera que, al arrancar, un programa llamado boot manager (gestor de arranque) nos permite elegir uno de ellos.

#### ¿Qué es el GRUB?

GNU GRUB (GNU GRand Unified Bootloader) es un cargador de arranque múltiple, desarrollado por el proyecto GNU que nos permite elegir qué Sistema Operativo arrancar de los instalados.

Se usa principalmente en sistemas operativos GNU Linux. 

{:.question}
¿Se puede fijar el orden de los dispositivos de arranque como deseemos?

{:.question}
¿Se puede poner contraseña al GRUB?

{:.subsection}
### Cifrado de particiones

Con las barreras que hemos puesto, el hacker ya no se puede llevar nada; solo puede arrancar desde el disco local y solo puede elegir alguna de las entradas del boot manager. Pero si alguno de estas medidas falla, todavía podemos evitar que acceda a nuestros datos: hay que cifrar el contenido, de manera que sea ilegible.

[Cifra discos, particiones y archivos con LUKS en tu servidor Linux](https://www.redeszone.net/tutoriales/seguridad/cifrar-discos-particiones-archivos-luks-linux/)

{:.question}
¿Qué pros y qué contras tiene cifrar un disco?

{:.question}
¿Qué es LUKS? ¿Qué algoritmo de cifrado de los vistos en clase usa LUKS?

{:.section}
## Autenticación en el sistema operativo

Hemos conseguido que nuestro hacker no pueda evitar que la máquina arranque con un SO instalado por nosotros. Pero los SO permiten incluir muchos más software de autenticación y más complejos. Hay varias maneras de autenticarte en un sistema operativo:

1. Usuario y contraseña
2. Tarjetas
3. Biometría
4. Elevación de privilegios

{:.subsection}
### Usuario y contraseña

Es el mecanismo más típico. Aplicando la estrategia "algo que se sabe", la pantalla inicial del sistema espera que la persona introduzca el nombre de un usuario y la contraseña asociada a ese usuario. Mientras lo teclea, el nombre del usuario es visible pero la contraseña no, para evitar que la vea alguien que se encuentre a nuestra espalda.

Si nos equivocamos, en el usuario o en la contraseña, el sistema no nos deja entrar pero nos dejaría intentarlo otra vez. En algunos sistemas nos ofrece una pista sobre la contraseña. En algunos casos tiene un limite de intentos y al llegar ese limite se bloquea por un tiempo o definitivamente.

También es recomendable, para ponérselo mas difícil al hacker, cambiar el nombre por defecto de los usuarios con más privilegios sobre el sistema. Así no tendrá que averiguar solo la contraseña si no también el nombre de usuario del sistema.

Aun así, siempre conviene utilizar contraseñas no triviales: palabras que no aparezcan en el diccionario de ninguna lengua, combinar letras mayúsculas con minúsculas, números, signos de puntuación, etc. Y cambiar la contraseña regularmente, porque no sabemos cuánto tiempo llevan intentando atacarla. Los sistemas operativos permiten obligar al usuario a cumplir todas estas normas.

{:.subsection}
### Tarjetas

En algunas ocasiones, el mecanismo de usuario y contraseña no es lo suficientemente seguro, ya que alguien nos puede espiar y averiguarlo. Para estos casos aplicaremos la estrategia "algo que se tiene" y repartiremos tarjetas entre los usuarios.

Las tarjetas son de dos tipos: sencillas (magnéticas, RFID) o complejas (chip). Las magnéticas van desapareciendo porque las EFID son igual de baratas y no sufren borrados accidentales.

Las tarjetas con chip son más seguras pero más caras, por lo que se utilizan en ocasiones especiales. Hay dos tipos:

- **Las que son simplemente un dispositivo de almacenamiento**: contiene nuestras claves para que las lea el dispositivo donde introducimos la tarjeta.
- **Las que constituyen un dispositivo de procesamiento**: contiene nuestras claves, pero nunca salen de la tarjeta. El chip se limita a cifrar con ellas algún desafío que lanza el dispositivo por donde introducimos la tarjeta.

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo RFID que NFC?</summary>
  <div class="card-body" markdown="1">

RFID es el proceso en el cual objetos son identificados de manera única usando ondas de radio y NFC es una tecnología especializada dentro de la familia de tecnologías RFID.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### Biometría

La seguridad del mecanismo usuario/contraseña es suficiente para la mayoría de las aplicaciones. La tarjeta es cómoda. Pero cualquiera podría sentarse en nuestro ordenador, insertar nuestra tarjeta (robada o duplicada), introducir nuestro usuario y contraseña y acceder al sistema como si fuéramos nosotros mismos. Si la información que manejamos es importante, aplicaremos la estrategia «algo que eres», para complementar el mecanismo usuario/contraseña con un control más: la biometría.

La biometría consiste en identificar alguna característica física del sujeto: la huella dactilar, el ojo, la voz. La persona o personas autorizadas deben grabar primero su característica física. Con esta técnica aumentaremos la seguridad.

{:.question}
¿Conoces alguna película que se use la biometría como método de autenticación?

{:.subsection}
### Elevación de privilegios

Ya estamos autenticados en el sistema operativo y podemos trabajar con él, pero siempre limitados a los privilegios asociados al usuario con el que nos hemos presentado. 

En las empresas, la mayoría de los empleados utilizan usuarios que no tienen permiso para realizar tareas de administración de la máquina (usuarios limitados, no administradores); así se reduce el daño que puedan causar, ya sea por error o porque se ha colado un virus. 

Pero hay determinadas situaciones (instalación de nuevos programas, modificación de parámetros del sistema) para las que sí necesitamos ser administradores. 

Una solución es salir del usuario actual y entrar como administrador, pero es más sencillo solicitar, de manera puntual, una elevación de privilegios. Consiste en pedirle al sistema ejecutar un determinado programa con permisos de administrador. Se aplica solo a ese programa y solo a esa ejecución: no afecta a las aplicaciones abiertas antes o después, ni siquiera cuando abramos ese mismo programa más adelante. 

En cuanto al usuario, dependiendo de la configuración del sistema, simplemente aparecerá una ventana de confirmación o nos pedirá una nueva autenticación. 

{:.question}
¿Qué comando usamos para elevar nuestros privilegios en GNU Linux? ¿Y en Windows?

{:.section}
## Cuotas

Hasta ahora hemos protegido nuestros sistemas evitando el acceso de personas no autorizadas; ahora vamos a protegerlos de las personas que sí están autorizadas. Porque nuestros usuarios, con intención o no, también pueden dañar el sistema. Por ejemplo, pueden descargar muchos archivos pesados, de manera que llenan el disco y el sistema empieza a fallar; también pueden lanzar procesos muy pesados, que ralentizan la CPU y no permiten trabajar a los demás usuarios. 

Para evitarlo, los sistemas se configuran para aplicar cuotas. Para el disco, se establece que cada usuario puede ocupar un número determinado de bytes (megabytes, gigabytes). Cuando excede ese límite, podemos configurar de modo que el sistema no le permita extenderse más. 

Hay que asignar las cuotas con cuidado: 

- **Si son muy bajas**, tendremos a los usuarios quejándose todos los días porque no les dejamos trabajar. Hay que tener especial cuidado con los usuarios que se crean porque son necesarios para arrancar una aplicación, como el www-data del servidor web Apache: si exceden la cuota, la aplicación se parará. 
- **Si son muy altas**, no tendrán el efecto disuasorio que se espera de ellas y, al final, terminaremos comprando más disco.

{:.section}
## Actualizaciones y parches

Ya tenemos el sistema protegido contra el acceso de extraños y contra el mal uso de los propios. Pero estamos hablando de software: hecho por humanos y, por tanto, sujeto a errores.

El CD/DVD que hemos utilizado para instalar Windows, GNU Linux o OSX contiene una versión concreta liberada en una fecha concreta; desde entonces, los programadores de cada marca han seguido trabajando. El resultado son las actualizaciones: paquetes de software donde se introducen mejoras y, sobre todo, corrigen defectos.

Como administradores responsables del sistema, debemos instalar esas actualizaciones.

Podemos elegir entre:

- No buscar actualizaciones ni instalarlas (no recomendable).
- Comprobar si hay actualizaciones, pero no descargarlas ni instalarlas. Esto solo tiene sentido en equipos con poco disco o acceso limitado a Internet.
- Descargar actualizaciones, pero no instalarlas. En algunos sistemas podemos tener una configuración muy sensible a cambios en el sistema operativo.
- Descargar e instalar siempre. Es lo más habitual en los puestos de usuario.

Los parches son parecidos a las actualizaciones, pero se utilizan solo para corregir defectos y suelen necesitar que el usuario lo descargue y lo instale.

{:.question}
¿Es lo mismo una actualización que un parche?

{:.section}
## Antivirus

Los llamados virus informáticos, que son de muchos tipos, pero, en cualquier caso, estamos hablando de malware (software maligno) y hay que evitarlos. 

Leer artículo [Malware](/posts/malware).

Los virus pueden instalarse en nuestra máquina sin que lo sepamos, aprovechando algún defecto del sistema operativo o las aplicaciones instaladas.

El antivirus es un programa que está vigilando continuamente lo que ocurre en nuestra máquina. Concretamente, cualquier software que se intenta ejecutar (ejecutables .exe, .msi, .deb, .rpm, librerías .dll, etc.) primero pasa por el antivirus. Él lo compara con su base de datos de virus y, si lo encuentra, impide que se ejecute y avisa al usuario.

<iframe width="560" height="315" src="https://www.youtube.com/embed/SbdO7BAsGq8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<details class="card mb-2">
  <summary class="card-header question">¿Qué antivirus conoces?</summary>
  <div class="card-body" markdown="1">

- Avast
- AVG
- Windows defender
- Kaspersky
- McAfee
- Avira
- ESET
- Norton
- Panda

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Cuál es el mejor antivirus?</summary>
  <div class="card-body" markdown="1">

No existe el antivirus infalible.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Qué es [VirusTotal](https://www.virustotal.com/gui/home/upload)?

<details class="card mb-2">
  <summary class="card-header question">¿Qué deberíamos hacer si sospechamos que un programa que vamos a instalar es un virus?</summary>
  <div class="card-body" markdown="1">

Lo mejor sería NO instalarlo, pero también se puede instalar en una máquina virtual y comprobar su actividad de red y de uso de CPU.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Es más seguro GNU Linux que Windows?</summary>
  <div class="card-body" markdown="1">

No se puede saber a ciencia cierta. Los sistemas más populares se atacan más pero también hay más gente probándolos.

Lo que si se sabe es la diferencia entre las llamadas de sistema que se realizan en un servidor Apache en GNU Linux y un servidor IIS en Windows cuando una sola página HTML es servida a un cliente 😮.

![Grafo de llamadas de sistema Apache en GNU Linux](syscallapache.jpg)
_Grafo de llamadas de sistema Apache en GNU Linux_

![Grafo de llamadas de sistema IIS en Windows](syscalliis.jpg)
_Grafo de llamadas de sistema IIS en Windows_

Lo más probable que esto sea debido a la filosofía de retrocompatibilidad de Windows.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Monitorización

Hemos visto que cualquiera de las medidas aplicadas es imperfecta. Nuestra labor es instalarlas, formar a los usuarios y, todos los días, vigilar que todo esté normal. Esta vigilancia consiste en:

- **Revisar los log** del sistema y las aplicaciones. Cualquier suceso anómalo quedará anotado en alguna parte. Para cada aplicación hay que saber dónde lo hace (fichero o base de datos).
- Si el sistema lo permite, activar la **copia sincronizada del log** en otra máquina. Es decir, cada aviso se escribe a la vez en nuestra máquina y en otra. De esta forma podremos analizar un desastre y evitaremos que un hacker borre sus huellas.
- Revisar la **ocupación del sistema**, principalmente el disco y la CPU. Lo habitual es programar una tarea para revisarlo regularmente (cada cinco minutos, por ejemplo) y generar una alarma que alerte al administrador cuando se supere algún límite (90 % del disco, por ejemplo).
- Suscribirse a las **newsletters** de los fabricantes de nuestro hardware y software para tener a mano la información oficial: actualizaciones, parches, nueva funcionalidad, workarounds, etc.
- Participar en **foros de usuarios** de las mismas aplicaciones que nosotros, para estar al día de los problemas que aparecen (puede que nos pase lo mismo) y para poder pedir ayuda si algo nos sobrepasa (en paralelo con la consulta al soporte oficial).

Conviene instalar una herramienta de inventario y monitorización. El inventario es la lista de equipos y conexiones y la configuración de ambos; la monitorización es la supervisión en todo momento del estado de los elementos del inventario. Estas herramientas facilitan mucho el trabajo del administrador porque:

- **Rastrean la red** periódicamente buscando nuevas altas y bajas de equipos en el inventario.
- Son capaces de **identificar** distintos tipos de equipos, no solo ordenadores, sino también equipamiento de red. Para ello es necesario que los equipos ofrezcan interfaces estándar, como SNMP (Simple Network Management Protocol).
- Obtienen la configuración para todos los equipos del inventario y la registran en una **base de datos** para generar informes, avisar de cambios, etc.
- Incorporan **alertas** sobre ocupación de disco, inactividad de una interfaz, etc.
- Podemos **monitorizar en directo** la actividad de las interfaces de red, uso de CPU, etc.

{:.question}
¿Qué es un log?

{:.section}
## Aplicaciones web

La arquitectura de aplicaciones ha evolucionado con el tiempo:

- En los años sesenta y setenta eran **monolíticas**: toda la funcionalidad, tanto la interfaz de usuario como la lógica de proceso, estaba en la misma máquina. Los usuarios utilizaban terminales «tontos» conectados al ordenador principal. La protección de una aplicación monolítica se centraba en proteger la máquina donde ejecutaban todos los programas.
- En los años ochenta y noventa aparecen los ordenadores personales y las redes de comunicaciones dentro de las empresas. Estos dos avances permiten implementar las aplicaciones siguiendo la **arquitectura cliente-servidor**: la interfaz de usuario y parte de la lógica de proceso están en el ordenador del usuario, y el resto de la lógica de proceso está en un ordenador central, al que conectan los ordenadores de usuario mediante la red local. La protección se complica: ahora hay que proteger a cada cliente, el servidor y la red local de la empresa.
- A partir de los años noventa, el éxito de Internet permite extender las **aplicaciones web** (que siguen el modelo cliente-servidor) a cualquier punto de conexión del planeta. Hay un par de diferencias con los años ochenta: el cliente suele ser siempre el mismo (el navegador) y la comunicación utiliza redes públicas, sobre las que la empresa tiene nulo control. La protección es más difícil que nunca.

Nadie duda de las ventajas de implementar una aplicación mediante tecnologías web:

- No necesitamos instalar nada en el cliente: solo se necesita el navegador (que se incluye con el sistema operativo y que tiene otros usos, como navegar por Internet). Con esto evitamos instalar un cliente nuevo que pueda entrar en conflicto con otras aplicaciones de la máquina, el usuario no necesita privilegios especiales para instalar programas, etc.
- Cualquier actualización generada por nuestros programadores (más funcionalidad, parches que arreglan defectos) está inmediatamente disponible para los usuarios porque siempre descargan la página actualizada de la última versión. No hay que esperar a que todos los usuarios sean avisados de la actualización, la descarguen, instalen, etc.

Por esta razón están ampliamente extendidas en Internet (Google Apps, ZoHo, Twitter, WordPress YouTube, etc.), y también dentro de las empresas, las intranets. 

{:.question}
¿Qué es una intranet?

Pero debemos tener cuidado con:

- La máquina que aloja el servidor web y sus aplicaciones accesorias (base de datos y otras). Si un hacker toma esta máquina, tiene acceso a toda la información y todas las conexiones de los usuarios. Hay que aplicar las medidas de protección que hemos estudiado en este artículo.
- Si la máquina del servidor web no es nuestra, sino alquilada (hosting web), no tenemos control sobre las medidas de protección. Debemos confiar en la profesionalidad del proveedor y repasar el contrato, en especial el apartado de los niveles de servicio (SLA o Service Level Agreement). Por ejemplo, podemos exigir al proveedor que si el servidor web está caído más de dos horas al año, nos haga un descuento del 25 % en la siguiente cuota.
- La transmisión entre el cliente web (navegador) y el servidor web. Muchas aplicaciones todavía utilizan el protocolo HTTP, donde todo viaja en texto en claro. En algún tramo de red puede estar escuchando un hacker (man in the middle) y conocer qué hacemos, incluso modificarlo para su provecho. Siempre debemos optar por usar HTTPS.
- La máquina de un usuario conectado puede haber sido hackeada y su navegador también. Por ejemplo, se ha instalado un keylogger que envía todas las contraseñas fuera de nuestro control. En este punto es importante el antivirus.

{:.question}
¿Qué es un keylogger?

{:.section}
## Cloud computing

Después de las aplicaciones web, la siguiente evolución de las aplicaciones en Internet es el cloud computing (computación en la nube). Conviene diferenciar entre computación en la nube y almacenamiento en la nube.

El almacenamiento también aporta flexibilidad, pero se limita a guardar archivos y carpetas; la computación es más amplia porque ejecuta programas que trabajan con archivos, bases de datos, otros servidores, etc. Sin embargo, se complementan porque la computación en la nube puede trabajar con archivos de almacenamiento en la nube.

Leer [¿Qué es el cloud computing?](/posts/cloud-computing).

## Bibliografía

- [¿Qué es la BIOS?](https://www.ionos.es/digitalguide/servidores/know-how/que-es-la-bios-de-un-ordenador/)
- [GNU GRUB (Wikipedia)](https://es.wikipedia.org/wiki/GNU_GRUB)
- [Fundamentos de la computación en la Nube](https://iberasync.es/en/fundamentos-de-la-computacion-en-la-nube/)
- [SEGURIDAD ACTIVA: SISTEMA OPERATIVO Y APLICACIONES](http://aleogao.blogspot.com/2017/01/seguridad-activa-sistema-operativo-y.html)
- [47 Apache on Linux vs IIS on Windows ](http://www.basicallytech.com/blog/archive/47/Apache-on-Linux-vs-IIS-on-Windows/)
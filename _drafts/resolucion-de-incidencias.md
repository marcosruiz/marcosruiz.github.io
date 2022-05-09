---
title: Resolución de incidencias
date: 2022-05-05 01:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, teoría]
---

{:.section}
## Introducción

La resolución de incidencias en una red de área local es un asunto muy importante dado que cada vez las empresas usan más ordenadores y redes para funcionar. Esta tarea a puede llegar a ser bastante compleja y puede serlo todavía más si no se afronta de manera adecuada. 

Las incidencias pueden ser debido a causas diversas. Puede afectar a todos o casi todos en la red o solamente a un usuario.  Puede tener más de una causa lo que haga difícil su diagnóstico.

{:.section}
## Condiciones físicas y ambientales de la instalación

Para una correcta instalación de una red local es necesario tener en cuenta las condiciones físicas y ambientales.

Con respecto a las **condiciones físicas** debemos destacar dos aspectos: 

- **Ubicación de los armarios de cableado**: habrá que tener en cuenta las necesidades de suministro de electricidad, de conexión a tierra y climatización. Es decir que cumplir con las normas de seguridad propias de este tipo de instalaciones.
- **Tamaño de los armarios de cableado**: Debe ser lo suficientemente grande como para enderezar los dispositivos de interconexión y el cableado contemplando también las futuras ampliaciones.

Hablando de las **condiciones ambientales**, Estas también son muy importantes puesto que de ellas depende el buen funcionamiento de la red. Se incluyen los siguientes aspectos:

- **Temperatura y humedad**: entre 18º C y 27º C la temperatura y la humedad entre 30% y el 55%.
- Ruidos e interferencias electromagnéticas: pueden provocar errores en la transmisión por lo que es Importante elegir un lugar donde éstos sean mínimos.
- **Inundaciones**: hay que proteger los armarios de cableado y preferentemente no deben pasar tuberías en las cercanías. 
- **Iluminación**: los armarios deben estar bien iluminados con luces preferentemente en techo y colores claros para paredes y techo, además de luces de emergencia.
- **Incendios**: Los armarios deben estar protegidos ante el riesgo de incendios, lo cual implica la instalación de extintores, detectores de humo, pintura ignífuga y demás medidas de seguridad contra incendios.

{:.section}
## Estrategias y parámetros de rendimiento

Cuando hablamos del Rendimiento de una red, nos estamos refiriendo a la velocidad de transferencia, lo cual nos permite indicar si una red está funcionando de forma óptima.

Otra medida del rendimiento es el número de paquetes de datos que llegan de un nodo de red a otros, si el porcentaje es alto quiere decir que la red tiene un buen rendimiento.

El tiempo de respuesta también determina el rendimiento en una red, la Velocidad de transferencia de datos puede ser alta y sin embargo puede que los nodos tarden mucho conectar, por ejemplo en un juego online.

El rendimiento adecuado para una red dependerá de la finalidad de la mima, es decir no es lo mismo una red cuyo objetivo es compartir impresoras que otra cuyo uso base compartir archivos y datos en tiempo real.

{:.section}
## Incidencias físicas e incidencias lógicas en redes locales

Cada incidencia requiere una forma de actuación distinta vamos a ver algunos ejemplos de las mismas. 

{:.subsection}
### Incidencias físicas

Las más típicas son: fallos en tarjetas de red, en los cables o en los dispositivos de interconexión. 

- En una tarjeta de red habría que verificar lo siguiente:
  - el conector del cable esté correctamente conectado la tarjeta,
  - comprobar que el dispositivo interconexión está conectada la toma de corriente, 
  - comprobar que la tarjeta de red está bien instalada. 
- Fallos en los cables, deberíamos:
  - revisar el estado los conectores en los extremos,
  - comprobar la conexión entre los cables la tarjeta de red,
  - comprobar la conexión entre los cables y los dispositivos de interconexión,
  - comprobar que los cables no superan la longitud máxima para su categoría.
- En los dispositivos interconexión, Si es el dispositivo que falla deberíamos: 
  - Comprobar que el dispositivo de interconexión esté conectado la corriente, 
  - Comprobar que la temperatura o dispositivo de interconexión sea la correcta, 
  - Sí afecta a uno de los nodos conectados al dispositivo puede verse un fallo en el puerto al que está conectado, en este caso el led de dicho puerto no se encenderá y probaremos a utilizar otro puerto.   
- No se puede acceder alguna máquina, En este caso: 
  - Comprobaremos que la máquina esté encendida,
  - Comprobaremos que no existen fallos en las tarjetas de red ni en los cables.
  - Intentaremos hacer un ping a la máquina perdida desde otra máquina de red.

{:.subsection}
### Incidencias lógicas

Las más típica son problemas con las impresoras y los ataques de seguridad.

- Problemas con las impresoras, comprobaremos que la impresora:
  - esté encendida
  - esté compartida
  - que no hay que configurar ninguna contraseña en el driver de la impresora para poder imprimir
  - En el caso de que haya una red que oferta el servicio de impresión comprobar que el ordenador que quiere imprimir esté conectado a dicha red.
- Por ataques a la seguridad, entre los posibles efectos encontramos: la destrucción información, el secuestro de información, destrucción o inutilización del sistema operativo, borrado de la BIOS, envío de tráfico inútil, etc. Entre las medidas podemos destacar:
  - Uso antivirus actualizados
  - Uso de cortafuegos
  - Acceso los equipos protegidos por usuario y una contraseña
  - Cifrar los mensajes
  - El uso de las funciones de seguridad de los navegadores
  - Uso protocolos de seguridad redes inalámbricas
  - Comprobación de la veracidad de la información.

{:.section}
## Monitorización de redes cableadas e inalámbricas

Monitorizar tiene como objetivo asegurarse que la red funciona con corrección. También se usa para mejorar el rendimiento de la red mediante el análisis del tráfico de la red. Para ello es preciso conocer:

- Qué se hace en la red,
- Quién lo está haciendo,
- Si se producen fallos en la red
- Y el por qué se han producido esos fallos.

Al ser la red muy extensa – muchos componentes que vigilar, mucho tráfico, ¿en qué nos centraremos?

- En cómo se usan los servicios de la red,
- En contabilizar el tráfico de red,
- En los errores y fallos ocurridos,
- En qué estado se encuentran los procesos que se ejecutan en la red
- En los cambios del software y del hardware para seguir su incidencia,
- En posibles cuellos de botella que detectemos
- En el número de usuario de la red y en aquellos no atendidos,
- En los tiempo de respuesta
- En el número de accesos no autorizados al sistema.

Para poder detectar los problemas debemos establecer una línea base, es decir, los valores normales de rendimiento de la red. Gracias a esta línea base descubriremos más fácilmente los cambios en el rendimiento.

Habitualmente disponemos de herramientas dentro de los sistemas operativos que nos permiten analizar el rendimiento del servidor de red. Nos permiten:

- Obtener y almacenar datos del rendimiento
- Enviar alertas al administrador de red
- Iniciar otro programa que devuelva al sistema a rangos aceptables.

En [este link](https://es.linux-console.net/?p=207) y en [este otro](https://ubunlog.com/herramientas-monitorizar-red-ubuntu/) hay unos cuantos monitores de rendimiento para Linux, en Windows podemos usar [éste](https://iphostmonitor.com/).

Si queremos **monitorizar la red**, hay herramientas que capturan y analizan secuencias de datos de la red desde y hasta el servidor. Por ejemplo: [Nagios](https://www.nagios.org/) y [Wireshark](https://www.wireshark.org/)

También podemos hablar del **protocolo básico de gestión de red** (SNMP – Simple Network Management Protocol). Tiene unos programas llamados agentes que se ejecutan en cada dispositivo de la red administrada, su misión es monitorizar el tráfico de red para recopilar datos estadísticos que se guardan en sus bases de información de gestión (MIB – Management Information Base). 

Adicionalmente a esos agentes, existe un gestor que los va sondeando periódicamente solicitando la información contenida en los MIB. Procesa la información recibida y actúa según lo detectado.

Disponemos de **analizadores de red**, tanto de hardware como de software o mixtos, que supervisan el tráfico de una red de comunicaciones, capturando información para poder monitorizarla. Ejemplo: [PRTG Network Monitor](https://www.paessler.com/es/prtg).

Y finalmente los **logs del sistema**. Son ficheros que registran lo que sucede en un sistema durante un intervalo de tiempo. Pueden ser generados por el sistema operativo u otras aplicaciones que graben esos eventos. Almacenamos la información para su posterior análisis pero adicionalmente hay que establecer una política de copias de seguridad para evitar su borrado o modificación por terceros.

{:.section}
## Herramientas de diagnóstico

A la hora de resolver las incidencias en la red el diagnóstico y la resolución debe realizarse de forma estructurada. El proceso a seguir puede dividirse en cinco pasos:

1. **Identificar el problema**. Se entrevista los usuarios y se trata de obtener una descripción lo más concreta posible el problema a solventar. Además de intentar determinar cuál es la secuencia exacta de eventos que lo desencadenaron.
2. **Aislar el problema**. Hay que intentar el problema si es posible y si no que alguien lo muestre para saber cómo se produce y cuáles son sus resultados.
3. **Planificar la reparación**. Una vez es la del problema debemos llevar a cabo su resolución. Siempre desde las soluciones más sencillas y obvias para pasar a las más complejas y difíciles. Sería importante documentar cada paso de este proceso para poder resolverlo fácilmente si el fallo se repite.
4. **Confirmar los resultados**. Es preciso confirmar que la acción ha resuelto a perder mente el problema para ello deberemos contar nuevamente con la participación del usuario. Deberíamos además comprobar que la reparación no ha generado nuevos problemas.
5. **Documentar los resultados**. Para finalizar Debemos documentar el problema y la reparación. Esta información puede resultarnos útil en el futuro si los fallos se repiten o se producen otros similares.

{:.subsection}
### Herramientas de diagnóstico hardware

Estas herramientas ayudan a identificar los problemas de funcionamiento de los equipos electrónicos y el cableado. Son las siguientes:

- **Voltímetros**, con ellos comprobaremos 
  - si un cable es continuo decir que no tiene cortes, 
  - si un cable está transmitiendo señal, 
  - si una parte expuesta de un cable está tocando otro conductor, 
  - si dos partes del mismo cable se están tocando provocando un cortocircuito.

![img-description](/assets/img/resolucion-de-incidencias/voltimetro.png)
_Voltímetro_

- **Reflectómetros de dominio temporal** (TDR, Time-domain Reflection), son instrumentos electrónicos usados por encontrar defectos en cables metálicos. También los hay para la fibra óptica. Funcionan enviando pulsos a través de los cables para localizar cortes, cortocircuitos o imperfecciones. 

![img-description](/assets/img/resolucion-de-incidencias/tdr.png)
_Reflectómetro de dominio temporal o TDR_

- **Analizadores de LAN**, permiten comprobar el estado de la red LAN en todos los niveles: cableado, hubs, switches etc. 

![img-description](/assets/img/resolucion-de-incidencias/analizadorLan.png)
_Analizador LAN_

- **Osciloscopios**, que miden la señal y las representa gráficamente, en combinación con TDR para un mejor análisis.

![img-description](/assets/img/resolucion-de-incidencias/osciloscopio.png)
_Osciloscopio_


{:.subsection}
### Herramientas de diagnóstico software

Son necesarias para monitorizar identificar problemas en el rendimiento de la red. La principal herramienta es el analizador de protocolos.

Estos analizadores son herramientas de gestión de red que ayudan a los administradores en el mantenimiento, resolución de problemas, ajuste y expansión de la redes.

Capturan las tramas que viajan por la red, decodificándolas y analizando su contenido en tiempo real o bien en diferido.

Realizan las siguientes tareas:

- Ayudan a detectar las fuentes de problemas de la red e identificar su origen y resolverlos. Por ejemplo: componentes defectuosos, errores de configuración, fluctuaciones del tráfico, tráfico no habitual en el servidor.
- Generan estadísticas, tanto de la red como de los usuarios, para crear una imagen de la red. Por ejemplo: porcentaje instantáneo de utilización de la red, porcentaje promedio, número de usuarios, tamaño de las tramas, colisiones …
- Gestionan alarmas ante circunstancias especiales tanto de la red como de los usuarios. Por ejemplo: intrusismo la red, alcanzar la tasa máxima de errores, superar el tiempo máximo de inactividad de la red, superar el tamaño máximo de trama …
- Gestionan históricos de datos del uso de la red e informes de gestión.
- Puede identificar aspectos de la red del tipo: equipos más activos, equipos que provocan errores, rendimiento de la red.

Entre los programas más habituales tenemos:

- [Wireshark](https://www.wireshark.org/)
- [Sniffer Products](https://www.netscout.com/)
- [Capsa](https://www.colasoft.com/)

![img-description](/assets/img/resolucion-de-incidencias/capturaWireshark.png)
_Captura de Wireshark_

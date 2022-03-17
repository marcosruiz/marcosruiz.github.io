---
title: "Seguridad Informática"
date: 2022-03-16 23:30:00 +0100
categories: [Bachillerato, Tecnologías de la Información y Comunicación II]
tags: [tic ii, teoría, seguridad informática]
---

## Introducción

La seguridad informática es el conjunto de medidas encaminadas a proteger el hardware, el software, la información y las personas. Cualquier fallo puede tener repercusiones graves de tipo económico, social o personal.

<iframe width="100%" height="315" src="https://www.youtube.com/embed/FhP9DkdCPQo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Qué diferencia hay entre un hacker y un cracker?

{:.question}
¿Qué diferencia hay entre los hackers white hat, grey hat y black hat?

{:.question}
¿Qué es un exploit?

{:.question}
¿En qué consiste la inyección SQL?

{:.question}
¿Qué es un zero day vulnerability?

{:.question}
¿Qué es WordPress? ¿Es popular?

{:.question}
¿Quién es el experto en ciberseguridad más famoso de España?

<iframe width="100%" height="315" src="https://www.youtube.com/embed/8iJLbYNsIYQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Qué un servidor lo mismo que un PC?

{:.question}
¿Qué es un ataque DoS?

{:.question}
¿Qué dos tipos de ataques DoS existen?

{:.question}
¿Qué es un ataque DDoS?

{:.question}
¿Qué es una botnet? ¿Para qué se utilizan?

{:question}
¿Qué es el malware?

{:.question}
¿Qué es un gusano?

<iframe width="560" height="315" src="https://www.youtube.com/embed/s3LQWSkUqok" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Tipos de seguridad

Tenemos dos tipos de seguridad: Activa y Pasiva.

### Seguridad Activa

Comprende el conjunto de defensas o medidas cuyo objetivo es evitar o reducir los riesgos que amenazan al sistema.

#### Ejemplos

- Impedir el acceso a la información a usuarios no autorizados mediante introducción de nombres de usuario y contraseñas;  
- Evitar la entrada de virus instalando un antivirus; 
- Impedir, mediante encriptación, la lectura no autorizada de mensajes.

#### Recomendaciones

- **Uso de contraseñas seguras**. Una contraseña segura es aquella que es difícil de averiguar. Se trata de poner una contraseña robusta. Una Contraseña robusta es aquella que:
    - No puede encontrarse en un diccionario.
    - Contiene números, letras y símbolos.
    - Contiene letras mayúsculas y minúsculas.
    - Cuanto más largo, más robusto es.
- **Encriptación**: Para proteger la información confidencial que enviamos por la red se utilizan los métodos de encriptación o cifrado. El cifrado es la técnica que impide que los usuarios no autorizados puedan acceder al contenido de un documento. Para ello el contenido se encripta de tal manera que sólo el usuario destinatario puede leerlo, ya que sólo él es capaz de descifrarlo.
- **Software de seguridad activa**: Hay diferentes programas que ayudan a mantener la seguridad informática activamente. Destacamos:
- **Antivirus**: Programa que analiza las distintas unidades y dispositivos, así como el flujo de datos entrantes y salientes. Utiliza una base de datos con cadenas de caracteres características de distintos virus, por lo que es fundamental que esté actualizado. Protegen contra virus, troyanos y gusanos y algunos son antispyware e incluso filtros antispam.
- **Antispyware**: programa cuyo objetivo es eliminar software espía 
- **Cortafuegos (firewall)**: Sistema de defensa que controla y filtra el tráfico de entrada y salida de una red. Se configura para pedir confirmación de cualquier programa que utilice la conexión a Internet (pueden establecerse excepciones). Normalmente incluidos en los SO, aunque también existen otros de software libre o de pago.
- **Proxy**. Software instalado en el PC que funciona como puerta de entrada; se puede configurar como cortafuegos o como limitador de páginas Web.

### Seguridad pasiva

Está formada por las medidas que se implantan para, una vez producido el incidente de seguridad, minimizar su repercusión y facilitar la recuperación del sistema; por ejemplo, teniendo siempre al día copias de seguridad de los datos.

#### Dispositivos físicos de protección

- **Sistemas de alimentación ininterrumpida (SAI)**: Protegen a los equipos frente a apagones y frente a picos o caídas de tensión. Cuando hay un apagón eléctrico, el SAI proporciona la corriente eléctrica necesaria para que dé tiempo a apagar correctamente el equipo.
- **Dispositivos NAS** (network área storage, sistemas de almacenamiento en red): Dispositivos de almacenamiento a los que se accede a través de una red, por lo que suelen ir conectados a un router.

#### Copias de seguridad o backups

Permiten restaurar sistemas o datos si es necesario. Es importante planificar en qué soporte se hacen, con qué periodicidad y de qué elementos del sistema. Las copias de seguridad son un proceso que se utiliza para salvar toda la información, es decir, un usuario, quiere guardar toda la información, o parte de la información, de la que dispone en el PC hasta este momento, realizará una copia de seguridad de tal manera, que lo almacenará en algún medio de almacenamiento como por ejemplo cinta, DVD, BluRay, discos virtuales (en Internet) o simplemente en otro Disco Duro, para posteriormente si se pierde la información, poder restaurar el sistema. 

La copia de seguridad es útil por varias razones: 

- Para restaurar un ordenador a un estado operacional después de un desastre (copias de seguridad del sistema)
- Para restaurar ficheros después de que hayan sido borrados o dañados accidentalmente (copias de seguridad de datos).


#### Particiones del disco duro

Particiones del disco duro. Los discos duros son dispositivos de almacenamiento de información de gran capacidad. Es fácil encontrar actualmente equipos informáticos con discos duros de 1 TB. Los discos duros pueden ser divididos en lo que se llama particiones con el objeto de separar el Sistema Operativo de los datos (el sistema operativo en una partición y los datos en otra). 

Es una buena práctica informática dividir el disco duro de nuestro equipo en dos particiones: en una tendremos instalado el SO y en otra guardaremos los datos. De esta manera, si debemos reinstalar el SO, los datos no se verán afectados. 

{:.question}
¿Qué diferencia hay entre seguridad activa y pasiva?

## Amenazas, vulnerabilidades y riesgos

### Amenazas

En sistemas de información se entiende por amenaza la presencia de uno o más factores de diversa índole (personas, máquinas o sucesos) que -de tener la oportunidad- atacarían al sistema produciéndole daños aprovechándose de su nivel de vulnerabilidad. Hay diferentes tipos de amenazas de las que hay que proteger al sistema, desde las físicas como cortes eléctricos, fallos del hardware o riesgos ambientales hasta los errores intencionados o no de los usuarios, la entrada de software malicioso  o el robo, destrucción o modificación de la información.

### Vulnerabilidades

Son las probabilidades que existen de que una amenaza se materialice contra un activo. No todos los activos son vulnerables a las mismas amenazas. Por ejemplo, los datos son vulnerables a la acción de los hackers, mientras que una instalación eléctrica es vulnerable a un cortocircuito. Al hacer el análisis de riesgos hay que tener en cuenta la vulnerabilidad de cada activo.

### Riesgo

Se denomina riesgo a la posibilidad de que se materialice o no una amenaza aprovechando una vulnerabilidad. Deben aplicarse medidas para disminuirlos o anularlos.

Ejemplos de riesgos:

- Abuso de recursos: que los usuario tengan excesivos privilegios como los del administrador
- Fuga de información
- Correo no deseado
- Virus informático
- Ataques informáticos: robo de información, negación de servicio.

## Software de protección de equipos informáticos

### Antivirus

Un antivirus debe cumplir con ciertos requisitos para ser considerado efectivo y eficiente:
- Tener una constante actualización
- Tener protección permanente
- Tener una completa base de datos de programas malignos
- Eliminar los virus

### Los cortafuegos

Un cortafuegos (firewall) es una parte de un sistema o una red que está diseñada para bloquear el acceso por la red no autorizado, permitiendo al mismo tiempo comunicaciones autorizadas. Por ejemplo, se puede impedir que un determinado programa tenga acceso a Internet o que no se pueda acceder por la red a un equipo.

En Windows, cuando instalamos un programa nuevo que utiliza funciones de red, el firewall nos preguntará si queremos que tenga acceso a la red.

En el firewall de Windows se puede configurar para que bloquee los programas que desee el administrador (opción: “Permitir un programa o una característica a través de Firewall de Windows”) 

## Seguridad en Internet

### Ingeniería social

En la informática, la ingeniería social hace referencia a todas aquellas conductas que permiten obtener información confidencial de otras personas, sin que estas se den cuenta de que la están revelando. Ejemplo: crear sitios web, en los que se ofrecen concursos o cuestionarios falsos que piden a los usuarios una contraseña. Si un usuario escribe la misma contraseña que usa en su trabajo, el hacker la utiliza para entrar en la red de su trabajo sin tener que descifrar ninguna clave.

Se llama phishing a la estafa consistente en imitar la imagen de una empresa o entidad, con la intención de obtener datos del usuario que, posteriormente, se utilizarán de forma fraudulenta.

La forma de phishing más habitual consiste en recibir un mensaje de correo electrónico en el que se solicitan datos, supuestamente por motivos de seguridad, mejorar el servicio, encuestas, confirmación de la identidad, etc. Ejemplo:

Estos mensajes se diseñan para dar la sensación de que proceden de sitios de confianza, como nuestro banco. Para que parezcan más reales suelen contener enlaces que parecen que conducen al sitio web legítimo, cuando en realidad nos remiten a un sitio falso que tiene el mismo aspecto que el sitio web original. Una vez allí, el usuario introduce información personal que se transmite directamente al delincuente.

### Spam (correo basura)

El Spam es el envío masivo de correo electrónico que no ha sido solicitado y que busca
un beneficio por parte del remitente.

Ejemplos de contenido del correo Spam:

- Venta de medicamentos y toda clase de productos milagrosos.
- Software pirata o supuestamente original a precios de escándalo.
- Ofertas de trabajo con suculentos dividendos.
- Descuentos para suscripciones a páginas pornográficas o de apuestas.

A pesar de que hay leyes, como La ley LSSI (Ley de Servicios de la Sociedad de la
Información) en España, que prohíben el spam, su difusión está muy extendida. Se calcula que el 80% de los correos que circulan en Internet son correo basura, spam.


<details class="card mb-2">
  <summary class="card-header question">¿Cómo obtienen los spammers (los que envían spam) las direcciones de correo?</summary>
  <div class="card-body">
    Mediante programas (llamados robots) que buscan y recogen de Internet la direcciones de correo que encuentran. Por eso si publicamos nuestro e-mail en una página pública de Internet, no tardará en caer en manos de algún spammer.
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Cómo comprueban los spammers si han llegado los mensajes?</summary>
  <div class="card-body">
    El mensaje contiene algún elemento (típicamente imágenes diminutas y transparentes)  que, al abrirlo, hace una petición al servidor de spam; de esa forma se sabe que el mensaje ha llegado y se ha leído.
  </div>
</details>

Otro sistema es el de prometer en los mensajes que enviando un mail a una dirección se dejará de recibirlos: cuando alguien contesta, significa no sólo que lo ha abierto, sino que lo ha leído.

### Compras

Internet también ofrece muchas posibilidades para realizar compras. Normalmente se necesita disponer de una tarjeta de crédito.

Conviene tomar algunas precauciones: 

- Comprobar que se utiliza el protocolo de seguridad HTTPS en el navegador
- Que la empresa disponga de un certificado digital: hacer doble clic en un pequeño icono, con forma de candado, que aparece al visualizar la página en el navegador.


## Conexión de forma segura a redes WiFi

Uno de los problemas a los cuales se enfrenta actualmente la tecnología Wi-Fi es la progresiva saturación del espectro radioeléctrico, debido a la masificación de usuarios, esto afecta especialmente en las conexiones de larga distancia (mayor de 100 metros). En realidad Wi-Fi está diseñado para conectar ordenadores a la red a distancias reducidas, cualquier uso de mayor alcance está expuesto a un excesivo riesgo de interferencias.

Un muy elevado porcentaje de redes son instalados sin tener en consideración la seguridad convirtiendo así sus redes en redes abiertas (o completamente vulnerables ante el intento de acceder a ellas por terceras personas), sin proteger la información que por ellas circulan. De hecho, la configuración por defecto de muchos dispositivos Wi-Fi es muy insegura (routers, por ejemplo) dado que a partir del identificador del dispositivo se puede conocer la clave de éste; y por tanto acceder y controlar el dispositivo se puede conseguir en sólo unos segundos.

El acceso no autorizado a un dispositivo Wi-Fi es muy peligroso para el propietario por varios motivos. El más obvio es que pueden utilizar la conexión. Pero además, accediendo al Wi-Fi se puede monitorizar y registrar toda la información que se transmite a través de él (incluyendo información personal, contraseñas...).

Medidas de Seguridad en redes WIFI 

Estas serían las medidas más importantes para proteger la intrusión en nuestra red WIFI: 

1. **Cambiar los datos de acceso al Router WIFI**: Los routers WIFI que se reciben cuando contrata Internet con algún proveedor, suelen tener una contraseña por defecto para acceder a la administración y configuración del dispositivo. Esta contraseña debe cambiarse cuanto antes por otra contraseña. 
2. **Ocultar el nombre de la red WIFI (SSID)**: Cuando alguien intenta conectarse a una red, aparecerán todas las que se encuentran a su alrededor. Para evitar esto al configurar el SSID de la red (el nombre de nuestra red WIFI) en el Router WIFI lo haremos de forma que no se difunda el nombre de la red. De esta manera si alguien quiere conectarse a ella, solo podrá hacerlo si conoce el SSID de antemano. 
3. **Usar protocolos de seguridad**: Mediante protocolos de seguridad que permiten el cifrado en función de una contraseña conseguiremos proteger tanto el acceso a la red, como las comunicaciones entre dispositivos 
    - Los dos sistemas más comunes para asegurar el acceso a la red WiFi son mediante el protocolo WEP (Wired Equivalent Privacy) y el protocolo WPA (WiFi Protected Access). 
    - El protocolo WEP es el más simple y lo implementan prácticamente todos los dispositivos, pero ya han sido encontradas algunas vulnerabilidades que permiten saltarse su protección. 
    - En cambio, el protocolo WPA utiliza un cifrado más fuerte que hace que sea más robusto. También es posible implementar el protocolo WPA2 que es la evolución definitiva del WPA, es el más seguro.

## Bibliografía







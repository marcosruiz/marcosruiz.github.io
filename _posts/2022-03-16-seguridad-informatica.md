---
title: "Seguridad Informática"
date: 2022-03-16 23:30:00 +0100
categories: [Bachillerato, Tecnologías de la Información y Comunicación II]
tags: [tic ii, teoría, seguridad informática]
---

{:.section}
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
¿Es lo mismo un servidor lo mismo que un PC?

{:.question}
¿Qué es un ataque DoS?

{:.question}
¿Qué dos tipos de ataques DoS existen?

{:.question}
¿Qué es un ataque DDoS?

{:.question}
¿Qué es una botnet? ¿Para qué se utilizan?

<details class="card mb-2">
  <summary class="card-header question">¿Qué es el malware?</summary>
  <div class="card-body">
    Malware o "software malicioso" es un término amplio que describe cualquier programa o código malicioso que es dañino para los sistemas. 
  </div>
</details>

{:.question}
¿Qué es un gusano?

<iframe width="100%" height="315" src="https://www.youtube.com/embed/s3LQWSkUqok" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.section}
## Tipos de seguridad

Tenemos dos tipos de seguridad: 

- Activa
- Pasiva

{:.question}
¿Qué diferencia hay entre seguridad activa y pasiva?

{:.subsection}
### Seguridad Activa

Comprende el conjunto de defensas o medidas cuyo objetivo es **evitar o reducir los riesgos que amenazan al sistema**.

{:.subsubsection}
#### Ejemplos

- Impedir el acceso a la información a usuarios no autorizados mediante introducción de nombres de usuario y contraseñas.
- Evitar la entrada de virus instalando un antivirus.
- Impedir, mediante encriptación, la lectura no autorizada de mensajes.

{:.subsubsection}
#### Recomendaciones

- **Uso de contraseñas seguras**: Una contraseña segura es aquella que es difícil de averiguar. Se trata de poner una contraseña robusta. Una Contraseña robusta es aquella que:
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

{:.subsection}
### Seguridad pasiva

Está formada por las medidas que se implantan para, **una vez producido el incidente de seguridad, minimizar su repercusión y facilitar la recuperación del sistema**; por ejemplo, teniendo siempre al día copias de seguridad de los datos.

{:.subsubsection}
#### Dispositivos físicos de protección

Se trata de usar hardware adecuado frente a accidentes y averías.

##### SAI

Los SAI (Sistemas de Alimentación Ininterrumpida) protegen a los equipos frente a apagones y frente a picos o caídas de tensión. Cuando hay un apagón eléctrico, el SAI proporciona la corriente eléctrica necesaria para que dé tiempo a apagar correctamente el equipo.

![SAI](/assets/img/seguridad-informatica/sai.png)
_Ejemplo de SAI_

<iframe width="100%" height="315" src="https://www.youtube.com/embed/Qr58qnz9Vks" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

##### NAS

Los dispositivos NAS (Network Area Storage, sistemas de almacenamiento en red) son dispositivos de almacenamiento a los que se accede a través de una red, por lo que suelen ir conectados a un router.

![NAS doméstico Synology](/assets/img/seguridad-informatica/nas.png)
_NAS doméstico Synology_

De manera opcional aquí tenéis un artículo de como he montado un NAS en mi casa con un mini PC chino: [Instalar OMV 6 en Debian 11 (Bullseye) en mini PC chino](/posts/instalar-omv-6-en-mini-pc-chino/).

<iframe width="100%" height="315" src="https://www.youtube.com/embed/-hG-fG72_24" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="100%" height="315" src="https://www.youtube.com/embed/o1KXOn8mulE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

##### Copias de seguridad o backups

Permiten restaurar sistemas o datos si es necesario. Es importante planificar en qué soporte se hacen, con qué periodicidad y de qué elementos del sistema. Las copias de seguridad son un proceso que se utiliza para salvar toda la información, es decir, un usuario, quiere guardar toda la información, o parte de la información, de la que dispone en el PC hasta este momento, realizará una copia de seguridad de tal manera, que lo almacenará en algún medio de almacenamiento como por ejemplo cinta, DVD, BluRay, discos virtuales (en Internet) o simplemente en otro Disco Duro, para posteriormente si se pierde la información, poder restaurar el sistema. 

La copia de seguridad es útil por varias razones: 

- Para restaurar un ordenador a un estado operacional después de un desastre (copias de seguridad del sistema).
- Para restaurar ficheros después de que hayan sido borrados o dañados accidentalmente (copias de seguridad de datos).

##### Particiones del disco duro

Particiones del disco duro. Los discos duros son dispositivos de almacenamiento de información de gran capacidad. Es fácil encontrar actualmente equipos informáticos con discos duros de 1 TB. Los discos duros pueden ser divididos en lo que se llama particiones con el objeto de separar el Sistema Operativo de los datos (el sistema operativo en una partición y los datos en otra). 

Es una buena práctica informática dividir el disco duro de nuestro equipo en dos particiones: en una tendremos instalado el SO y en otra guardaremos los datos. De esta manera, si debemos reinstalar el SO, los datos no se verán afectados. 

{:.section}
## Vulnerabilidades, Amenazas y riesgos

{:.subsection}
### Vulnerabilidades

Una vulnerabilidad (en términos de informática) es una debilidad o fallo en un sistema de información que pone en riesgo la seguridad de la información pudiendo permitir que un atacante pueda comprometer la integridad, disponibilidad o confidencialidad de la misma, por lo que es necesario encontrarlas y eliminarlas lo antes posible. Estos «agujeros» pueden tener distintos orígenes por ejemplo: fallos de diseño, errores de configuración o carencias de procedimientos.

{:.subsection}
### Amenazas

Una amenaza es toda acción que aprovecha una vulnerabilidad para atentar contra la seguridad de un sistema de información. Es decir, que podría tener un potencial efecto negativo sobre algún elemento de nuestros sistemas. Las amenazas pueden proceder de ataques (fraude, robo, virus), sucesos físicos (incendios, inundaciones) o negligencia y decisiones institucionales (mal manejo de contraseñas, no usar cifrado). Desde el punto de vista de una organización pueden ser tanto internas como externas.

{:.subsection}
### Riesgo

El riesgo es la probabilidad de que se produzca un incidente de seguridad, materializándose una amenaza y causando pérdidas o daños. Se mide asumiendo que existe una cierta vulnerabilidad frente a una determinada amenaza, como puede ser un hacker, un ataque de denegación de servicios, un virus… El riesgo depende entonces de los siguientes factores: la probabilidad de que la amenaza se materialice aprovechando una vulnerabilidad y produciendo un daño o impacto. El producto de estos factores representa el riesgo.

![Vulnerabildad, amenaza y riesgo](/assets/img/seguridad-informatica/riesgo.png)
_Vulnerabildad, amenaza y riesgo_

Ejemplos de riesgos:

- Abuso de recursos: que los usuario tengan excesivos privilegios como los del administrador.
- Fuga de información.
- Correo no deseado.
- Virus informático.
- Ataques informáticos: robo de información, negación de servicio.

{:.section}
## Software de protección de equipos informáticos

{:.subsection}
### Antivirus

Es una aplicación o grupo de aplicaciones dedicadas a la prevención, búsqueda, detección y eliminación de programas malignos en sistemas informáticos.

Un antivirus debe cumplir con ciertos requisitos para ser considerado efectivo y eficiente:

- Tener una constante actualización.
- Tener protección permanente.
- Tener una completa base de datos de programas malignos.
- Eliminar los virus.

{:.subsection}
### Los cortafuegos

Un cortafuegos (firewall) es una parte de un sistema o una red que está diseñada para bloquear el acceso por la red no autorizado, permitiendo al mismo tiempo comunicaciones autorizadas. Por ejemplo, se puede impedir que un determinado programa tenga acceso a Internet o que no se pueda acceder por la red a un equipo.

En Windows, cuando instalamos un programa nuevo que utiliza funciones de red, el firewall nos preguntará si queremos que tenga acceso a la red.

En el firewall de Windows se puede configurar para que bloquee los programas que desee el administrador (opción: "Permitir un programa o una característica a través de Firewall de Windows").

{:.section}
## Amenazas en Internet

{:.subsection}
### Virus

Los virus informáticos son programas que se instalan de forma inadvertida en los ordenadores, realizan su función destructiva y pueden propagarse hacia otros ordenadores.

Para que nuestro ordenador se infecte o contagie con un virus, el código del virus tiene que grabarse en nuestro ordenador, la forma más sencilla de hacer esto para un virus es cuando copiamos archivos, ya que sólo tiene que ocultarse dentro del archivo que estamos copiando.

Una vez el archivo del virus está en nuestro ordenador tiene que ejecutarse para poder realizar sus funciones. 

Hay varias formas de ejecutarse, por ejemplo, lo podemos ejecutar nosotros mismos sin darnos cuenta al abrir un archivo adjunto del correo. 

Normalmente las páginas web contienen texto, gráficos, sonido, animaciones y vídeos. El navegador sólo se leen estos elementos y se visualizan en la pantalla, por lo tanto las páginas web no pueden infectarnos ya que no suelen contener programas que se ejecuten en nuestro ordenador. Normalmente, para que una página web pueda infectar a sus visitantes ha de ser el propio dueño de dicha página el que instale los virus con intención de propagarlos.

{:.subsection}
### Troyano

Es un programa aparentemente legítimo e inofensivo, pero que, al ejecutarlo, le brinda a un atacante acceso remoto al equipo infectado.

{:.subsection}
### Spyware

Es un malware que recopila información de un ordenador y después transmite esta información a una entidad externa sin el conocimiento o el consentimiento del propietario del ordenador.

{:.subsection}
### Gusano

Es un malware que tiene la propiedad de duplicarse a sí mismo, siendo su medio de propagación la red.

{:.subsection}
### Adware

Es un software que muestra publicidad mientras se está utilizando una aplicación sin que el usuario haya consentido en la instalación de dicha publicidad.

{:.subsection}
### Ingeniería social

En la informática, la ingeniería social hace referencia a todas aquellas conductas que permiten obtener información confidencial de otras personas, sin que estas se den cuenta de que la están revelando. Ejemplo: crear sitios web, en los que se ofrecen concursos o cuestionarios falsos que piden a los usuarios una contraseña. Si un usuario escribe la misma contraseña que usa en su trabajo, el hacker la utiliza para entrar en la red de su trabajo sin tener que descifrar ninguna clave.

Se llama phishing a la estafa consistente en imitar la imagen de una empresa o entidad, con la intención de obtener datos del usuario que, posteriormente, se utilizarán de forma fraudulenta.

La forma de phishing más habitual consiste en recibir un mensaje de correo electrónico en el que se solicitan datos, supuestamente por motivos de seguridad, mejorar el servicio, encuestas, confirmación de la identidad, etc. 

![Ejemplo de phising](/assets/img/seguridad-informatica/phising.png)
_Ejemplo de phising_

Estos mensajes se diseñan para dar la sensación de que proceden de sitios de confianza, como nuestro banco. Para que parezcan más reales suelen contener enlaces que parecen que conducen al sitio web legítimo, cuando en realidad nos remiten a un sitio falso que tiene el mismo aspecto que el sitio web original. Una vez allí, el usuario introduce información personal que se transmite directamente al delincuente.

{:.subsection}
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

{:.section}
## Compras seguras en Internet

Internet también ofrece muchas posibilidades para realizar compras. Normalmente se necesita disponer de una tarjeta de crédito.

Conviene tomar algunas precauciones: 

- Comprobar que se utiliza el protocolo de seguridad HTTPS en el navegador
- Que la empresa disponga de un certificado digital: hacer doble clic en un pequeño icono, con forma de candado, que aparece al visualizar la página en el navegador.

![Protocolo de seguridad HTTPS](/assets/img/seguridad-informatica/https.png)
_Protocolo de seguridad HTTPS_

{:.section}
## Conexión de forma segura a redes WiFi

Uno de los problemas a los cuales se enfrenta actualmente la tecnología Wi-Fi es la progresiva saturación del espectro radioeléctrico, debido a la masificación de usuarios, esto afecta especialmente en las conexiones de larga distancia (mayor de 100 metros). En realidad Wi-Fi está diseñado para conectar ordenadores a la red a distancias reducidas, cualquier uso de mayor alcance está expuesto a un excesivo riesgo de interferencias.

Un muy elevado porcentaje de redes son instalados sin tener en consideración la seguridad convirtiendo así sus redes en redes abiertas (o completamente vulnerables ante el intento de acceder a ellas por terceras personas), sin proteger la información que por ellas circulan. De hecho, la configuración por defecto de muchos dispositivos Wi-Fi es muy insegura (routers, por ejemplo) dado que a partir del identificador del dispositivo se puede conocer la clave de éste; y por tanto acceder y controlar el dispositivo se puede conseguir en sólo unos segundos.

El acceso no autorizado a un dispositivo Wi-Fi es muy peligroso para el propietario por varios motivos. El más obvio es que pueden utilizar la conexión. Pero además, accediendo al Wi-Fi se puede monitorizar y registrar toda la información que se transmite a través de él (incluyendo información personal, contraseñas...).

{:.subsection}
### Medidas de Seguridad en redes WIFI 

Estas serían las medidas más importantes para proteger la intrusión en nuestra red WIFI: 

1. **Cambiar los datos de acceso al Router WIFI**: Los routers WIFI que se reciben cuando contrata Internet con algún proveedor, suelen tener una contraseña por defecto para acceder a la administración y configuración del dispositivo. Esta contraseña debe cambiarse cuanto antes por otra contraseña. 
2. **Ocultar el nombre de la red WIFI (SSID)**: Cuando alguien intenta conectarse a una red, aparecerán todas las que se encuentran a su alrededor. Para evitar esto al configurar el SSID de la red (el nombre de nuestra red WIFI) en el Router WIFI lo haremos de forma que no se difunda el nombre de la red. De esta manera si alguien quiere conectarse a ella, solo podrá hacerlo si conoce el SSID de antemano. 
3. **Usar protocolos de seguridad**: Mediante protocolos de seguridad que permiten el cifrado en función de una contraseña conseguiremos proteger tanto el acceso a la red, como las comunicaciones entre dispositivos 
    - Los dos sistemas más comunes para asegurar el acceso a la red WiFi son mediante el protocolo WEP (Wired Equivalent Privacy) y el protocolo WPA (WiFi Protected Access). 
    - El protocolo WEP es el más simple y lo implementan prácticamente todos los dispositivos, pero ya han sido encontradas algunas vulnerabilidades que permiten saltarse su protección. 
    - En cambio, el protocolo WPA utiliza un cifrado más fuerte que hace que sea más robusto. También es posible implementar el protocolo WPA2 que es la evolución definitiva del WPA, es el más seguro.

## Bibliografía

- [Amenaza vs Vulnerabilidad, ¿sabes en qué se diferencian?](https://www.incibe.es/protege-tu-empresa/blog/amenaza-vs-vulnerabilidad-sabes-se-diferencian)





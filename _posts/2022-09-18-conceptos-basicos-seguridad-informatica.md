---
title: "Conceptos básicos de seguridad informática"
date: 2022-09-18 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría]
img_path: /assets/img/conceptos-basicos-seguridad-informatica/
---

{:.section}
## Introducción

La seguridad de la información es el conjunto de medidas y procedimientos, tanto humanos como técnicos, que permiten proteger la integridad, confidencialidad y disponibilidad de la información.

<iframe width="560" height="315" src="https://www.youtube.com/embed/UBh1XPQuVlM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/FhP9DkdCPQo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/84bO7CUn_xU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.section}
## Pilares básicos de la seguridad informática

Los tres pilares de la seguridad informática son:

- Confidencialidad (Confidentiality)
- Integridad (Integrity)
- Disponibilidad (Availability)

![Triada CID](triadaCid.png){: width="400px"}
_Triada CID_

![Triada CIA](triadaCia.png){: width="400px"}
_Triada CIA_

{:.subsection}
### Confidencialidad

Solo los usuarios autorizados conocen la información. Para garantizar la confidencialidad se recurre a:

- Gestión de privilegios.
- Cifrado de la información.

{:.subsection}
### Integridad

Solo el personal autorizado podrá modificar la información. Para garantizar la integridad se recurre a:

- Monitorización del tráfico.
- Auditorias.
- Implementación de sistemas de control de cambios.
- Implementación de procesos de copias de seguridad.

{:.subsection}
### Disponibilidad

Es garantizar que un recurso está disponible para los usuarios autorizados cuando sea necesario. Para garantizar la disponibilidad se recurre a:

- Acuerdo de nivel de servicio.
- Sistemas de redundancia y alta disponibilidad.

{:.section}
## Pilares complementarios de la seguridad informática

Otros tres pilares complementarios son:

- Autenticación
- No repudio
- Trazabilidad
  
{:.subsection}
### Autenticación

Garantiza que el usuario es quien dice ser.

- Algo que se sabe 🧠
- Algo que se es 👀
- Algo que se tiene 💳

Los elementos de autenticación más usados:

- Tarjetas con bandas magnéticas
- Tarjetas inteligentes
- Criptografía
- Firma electrónica
- Kerberos
- Tecnologías de identificación biométricas

{:.subsection}
### No repudio

El no repudio o irrenunciabilidad provee garantía al receptor de una comunicación en cuanto que el mensaje fue originado por el emisor y no por alguien que se hizo pasar por este. Además, previene que el remitente o emisor del mensaje afirme que él no envió el mensaje.

En resumen, el no repudio en seguridad de la información es la capacidad de demostrar o probar la participación de las partes (origen y destino, emisor y receptor, remitente y destinatario), mediante su identificación, en una comunicación o en la realización de una determinada acción.

Para garantizar el no repudio en seguridad informática se necesitan establecer los siguientes mecanismos:

- **Identificación**: mecanismo o proceso que provee la capacidad de identificar a un usuario de un sistema.
- **Autenticación**: permite verificar la identidad o asegurar que un usuario es quien dice ser. 

Se suele aplicar a:

1. Contratos formales establecidos de manera telemática.
1. Comunicación entre dos partes.
1. Transferencia de datos.
1. Acciones de los usuarios en un sistema informático.

{:.subsubsection}
#### Tipos de no repudio

- **En origen**: consiste en garantizar que una persona envió un determinado mensaje. El remitente no puede negar que lo mandó, ya que el destinatario dispone de pruebas del envío.
- **En destino**: avala que alguien recibió un determinado mensaje. En este caso, el destinatario no podrá rebatir que no lo recibió porque el remitente cuenta con pruebas de la recepción.

{:.subsection}
### Trazabilidad

Registra las acciones y en qué momento se han llevado a cabo por parte del usuario o proceso en el sistema.

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo identificación que autenticación?</summary>
  <div class="card-body" markdown="1">

No. 

La **identificación** es la capacidad de identificar de forma exclusiva a un usuario de un sistema o una aplicación que se está ejecutando en el sistema. 

La **autenticación** es la capacidad de demostrar que un usuario o una aplicación es realmente quién dicha persona o aplicación asegura ser.

  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo autenticación que autentificación?</summary>
  <div class="card-body" markdown="1">

Si. Según la RAE son sinónimos.

  </div>
</details>

{:.section}
## Tipos de seguridad

En función de lo que se quiere proteger existe:

- Seguridad física
- Seguridad lógica

En función del momento en el que tiene lugar la protección existe:

- Seguridad activa
- Seguridad pasiva

{:.subsection}
### Seguridad física

Protección de la organización frente a accesos no autorizados y ataques físicos a los equipos e instalaciones. 

Por ejemplo: Un portero en la puerta

{:.subsection}
### Seguridad lógica

Mecanismos y barreras que protegen la información de un sistema informático. Por ejemplo:

- Limitar el acceso a través de cifrados o claves.
- Otorgar privilegios mínimos a los usuarios.
- Controlar que información entra y sale del sistema de información.

{:.subsection}
### Seguridad activa

La seguridad activa se encarga de  evitar que los sistemas informáticos sufran algún daño.Para ello se usan contraseñas para proteger el equipo y  los datos que  contiene. Consiste en realizar, entre otras, las siguientes acciones:

1. Emplear contraseñas seguras:  Para que una contraseña sea segura, debe contener más de ocho caracteres, mezclando letras mayúsculas y minúsculas, números y otros caracteres. No se deben emplear como contraseñas la fecha de nacimiento o el nombre de la mascota.
1. Encriptar los datos importantes:  O lo que es lo mismo, cifrar los datos para que sólo puedan ser leídos si se conoce la clave de cifrado. La encriptación se hace con programas especiales. 
1. Usar software de seguridad: como antivirus, antiespías, cortafuegos.

{:.subsection}
### Seguridad pasiva

El objetivo de las técnicas de seguridad pasiva es minimizar los efectos o desastres causados por un accidente, un usuario o un malware a los sistemas informáticos. Las prácticas de seguridad pasiva más recomendables son: 

1. El uso de hardware adecuado frente a accidentes y averías (refrigeración del sistema, conexiones eléctricas adecuadas, dispositivos SAI...)
1. La realización de copias de seguridad de los datos y del sistema operativo en más de un soporte y en distintas ubicaciones físicas. 
1. Creación de particiones lógicas en el disco duro para poder almacenar archivos y copias  de seguridad (back-up) en una unidad distinta a la del sistema operativo. 


{:.section}
## Terminología de la seguridad informática

En el mundo de la seguridad informática, es habitual manejar los siguientes términos:

1. Activo
1. Vulnerabilidad
1. Amenaza
1. Ataque
1. Riesgo
1. Impacto
1. Desastre

En el siguiente vídeo se explican los conceptos de activo, vulnerabilidad, amenaza y riesgo.

<iframe width="560" height="315" src="https://www.youtube.com/embed/5PvTdbUVFXU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Cuál es la diferencia entre riesgo y amenaza?

{:.subsection}
### Activo

Recurso del sistema (informático o no) necesario para que la organización alcance los objetivos propuestos. Es decir, todo aquello que tenga valor y deba ser protegido frente a un percance intencionado o no.

Los principales activos de una empresa informática son:

1. La información
1. El software
1. La infraestructura física
1. El personal

{:.subsection}
### Vulnerabilidad

Se considera una vulnerabilidad a una **debilidad propia de un sistema que permite ser atacado y recibir un daño**. Las vulnerabilidades se producen de forma habitual por una baja protección contra ataques externos, falta de actualizaciones, fallos de programación, y otras causas similares.

A las vulnerabilidades también se las conoce como agujeros de seguridad y tienen la ventaja de que pueden ser solventadas una vez sean descubiertas.

Una vulnerabilidad pone en riesgo los datos y sistemas de una empresa **comprometiendo su integridad, privacidad y disponibilidad**.

Una de las principales responsabilidades en ciberseguridad es la de identificar las vulnerabilidades existentes para poder aplicar las medidas correctoras que las eliminen. Las brechas de seguridad dejan los sistemas expuestos a múltiples amenazas, incrementando el riesgo de que puedan producirse en cualquier momento, dejando a la empresa en una situación complicada...

{:.subsubsection}
#### Motivos de vulnerabilidades

Los motivos principales de las vulnerabilidades los podemos encontrar por los siguientes motivos:

1. **Configuraciones erróneas (misconfigurations)**: las configuraciones erróneas se definen simplemente como implementaciones deficientes de todos los controles de seguridad para un activo (por ejemplo, un servidor o una aplicación web). Esto implica que un activo que se considera seguro tiene realmente carencias o errores peligrosos que dejan la organización abierta a los riesgos.
1. **Configuración por defecto (default installation)**: la configuración inicial de dispositivos, redes o software está más dirigida a la usabilidad que a la seguridad. Este compromiso tiene un gran riesgo. Aceptar la configuración predeterminada sin revisar qué es realmente es peligroso para la información confidencial de las empresas.
1. **Desbordamiento de memoria (buffer overflow)**: es probablemente la forma más conocida de vulnerabilidad en seguridad de software. La mayoría de los desarrolladores de software saben cuál es la vulnerabilidad de un desbordamiento de memoria. Esta vulnerabilidad está presente tanto en aplicaciones antiguas como en las desarrolladas recientemente. Una parte del problema se debe a la gran variedad de formas en las que puede haber desbordamientos de memoria intermedia y una parte se debe a las técnicas propensas a errores que a menudo se usan para prevenirlas. 
1. **Carencia de actualizaciones (missing patches)**: por mucho que sea un software muy archivado y diseñado, el software creado por humanos no es ni será nunca perfecto. Mantener los equipos actualizados puede evitar que los atacantes usen vulnerabilidades conocidas para explotar los activos. 
1. **Errores de diseño (design flaws)**: se trata de defectos inherentes al diseño del sistema como, por ejemplo, el cifrado y la validación de datos. No son los defectos o errores típicos de seguridad. Son funciones legítimas con consecuencias involuntarias que los atacantes quieren explotar. Mediante los defectos de la lógica en la funcionalidad de los sistemas existentes, los atacantes son capaces de esconderse y evadir la detección de los sistemas de protección. 
1. **Errores de sistema operativo (operating system flaws)**: estos defectos son específicos para cada sistema operativo. Los sistemas operativos son aplicaciones muy complejas y con muchas líneas de código que pueden presentar fácilmente debilidades de seguridad. Palabra de acceso por defecto (default passwords): las configuraciones de software predeterminadas de fábrica para sistemas y dispositivos suelen incluir palabras de acceso simples y documentadas públicamente. Estos sistemas normalmente no proporcionan una interfaz completa del sistema operativo para la gestión de los usuarios y las palabras de acceso predeterminadas son normalmente idénticas (compartidas) entre todos los sistemas de un vendedor o dentro de las líneas de productos.

{:.subsubsection}
#### Gestión de vulnerabilidades

Para llevar el control y la gestión de vulnerabilidades hay diferentes repositorios de datos con información de vulnerabilidades, entre las que se destacan las siguientes:

1. **National Vulnerability Database (NVD)**: la National Vulnerability Database es el depósito del Gobierno norteamericano de datos de gestión de vulnerabilidades basadas en estándares representados mediante el protocolo de automatización de contenido de seguridad (SCAP). Estos datos permiten automatizar la gestión de la vulnerabilidad, la medida de la seguridad y el cumplimiento.
1. **Common Vulnerability Scoring System (CVSS)**: en 2003 la NIAC propone como objetivo crear un estándar universal de puntuación de las vulnerabilidades de software y crea el CVSS.
1. **Identificación de las vulnerabilidades**: las vulnerabilidades conocidas se identifican con un código único denominado CVE (common vulnerabilities and exposures). Esta codificación fue creada y es mantenida por MITRE Corporation, organización adscrita en el Gobierno de los Estados Unidos.

{:.subsubsection}
#### Herramientas de gestión de vulnerabilidades

En el mercado podemos encontrar múltiples herramientas para detectar o recoger vulnerabilidades. Algunas son abiertas, y otras, con licencia. Podemos encontrar las siguientes:

1. **Nessus**: es un programa de escaneo de vulnerabilidades en varios sistemas operativos. Consiste en un demonio o diablo, nessusd, que realiza el escaneo en el sistema de destino, y nessus, el cliente (basado en consola o gráfico), que muestra el avance e informa sobre el estado de los escaneos.
1. **Qualys**: proporciona seguridad a la nube, cumplimiento y servicios relacionados. Qualys fue la primera empresa que ofreció soluciones de gestión de vulnerabilidades, como aplicaciones a través de la web mediante un modelo de Software as a Service (SaaS). Ha añadido ofertas de cumplimiento basadas en la nube y seguridad de las aplicaciones web.
1. **GFI Languard**: gestiona, protege y soluciona problemas de red, sistemas y software, condensando muchas tareas importantes de seguridad de las TI en una herramienta de gestión.
1. **Nikto**: es un escáner de servidores web de código abierto (GPL) que hace pruebas completas contra servidores web para varios ítems, incluyendo más de 6.700 ficheros o programas potencialmente peligrosos, comprobación de versiones obsoletas de más de 1.250 servidores y problemas específicos de la versión en más de 270 servidores. También comprueba que haya elementos de configuración del servidor como, por ejemplo, la presencia de varios ficheros de índices, opciones del servidor HTTP e intenta identificar los servidores web y el software instalados.
1. **OpenVAS**: es un escáner de vulnerabilidades completo. Sus capacidades incluyen escaneos autenticados (es decir, se hacen con un usuario registrado, con la sesión iniciada), escaneos no autenticados, pruebas con varios protocolos de internet e industriales de alto nivel y bajo nivel, sintonización de rendimiento para exploraciones a gran escala y un lenguaje potente de programación interno para implementar cualquier tipo de prueba de vulnerabilidad.
1. **Retina CS**: es una solución autónoma diseñada para descubrir, perfilar y evaluar todos los activos desplegados en la red de una organización. Puede identificar, priorizar y solucionar de manera eficiente las vulnerabilidades como, por ejemplo, los parches que faltan y los puntos débiles de la configuración. La solución proporciona informes técnicos en profundidad, así como informes ejecutivos e informes PCI.

{:.subsection}
### Amenaza

Una amenaza es **la posibilidad de que un sistema vulnerable sea atacado y sufra daños**. Las amenazas de un sistema informático provienen principalmente de ataques externos (malware, denegación de servicio o inyecciones SQL, entre otros), de no cumplir las políticas de seguridad (conectar dispositivos no autorizados a la red o utilizar contraseñas débiles) y de sucesos inesperados (como incendios o robos físicos, por ejemplo).

Podemos nombrar las amenazas más importantes a las que se enfrenta una infraestructura IT son:

- **Código malicioso**. Estos ataques malware atacan dispositivos y servidores con el fin de robar información sensible, como datos bancarios o credenciales de acceso. Los ataques ransomware son una de las mayores amenazas hoy en día para los sistemas informáticos de las empresas.
- **Robo de identidad**. Otra amenaza que pone en riesgo los sistemas de una organización es el phishing o robo de identidad. La amenaza consiste en engañar al usuario para que facilite de forma involuntaria sus credenciales de acceso a un tercero que las utilizará de forma fraudulenta.
- **Amenazas Persistentes Avanzadas**. Las conocidas como APT (Amenazas Persistentes Avanzadas) son ataques coordinados que se dirigen a una empresa para robar sus datos. Son una de las amenazas más difíciles de detectar, ya que utilizan técnicas de ingeniería social.
- **Denegación de servicio**. Los ataques DDoS son una amenaza que se cierne sobre servidores que pretenden ser colapsados enviándoles una enorme cantidad de peticiones (haciendo que no puedan atenderlas, e incluso que terminen cayendo).
- **Negligencia**. Los usuarios suelen ser la mayor amenaza para un sistema informático. Los errores humanos y el no incumplimiento de las políticas y normas de seguridad de la empresa ponen en peligro los sistemas y los datos de la empresa.

{:.subsubsection}
#### Tipos de amenazas

En Magerit se clasifican las amenazas en cuatro tipos en función del origen, que son los siguientes:

1. **Desastre natural**: incidente que se produce por una causa natural (terremotos, inundaciones...) sin que haya intervención humana como causa directa o indirecta. Ante estos avatares, el sistema de información es víctima pasiva, pero de todas maneras tiene que tenerse en cuenta qué puede pasar.
1. **Del entorno (de origen industrial)**: incidente que se produce de forma accidental o deliverada, derivado de la actividad humana de tipo industrial (contaminación, fallos eléctricos...) ante los cuales el sistema de información es víctima pasiva. No se tiene que estar pasivo frente a estas amenazas.
1. **Defectos de las aplicaciones**: incidentes no intencionados causados por las personas. Son problemas que nacen directamente en la equipación por defectos en el diseño o en la implementación, con consecuencias potencialmente negativas sobre el sistema. Son las vulnerabilidades que los atacantes buscan.
1. **Causadas por las personas de manera deliberada**: las personas con acceso a los sistemas de información pueden ser causa de problemas intencionados: ataques deliberados, bien con ánimo de beneficiar indebidamente, bien con ánimo de causar daños y perjuicios a los legítimos propietarios. No todas las amenazas afectan todos los activos, sino que hay una cierta relación entre el tipo de activo y lo que le puede pasar.

{:.subsection}
### Ataque

Un ataque es una acción que trata de aprovechar una vulnerabilidad de un sistema informático para provocar un impacto sobre él e incluso tomar el control del mismo.

Un ataque informático pasa por las siguientes fases:

1. Reconocimiento
1. Preparación
1. Distribución
1. Explotación
1. Instalación
1. Comando y control
1. Acciones sobre los objetivos

![Las 7 fases de un ciberataque](fasesAtaqueInformatico.jpg)
_Las 7 fases de un ciberataque_

![Menú de Kali](kaliMenu.jpg)
_Menú de Kali_

<details class="card mb-2">
  <summary class="card-header question">¿Qué es Kali?</summary>
  <div class="card-body" markdown="1">

Kali Linux es una distribución GNU Linux que contiene un conjunto de herramientas que facilitan las diferentes actividades de hacking y pentesting.

  </div>
</details>

{:.question}
¿Qué es una distribución GNU Linux?

Leed artículo [Las 7 fases de un ciberataque. ¿Las conoces?](https://www.incibe.es/protege-tu-empresa/blog/las-7-fases-ciberataque-las-conoces).

{:.subsubsection}
#### Reconocimiento

Obtención en fuentes abiertas de cualquier tipo de información de la organización y su infraestructura con el objetivo de crear un perfil.

{:.subsubsection}
#### Preparación

Creación de herramientas de explotación para atacar las vulnerabilidades potenciales. Un exploit podrá integrar un payload que realizará acciones a posteriori (Backdoor).

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un exploit?</summary>
  <div class="card-body" markdown="1">

Cualquier elemento (código, herramienta,…) que puede sacar partido de una vulnerabilidad. Cuando un agente malicioso ha identificado una vulnerabilidad, desarrollará o buscará un exploit para intentar acceder al sistema, o realizar acciones en él (dejarlo indisponible, sacar información, modificar información…).

  </div>
</details>

{:.subsubsection}
#### Distribución

Instalación del exploit mediante diferentes técnicas: USB, descarga en correo de engaño, …

{:.subsubsection}
#### Explotación

Hay que asegurar que el exploit ha funcionado y no se ha detectado por las herramientas de las organización.

{:.subsubsection}
#### Instalación

Instalación de accesos persistentes a múltiples sistemas de la organización.

{:.subsubsection}
#### Comando y control

Control de los sistemas infectados desde un servidor centralizado en internet. Todo este sistema debe estar cifrado y encapsulado de manera que no sea detectado. 

{:.subsubsection}
#### Acciones sobre los objetivos

En caso de haber llegado a este punto sin haber sido detectado, el atacante puede llevar a cabo sus acciones: exfiltrar información para venderla, cifrar información y pedir un rescate, ..

<details class="card mb-2">
  <summary class="card-header question">¿Qué es MITRE ATT&CK?</summary>
  <div class="card-body" markdown="1">

[MITRE ATT&CK](https://attack.mitre.org/) es una colección de técnicas usadas por los atacantes durante un ataque. Las técnicas están agrupadas en 12 tácticas.

La información identificada y actualizada, debe ser usada para proteger la organización.

MITRE proporciona la siguiente información:

- Página de los grupos atacantes. Para cada uno de ellos se identifica las tácticas usadas, sus herramientas más habituales, referencias, …
- Navegador MITRE ATT&CK.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### Riesgo

> "un escenario que describe un evento y sus consecuencias, estimado en términos de impacto y probabilidad. GT29.WP248: Guías sobre las evaluaciones de Impacto en Protección de Datos.

Se denomina riesgo a la **posibilidad de que un sistema sufra un incidente de seguridad y que una amenaza se materialice causando una serie de daños**. Para medir el riesgo de un sistema informático se debe asumir que existe una vulnerabilidad ante una amenaza. El riesgo es, por lo tanto, **la probabilidad de que la amenaza se materialice aprovechando una vulnerabilidad existente**.

![Ecuación del riesgo](ecuacionDelRiesgo.jpg)
_Ecuación del riesgo_

{:.subsection}
### Impacto

Daño causado en caso de que una amenaza se materialice.

El impacto variará dependiendo de las estrategias que haya adoptado una empresa.

{:.subsection}
### Desastre

Un desastre es cualquier evento accidental, natural o malintencionado que interrumpe las operaciones o servicios habituales de una organización.

Por ejemplo: La caída de un servidor como consecuencia de un ataque DDoS.


<details class="card mb-2">
  <summary class="card-header question">¿Qué es un ataque DoS?</summary>
  <div class="card-body" markdown="1">

Los ataques por denegación de servicio distribuidos (DDoS) son un arma de ciberseguridad cuyo objetivo es interrumpir la actividad del servicio afectado

  </div>
</details>

{:.section}
## Atacantes

Existen los siguientes atacantes:

- Hackers
- Hackers éticos, white hat o sneaker
- Crackers o black hats
- Grey hats
- Pherakers
- Script Kiddies
- Hacktivistas
- Insiders
- Estados
- Crimen organizado

{:.subsection}
### Hackers

Persona con grandes conocimientos de informática que se dedica a detectar fallos de seguridad en sistemas informáticos.

{:.subsection}
### Hackers éticos, white hat o sneaker

Hacker que busca comprobar posibles intrusiones.

{:.subsection}
### Crackers o black hats

Hacker con objetivos maliciosos.

<details class="card mb-2">
  <summary class="card-header question">¿Cuál es la diferencia entre los white hats y los black hats?</summary>
  <div class="card-body" markdown="1">

La diferencia entre los buenos hackers, también llamados hackers de sombrero blanco (white hat hacker) o hackers éticos y los hackers malos (black hat hackers) o crackers, es que los primeros tienen autorización expresa de revisar, probar, desentrañar y modificar los sistemas informáticos con la finalidad de detectar vulnerabilidades y posteriormente desarrollar y aplicar medidas de seguridad, parches o mejoras; en cambio, los segundos irrumpen en dichos sistemas con la intención de robar o destruir información, sabotear, cometer fraudes y generar caos actuando de manera ilegal e irresponsable.

  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un zero day?</summary>
  <div class="card-body" markdown="1">

Se trata de vulnerabilidades de sistemas que todavía no son conocidas por el público, ni siquiera por el propio fabricante, y para las cuales no existe todavía una solución de seguridad. Pueden ser muy valiosos para los hackers (bug bounty).

  </div>
</details>

{:.subsection}
### Grey hats

Hacker entre white hat y black hat. Son personas que realizan ambos tipos de "sombrero", tanto negro como blanco. Buscan vulnerabilidad en el sistema con o sin el permiso de los propietarios y si encuentran un fallo, se comunican con el propietario y piden un precio a cambio de la solución del problema y si no acceden el se encarga de hacer pública la vulnerabilidad, la cual le daría problemas a la empresa.

{:.subsection}
### Script Kiddies, crashers, lamers o packet monkeys

Conocimientos básicos, no pueden llevar a cabo un ataque por sí mismo. Sin embargo: 

- Tienen a su disposición herramientas que pueden causar daño.
- Pueden seguir las instrucciones de hackers más avanzados.

Aunque parezcan inofensivos por su falta de conocimiento, pueden causar mucho daño.

{:.question}
¿Qué es un script?

{:.subsection}
### Hacktivistas

Individuos o grupos que dan soporte a organismos sociales y políticos de cualquier tipo.

Si la agenda lo requiere, usarán su conocimiento para causar daño a algún tipo de infraestructura TIC.

Si bien algunas acciones tienen objetivos nobles y buscan un beneficio social, se trata de acciones ilegales y el hacktivista puede llegar a tener responsabilidad legal.

{:.subsection}
### Insiders

Está demostrado que es mucho más difícil atacar una organización desde fuera que desde dentro de la red. 

Por ello algunos atacantes intentan entrar a una empresa (con identidad falsa) para realizar sus acciones.

También se puede dar el caso de empleados que por diferentes razones intentan llevar a cabo acciones contra la empresa (tras un despido, tras un enfado, …).

Un insider puede causar mucho más daño que un atacante externo, al tener acceso directo a la red interna. 

{:.subsection}
### Estados

El ciberespacio es desde hace año uno de los espacios de la guerra. Al fin y al cabo, los servicios esenciales de los países dependen de las infraestructuras tecnológicas para su funcionamiento.

Los ejércitos cuentan con especialistas que protegen dichas infraestructuras TIC frente a ciberataques y otro tipo de amenazas. 

Estos especialistas pueden ser personal del ejército, o pueden ser grupos vinculados.

Estos especialistas también pueden llevar a cabo acciones de inteligencia (obtención de información de otros países mediante técnicas de espionaje, fake news con objetivo de desestabilización) e incluso acciones que comprometan las infraestructuras de los servicios esenciales.

En el contexto de guerra híbrida, los ciberataques y las técnicas de desestabilización pueden ser más dañinas que las propias acciones militares. 

{:.subsection}
### Crimen organizado

El ciberespacio es el lugar donde los cibercriminales han migrado sus actividades. Cada grupo tiene sus especializaciones: investigación y reconocimiento de víctimas, accesos a las empresas, desarrollo de software malicioso, exfiltración de datos, extorsión, ....

Ejemplos de actividades maliciosas: venta de datos robados, indisponibilidad de los servicios, extorsión, … 

A través de ataques como el RANSOMWARE, el crimen organizado en internet genera más dinero que la venta ilegal de armas, las drogas o la prostitución juntas.

{:.section}
## Vídeo

<iframe width="560" height="315" src="https://www.youtube.com/embed/_1ni_tjjVDQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Preguntas sobre el vídeo:

- Sobre los cibercriminales, ¿Cuáles son sus motivaciones? ¿Qué esperan hacer tras realizar los ataques?
- Sobre los cibercriminales, ¿Dónde están?
- Sobre los cibercriminales, ¿Qué tácticas usan?
- Sobre la víctima, ¿Por qué la atacan?
- Sobre la víctima, ¿Qué ocurriría si la atacaran?
- Sobre la víctima, ¿Qué vulnerabilidades se ven en el vídeo?
- En general sobre la víctima, ¿qué tipo de empresa puede ser atacada?
- Sobre la empresa de ciberseguridad, ¿Qué tipo de actividades lleva a cabo?
- Sobre la empresa de ciberseguridad, ¿Por qué dicen que la seguridad no es sólo un problema de tecnología?

{:.section}
## Bibliografía

- [Ingeniería social y cómo protegerse](https://www.avast.com/es-es/c-social-engineering)
- [Identificación y autenticación](https://www.ibm.com/docs/es/ibm-mq/7.5?topic=ssfksj-7-5-0-com-ibm-mq-sec-doc-q009740--htm)
- [Diferencias entre amenaza, vulnerabilidad y riesgo](https://www.ambit-bst.com/blog/diferencias-entre-amenaza-vulnerabilidad-y-riesgo)
- [Las 7 fases de un ciberataque. ¿Las conoces?](https://www.incibe.es/protege-tu-empresa/blog/las-7-fases-ciberataque-las-conoces)
- [No repudio, ¿qué significa en seguridad informática?](https://www.unir.net/ingenieria/revista/no-repudio-seguridad-informatica/#:~:text=En%20resumen%2C%20el%20no%20repudio,realizaci%C3%B3n%20de%20una%20determinada%20acci%C3%B3n.)
- [¿Qué es un keylogger?](https://latam.kaspersky.com/resource-center/definitions/keylogger)
- [Red Team, Blue Team y Purple Team, ¿cuáles son sus funciones y diferencias?](https://www.unir.net/ingenieria/revista/red-blue-purple-team-ciberseguridad/)
- [Amenaza vs vulnerabilidad: cómo diferenciarlos](https://www.incibe.es/protege-tu-empresa/blog/amenaza-vs-vulnerabilidad-diferenciarlos)
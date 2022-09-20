---
title: "Conceptos básicos de seguridad informática"
date: 2022-09-18 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría]
---


## 1. Introducción

La seguridad de la información es el conjunto de medidas y procedimientos, tanto humanos como técnicos, que permiten proteger la integridad, confidencialidad y disponibilidad de la información.

<iframe width="560" height="315" src="https://www.youtube.com/embed/UBh1XPQuVlM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/FhP9DkdCPQo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/84bO7CUn_xU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## 2. Pilares básicos de la seguridad informática

Los tres pilares de la seguridad informática son:

- Confidencialidad (Confidentiality)
- Integridad (Integrity)
- Disponibilidad (Availability)

![Triada CID](/assets/img/conceptos-basicos-seguridad-informatica/triadaCid.png)
_Triada CID_

![Triada CIA](/assets/img/conceptos-basicos-seguridad-informatica/triadaCia.png)
_Triada CIA_

### 2.1. Confidencialidad

Solo los usuarios autorizados conocen la información. Para garantizar la confidencialidad se recurre a:

- Gestión de privilegios.
- Cifrado de la información.


### 2.2. Integridad

Solo el personal autorizado podrá modificar la información. Para garantizar la integridad se recurre a:

- Monitorización del tráfico
- Auditorias
- Implementación de sistemas de control de cambios.
- Implementación de procesos de copias de seguridad 


### 2.3. Disponibilidad

Es garantizar que un recurso está disponible para los usuarios autorizados cuando sea necesario. Para garantizar la disponibilidad se recurre a:

- Acuerdo de nivel de servicio.
- Sistemas de redundancia y alta disponibilidad.

## 3. Pilares complementarios de la seguridad informática

Otros tres pilares complementarios son:

- Autenticación
- No repudio
- Trazabilidad
  
### 3.1. Autenticación

Garantiza que el usuario es quien dice ser.

- Algo que se sabe
- Algo que se es
- Algo que se tiene

Los elementos de autenticación más usados:

- Tarjetas con bandas magnéticas
- Tarjetas inteligentes
- Criptografía
- Firma electrónica
- Kerberos
- Tecnologías de identificación biométricas

### 3.2. No repudio

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

#### Tipos de no repudio

- **En origen**: consiste en garantizar que una persona envió un determinado mensaje. El remitente no puede negar que lo mandó, ya que el destinatario dispone de pruebas del envío.
- **En destino**: avala que alguien recibió un determinado mensaje. En este caso, el destinatario no podrá rebatir que no lo recibió porque el remitente cuenta con pruebas de la recepción.

### 3.3. Trazabilidad

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

## 4. Tipos de seguridad

En función de lo que se quiere proteger existe:

- Seguridad física
- Seguridad lógica

En función del momento en el que tiene lugar la protección existe:

- Seguridad activa
- Seguridad pasiva

#### 4.1.1. Seguridad física

Protección de la organización frente a accesos no autorizados y ataques físicos a los equipos e instalaciones. 

Por ejemplo: Un portero en la puerta

#### 4.1.2. Seguridad lógica

Mecanismos y barreras que protegen la información de un sistema informático. Por ejemplo:

- Limitar el acceso a través de cifrados o claves.
- Otorgar privilegios mínimos a los usuarios.
- Controlar que información entra y sale del sistema de información.

#### 4.2.2. Seguridad activa

La seguridad activa se encarga de  evitar que los sistemas informáticos sufran algún daño.Para ello se usan contraseñas para proteger el equipo y  los datos que  contiene. Consiste en realizar, entre otras, las siguientes acciones:

1. Emplear contraseñas seguras:  Para que una contraseña sea segura, debe contener más de ocho caracteres, mezclando letras mayúsculas y minúsculas, números y otros caracteres. No se deben emplear como contraseñas la fecha de nacimiento o el nombre de la mascota. 
1. Encriptar los datos importantes:  O lo que es lo mismo, cifrar los datos para que sólo puedan ser leídos si se conoce la clave de cifrado. La encriptación se hace con programas especiales. 
1. Usar software de seguridad: como antivirus, antiespías, cortafuegos.

#### 4.2.1. Seguridad pasiva

El objetivo de las técnicas de seguridad pasiva es minimizar los efectos o desastres causados por un accidente, un usuario o un malware a los sistemas informáticos. Las prácticas de seguridad pasiva más recomendables son: 

1. El uso de hardware adecuado frente a accidentes y averías (refrigeración del sistema, conexiones eléctricas adecuadas, dispositivos SAI...)
1. La realización de copias de seguridad de los datos y del sistema operativo en más de un soporte y en distintas ubicaciones físicas. 
1. Creación de particiones lógicas en el disco duro para poder almacenar archivos y copias  de seguridad (back-up) en una unidad distinta a la del sistema operativo. 


## 5. Terminología de la seguridad informática

En el mundo de la seguridad informática, es habitual manejar los siguientes términos:

1. Activo
1. Vulnerabilidad
1. Amenaza
1. Ataque
1. Riesgo
1. Impacto
1. Desastre

### 5.1. Activo

Recurso del sistema (informático o no) necesario para que la organización alcance los objetivos propuestos. Es decir, todo aquello que tenga valor y deba ser protegido frente a un percance intencionado o no.

Los principales activos de una empresa informática son:

1. La información
1. El software
1. La infraestructura física
1. El personal

### 5.2. Vulnerabilidad

Se considera una vulnerabilidad a una **debilidad propia de un sistema que permite ser atacado y recibir un daño**. Las vulnerabilidades se producen de forma habitual por una baja protección contra ataques externos, falta de actualizaciones, fallos de programación, y otras causas similares.

A las vulnerabilidades también se las conoce como agujeros de seguridad y tienen la ventaja de que pueden ser solventadas una vez sean descubiertas.

Una vulnerabilidad pone en riesgo los datos y sistemas de una empresa **comprometiendo su integridad, privacidad y disponibilidad**.

Una de las principales responsabilidades en ciberseguridad es la de identificar las vulnerabilidades existentes para poder aplicar las medidas correctoras que las eliminen. Las brechas de seguridad dejan los sistemas expuestos a múltiples amenazas, incrementando el riesgo de que puedan producirse en cualquier momento, dejando a la empresa en una situación complicada...

### 5.3. Amenaza

Una amenaza es **la posibilidad de que un sistema vulnerable sea atacado y sufra daños**. Las amenazas de un sistema informático provienen principalmente de ataques externos (malware, denegación de servicio o inyecciones SQL, entre otros), de no cumplir las políticas de seguridad (conectar dispositivos no autorizados a la red o utilizar contraseñas débiles) y de sucesos inesperados (como incendios o robos físicos, por ejemplo).

Podemos nombrar las amenazas más importantes a las que se enfrenta una infraestructura IT son:

- **Código malicioso**. Estos ataques malware atacan dispositivos y servidores con el fin de robar información sensible, como datos bancarios o credenciales de acceso. Los ataques ransomware son una de las mayores amenazas hoy en día para los sistemas informáticos de las empresas.
- **Robo de identidad**. Otra amenaza que pone en riesgo los sistemas de una organización es el phishing o robo de identidad. La amenaza consiste en engañar al usuario para que facilite de forma involuntaria sus credenciales de acceso a un tercero que las utilizará de forma fraudulenta.
- **Amenazas Persistentes Avanzadas**. Las conocidas como APT (Amenazas Persistentes Avanzadas) son ataques coordinados que se dirigen a una empresa para robar sus datos. Son una de las amenazas más difíciles de detectar, ya que utilizan técnicas de ingeniería social.
- **Denegación de servicio**. Los ataques DDoS son una amenaza que se cierne sobre servidores que pretenden ser colapsados enviándoles una enorme cantidad de peticiones (haciendo que no puedan atenderlas, e incluso que terminen cayendo).
- **Negligencia**. Los usuarios suelen ser la mayor amenaza para un sistema informático. Los errores humanos y el no incumplimiento de las políticas y normas de seguridad de la empresa ponen en peligro los sistemas y los datos de la empresa.

### 5.4. Ataque

Un ataque es una acción que trata de aprovechar una vulnerabilidad de un sistema informático para provocar un impacto sobre él e incluso tomar el control del mismo.

Un ataque informático pasa por las siguientes fases:

- Reconocimiento
- Preparación
- Distribución
- Explotación
- Instalación
- Comando y control
- Acciones sobre los objetivos

![Las 7 fases de un ciberataque](/assets/img/conceptos-basicos-seguridad-informatica/fasesAtaqueInformatico.jpg)
_Las 7 fases de un ciberataque_

#### 5.4.1. Reconocimiento
Obtención en fuentes abiertas de cualquier tipo de información de la organización y su infraestructura con el objetivo de crear un perfil.

#### 5.4.2. Preparación
Creación de herramientas de explotación para atacar las vulnerabilidades potenciales. Un exploit podrá integrar un payload que realizará acciones a posteriori (Backdoor). 

#### 5.4.3. Distribución
Instalación del exploit mediante diferentes técnicas: USB, descarga en correo de engaño, …

#### 5.4.4. Explotación
Hay que asegurar que el exploit ha funcionado y no se ha detectado por las herramientas de las organización.

#### 5.4.5. Instalación
Instalación de accesos persistentes a múltiples sistemas de la organización.

#### 5.4.6. Comando y control
Control de los sistemas infectados desde un servidor centralizado en internet. Todo este sistema debe estar cifrado y encapsulado de manera que no sea detectado. 

#### 5.4.7. Acciones sobre los objetivos
En caso de haber llegado a este punto sin haber sido detectado, el atacante puede llevar a cabo sus acciones: exfiltrar información para venderla, cifrar información y pedir un rescate, ..

Leed artículo [Las 7 fases de un ciberataque. ¿Las conoces?](https://www.incibe.es/protege-tu-empresa/blog/las-7-fases-ciberataque-las-conoces).


### 5.5. Riesgo

Se denomina riesgo a la **posibilidad de que un sistema sufra un incidente de seguridad y que una amenaza se materialice causando una serie de daños**. Para medir el riesgo de un sistema informático se debe asumir que existe una vulnerabilidad ante una amenaza. El riesgo es, por lo tanto, **la probabilidad de que la amenaza se materialice aprovechando una vulnerabilidad existente**.

![Ecuación del riesgo](/assets/img/conceptos-basicos-seguridad-informatica/ecuacionDelRiesgo.jpg)
_Ecuación del riesgo_


### 5.6. Impacto

Daño causado en caso de que una amenaza se materialice.

El impacto variará dependiendo de las estrategias que haya adoptado una empresa.

### 5.7. Desastre

Un desastre es cualquier evento accidental, natural o malintencionado que interrumpe las operaciones o servicios habituales de una organización.

Por ejemplo: La caída de un servidor como consecuencia de un ataque DDoS.


<details class="card mb-2">
  <summary class="card-header question">¿Qué es un ataque DoS?</summary>
  <div class="card-body" markdown="1">

Los ataques por denegación de servicio distribuidos (DDoS) son un arma de ciberseguridad cuyo objetivo es interrumpir la actividad del servicio afectado

  </div>
</details>

## 5.8. Atacantes

Existen los siguientes atacantes:

- Script Kiddies
- Hacktivistas
- Insiders
- Estados
- Crimen organizado

### 5.8.1. Script Kiddies

Conocimientos básicos, no pueden llevar a cabo un ataque por sí mismo. Sin embargo: 

- Tienen a su disposición herramientas que pueden causar daño.
- Pueden seguir las instrucciones de hackers más avanzados.

Aunque parezcan inofensivos por su falta de conocimiento, pueden causar mucho daño. 

### 5.8.2. Hacktivistas

Individuos o grupos que dan soporte a organismos sociales y políticos de cualquier tipo.

Si la agenda lo requiere, usarán su conocimiento para causar daño a algún tipo de infraestructura TIC.

Si bien algunas acciones tienen objetivos nobles y buscan un beneficio social, se trata de acciones ilegales y el hacktivista puede llegar a tener responsabilidad legal.

### 5.8.3. Insiders

Está demostrado que es mucho más difícil atacar una organización desde fuera que desde dentro de la red. 

Por ello algunos atacantes intentan entrar a una empresa (con identidad falsa) para realizar sus acciones.

También se puede dar el caso de empleados que por diferentes razones intentan llevar a cabo acciones contra la empresa (tras un despido, tras un enfado, …).

Un insider puede causar mucho más daño que un atacante externo, al tener acceso directo a la red interna. 

### 5.8.4. Estados

El ciberespacio es desde hace año uno de los espacios de la guerra. Al fin y al cabo, los servicios esenciales de los países dependen de las infraestructuras tecnológicas para su funcionamiento.

Los ejércitos cuentan con especialistas que protegen dichas infraestructuras TIC frente a ciberataques y otro tipo de amenazas. 

Estos especialistas pueden ser personal del ejército, o pueden ser grupos vinculados.

Estos especialistas también pueden llevar a cabo acciones de inteligencia (obtención de información de otros países mediante técnicas de espionaje, fake news con objetivo de desestabilización) e incluso acciones que comprometan las infraestructuras de los servicios esenciales.

En el contexto de guerra híbrida, los ciberataques y las técnicas de desestabilización pueden ser más dañinas que las propias acciones militares. 

### 5.8.5. Crimen organizado

El ciberespacio es el lugar donde los cibercriminales han migrado sus actividades. Cada grupo tiene sus especializaciones: investigación y reconocimiento de víctimas, accesos a las empresas, desarrollo de software malicioso, exfiltración de datos, extorsión, ....

Ejemplos de actividades maliciosas: venta de datos robados, indisponibilidad de los servicios, extorsión, … 

A través de ataques como el RANSOMWARE, el crimen organizado en internet genera más dinero que la venta ilegal de armas, las drogas o la prostitución juntas.

### 5.9. Motivaciones

#### 5.9.1. Tiempo

Desde la concepción del ataque y las primeras investigaciones, hasta la materialización de los objetivos. La ventana puede ser de pocos días a varios meses o incluso años.

#### 5.9.2. Recursos

Si bien los actores con conocimientos avanzados pueden ejecutar manualmente sus acciones, se necesitan los recursos adecuados para llevar a cabo muchos tipos de ataque. Tener a disposición herramientas específicas puede automatizar el trabajo y optimizar el tiempo.

#### 5.9.3. Presupuesto

Contar con un presupuesto permite adquirir las herramientas más adecuadas para el objetivo de las acciones.

#### 5.9.4. Valor

Se trata del equilibrio entre el beneficio (lo que se puede obtener tras la materialización del ataque) y el esfuerzo (cuánto tiempo y dinero ha costado llevarlo a cabo). Son factores que se deben valorar para decidir si merece la pena llevar a cabo el ataque.

## 6. Vídeo

<iframe width="560" height="315" src="https://www.youtube.com/embed/_1ni_tjjVDQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Preguntas sobre los cibercriminales...

{:.question}
¿Cuáles son sus motivaciones? ¿Qué esperan hacer tras realizar los ataques?

{:.question}
¿Dónde están?

{:.question}
¿Qué tácticas usan?

Preguntas sobre la víctima...

{:.question}
¿Por qué la atacan?

{:.question}
¿Qué ocurriría si la atacaran?

{:.question}
¿Qué vulnerabilidades se ven en el vídeo?

{:.question}
En general, ¿qué tipo de empresa puede ser atacada?

Preguntas sobre la empresa de ciberseguridad...

{:.question}
¿Qué tipo de actividades lleva a cabo?

{:.question}
¿Por qué dicen que la seguridad no es sólo un problema de tecnología?


## 7. Bibliografía

- [Ingeniería social y cómo protegerse](https://www.avast.com/es-es/c-social-engineering)
- [Identificación y autenticación](https://www.ibm.com/docs/es/ibm-mq/7.5?topic=ssfksj-7-5-0-com-ibm-mq-sec-doc-q009740--htm)
- [Diferencias entre amenaza, vulnerabilidad y riesgo](https://www.ambit-bst.com/blog/diferencias-entre-amenaza-vulnerabilidad-y-riesgo)
- [Las 7 fases de un ciberataque. ¿Las conoces?](https://www.incibe.es/protege-tu-empresa/blog/las-7-fases-ciberataque-las-conoces)
- [No repudio, ¿qué significa en seguridad informática?](https://www.unir.net/ingenieria/revista/no-repudio-seguridad-informatica/#:~:text=En%20resumen%2C%20el%20no%20repudio,realizaci%C3%B3n%20de%20una%20determinada%20acci%C3%B3n.)
- [¿Qué es un keylogger?](https://latam.kaspersky.com/resource-center/definitions/keylogger)
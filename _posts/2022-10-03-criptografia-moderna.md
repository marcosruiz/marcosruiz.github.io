---
title: "Criptografía moderna"
date: 2022-10-03 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría]
img_path: /assets/img/criptografia-moderna/
---

## 1. Introducción

Con la **criptografía moderna** se intenta garantizar las siguientes propiedades deseables en la comunicación de información de forma segura (a estas propiedades se las conoce como funciones o servicios de seguridad):

1. **Confidencialidad**: solamente los usuarios autorizados tienen acceso a la información.
2. **Integridad de la información**: garantía ofrecida a los usuarios de que la información original no será alterada, ni intencional ni accidentalmente.
3. **Autenticación de usuario**: es un proceso que permite al sistema verificar si el usuario que pretende acceder o hacer uso del sistema es quien dice ser.
4. **Autenticación de remitente**: es el proceso que permite a un usuario certificar que el mensaje recibido fue de hecho enviado por el remitente y no por un suplantador.
5. **Autenticación del destinatario**: es el proceso que permite garantizar la identidad del usuario destinatario.
6. **No repudio en origen**: que cuando se reciba un mensaje, el remitente no pueda negar haber enviado dicho mensaje.
7. **No repudio en destino**: que cuando se envía un mensaje, el destinatario no pueda negar haberlo recibido cuando le llegue.
8. **Autenticación de actualidad (no replay)**: consiste en probar que el mensaje es actual, y que no se trata de un mensaje antiguo reenviado.

Ahora toca adentrarse en los métodos criptográficos modernos como la criptografía. Entre ellos tenemos:
 
- Criptografía simétrica
- Criptografía asimétrica 
- Funciones hash o de resumen (que no cumplen estrictamente la función de confidencialidad para la que está destinada la criptografía, puesto que es un cifrado irreversible)

## 2. Cifrado simétrico y asimétrico

<iframe width="560" height="315" src="https://www.youtube.com/embed/wDpqrasDmxM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Qué problemas tiene el cifrado simétrico?

<iframe width="560" height="315" src="https://www.youtube.com/embed/EQsHGbp3TGc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Qué ventajas tiene el cifrado simétrico?

{:.question}
¿Qué ventajas tiene el cifrado asimétrico?

{:.question}
¿Se puede combinar el cifrado simétrico y asimétrico para obtener lo mejor de los dos mundos?

{:.question}
¿Por qué en el cifrado simétrico hay más llaves que cifrado asimétrico?

## 3. Cifrado simétrico

La criptografía simétrica solo utiliza una clave para cifrar y descifrar el mensaje.

Esta clave la tienen que conocer el emisor y el receptor previamente 

La comunicación de las claves entre ambos sujetos es el punto débil del sistema, ya que resulta más fácil interceptar una clave que se ha transmitido sin seguridad (diciéndola en alto, mandándola por correo electrónico u ordinario o haciendo una llamada telefónica).

Los procesos de cifrar y descifrar resultan bastante eficientes (tardan poco tiempo en realizarse). Por esta razón, todos los algoritmos desde la antigüedad hasta los años 70, eran simétricos.

Los más utilizados actualmente son: 

- DES
- 3DES
- AES
- Blowfish
- IDEA

![Criptografía simétrica](criptografiaSimetrica.png)
_Criptografía simétrica_

<iframe width="560" height="315" src="https://www.youtube.com/embed/SlSmI18T2Ns" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Un ejemplo de cifrado simétrico?

{:.question}
¿Qué ventajas/desventajas tiene el cifrado simétrico?

{:.question}
¿Podemos usar el mismo canal por el que nos comunicamos para enviar la clave?

{:.question}
¿Qué es un ataque man in the middle?

{:.question}
¿Por qué existe el cifrado por bloque y cifrado por flujo?

### Problemas de la criptografía simétrica

1. **Circulación de claves**: no podemos utilizar el mismo canal inseguro por el que enviamos el mensaje. Hay que utilizar un segundo canal de comunicación, que también habría que proteger.
2. **Gestión de claves almacenadas**: si en una empresa hay 10 trabajadores y todos tienen conversaciones privadas con todos, cada uno deberá establecer 9 contraseñas distintas y encontrar 9 canales seguros para actualizarlas. En total hay 81 claves (9 por usuario x 9 usuarios) y 81 canales. 

{:.question}
¿Cuántas claves son necesarias si nos queremos comunicar 11 personas entre nosotros?

### Algoritmos de cifrado simétrico

En criptografía simétrica existen 2 modos de cifrado:

- **Cifrado en bloques**: La información a cifrar se divide en bloques de longitud fija (por ejemplo 64 o 128 bits), y luego se aplica el algoritmo de cifrado a cada bloque utilizando una clave secreta. Ejemplos: DES, 3DES, AES.
- **Cifrado de flujo**: Convierten el texto en claro en texto cifrado bit a bit. El cifrado de flujo se utiliza mucho en las telecomunicaciones. Por ejemplo, en una conversación de telefonía móvil la voz se digitaliza (es decir, se convierte a un flujo de bits) y se envía cifrada por la red de comunicaciones. Con el fin de no entorpecer la conversación, el proceso de cifrado debería ser lo bastante rápido como para no añadir retraso a la comunicación. Por ello, conviene que la operación de cifrado sea rápida. Ejemplo: RC4.

1. Los cifrados de bloque cifran bloques de varios bytes a la vez, mientras que los cifrados de flujo lo hacen byte a byte.
1. Los algoritmos de flujo son por su modo de funcionamiento más rápidos que los de bloque, además de tener una menor complejidad a nivel de hardware.
1. Los algoritmos de cifrado de bloque suelen requerir de más memoria para funcionar, puesto que trabajan con bloques de datos mayores que los de flujo. 
1. Los algoritmos de cifrado de bloque son más susceptibles a la existencia de ruidos en la transmisión, lo que implica que si se interrumpe la transmisión de datos es imposible recuperarlos, mientras que los algoritmos de cifrado de flujo sí se pueden recuperar (ya que los datos son encriptados individualmente byte a byte).

#### DES

El Standard de Encriptación de Datos (DES - Data Encryption Standard) es un algoritmo desarrollado a mediados de los 70s. 

Se convirtió en un standard por el US National Institute of Standards and Technology (NIST), y fue adoptado por varios gobiernos en todo el mundo.

DES es un cifrado en bloque (con una longitud de 64 bits por bloque). Usa llaves de 56 bits. 

Esto lo hace susceptible a una búsqueda exhaustiva de la llave con computadoras modernas y hardware de propósitos especiales. 

Aunque el algoritmo DES era computacionalmente seguro, esto ha dejado de ser cierto, ya que con hardware específico es posible realizar ataques por fuerza bruta que descubran una clave en pocos días. El problema principal es que el tamaño de la clave (56 bits) es demasiado pequeño para la potencia de cálculo actual.

<iframe width="560" height="315" src="https://www.youtube.com/embed/XwUOwqSHzyo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/5R6iTmawrR0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


#### 3DES

Surge en 1999 como una versión mejorada de DES. 

Cuando se descubrió que una clave de 56 bits (utilizada en el DES) no era suficiente para evitar un ataque de fuerza bruta, el 3DES fue elegido para agrandar la clave sin la necesidad de cambiar el algoritmo de cifrado.

Realiza tres veces el cifrado DES utilizando tres claves diferentes y sin relación entre ellas. Podría decirse que el Triple-DES es más fuerte que el DES simple, sin embargo, es bastante más lento comparado a algunos nuevos cifrados en bloque.
Sigue siendo utilizado pero cada vez más está siendo sustituido por el algoritmo AES que ha demostrado ser muy robusto y más rápido.

![3DES](3des.jpg)
_3DES_

#### AES

AES (Advanced Encryption Standard o Estándar de Encriptación Avanzada) es un algoritmo de clave simétrica que remplazará el 3DES.

En Junio del 2003 el Gobierno de EEUU anunció que AES es lo suficientemente seguro para proteger la información clasificada hasta el nivel ALTO SECRETO (nivel más alto de seguridad y que se definen como información que pudiera causar "daños excepcionalmente graves" a la seguridad nacional en caso de ser divulgada al público).

El algoritmo AES posibilita tres fortalezas de clave de cifrado (contraseña de 128, 192, o 256 bits):

Cada tamaño de la clave de cifrado hace que el algoritmo se comporte ligeramente diferente

El aumento de tamaño de clave no sólo ofrece un mayor número de bits con el que se pueden cifrar los datos, sino también aumentar la complejidad del algoritmo de cifrado.

<iframe width="560" height="315" src="https://www.youtube.com/embed/am3EKUke_F0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/YIzssu8jGTU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Tiempo que necesitarían los superordenadores (de alrededor de 10 PFLOPS) para descrifrar las diferentes variantes del cifrado AES

![Tiempo de descifrado de AES](aesTiempoDescifrado.webp)
_Tiempo de descifrado de AES_

#### RC4

## 4. Cifrado asimétrico

<iframe width="560" height="315" src="https://www.youtube.com/embed/Q8K311s7EiM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Años 70: los criptógrafos Diffie y Hellman publicaron sus investigaciones sobre criptografía asimétrica. Su algoritmo de cifrado utiliza 2 claves matemáticas relacionadas de manera que lo que cifras con una solo lo puedes descifrar con otra. 

La criptografía asimétrica se basa en el uso de dos claves:

- La pública, que se podrá difundir sin ningún problema a todas las personas que necesiten mandarte algo cifrado
- La privada, que no debe de ser revelada nunca.

Una VENTAJA respecto a la criptografía simétrica, ahora el emisor no necesita conocer y proteger una clave propia.

Es el receptor el que tiene el par de claves. Elige una de ellas (llamada pública) para comunicarla al emisor por si quiere enviarle algo cifrado. Pero ya no le hace falta buscar canales protegidos para eviarla porque aunque un tercer individuo la conozca, todo el que cifre con esa clave no podrá descifrarlo luego.

Lo que se cifra con la clave publica, solo puede descifrarse con la clave privada 

<iframe width="560" height="315" src="https://www.youtube.com/embed/SIIqLgqRMCo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Qué desventajas tiene el cifrado asimétrico?

{:.question}
¿Con que firmamos si queremos confidencialidad?

{:.question}
¿Con que firmamos si queremos autenticación?

### Ventajas criptografía asimétrica

La criptografía asimétrica resuelve los 2 problemas de la clave simétrica.

1. No necesitamos canales seguros para comunicar la clave: Podemos adjuntar la clave pública en nuestros correos, añadirla al perfil de nuestras redes sociales, en un blog… La información que nos envíen estará cifrada y solo nosotros podremos acceder a ella.
1. No hay desbordamiento en el tratamiento de claves y canales. Si somos 9 empleados, solo necesitamos 9 claves y un canal.

### Desventajas criptografía asimétrica

Sin embargo, los algoritmos públicos presentan ciertos problemas.

1. Poco eficientes: tardan bastante en aplicar las claves a los documentos a cifrar (Necesitan que las claves sean muy largas para asegurar la independencia matemática entre ellas). Este es el principal inconveniente de este tipo de criptografía
2. Hay que proteger la clave privada: no bastará con dejarla en un fichero de una carpeta del disco. Las claves privadas se guardarán en un fichero (llamado keyring o llavero) y este fichero estará cifrado mediante cifrado simétrico. Es decir, para poder usar la clave privada, hay que introducir una clave que descifra el llavero y permite leerla.
3. La necesidad de una Autoridad de Certificación (CA) en el proceso.

## 5. Firma electrónica

La firma electrónica es un conjunto de datos electrónicos que acompañan o que están asociados a un documento electrónico y cuyas funciones básicas son:

- **Identificar al firmante de manera inequívoca**.
- **Asegurar la integridad del documento firmado**. Asegura que el documento firmado es exactamente el mismo que el original y que no ha sufrido alteración o manipulación.
- **Asegurar el no repudio del documento firmado**. Los datos que utiliza el firmante para realizar la firma son únicos y exclusivos y, por tanto, posteriormente, no puede decir que no ha firmado el documento.

Generalmente, la ley equipara la firma electrónica a la firma manuscrita.

### 5.1. Proceso básico de firma electrónica

El proceso básico que se sigue para la firma electrónica es el siguiente:

1. El usuario dispone de un documento electrónico (una hoja de cálculo, un pdf, una imagen, incluso un formulario en una página web) y de un certificado que le pertenece y le identifica.
1. La aplicación o dispositivo digital utilizados para la firma realiza un resumen del documento. El resumen de un documento de gran tamaño puede llegar a ser tan solo de unas líneas. Este resumen es único y cualquier modificación del documento implica también una modificación del resumen.
1. La aplicación utiliza la clave privada para codificar el resumen.
1. La aplicación crea otro documento electrónico que contiene ese resumen codificado. Este nuevo documento es la firma electrónica.

## 6. Firma digital

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo firma electrónica que firma digital?</summary>
  <div class="card-body" markdown="1">

La **firma electrónica** es por tanto un conjunto de datos electrónicos que acompañan a una determinada información también en formato electrónico. Realizar una firma electrónica quiere decir que una persona física verifica una acción o procedimiento mediante un medio electrónico, dejando un registro de la fecha y hora de la misma.

Una **firma digital** es una implementación técnica específica de algunas firmas electrónicas mediante la aplicación de algoritmos criptográficos. Por tanto, se refieren a la tecnología de cifrado / descifrado en la que se basan algunas firmas electrónicas como la avanzada

![Firma electrónica vs firma digital](firmaElectronicaVsFirmaDigital.png)
_Firma electrónica vs firma digital_

  </div>
</details>

<iframe width="560" height="315" src="https://www.youtube.com/embed/JRYUxqghPG4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

![Proceso de firma digital](procesoFirmaDigital1.png)
_Proceso de firma digital_

![Proceso de firma digital](procesoFirmaDigital2.png)
_Proceso de firma digital_

## Certificado digital

Es, principalmente, un documento digital que contiene nuestros datos identificativos que están autentificados por un organismo oficial. El certificado digital es un documento que confirma nuestra identidad en internet como Persona Física y es obligatorio para poder consultar y realizar trámites con la Administración Pública.

![Certificado digital](certificadoDigital.png)
_Certificado digital_

{:.question}
¿Se puede validar un certificado sin conexión a Internet?

{:.question}
¿Qué es una lista de revocación de certificados?


## 7. PKI

PKI (Public Key Infraestructure o Infraestructura de clave pública) es un conjunto de roles, políticas, hardware, software y procedimientos necesarios para crear, administrar, distribuir, usar, almacenar y revocar certificados digitales y administrar el cifrado de clave pública.

Se asegura:

- **Integridad**: El mensaje no ha sido cambiado.
- **No repudio**: La capacidad de demostrar o probar la participación de las partes
- **Identificación**: Mecanismo o proceso que provee la capacidad de identificar a un usuario de un sistema.
- **Autenticación**: Permite verificar la identidad o asegurar que un usuario es quien dice ser.

### 7.1. Elementos básicos de una PKI

![Elementos básicos de una PKI](elementosBasicosDePki.png)
_Elementos básicos de una PKI_

- **CA**: Autoridad de Certificación
- **VA**: Autoridad de Validación
- **RA**: Autoridad de Registro

<iframe width="560" height="315" src="https://www.youtube.com/embed/ysfBTecjGIY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Qué es un hash? ¿Para qué se usa?

{:.question}
¿Qué es la integridad?

{:.question}
¿Se puede usar cifrado simétrico para realizar una firma electrónica?

{:.question}
¿Qué es el no repudio?

{:.question}
¿Es lo mismo cifrar que aplicar una función hash?

{:.question}
¿Qué información hay en el fichero /etc/shadow? ¿Qué es el salt o salto y para qué sirve?


## 8. Bibliografía

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

## 2. Cifrado simétrico y asimétrico

Ahora toca adentrarse en los métodos criptográficos modernos como la criptografía. Entre ellos tenemos:
 
- **Criptografía simétrica**
- **Criptografía asimétrica**
- **Funciones hash** o de resumen (que no cumplen estrictamente la función de confidencialidad para la que está destinada la criptografía, puesto que es un cifrado irreversible)

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

<iframe width="560" height="315" src="https://www.youtube.com/embed/5BYhdr5n3es" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## 3. Cifrado simétrico

La criptografía simétrica solo utiliza una clave para cifrar y descifrar el mensaje.

Esta clave la tienen que conocer el emisor y el receptor previamente 

La comunicación de las claves entre ambos sujetos es el punto débil del sistema, ya que resulta más fácil interceptar una clave que se ha transmitido sin seguridad (diciéndola en alto, mandándola por correo electrónico u ordinario o haciendo una llamada telefónica).

Los procesos de cifrar y descifrar resultan bastante **eficientes** (tardan poco tiempo en realizarse). Por esta razón, todos los algoritmos desde la antigüedad hasta los años 70, eran simétricos.

Los más utilizados actualmente son: 

- DES
- 3DES
- AES
- RC4
- Blowfish
- IDEA

![Proceso de cifrado simétrico](criptografiaSimetrica.png)
_Proceso de cifrado simétrico_

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

### 3.1. Problemas de la criptografía simétrica

1. **Circulación de claves**: no podemos utilizar el mismo canal inseguro por el que enviamos el mensaje. Hay que utilizar un segundo canal de comunicación, que también habría que proteger.
2. **Gestión de claves almacenadas**: si en una empresa hay 10 trabajadores y todos tienen conversaciones privadas con todos, cada uno deberá establecer 9 contraseñas distintas y encontrar 9 canales seguros para actualizarlas. En total hay 81 claves (9 por usuario x 9 usuarios) y 81 canales... ¿O no?

<details class="card mb-2">
  <summary class="card-header question">¿Cuántas claves son necesarias si nos queremos comunicar 9 personas entre nosotros?</summary>
  <div class="card-body" markdown="1">

> C(n,2) = n*(n-1)/2.

Siendo n el número de nodos.

> C(9,2) = (9*(9-1))/2 = 36

  </div>
</details>

### 3.2. Algoritmos de cifrado simétrico

En criptografía simétrica existen 2 modos de cifrado:

- **Cifrado en bloques**: La información a cifrar se divide en bloques de longitud fija (por ejemplo 64 o 128 bits), y luego se aplica el algoritmo de cifrado a cada bloque utilizando una clave secreta. Ejemplos: DES, 3DES, AES.
- **Cifrado de flujo**: Convierten el texto en claro en texto cifrado byte a byte. El cifrado de flujo se utiliza mucho en las telecomunicaciones. Por ejemplo, en una conversación de telefonía móvil la voz se digitaliza (es decir, se convierte a un flujo de bits) y se envía cifrada por la red de comunicaciones. Con el fin de no entorpecer la conversación, el proceso de cifrado debería ser lo bastante rápido como para no añadir retraso a la comunicación. Por ello, conviene que la operación de cifrado sea rápida. Ejemplo: RC4.

1. Los cifrados de bloque cifran bloques de varios bytes a la vez, mientras que los cifrados de flujo lo hacen byte a byte.
1. Los algoritmos de flujo son por su modo de funcionamiento más rápidos que los de bloque, además de tener una menor complejidad a nivel de hardware.
1. Los algoritmos de cifrado de bloque suelen requerir de más memoria para funcionar, puesto que trabajan con bloques de datos mayores que los de flujo. 
1. Los algoritmos de cifrado de bloque son más susceptibles a la existencia de ruidos en la transmisión, lo que implica que si se interrumpe la transmisión de datos es imposible recuperarlos, mientras que los algoritmos de cifrado de flujo sí se pueden recuperar (ya que los datos son encriptados individualmente byte a byte).

A continuación vamos a describir algunos algoritmos de simétrico:

- DES
- 3DES
- AES
- RC4

#### 3.2.1. DES

El Standard de Encriptación de Datos (DES - Data Encryption Standard) es un algoritmo desarrollado a mediados de los 70s. 

Se convirtió en un standard por el US National Institute of Standards and Technology (NIST), y fue adoptado por varios gobiernos en todo el mundo.

DES es un cifrado en bloque (con una longitud de 64 bits por bloque). Usa llaves de 56 bits. 

Esto lo hace susceptible a una búsqueda exhaustiva de la llave con computadoras modernas y hardware de propósitos especiales. 

Aunque el algoritmo DES era computacionalmente seguro, esto ha dejado de ser cierto, ya que con hardware específico es posible realizar ataques por fuerza bruta que descubran una clave en pocos días. El problema principal es que el tamaño de la clave (56 bits) es demasiado pequeño para la potencia de cálculo actual.

#### 3.2.2. 3DES

Surge en 1999 como una versión mejorada de DES. 

Cuando se descubrió que una clave de 56 bits (utilizada en el DES) no era suficiente para evitar un ataque de fuerza bruta, el 3DES fue elegido para agrandar la clave sin la necesidad de cambiar el algoritmo de cifrado.

Realiza tres veces el cifrado DES utilizando tres claves diferentes y sin relación entre ellas. Podría decirse que el Triple-DES es más fuerte que el DES simple, sin embargo, es bastante más lento comparado a algunos nuevos cifrados en bloque.
Sigue siendo utilizado pero cada vez más está siendo sustituido por el algoritmo AES que ha demostrado ser muy robusto y más rápido.

![3DES](3des.jpg)
_3DES_

#### 3.2.3. AES

AES (Advanced Encryption Standard o Estándar de Encriptación Avanzada) es un algoritmo de clave simétrica que remplazará el 3DES.

En Junio del 2003 el Gobierno de EEUU anunció que AES es lo suficientemente seguro para proteger la información clasificada hasta el nivel ALTO SECRETO (nivel más alto de seguridad y que se definen como información que pudiera causar "daños excepcionalmente graves" a la seguridad nacional en caso de ser divulgada al público).

El algoritmo AES posibilita tres fortalezas de clave de cifrado (contraseña de 128, 192, o 256 bits):

Cada tamaño de la clave de cifrado hace que el algoritmo se comporte ligeramente diferente

El aumento de tamaño de clave no sólo ofrece un mayor número de bits con el que se pueden cifrar los datos, sino también aumentar la complejidad del algoritmo de cifrado.

Tiempo que necesitarían los superordenadores (de alrededor de 10 PFLOPS) para descrifrar las diferentes variantes del cifrado AES

![Tiempo de descifrado de AES](aesTiempoDescifrado.webp)
_Tiempo de descifrado de AES_

#### 3.2.4. RC4

El RC4 es un algoritmo de cifrado de flujo diseñado por Ronald Rivest para RSA Data Security. 

Es un algoritmo de tamaño de clave variable con operaciones a nivel de byte. 

Es un algoritmo de ejecución rápida en software.

El algoritmo se emplea para encriptación de ficheros y para encriptar la comunicación en protocolos como el SSL (TLS).


## 4. Cifrado asimétrico

<iframe width="560" height="315" src="https://www.youtube.com/embed/Q8K311s7EiM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Años 70: los criptógrafos Diffie y Hellman publicaron sus investigaciones sobre criptografía asimétrica. Su algoritmo de cifrado utiliza 2 claves matemáticas relacionadas de manera que lo que cifras con una solo lo puedes descifrar con otra.

<iframe width="560" height="315" src="https://www.youtube.com/embed/vZToAM4kwjM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

La criptografía asimétrica se basa en el uso de dos claves:

- La **pública**, que se podrá difundir sin ningún problema a todas las personas que necesiten mandarte algo cifrado
- La **privada**, que no debe de ser revelada nunca.

Una VENTAJA respecto a la criptografía simétrica, ahora el emisor no necesita conocer y proteger una clave propia.

Es el receptor el que tiene el par de claves. Elige una de ellas (llamada pública) para comunicarla al emisor por si quiere enviarle algo cifrado. Pero ya no le hace falta buscar canales protegidos para eviarla porque aunque un tercer individuo la conozca, todo el que cifre con esa clave no podrá descifrarlo luego.

Lo que se cifra con la clave publica, solo puede descifrarse con la clave privada.

<iframe width="560" height="315" src="https://www.youtube.com/embed/SIIqLgqRMCo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

![Proceso de cifrado asimétrico](criptografiaAsimetrica.png)
_Proceso de cifrado asimétrico_

![Concepto del intercambio de claves secretas detrás del Diffie–Hellman](intercambioDeSecreto.png)
_Concepto del intercambio de claves secretas detrás del Diffie–Hellman_

{:.question}
¿Qué desventajas tiene el cifrado asimétrico?

{:.question}
¿Con que firmamos si queremos confidencialidad?

{:.question}
¿Con que firmamos si queremos autenticación?

<iframe width="560" height="315" src="https://www.youtube.com/embed/apn1BN6XMVo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 4.1. Ventajas criptografía asimétrica

La criptografía asimétrica resuelve los 2 problemas de la clave simétrica.

1. No necesitamos canales seguros para comunicar la clave: Podemos adjuntar la clave pública en nuestros correos, añadirla al perfil de nuestras redes sociales, en un blog… La información que nos envíen estará cifrada y solo nosotros podremos acceder a ella.
1. No hay desbordamiento en el tratamiento de claves y canales. Si somos 9 empleados, solo necesitamos 18 claves y un canal.

### 4.2. Desventajas criptografía asimétrica

Sin embargo, los algoritmos públicos presentan ciertos problemas.

1. Poco eficientes: tardan bastante en aplicar las claves a los documentos a cifrar (Necesitan que las claves sean muy largas para asegurar la independencia matemática entre ellas). Este es el principal inconveniente de este tipo de criptografía
2. Hay que proteger la clave privada: no bastará con dejarla en un fichero de una carpeta del disco. Las claves privadas se guardarán en un fichero (llamado keyring o llavero) y este fichero estará cifrado mediante cifrado simétrico. Es decir, para poder usar la clave privada, hay que introducir una clave que descifra el llavero y permite leerla.
3. La necesidad de una Autoridad de Certificación (CA) en el proceso.

### 4.3. Algoritmos de cifrado asimétrico

Existen varios:

- Diffie 
- RSA
- DSAA
- ElGamal

#### 4.3.1. RSA

Garantiza no solo la confidencialidad de la comunicación entre dos partes, cifrando en origen el mensaje que se va a transmitir por un canal inseguro y descifrándolo en recepción.

También proporciona otros servicios o funciones de seguridad de la información, como son la autenticación de origen , la integridad o el no-repudio (mediante la firma digital).

## 5. Hash

Leer el artículo [¿Qué Es Un Hash Y Cómo Funciona?](https://latam.kaspersky.com/blog/que-es-un-hash-y-como-funciona/2806/)

Son los siguientes:

- SHA
- SHA-1
- SHA-256
- MD5
- RIPE-MD

{:.question}
¿Donde podemos ver los hashes de las contraseñas en un sistema GNU Linux?

{:.question}
¿Qué es un hash? ¿Para qué se usa?

{:.question}
¿Es lo mismo cifrar que aplicar una función hash?

<iframe width="560" height="315" src="https://www.youtube.com/embed/FRBIc0udwv0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/lP_pbygY3PA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/it9suW1HN3Q" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## PKI

PKI (Public Key Infraestructure o Infraestructura de clave pública) es un conjunto de roles, políticas, hardware, software y procedimientos necesarios para crear, administrar, distribuir, usar, almacenar y revocar certificados digitales y administrar el cifrado de clave pública.

Se asegura:

- **Integridad**: El mensaje no ha sido cambiado.
- **No repudio**: La capacidad de demostrar o probar la participación de las partes
- **Identificación**: Mecanismo o proceso que provee la capacidad de identificar a un usuario de un sistema.
- **Autenticación**: Permite verificar la identidad o asegurar que un usuario es quien dice ser.

<iframe width="560" height="315" src="https://www.youtube.com/embed/ysfBTecjGIY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Se puede usar cifrado simétrico para realizar una firma electrónica?

{:.question}
¿Qué es el no repudio?

{:.question}
¿Qué información hay en el fichero /etc/shadow? ¿Qué es el salt o salto y para qué sirve?

### Nuevos interlocutores

- CA: Autoridad de Certificación
- RA: Autoridad de Registro
- VA: Autoridad de Validación
- Repositorios 



## 6. Bibliografía

- [Función hash](https://es.wikipedia.org/wiki/Funci%C3%B3n_hash)
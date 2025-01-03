---
title: "Criptografía moderna"
date: 2022-10-03 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría]
img_path: /assets/img/criptografia-moderna/
math: true
---

{:.section}
## Introducción

Con la **criptografía moderna** se intenta garantizar las siguientes propiedades deseables en la comunicación de información de forma segura (a estas propiedades se las conoce como funciones o servicios de seguridad):

1. **Confidencialidad**: solamente los usuarios autorizados tienen acceso a la información.
2. **Integridad de la información**: garantía ofrecida a los usuarios de que la información original no será alterada, ni intencional ni accidentalmente.
3. **Autenticación de usuario**: es un proceso que permite al sistema verificar si el usuario que pretende acceder o hacer uso del sistema es quien dice ser.
4. **Autenticación de remitente**: es el proceso que permite a un usuario certificar que el mensaje recibido fue de hecho enviado por el remitente y no por un suplantador.
5. **Autenticación del destinatario**: es el proceso que permite garantizar la identidad del usuario destinatario.
6. **No repudio en origen**: que cuando se reciba un mensaje, el remitente no pueda negar haber enviado dicho mensaje.
7. **No repudio en destino**: que cuando se envía un mensaje, el destinatario no pueda negar haberlo recibido cuando le llegue.
8. **Autenticación de actualidad (no replay)**: consiste en probar que el mensaje es actual, y que no se trata de un mensaje antiguo reenviado.

{:.section}
## Cifrado simétrico

La criptografía simétrica solo utiliza una clave para cifrar y descifrar el mensaje.

Esta clave la tienen que conocer el emisor y el receptor previamente.

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

{:.subsection}
### Problemas de la criptografía simétrica

1. **Circulación de claves**: no podemos utilizar el mismo canal inseguro por el que enviamos el mensaje. Hay que utilizar un segundo canal de comunicación, que también habría que proteger.
2. **Gestión de claves almacenadas**: si en una empresa hay 10 trabajadores y todos tienen conversaciones privadas con todos, cada uno deberá establecer 9 contraseñas distintas y encontrar 9 canales seguros para actualizarlas. En total hay 81 claves (9 por usuario x 9 usuarios) y 81 canales... ¿O no?

<details class="card mb-2">
  <summary class="card-header question">¿Cuántas claves son necesarias si nos queremos comunicar 9 personas entre nosotros?</summary>
  <div class="card-body" markdown="1">

El problema se puede simplificar a cuantas aristas tiene un grafo completo. Un grafo es completo si existen aristas uniendo todos los pares posibles de vértices. Es decir, todo par de vértices debe tener una arista e que los une.

$${n(n-1)}/2$$

Siendo n el número de nodos.

En este caso n=9 por lo que...

$${9(9-1)}/2 = 36$$

tenemos 36 aristas, que es lo mismo que 36 claves/llaves.

  </div>
</details>

{:.subsection}
### Algoritmos de cifrado simétrico

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

{:.subsubsection}
#### DES

El Standard de Encriptación de Datos (DES - Data Encryption Standard) es un algoritmo desarrollado a mediados de los 70s.

Se convirtió en un standard por el US National Institute of Standards and Technology (NIST), y fue adoptado por varios gobiernos en todo el mundo.

DES es un cifrado en bloque (con una longitud de 64 bits por bloque). Usa llaves de 56 bits. 

Esto lo hace susceptible a una búsqueda exhaustiva de la llave con computadoras modernas y hardware de propósitos especiales.

Aunque el algoritmo DES era computacionalmente seguro, esto ha dejado de ser cierto, ya que con hardware específico es posible realizar ataques por fuerza bruta que descubran una clave en pocos días. El problema principal es que el tamaño de la clave (56 bits) es demasiado pequeño para la potencia de cálculo actual.

{:.subsubsection}
#### 3DES

Surge en 1999 como una versión mejorada de DES.

Cuando se descubrió que una clave de 56 bits (utilizada en el DES) no era suficiente para evitar un ataque de fuerza bruta, el 3DES fue elegido para agrandar la clave sin la necesidad de cambiar el algoritmo de cifrado.

Realiza tres veces el cifrado DES utilizando tres claves diferentes y sin relación entre ellas. Podría decirse que el Triple-DES es más fuerte que el DES simple, sin embargo, es bastante más lento comparado a algunos nuevos cifrados en bloque.
Sigue siendo utilizado pero cada vez más está siendo sustituido por el algoritmo AES que ha demostrado ser muy robusto y más rápido.

![3DES](3des.jpg)
_3DES_

{:.subsubsection}
#### AES

AES (Advanced Encryption Standard o Estándar de Encriptación Avanzada) es un algoritmo de clave simétrica que remplazará el 3DES.

En Junio del 2003 el Gobierno de EEUU anunció que AES es lo suficientemente seguro para proteger la información clasificada hasta el nivel ALTO SECRETO (nivel más alto de seguridad y que se definen como información que pudiera causar "daños excepcionalmente graves" a la seguridad nacional en caso de ser divulgada al público).

El algoritmo AES posibilita tres fortalezas de clave de cifrado (contraseña de 128, 192, o 256 bits):

Cada tamaño de la clave de cifrado hace que el algoritmo se comporte ligeramente diferente

El aumento de tamaño de clave no sólo ofrece un mayor número de bits con el que se pueden cifrar los datos, sino también aumentar la complejidad del algoritmo de cifrado.

Tiempo que necesitarían los superordenadores (de alrededor de 10 PFLOPS) para descrifrar las diferentes variantes del cifrado AES

![Tiempo de descifrado de AES](aesTiempoDescifrado.webp)
_Tiempo de descifrado de AES_

{:.subsubsection}
#### RC4

El RC4 es un algoritmo de cifrado de flujo diseñado por Ronald Rivest para RSA Data Security.

Es un algoritmo de tamaño de clave variable con operaciones a nivel de byte.

Es un algoritmo de ejecución rápida en software.

El algoritmo se emplea para encriptación de ficheros y para encriptar la comunicación en protocolos como el SSL (TLS).

{:.section}
## Cifrado asimétrico

Años 70: los criptógrafos Diffie y Hellman publicaron sus investigaciones sobre criptografía asimétrica. Su algoritmo de cifrado utiliza 2 claves matemáticas relacionadas de manera que lo que cifras con una solo lo puedes descifrar con otra.

La criptografía asimétrica se basa en el uso de dos claves:

- La **pública**, que se podrá difundir sin ningún problema a todas las personas que necesiten mandarte algo cifrado
- La **privada**, que no debe de ser revelada nunca.

Una VENTAJA respecto a la criptografía simétrica, ahora el emisor no necesita conocer y proteger una clave propia.

Es el receptor el que tiene el par de claves. Elige una de ellas (llamada pública) para comunicarla al emisor por si quiere enviarle algo cifrado. Pero ya no le hace falta buscar canales protegidos para eviarla porque aunque un tercer individuo la conozca, todo el que cifre con esa clave no podrá descifrarlo luego.

Lo que se cifra con la clave publica, solo puede descifrarse con la clave privada.

<iframe width="560" height="315" src="https://www.youtube.com/embed/SIIqLgqRMCo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

![Proceso de cifrado asimétrico](criptografiaAsimetrica.png)
_Proceso de cifrado asimétrico_

{:.question}
¿Qué desventajas tiene el cifrado asimétrico?

{:.question}
¿Con que firmamos si queremos confidencialidad?

{:.question}
¿Con que firmamos si queremos autenticación?

<iframe width="560" height="315" src="https://www.youtube.com/embed/apn1BN6XMVo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.subsection}
### Ventajas criptografía asimétrica

La criptografía asimétrica resuelve los 2 problemas de la clave simétrica.

1. No necesitamos canales seguros para comunicar la clave: Podemos adjuntar la clave pública en nuestros correos, añadirla al perfil de nuestras redes sociales, en un blog… La información que nos envíen estará cifrada y solo nosotros podremos acceder a ella.
1. No hay desbordamiento en el tratamiento de claves y canales. Si somos 9 empleados, solo necesitamos 18 claves y un canal.

{:.subsection}
### Desventajas criptografía asimétrica

Sin embargo, los algoritmos públicos presentan ciertos problemas.

1. Poco eficientes: tardan bastante en aplicar las claves a los documentos a cifrar (Necesitan que las claves sean muy largas para asegurar la independencia matemática entre ellas). Este es el principal inconveniente de este tipo de criptografía
2. Hay que proteger la clave privada: no bastará con dejarla en un fichero de una carpeta del disco. Las claves privadas se guardarán en un fichero (llamado keyring o llavero) y este fichero estará cifrado mediante cifrado simétrico. Es decir, para poder usar la clave privada, hay que introducir una clave que descifra el llavero y permite leerla.
3. La necesidad de una Autoridad de Certificación (CA) en el proceso.

{:.subsection}
### Algoritmos de cifrado asimétrico

Existen varios:

- Diffie-Hellman
- RSA
- DSA
- ElGamal

{:.subsubsection}
#### Diffie-Hellman

La criptografía asimétrica vio su nacimiento en 1976, cuando Ralph Merkel, Whitfield Diffie y Martin Hellman crearon el primer sistema público de criptografía asimétrica. Aunque no era exactamente asimétrico, el algoritmo Diffie-Hellman supuso un primera paso importantísimo en el desarrollo de esta técnica, que pronto vio llegar más aportaciones de otros investigadores.

![Concepto del intercambio de claves secretas detrás del Diffie–Hellman](intercambioDeSecreto.png)
_Concepto del intercambio de claves secretas detrás del Diffie–Hellman_

<iframe width="560" height="315" src="https://www.youtube.com/embed/vZToAM4kwjM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.subsubsection}
#### RSA

Es un sistema criptográfico de clave pública desarrollado en 1977. Es el primer y más utilizado algoritmo de este tipo y es válido tanto para cifrar como para firmar digitalmente.

En este caso se usan dos pares de claves privadas y públicas.

Es el algoritmo de esta clase más importante y extendido.

Utiliza la exponenciación modular para cifrar y descifrar y basa su seguridad en la complejidad del problema de la factorización de enteros grandes.

Las claves pública y privada se calculan a partir de un número que se obtiene como producto de dos primos grandes. Un atacante que quiera recuperar un texto claro a partir del criptograma y de la clave pública, tiene que enfrentarse a dicho problema de factorización.

{:.question}
¿En qué consiste factorizar?

Garantiza no solo la confidencialidad de la comunicación entre dos partes, cifrando en origen el mensaje que se va a transmitir por un canal inseguro y descifrándolo en recepción.

También proporciona otros servicios o funciones de seguridad de la información, como son la autenticación de origen , la integridad o el no-repudio (mediante la firma digital).

<iframe width="560" height="315" src="https://www.youtube.com/embed/Q8K311s7EiM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.subsubsection}
#### DSA

DSA es un estándar del Gobierno Federal de los Estados Unidos de América o FIPS para firmas digitales.

{:.subsubsection}
#### ElGamal

El procedimiento de cifrado/descifrado ElGamal se refiere a un esquema de cifrado basado en el problema matemático del logaritmo discreto. Es un algoritmo de criptografía asimétrica basado en la idea de Diffie-Hellman y que funciona de una forma parecida a este algoritmo discreto. El algoritmo de ElGamal puede ser utilizado tanto para generar firmas digitales como para cifrar o descifrar.

{:.section}
## Resumen del cifrado simétrico y asimétrico

El vídeo más importante...

<iframe width="560" height="315" src="https://www.youtube.com/embed/EQsHGbp3TGc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Qué ventajas tiene el cifrado simétrico?

{:.question}
¿Qué ventajas tiene el cifrado asimétrico?

{:.question}
¿Se puede combinar el cifrado simétrico y asimétrico para obtener lo mejor de los dos mundos?

{:.question}
¿Por qué en el cifrado simétrico hay más llaves que cifrado asimétrico?

Aplicaciones reales...

<iframe width="560" height="315" src="https://www.youtube.com/embed/wDpqrasDmxM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Qué problemas tiene el cifrado simétrico?

Aún más resumido...

<iframe width="560" height="315" src="https://www.youtube.com/embed/5BYhdr5n3es" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.section}
## Criptografía híbrida

El cifrado asimétrico no puede ser usado para cifrar todos los paquetes de intercambiados en una red local porque el bajo rendimiento del algoritmo ralentizaría el tráfico.

En su lugar se adopta un esquema híbrido (se usa criptografía asimétrica y criptografía simétrica).

1. La criptografía asimétrica se usa para el inicio de la sesión (Hay que generar un canal seguro donde acordar la clave simétrica aleatoria que se utilizará para cifrar la conversación)
2. La criptografía simétrica se usará durante la transmisión, utilizando la clave simétrica acordada durante el inicio de la sesión.

La clave simétrica se suele cambiar cada cierto tiempo (minutos) para dificultar más el espionaje de la conversación.

![Comunicación a través de criptografía híbrida](criptografiaHibrida.png)
_Comunicación a través de criptografía híbrida_

![Proceso híbrido del protocolo SSH](esquemaHibridoCifradoSsh.png)
_Esquema híbrido del protocolo SSH_

{:.section}
## Hash

Un hash es un algoritmo matemático que transforma un bloque arbitrario de datos en una nueva serie de caracteres de longitud fija.

![Función hash](funcionHash.png)
_Función hash_

Son los siguientes:

- SHA
- SHA-1
- SHA-256
- MD5
- RIPE-MD

Leer el artículo [¿Qué Es Un Hash Y Cómo Funciona?](https://latam.kaspersky.com/blog/que-es-un-hash-y-como-funciona/2806/)

{:.subsection}
### Características de los hash

1. Los hashes producidos, a pesar de que son palabras parecidas, son totalmente distintos.
1. Ambos tienen 40 caracteres de longitud: ya sean 5 caracteres los que metamos o todos los caracteres de esta presentación, la función hash hace un resumen de 40 caracteres.
1. Son unidireccionales: no es posible, a partir del valor resumen, calcular los datos originales.
1. No es necesario una clave para obtener el hash.
1. No existen 2 entradas que produzcan el mismo hash.

![Ejemplos de la aplicación de un algoritmo hash](ejemplosHash.png)
_Ejemplos de la aplicación de un algoritmo hash_

{:.subsection}
### Aplicación de los hash

- Almacenamiento de contraseñas: se guarda el hash que produce la contraseña pero no la contraseña.
- Integridad de los mensajes (como ya vimos en el tema y práctica anterior).
- Firma digital de documentos.
- Sumas de verificación para programas: En este caso, los algoritmos generan un valor resumen a partir del código fuente que permite comprobar, por ejemplo, que la versión del programa que se ha descargado es idéntica al original y no un software malicioso.

En [esta web](https://emn178.github.io/online-tools/sha256.html).

{:.question}
¿Donde podemos ver los hashes de las contraseñas en un sistema GNU Linux?

{:.question}
¿Qué es un hash? ¿Para qué se usa?

{:.question}
¿Es lo mismo cifrar que aplicar una función hash?

<iframe width="560" height="315" src="https://www.youtube.com/embed/FRBIc0udwv0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/lP_pbygY3PA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Qué información hay en el fichero /etc/shadow?

<details class="card mb-2">
  <summary class="card-header question">¿Qué es el salting de contraseñas? ¿Qué ventajas tiene echar sal a la contraseña?</summary>
  <div class="card-body" markdown="1">

![Salting de contraseñas](saltingHashPassword.webp)
_Salting de contraseñas_

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### Como obtener un hash

En GNU Linux:

```console
$md5sum <fichero del que quiero obtener el hash>
```

En Windows:

```console
$winmd5 <fichero del que quiero obtener el hash>
```

{:.section}
## Firma electrónica

La firma electrónica es un conjunto de datos electrónicos que acompañan o que están asociados a un documento electrónico y cuyas funciones básicas son:

- **Identificar al firmante de manera inequívoca**.
- **Asegurar la integridad del documento firmado**. Asegura que el documento firmado es exactamente el mismo que el original y que no ha sufrido alteración o manipulación.
- **Asegurar el no repudio del documento firmado**. Los datos que utiliza el firmante para realizar la firma son únicos y exclusivos y, por tanto, posteriormente, no puede decir que no ha firmado el documento.

Generalmente, la ley equipara la firma electrónica a la firma manuscrita.

Podemos precisar varios tipos:

- Firma electrónica **simple**: contempla los datos electrónicos empleados por la persona firmante. Es la que posee un menor nivel de seguridad. Por ejemplo: firma digitalizada.
- Firma electrónica **avanzada**: permite, además de conocer a la persona firmante, saber si se han efectuado cambios posteriormente. Por ejemplo: firma digital.
- Firma electrónica **cualificada**: se trata de una firma electrónica avanzada que ha sido generada por un dispositivo capacitado para la creación de firmas electrónicas. Por ejemplo: firma digital.

{:.subsection}
### Proceso básico de firma electrónica

El proceso básico que se sigue para la firma electrónica es el siguiente:

1. El usuario dispone de un documento electrónico (una hoja de cálculo, un pdf, una imagen, incluso un formulario en una página web) y de un certificado que le pertenece y le identifica.
1. La aplicación o dispositivo digital utilizados para la firma realiza un resumen del documento. El resumen de un documento de gran tamaño puede llegar a ser tan solo de unas líneas. Este resumen es único y cualquier modificación del documento implica también una modificación del resumen.
1. La aplicación utiliza la clave privada para codificar el resumen.
1. La aplicación crea otro documento electrónico que contiene ese resumen codificado. Este nuevo documento es la firma electrónica.

{:.section}
## Firma digital

- La primera utilidad de la criptografía es **ocultar el mensaje** o encriptarlo, es decir, garantizar la confidencialidad de la comunicación.
- La segunda es conseguir **determinar la autenticidad del emisor**. ¿Cómo podría estar seguro un general romano de que el mensaje con las órdenes venía de otro general romano y no del algún enemigo? Si el enemigo conocía el algoritmo de cifrado y la clave actual, podía intentar engañarle mediante un mensaje falso pero correctamente cifrado.
- La tercera utilidad es **asegurar el no repudio** del documento firmado (firma).

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo firma electrónica que firma digital?</summary>
  <div class="card-body" markdown="1">

La **firma electrónica** es por tanto un conjunto de datos electrónicos que acompañan a una determinada información también en formato electrónico. Realizar una firma electrónica quiere decir que una persona física verifica una acción o procedimiento mediante un medio electrónico, dejando un registro de la fecha y hora de la misma.

Una **firma digital** es una implementación técnica específica de algunas firmas electrónicas mediante la aplicación de algoritmos criptográficos. Por tanto, se refieren a la tecnología de cifrado / descifrado en la que se basan algunas firmas electrónicas como la avanzada y cualificada.

![Firma electrónica vs firma digital](firmaElectronicaVsFirmaDigital.png)
_Firma electrónica vs firma digital_

  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué es la firma digitalizada?</summary>
  <div class="card-body" markdown="1">

La firma digitalizada es la conversión del trazo de una firma en una imagen. Para obtener tu propia firma digitalizada tienes que realizarla sobre un papel y escanearla. O bien realizarla mediante algún tipo de hardware, como pueden ser los pads de firma, que te permiten guardar la imagen de tu firma en el ordenador - en formato .jpg o .png - y utilizarla cada vez que la necesites.

La firma digitalizada se considera firma electrónica simple, con lo cual es legal. Pero no ofrecen ninguna garantía respecto a la identidad del firmante (que es una característica de las firmas simples).

Además, las firmas digitalizadas se pueden falsificar muy fácilmente. Con lo que resulta paradójico que este tipo de firmas sea de las más utilizadas por la mayoría de las personas para firmar, y dar su consentimiento, en muchos documentos y contratos.

  </div>
</details>

{:.subsection}
### Proceso de firma digital

<iframe width="560" height="315" src="https://www.youtube.com/embed/JRYUxqghPG4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

![Proceso de firma digital](procesoFirmaDigital.png)
_Proceso de firma digital_

![Proceso de firma digital](firmaDigital.png)
_Proceso de firma digital_

{:.subsubsection}
#### Paso 1

El emisor aplica al documento una función de resumen (Función hash). 

El resultado de esa función es un lista de caracteres (resumen), que la función garantiza que solo se puede haber obtenido con el documento original

El algoritmo de la función hash no necesita una clave externa como los algoritmos de cifrado

{:.subsubsection}
#### Paso 2

Ahora el emisor cifra ese resumen con su clave privada y lo envía al destinatario junto con el documento original.

{:.subsubsection}
#### Paso 3

En el destino se hacen 2 operaciones:

1. Aplicar la misma función hash al documento para obtener su resumen.
2. Descifrar el resumen recibido, utilizando la clave publica del emisor.

Si ambos resúmenes coinciden, el destino puede estar seguro que el emisor del documento es el mismo que el dueño de la clave pública.

Por supuesto, si queremos que el documento original no pueda ser interceptado en la transmisión (emisor -> receptor), deberemos cifrarlo.

<iframe width="560" height="315" src="https://www.youtube.com/embed/ysfBTecjGIY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.section}
## Certificado digital de clave pública

Es, principalmente, un documento digital que contiene nuestros datos identificativos que están autentificados por un organismo oficial. El certificado digital es un documento que confirma nuestra identidad en internet como Persona Física y es obligatorio para poder consultar y realizar trámites con la Administración Pública.

![Certificado digital](certificadoDigital.png)
_Certificado digital_

![Captura de pantalla de un certificado digital](screenshotCertificadoDigital.png)
_Captura de pantalla de un certificado digital_

{:.question}
¿Se puede validar un certificado sin conexión a Internet?

{:.question}
¿Qué es una lista de revocación de certificados?

{:.section}
## PKI (Public Key Infraestructure)

Hasta de ahora hemos aprendido...

- Enviar documentos a un destinatario de manera que solo él podría leerlos (cifrado)
- Identificar al firmante
- Asegurar la integridad del documento firmado y asegurar el no repudio del documento firmado (firma)

En todos los casos necesitaríamos una comprobación extra sobre la clave pública: comprobar que la huella de la clave importada coincide con la huella de la clave original (Para asegurarnos de que vamos a comunicarnos con la persona correcta - AUTENTIFICACIÓN).

Comprobación de la huella con gpg:

```console
$gpg --fingerprint
```

La PKI o Public Key Infrastructure es la tecnología tras los certificados digitales. Al igual que un permiso de conducir o un pasaporte, un certificado digital demuestra su identidad y le otorga ciertos permisos. Un certificado digital permite que su propietario cifre, firme y autentique. Por tanto, PKI es la tecnología que le permite cifrar datos, firmar documentos y autenticarse mediante certificados.

Con el PKI se asegura:

- **Integridad**: El mensaje no ha sido cambiado.
- **No repudio**: La capacidad de demostrar o probar la participación de las partes
- **Identificación**: Mecanismo o proceso que provee la capacidad de identificar a un usuario de un sistema.
- **Autenticación**: Permite verificar la identidad o asegurar que un usuario es quien dice ser.

<iframe width="560" height="315" src="https://www.youtube.com/embed/J2ToaJoHWII" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Se puede usar cifrado simétrico para realizar una firma electrónica?

{:.question}
¿Qué es el no repudio?

{:.subsection}
### Nuevos interlocutores

- **Autoridad de Certificación (CA)**: su misión es emitir certificados. Hasta ahora los generábamos nosotros mismos.
- **Autoridad de Registro (RA)**: es la responsable de asegurar que el solicitante del certificado es quien dice ser.
- **Autoridad de Validación (VA)**: es la responsable de comprobar la validez de los certificados digitales emitidos. Suele coincidir con la CA.

![Interlocutores PKI](pki.jpg)
_Interlocutores PKI_

{:.subsection}
### Funcionamiento PKI

1. Durante el inicio de la sesión, el SERVIDOR envía su clave publica al CLIENTE. El CLIENTE, antes de iniciar el diálogo, DESCONFIA (necesita comprobar que el servidor es quien dice ser).
1. El SERVIDOR lo ha supuesto y ha enviado, junto con su clave pública, la firma digital de esa clave. Esa firma digital ha sido realizada por una CA oficial (utilizando la clave privada de esa CA)
1. El CLIENTE puede verificar la firma recibida utilizando la clave pública de la CA. Si la firma es correcta, la clave pública del SERVIDOR también lo es y podemos iniciar una sesión segura con toda confianza.

Por lo tanto, para que funcione la autentificación de clave publica mediante PKI, se necesitan 2 pasos previos:

- El SERVIDOR ha conseguido que una CA firme su clave publica (Por ejemplo, Verisign, FNMT…)
- El CLIENTE dispone de la clave pública de esa CA dentro de su llavero de claves asimétricas.

{:.section}
## Bibliografía

- [Función hash](https://es.wikipedia.org/wiki/Funci%C3%B3n_hash)
- [5 - Criptografía](https://sites.google.com/site/seguridadinformaticaisidro/5---criptografia)
- [Qué es la criptografía asimétrica y cómo funciona](https://protecciondatos-lopd.com/empresas/criptografia-asimetrica/)
- [¿Qué es la infraestructura de clave pública (PKI)?](https://www.entrust.com/es/resources/certificate-solutions/learn/what-is-pki)
- [¿Qué diferencia una firma electrónica de una digital?](https://www.santander.com/es/stories/firma-electronica-vs-firma-digital)
- [Diferencias entre la firma electrónica, la firma digital y la firma digitalizada](https://blog.signaturit.com/es/en-que-se-diferencian-la-firma-electronica-la-firma-digital-y-la-firma-digitalizada)
- [Certificado de clave pública (Wikipedia)](https://es.wikipedia.org/wiki/Certificado_de_clave_pública)
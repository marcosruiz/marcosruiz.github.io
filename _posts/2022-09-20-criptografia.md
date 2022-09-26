---
title: "Criptografía"
date: 2022-09-20 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría]
---

## 1. Introducción ¿Por qué cifrar?

La **información** (datos) es poder y **tiene un gran valor**. Por ejemplo: diseño de un automóvil, la fórmula de un nuevo medicamento, estrategia de mercado de una empresa...

Esta información, habitualmente hay que compartirla entre determinados miembros de la organización y dicha información puede ser transferida en algún soporte (disco SSD, un papel, correo electrónico...)

{:.question}
¿Qué ha ocurrido con Rockstar hace una semana?

El **emisor**, envía por tanto un **mensaje** a un **receptor** a través de un **canal** de comunicación (correo postal, correo web, archivo de texto…)

El canal de comunicación puede estar acechado por terceras personas, con la intención de interceptarlo. Por ejemplo, se puede sobornar al mensajero para hacer una copia del disco duro, fotocopiar el papel, hackear el servidor de correo, capturar el tráfico de la red…

Actualmente, todas nuestras conversaciones (telefonía móvil y fija, Skype, Whatsapp, correos electrónicos…) usan redes compartidas con otros usuarios y que son administradas por empresas que no son la nuestra.

Incluso dentro de nuestra organización podemos tener empleados “traidores”.

{:.question}
¿Cómo se llaman estos traidores?

Es imposible asegurar que nunca conseguirán el mensaje (o documento) que contiene la información. Nuestro objetivo es que aunque lo tengan y lo puedan leer, no entiendan nada porque esté cifrado. 

En esta tarea nos ayudará la criptografía.


## Criptografía vs criptoanálisis

La palabra Criptografía proviene del griego "kryptos" que significa oculto, y "graphia", que significa escritura.

Su definición según el diccionario es "Arte de escribir con clave secreta o de un modo enigmático". 

La Criptografía es un conjunto de técnicas, que originalmente tratan sobre la protección o el ocultamiento de la información frente a observadores no autorizados. 

Una definición más moderna de la criptografía es: Disciplina que estudia los principios, métodos y medios de transformar los datos para ocultar su significado, garantizar su integridad, establecer su autenticidad y prevenir su repudio


<details class="card mb-2">
  <summary class="card-header question">¿Que es el criptoanálisis?</summary>
  <div class="card-body" markdown="1">

La criptografía no engloba a las técnicas que se usan para romper dichos códigos, conocidas en su conjunto como criptoanálisis. El criptoanálisis se encarga de estudiar los mensajes encriptados, para transformarlos en legibles sin conocer la clave.

  </div>
</details>

Principio de Kerckhoffs: La efectividad del sistema no debe depender de que su diseño permanezca en secreto. 


## Historia de la criptografía

El uso de la criptografía se remonta a casi la época en la que comenzó la escritura.

Gobernantes y militares ya la usaron en los primeros estados como Egito, Babilonia o el Imperio Romano

Los espartanos utilizaron allá por el 400 a.c., la escítala, que puede considerarse como el primer sistema de criptografía por transposición (Ocultar el significado real de un texto mediante la alteración del orden de los signos que lo conforman).


![Escítala](/assets/img/criptografia/escitala.png)
_Escítala_

El sistema de encriptación funcionaba de la siguiente manera:

1. Se enrollaba una cinta en un palo de madera de un diámetro determinado (En nuestro ejemplo un palo decagonal)
2. Se escribía el mensaje horizontalmente de izquierda a derecha.
3. Se desenrollaba la cinta y el mensaje quedaba escrito con las letras desordenadas.
4. La persona que recibía un mensaje, para leerlo, sólo necesitaba tener un palo del mismo diámetro y volver a enrollar la cinta.

El método de la escitala era extremadamente sencillo, como también lo era el que utilizó Julio César y que veremos en el siguiente apartado.

{:.question}
¿Cómo quedaría el cifrado del texto "send more troops to southern flank and…" con un número de giros de banda de 10?

{:.question}
Desencripta el texto "Q QER UQULOZEUE FA E MERS TESAUTEJOGEENORORNGR ZTGO DAEO PE " si tengo un cilindro hexagonal.

## 2. Cifrado César

El cifrado César, también conocido como cifrado por desplazamiento, código de César o desplazamiento de César, es una de las técnicas de cifrado más simples y más usadas. Es un tipo de cifrado por sustitución en el que una letra en el texto original es reemplazada por otra letra que se encuentra un número fijo de posiciones más adelante en el alfabeto. 

Por ejemplo, con un desplazamiento de 3, la A sería sustituida por la D (situada 3 lugares a la derecha de la A), la B sería reemplazada por la E, etc. Este método debe su nombre a Julio César, que lo usaba para comunicarse con sus generales.

![Cifrado César](/assets/img/criptografia/cifradoCesar.png)
_Cifrado César_


<details class="card mb-2">
  <summary class="card-header question">Sin ordenador, ¿Cuál es el texto encriptado de “El propósito de las copias de seguridad es la recuperación de datos” con un desplazamiento = 5 con el alfabeto español (27 letras)?</summary>
  <div class="card-body" markdown="1">

Jp uwtuóxnyt ij pfx htunfx ij xjlzwnifi jx pf wjhzujwfhnór ij ifytx

  </div>
</details>


### Ventajas

1. Uno de los métodos más fáciles de usar en criptografía y puede proporcionar una seguridad mínima a la información.
1. Uso de solo una clave todo el proceso (Desplazamiento).
1. Uno de los mejores métodos para usar si el sistema no puede usar ninguna técnica de codificación complicada
1. Requiere pocos recursos informáticos.

### Desventajas

1. Uso de estructura simple
1. Solo puede proporcionar seguridad mínima a la información
1. La frecuencia del patrón de letras proporciona una gran pista para descifrar el mensaje completo.

## Rot13

El ROT13 no está pensado para los casos en los que el secreto tiene alguna importancia.

El efecto real del ROT13 es simplemente asegurarse de que el lector de un mensaje tenga que descifrarlo conscientemente, lo que normalmente suele implicar ejecutar el comando en cuestión en el software que lee el mensaje. En lugar de proteger un mensaje confidencial de los lectores no autorizados, el ROT13 salvaguarda a los lectores autorizados del material que pueden no querer leer involuntariamente, como los spoilers en una crítica de un libro o una película.


## 3. Cifrado de Polibio 

Se trata de un algoritmo trivial, donde cada letra del alfabeto es reemplazada por las coordenadas de su posición en un cuadrado.

De esta manera, la codificación consiste en indicar la fila y columna que ocupa cada letra, de forma sucesiva, en el cuadrado. Por ejemplo, la w está en la línea 5 y en la columna 2, y por lo tanto, le corresponde el 52.

![Clave del cifrado de Polibio](/assets/img/criptografia/cifradoPolibio.png)
_Clave del cifrado de Polibio_

<details class="card mb-2">
  <summary class="card-header question">¿Cómo se escribe la palabra "Polibio"?</summary>
  <div class="card-body" markdown="1">

35 34 31 24 12 24 34

  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Cuál es el texto "Wikipedia" codificado con la clave anterior?</summary>
  <div class="card-body" markdown="1">

52 24 25 24 35 15 14 24 11

  </div>
</details>

Polibio aparece en los libros de Criptografía como el inventor de un procedimiento para escribir las letras como pares de números.

También puede utilizarse la tabla de Polibio para convertir en números un alfabeto desordenado previamente por medio de una palabra clave. 

<details class="card mb-2">
  <summary class="card-header question">¿Cómo quedaría la tabla de Polibio si usamos la palabra "MUESCA" para cifrar?</summary>
  <div class="card-body" markdown="1">

![Clave del cifrado de Polibio](/assets/img/criptografia/polibioMuesca.png)
_Clave del cifrado de Polibio_

  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">Establece el tablero de Polibio correspondiente al alfabeto desordenado por medio de la palabra clave “murcielago”. Encripta después la frase: “IES Tiempos Modernos”.</summary>
  <div class="card-body" markdown="1">

![Clave del cifrado de Polibio: Murcielago](/assets/img/criptografia/cifradoPolibioMurcielago.png)
_Clave del cifrado de Polibio: Murcielago_

  </div>
</details>

## Cifrado de Francmason

El cifrado francmasón es un cifrado por sustitución simple que cambia las letras por símbolos basándose en un diagrama. 

Sin embargo, el uso de símbolos no impide el criptoanálisis (Criptoanálisis es idéntico al de otros métodos de cifrado por substitución simple).

El método fue desarrollado por los francmasones a principios de los años 1700 para mantener registros y para la correspondencia.

![Clave de Francmason](/assets/img/criptografia/cifradoFrancmason.png)
_Clave de Francmason_

![Ejemplo de Francmason](/assets/img/criptografia/ejemploFrancmason.png)
_Ejemplo de Francmason_

## Tipos de cifrado

Existen 2 tipos de cifrados:
- Monoalfabéticos
- Polialfabéticos

### Cifrados monoalfabéticos

Un sistema de cifrado es monoalfabético cuando cada carácter se sustituye siempre por un determinado carácter del alfabeto del texto cifrado.

La clave de un cifrado monoalfabético es el alfabeto de cifrado. Para un alfabeto de 26 letras, el número de claves (alfabetos) distintas es 26! 

26! = 4.0329146112661E+26 = 403291461126605635584000000. 

Descifrar un mensaje ensayando todas las posibles claves, lo que se conoce como ataque por fuerza bruta, es una tarea poco menos que imposible.

Supongamos que se tarda un segundo en comprobar cada clave. Se tardaría en agotar todas las claves, unos 4·1026 segundos. Este tiempo es aproximadamente 1,3·1019 años, unos mil millones de veces más grande que la edad del sol. 

¡Ni con la ayuda de los ordenadores más potentes podríamos descifrar el mensaje por medio del ataque por fuerza bruta!

<details class="card mb-2">
  <summary class="card-header question">¿Es por tanto el cifrado monoalfabético completamente seguro y que no se puede romper?</summary>
  <div class="card-body" markdown="1">

En absoluto. No sólo se puede sino que es bastante sencillo y la debilidad de estos procedimientos de cifrado es conocida desde hace más de quinientos años.

Cada lengua manifiesta preferencias de algunas letras sobre otras. Por ejemplo en español, en un texto suficientemente largo, se encuentra que: 

Las vocales ocupan alrededor del 47% del texto

Sólo la E y la A se identifican con relativa fiabilidad porque destacan mucho sobre las demás (12% y 13%)

Las letras de frecuencia alta suponen un 68% del total

Las consonantes más frecuentes son L, S, N, D (alrededor del 30%)
Las letras menos frecuentes son G, F, V, W, J, Z, X, K y Ñ (poco más del 1%)

Las vocales pueden ir precedidas o seguidas por prácticamente cualquier otra letra. Esto no ocurre con las consonantes, por ejemplo la q siempre va seguida por la u y la z nunca va seguida por la e o la i.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
Realiza un análisis de criptofrecuencia con un texto cualquiera con Cryptool.


<details class="card mb-2">
  <summary class="card-header question">¿Qué cifrados monoalfabéticos hemos visto?</summary>
  <div class="card-body" markdown="1">

Todos los vistos hasta ahora: César, ROT13, Polibio y Francmason

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Cuáles de los algoritmos vistos tiene un cifrado polialfabético? ¿Qué quiere decir esto?

### Cifrados polialfabéticos 

Como ya se vio en el apartado dedicado a los criptosistemas monoalfabéticos, su principal debilidad es que el texto cifrado mantiene la misma distribución de frecuencia de caracteres que tiene el texto claro original, 

Consecuencia: los cifrados monoalfabeto sean criptoanalizables por métodos estadísticos sencillos. 

Una posible mejora de los cifrados por sustitución es intentar métodos que destruyan esa correspondencia de frecuencias entre el mensaje en claro y el criptograma. 

En los cifrados polialfabéticos la sustitución aplicada a cada caracter varía en función de la posición que ocupe este dentro del texto claro. 

En realidad corresponde a una aplicación cíclica de n cifrados de sustitución monoalfabeto.


## 4. Cifrado de Vigenère

Si por ejemplo se quiere cifrar el mensaje “Dieu protège la France” con la clave LOUIS se procede de la siguiente forma. 

Se escribe el texto y la clave debajo repetida tantas veces como haga falta:

![Ejemplo de Vigenère con clave Louis](/assets/img/criptografia/louis.png)
_Ejemplo de Vigenère con clave Louis_

Ahora, cada letra se cifra con el alfabeto que empieza por la letra que tiene debajo:

- d en el alfabeto L se corresponde con la O.
- i en el alfabeto O se corresponde con la W.
- e en el alfabeto U se corresponde con la Y.
- u en el alfabeto I se corresponde con la C.
- p en el alfabeto S se corresponde con la H.

<details class="card mb-2">
  <summary class="card-header">Solución</summary>
  <div class="card-body" markdown="1">

El texto cifrado es: OWYCH CCNMY PZUNJ LBWM

  </div>
</details>


![Ejemplo de cifrado de Vigenère sin tabla](/assets/img/criptografia/cifradoVigenereSinTabla.png)
_Ejemplo de cifrado de Vigenère sin tabla_

![Tabla de Vigenère](/assets/img/criptografia/cifradoVigenereConTabla.png)
_Tabla de Vigenère_

<details class="card mb-2">
  <summary class="card-header question">Cifra el mensaje “IES Tiempos Modernos” con la clave CPU usando el cifrado de Vigenère. </summary>
  <div class="card-body" markdown="1">

TODO

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## 5. Cifrado simétrico y asimétrico

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


## 6. Cifrado simétrico

<iframe width="560" height="315" src="https://www.youtube.com/embed/SlSmI18T2Ns" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


{:.question}
¿Un ejemplo de cifrado simétrico?

{:.question}
¿Qué ventajas tiene el cifrado simétrico?

{:.question}
¿Qué es un ataque man in the middle?

{:.question}
¿Por qué existe el cifrado por bloque y cifrado por flujo?


## 7. Cifrado asimétrico

<iframe width="560" height="315" src="https://www.youtube.com/embed/SIIqLgqRMCo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


{:.question}
¿Qué desventajas tiene el cifrado asimétrico?

{:.question}
¿Con que firmamos si queremos confidencialidad?

{:.question}
¿Con que firmamos si queremos autenticación?


## 8. Firma electrónica

La firma electrónica es un conjunto de datos electrónicos que acompañan o que están asociados a un documento electrónico y cuyas funciones básicas son:

- **Identificar al firmante de manera inequívoca**.
- **Asegurar la integridad del documento firmado**. Asegura que el documento firmado es exactamente el mismo que el original y que no ha sufrido alteración o manipulación.
- **Asegurar el no repudio del documento firmado**. Los datos que utiliza el firmante para realizar la firma son únicos y exclusivos y, por tanto, posteriormente, no puede decir que no ha firmado el documento.

Generalmente, la ley equipara la firma electrónica a la firma manuscrita.

### 8.1. Proceso básico de firma electrónica

El proceso básico que se sigue para la firma electrónica es el siguiente:

1. El usuario dispone de un documento electrónico (una hoja de cálculo, un pdf, una imagen, incluso un formulario en una página web) y de un certificado que le pertenece y le identifica.
1. La aplicación o dispositivo digital utilizados para la firma realiza un resumen del documento. El resumen de un documento de gran tamaño puede llegar a ser tan solo de unas líneas. Este resumen es único y cualquier modificación del documento implica también una modificación del resumen.
1. La aplicación utiliza la clave privada para codificar el resumen.
1. La aplicación crea otro documento electrónico que contiene ese resumen codificado. Este nuevo documento es la firma electrónica.

## 9. Firma digital

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo firma electrónica que firma digital?</summary>
  <div class="card-body" markdown="1">

La **firma electrónica** es por tanto un conjunto de datos electrónicos que acompañan a una determinada información también en formato electrónico. Realizar una firma electrónica quiere decir que una persona física verifica una acción o procedimiento mediante un medio electrónico, dejando un registro de la fecha y hora de la misma.

Una **firma digital** es una implementación técnica específica de algunas firmas electrónicas mediante la aplicación de algoritmos criptográficos. Por tanto, se refieren a la tecnología de cifrado / descifrado en la que se basan algunas firmas electrónicas como la avanzada

![Firma electrónica vs firma digital](/assets/img/criptografia/firmaElectronicaVsFirmaDigital.png)
_Firma electrónica vs firma digital_

  </div>
</details>

<iframe width="560" height="315" src="https://www.youtube.com/embed/JRYUxqghPG4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

![Proceso de firma digital](/assets/img/criptografia/procesoFirmaDigital1.png)
_Proceso de firma digital_

![Proceso de firma digital](/assets/img/criptografia/procesoFirmaDigital2.png)
_Proceso de firma digital_

## 10. PKI

PKI (Public Key Infraestructure o Infraestructura de clave pública) es un conjunto de roles, políticas, hardware, software y procedimientos necesarios para crear, administrar, distribuir, usar, almacenar y revocar certificados digitales y administrar el cifrado de clave pública.

Se asegura:

- **Integridad**: El mensaje no ha sido cambiado.
- **No repudio**: La capacidad de demostrar o probar la participación de las partes
- **Identificación**: Mecanismo o proceso que provee la capacidad de identificar a un usuario de un sistema.
- **Autenticación**: Permite verificar la identidad o asegurar que un usuario es quien dice ser.

### 10.1. Elementos básicos de una PKI

![Elementos básicos de una PKI](/assets/img/criptografia/elementosBasicosDePki.png)
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


## 11. Bibliografía

- [Cifrado César](https://www.dcode.fr/caesar-cipher)
- [Cifrado de Vigenere](https://www.dcode.fr/cifrado-vigenere)
- [Principios de Kerckhoffs (Wikipedia)](https://es.wikipedia.org/wiki/Principios_de_Kerckhoffs)

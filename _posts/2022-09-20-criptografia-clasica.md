---
title: "Criptografía clásica"
date: 2022-09-20 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría]
img_path: /assets/img/criptografia-clasica/
---

## 1. Introducción ¿Por qué cifrar?

La **información** (datos) es poder y **tiene un gran valor**. Por ejemplo: diseño de un automóvil, la fórmula de un nuevo medicamento, estrategia de mercado de una empresa...

Esta información, habitualmente hay que compartirla entre determinados miembros de la organización y dicha información puede ser transferida en algún soporte (disco SSD, un papel, correo electrónico...)

{:.question}
¿Qué ha ocurrido con GTA VI hace una semana?

El **emisor**, envía por tanto un **mensaje** a un **receptor** a través de un **canal** de comunicación (correo postal, correo web, archivo de texto…)

El canal de comunicación puede estar acechado por terceras personas, con la intención de interceptarlo. Por ejemplo, se puede sobornar al mensajero para hacer una copia del disco duro, fotocopiar el papel, hackear el servidor de correo, capturar el tráfico de la red…

Actualmente, todas nuestras conversaciones (telefonía móvil y fija, Skype, Whatsapp, correos electrónicos…) usan redes compartidas con otros usuarios y que son administradas por empresas que no son la nuestra.

Incluso dentro de nuestra organización podemos tener empleados "traidores".

{:.question}
¿Cómo se llaman estos traidores?

Es imposible asegurar que nunca conseguirán el mensaje (o documento) que contiene la información. Nuestro objetivo es que aunque lo tengan y lo puedan leer, no entiendan nada porque esté cifrado. 

En esta tarea nos ayudará la criptografía.


## 2. Criptografía vs criptoanálisis

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


## 3. Historia de la criptografía

El uso de la criptografía se remonta a casi la época en la que comenzó la escritura.

Gobernantes y militares ya la usaron en los primeros estados como Egito, Babilonia o el Imperio Romano

Los espartanos utilizaron allá por el 400 a.c., la escítala, que puede considerarse como el primer sistema de criptografía por transposición (Ocultar el significado real de un texto mediante la alteración del orden de los signos que lo conforman).


![Escítala](escitala.png)
_Escítala_

El sistema de encriptación funcionaba de la siguiente manera:

1. Se enrollaba una cinta en un palo de madera de un diámetro determinado (En nuestro ejemplo un palo decagonal)
2. Se escribía el mensaje horizontalmente de izquierda a derecha.
3. Se desenrollaba la cinta y el mensaje quedaba escrito con las letras desordenadas.
4. La persona que recibía un mensaje, para leerlo, sólo necesitaba tener un palo del mismo diámetro y volver a enrollar la cinta.

El método de la escítala era extremadamente sencillo, como también lo era el que utilizó Julio César y que veremos en el siguiente apartado.

{:.question}
¿Cómo quedaría el cifrado del texto "send more troops to southern flank and…" con un número de giros de banda de 10?

{:.question}
Desencripta el texto "Q QER UQULOZEUE FA E MERS TESAUTEJOGEENORORNGR ZTGO DAEO PE " si tengo un cilindro hexagonal.

## 4. Cifrado César

El cifrado César, también conocido como cifrado por desplazamiento, código de César o desplazamiento de César, es una de las técnicas de cifrado más simples y más usadas. Es un tipo de cifrado por sustitución en el que una letra en el texto original es reemplazada por otra letra que se encuentra un número fijo de posiciones más adelante en el alfabeto. 

Por ejemplo, con un desplazamiento de 3, la A sería sustituida por la D (situada 3 lugares a la derecha de la A), la B sería reemplazada por la E, etc. Este método debe su nombre a Julio César, que lo usaba para comunicarse con sus generales.

![Cifrado César](cifradoCesar.png)
_Cifrado César_


<details class="card mb-2">
  <summary class="card-header question">Sin ordenador, ¿Cuál es el texto encriptado de "El propósito de las copias de seguridad es la recuperación de datos" con un desplazamiento = 5 con el alfabeto español (27 letras)?</summary>
  <div class="card-body" markdown="1">

Jp uwtuóxnyt ij pfx htunfx ij xjlzwnifi jx pf wjhzujwfhnór ij ifytx

  </div>
</details>


### 4.1. Ventajas

1. Uno de los métodos más fáciles de usar en criptografía y puede proporcionar una seguridad mínima a la información.
1. Uso de solo una clave todo el proceso (Desplazamiento).
1. Uno de los mejores métodos para usar si el sistema no puede usar ninguna técnica de codificación complicada
1. Requiere pocos recursos informáticos.

### 4.2. Desventajas

1. Uso de estructura simple
1. Solo puede proporcionar seguridad mínima a la información
1. La frecuencia del patrón de letras proporciona una gran pista para descifrar el mensaje completo.

## 5. Rot13

El ROT13 no está pensado para los casos en los que el secreto tiene alguna importancia.

El efecto real del ROT13 es simplemente asegurarse de que el lector de un mensaje tenga que descifrarlo conscientemente, lo que normalmente suele implicar ejecutar el comando en cuestión en el software que lee el mensaje. En lugar de proteger un mensaje confidencial de los lectores no autorizados, el ROT13 salvaguarda a los lectores autorizados del material que pueden no querer leer involuntariamente, como los spoilers en una crítica de un libro o una película.


## 6. Cifrado de Polibio 

Se trata de un algoritmo trivial, donde cada letra del alfabeto es reemplazada por las coordenadas de su posición en un cuadrado.

De esta manera, la codificación consiste en indicar la fila y columna que ocupa cada letra, de forma sucesiva, en el cuadrado. Por ejemplo, la w está en la línea 5 y en la columna 2, y por lo tanto, le corresponde el 52.

![Clave del cifrado de Polibio](cifradoPolibio.png)
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

![Clave del cifrado de Polibio](polibioMuesca.png)
_Clave del cifrado de Polibio_

  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">Establece el tablero de Polibio correspondiente al alfabeto desordenado por medio de la palabra clave "murcielago". Encripta después la frase: "IES Tiempos Modernos".</summary>
  <div class="card-body" markdown="1">

![Clave del cifrado de Polibio: Murcielago](cifradoPolibioMurcielago.png)
_Clave del cifrado de Polibio: Murcielago_

  </div>
</details>

## 7. Cifrado de Francmasón

El cifrado Francmasón es un cifrado por sustitución simple que cambia las letras por símbolos basándose en un diagrama.

Sin embargo, el uso de símbolos no impide el criptoanálisis (Criptoanálisis es idéntico al de otros métodos de cifrado por substitución simple).

El método fue desarrollado por los francmasones a principios de los años 1700 para mantener registros y para la correspondencia.

![Clave de Francmasón](cifradoFrancmason.png)
_Clave de Francmasón_

![Ejemplo de Francmasón](ejemploFrancmason.png)
_Ejemplo de Francmasón_

{:.question}
¿Quienes son los francmasones/masones? ¿Qué es una logia?

{:.question}
Escribir "IES Tiempos Modernos" con el cifrado de Francmason. 

## 8. Tipos de cifrado

Existen 2 tipos de cifrados:
- Monoalfabéticos
- Polialfabéticos

### 8.1. Cifrados monoalfabéticos

Un sistema de cifrado es monoalfabético cuando cada carácter se sustituye siempre por un determinado carácter del alfabeto del texto cifrado.

La clave de un cifrado monoalfabético es el alfabeto de cifrado. Para un alfabeto de 26 letras, el número de claves (alfabetos) distintas es 26! 

26! = 4,0329146112661E+26 = 403.291.461.126.605.635.584.000.000. 

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

### 8.2. Cifrados polialfabéticos 

Como ya se vio en el apartado dedicado a los criptosistemas monoalfabéticos, su principal debilidad es que el texto cifrado mantiene la misma distribución de frecuencia de caracteres que tiene el texto claro original, 

Consecuencia: los cifrados monoalfabeto sean criptoanalizables por métodos estadísticos sencillos. 

Una posible mejora de los cifrados por sustitución es intentar métodos que destruyan esa correspondencia de frecuencias entre el mensaje en claro y el criptograma. 

En los cifrados polialfabéticos la sustitución aplicada a cada caracter varía en función de la posición que ocupe este dentro del texto claro. 

En realidad corresponde a una aplicación cíclica de n cifrados de sustitución monoalfabeto.

## 9. Cifrado de Della Porta

Giovanni Battista Della Porta es un famoso científico italiano. En el ámbito de la criptografía su obra más importante data del 1563 y es De Furtivis Literarum Notis.

Estudia los cifrados clásicos y su criptoanálisis, expone también un nuevo método de cifrado. 

La característica principal de este método es la utilización de distintos alfabetos y de una palabra clave. 

El cifrado de Porta original emplea 11 alfabetos distintos. 

La palabra clave nos permite conocer en todo momento cual es el alfabeto que debemos emplear (En el caso del idioma español se deben utilizar 13 alfabetos distintos puesto que utilizamos 26 letras. Se construyen de modo análogo al que utilizó nuestro personaje para el latín).

### 9.1. Funcionamiento

Supongamos que la palabra clave es PORTA. 

Si queremos cifrar cualquier mensaje la primera letra del mensaje está asociada a la letra clave P, la segunda a la O... la sexta vuelve a estar asociada a la P.

Cada alfabeto tiene dos letras que le dan nombre. 

Si la letra clave es P, utilizamos para cifrar el alfabeto que tiene la letra P en su nombre (en nuestro caso es el séptimo alfabeto). Cada letra de la primera fila la sustituimos por la letra que tiene debajo en dicho alfabeto. 

Si la letra que queremos codificar se encuentra en la segunda línea la sustituimos por la letra que se encuentra encima. 

![Tabla de Della Porta](dellaPorta.png)
_Tabla de Della Porta_

<details class="card mb-2">
  <summary class="card-header question">Cifra el texto "siemprepapinuncaimpampi" usando la clave "PORTA" </summary>
  <div class="card-body" markdown="1">

TODO

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


## 10. Cifrado de Alberti

Leon Battista Alberti fue uno de los ejemplos de "homo universalis" del Renacimiento. Fue poeta, compositor, pintor, pero sobre todo es conocido como arquitecto. 

En el mundo de la criptografía su aportación más importante es De Componendis Cyphris, escrito en 1466. Es el libro sobre criptografía más antiguo que se conoce en el mundo occidental. Analiza en este libro los cifrados monoalfabéticos explicando el análisis de frecuencias. 

Históricamente es el primero en proponer los cifrados polialfabéticos. 

Aparte de esto, propone un nuevo método de cifrado de su invención que utiliza el ahora conocido como disco de Alberti.

![Disco de Alberti](discoAlberti.png)
_Disco de Alberti_

## 11. Cifrado de Vigenère

La tabla consiste en los alfabetos escritos 26 veces en diferentes filas, cada alfabeto desplazado cíclicamente a la izquierda en comparación con el alfabeto anterior, correspondiente a los 26 posibles Cifrados César.

En diferentes puntos del proceso de encriptación, el cifrado usa un alfabeto diferente en cada una de las filas. El alfabeto utilizado en cada punto depende de una palabra clave repetitiva.

El descifrado se realiza yendo a la fila de la tabla correspondiente a la clave, encontrando la posición de la letra del texto cifrado en esta fila y luego usando la etiqueta de la columna como texto sin formato.

Si por ejemplo se quiere cifrar el mensaje "Dieu protège la France" con la clave LOUIS se procede de la siguiente forma. 

Se escribe el texto y la clave debajo repetida tantas veces como haga falta:

![Ejemplo de Vigenère con clave Louis](louis.png)
_Ejemplo de Vigenère con clave Louis_

Ahora, cada letra se cifra con el alfabeto que empieza por la letra que tiene debajo:

- D en el alfabeto L se corresponde con la O.
- I en el alfabeto O se corresponde con la W.
- E en el alfabeto U se corresponde con la Y.
- U en el alfabeto I se corresponde con la C.
- P en el alfabeto S se corresponde con la H.

<details class="card mb-2">
  <summary class="card-header">Solución</summary>
  <div class="card-body" markdown="1">

El texto cifrado es: OWYCH CCNMY PZUNJ LBWM

  </div>
</details>


![Ejemplo de cifrado de Vigenère sin tabla](cifradoVigenereSinTabla.png)
_Ejemplo de cifrado de Vigenère sin tabla_

![Tabla de Vigenère](cifradoVigenereConTabla.png)
_Tabla de Vigenère_

<details class="card mb-2">
  <summary class="card-header question">Cifra el mensaje "IES Tiempos Modernos" con la clave CPU usando el cifrado de Vigenère. </summary>
  <div class="card-body" markdown="1">

KTM Vxyoeiu Biftlpdm

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


## 12. Bibliografía

- [Cifrado César](https://www.dcode.fr/caesar-cipher)
- [Cifrado de Vigenere](https://www.dcode.fr/cifrado-vigenere)
- [Principios de Kerckhoffs (Wikipedia)](https://es.wikipedia.org/wiki/Principios_de_Kerckhoffs)

---
title: "Accesibilidad en la web"
date: 2025-04-02 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/accesibilidad-web/
---

## Introducción

A la hora de diseñar una interfaz web no podemos olvidarnos de la gran cantidad de personas en el mundo que tienen algún tipo de discapacidad. También debemos tener en cuenta a usuarios que tienen un ancho de banda limitado. Esto cobra especial relevancia en los sitios web de instituciones públicas.

<details class="card mb-2">
  <summary class="card-header question">¿Son las empresas que distribuyen software responsables de la accesibilidad Web?</summary>
  <div class="card-body" markdown="1">

Si.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Las reglas de accesibilidad son un subconjunto de las reglas de usabilidad?</summary>
  <div class="card-body" markdown="1">

No. Un sistema puede ser accesible pero poco usable.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Las reglas de usabilidad son un subconjunto de las reglas de accesibilidad?</summary>
  <div class="card-body" markdown="1">

No. Un sistema puede ser usable pero no accesible.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Tipos de discapacidad

En Junio de 2002, el Real Patronato sobre Discapacidad encargó la realización de un estudio sobre epidemiología de la discapacidad. Los resultados de este estudio son los siguientes:

POBLACIÓN AFECTADA POR LOS DIFERENTES GRUPOS DE DISCAPACIDADES (Datos referidos a personas de 6 y más años)

| Grupo de Discapacidad                                                                                    | Número de personas | Tasa por 1.000 habitantes |
| -------------------------------------------------------------------------------------------------------- | ------------------ | ------------------------- |
| Ver.                                                                                                     | 1.002.290          | 27,1                      |
| Oír.                                                                                                     | 961.348            | 26,0                      |
| Comunicarse.                                                                                             | 359.356            | 9,7                       |
| Aprender, aplicar conocimientos y desarrollar tareas.                                                    | 574.410            | 15,5                      |
| Utilizar brazos y manos.                                                                                 | 1.092.872          | 29,5                      |
| Total personas con discapacidad (una misma persona puede estar en más de una categoría de discapacidad). | 3.478.644          | 93,9                      |

<details class="card mb-2">
  <summary class="card-header question" markdown="1">

¿Qué grupos sociales corren el riesgo de quedar excluidos del acceso a los sitios web debido a obstáculos técnicos?

1. Los ancianos.
1. Las mujeres.
1. Los niños.
1. Las personas con discapacidad.

  </summary>
  <div class="card-body" markdown="1">

Los ancianos y las personas con discapacidad.

Los ancianos es un colectivo que está creciendo mucho y que debido a las limitaciones propias de la edad: falta de destreza en el movimiento (incluso con temblores) o pérdida de agudeza visual o auditiva pueden quedar excluidos del acceso a los sitios web.

Las personas con discapacidad corren el riesgo de quedar excluidos si no se toman medidas en el diseño de páginas web para faciliten el acceso a estas personas.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

A continuación describiremos algunos de los tipos de discapacidad que como personas dedicadas al diseño de interfaces Web debemos tener en cuenta para hacer nuestros sitios Web más accesibles y posteriormente veremos las pautas a seguir para poder hacerlo.

### Visual

Una persona tiene una discapacidad visual cuando tiene disminuida la función visual o bien cuando tiene una ceguera.

Hay muchos tipos de problemas oculares y perturbaciones visuales: visión borrosa, halos, puntos ciegos, moscas volantes, etcétera que pueden estar provocados por una enfermedad ocular u otro tipo de enfermedad que afecte al ojo o, simplemente, por el envejecimiento.

¿Sabias que hay personas que no pueden ver nada en algunas partes de su campo visual?

<details class="card mb-2">
  <summary class="card-header question">¿Qué es el campo visual? ¿Cuáles son los límites del campo visual?</summary>
  <div class="card-body" markdown="1">

Cantidad de espacio que podemos observar teniendo la vista fija en un punto central situado en el infinito.

![Límites normales del campo visual](campoVisual.png)
_Límites normales del campo visual_

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Las personas que tienen problemas de visión pueden haber adquirido éstos:

- De forma repentina debido a un accidente.
- De forma gradual a causa de una enfermedad o por efecto de la edad.
- Tenerlos desde su nacimiento.

### Motriz

Se dice que una persona tiene una discapacidad motriz cuando padece alguna disfunción en el aparato locomotor. Esta disfunción puede llevar asociados algunos problemas como son:

- Los movimientos limitados o incontrolados.
- La falta de coordinación.
- La falta de fuerza en las extremidades.

<details class="card mb-2">
  <summary class="card-header question">¿Qué es el aparato locomotor?</summary>
  <div class="card-body" markdown="1">

Es aquel que está formado por los huesos, las articulaciones y los músculos.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Las personas con discapacidad motriz tienen dificultades para enderezar la cabeza, el tronco y las extremidades y tienen problemas para realizar movimientos que requieran un gran control del tono muscular.

<details class="card mb-2">
  <summary class="card-header question">¿Qué es el tono muscular?</summary>
  <div class="card-body" markdown="1">

Es la contracción parcial, pasiva y continua de los músculos.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

### Auditiva

Las personas con discapacidad auditiva tienen una audición deficiente en ambos oídos. Estas personas se pueden clasificar en dos grandes grupos:

- Personas con **hipoacusia**. Son personas que mediante el uso de prótesis adecuadas son capaces de adquirir por vía auditiva el lenguaje oral.
- Personas con **sordera**. Son personas en las que la visión es su principal canal de comunicación ya que está incapacitado para adquirir la lengua oral por vía auditiva.

La audición es la vía principal a través de la cual se desarrolla el lenguaje y el habla. Un trastorno en la percepción auditiva, en una edad temprana, conlleva un desarrollo  con dificultades para la comprensión lectora y la comprensión de determinadas construcciones sintácticas.

Por ello tenemos que tener en cuenta que una persona con discapacidad auditiva desde su nacimiento, no podrá procesar el lenguaje de la misma forma que una persona sin discapacidad o que una persona que perdió la audición después de aprender a hablar.

### Cognitiva

<details class="card mb-2">
  <summary class="card-header question">¿Cuáles son las habilidades cognitivas?
</summary>
  <div class="card-body" markdown="1">

Las habilidades cognitivas son un conjunto de operaciones mentales que nos permiten integrar la información que recibimos a través de los sentidos.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Podemos decir que las habilidades cognitivas son aquellas que nos facilitan la adquisición de conocimiento, su retención y su recuperación. Las habilidades cognitivas son las siguientes:

- **Observación**: Todo aquello relacionado con la atención, concentración, búsqueda e identificación de datos, elementos u objetos.
- **Análisis**: Todo aquello relacionado con las habilidades para hacer comparaciones, distinciones con la finalidad de distinguir y destacar los elementos básicos de información.
- **Ordenación**: Todo aquello relacionado con la agrupación, reunión y serialización que permite, a partir de un atributo determinado, disponer un conjunto de datos de forma sistemática.
- **Clasificación**: Todo aquello relacionado con la categorización, esquematización, jerarquización de un conjunto de datos.
- **Representación**: Todo aquello relacionado con la modelización, reproducción o simulación como medio de recreación de nuevos hechos o situaciones a partir de los existentes.
- **Memorización**: Todo aquello relacionado con la retención, conservación, evocación, almacenamiento y recuperación de datos.
- **Interpretación**: Todo aquello relacionado con la argumentación, la deducción y el razonamiento que nos permite aportar un significado personal a la información.
- **Evaluación**: Todo aquello relacionado con la estimación, la crítica y el juicio que nos permite realizar valoraciones sobre los datos obtenidos.

La discapacidad cognitiva de las personas es una disminución de sus habilidades cognitivas. Las causas más conocidas son el Autismo, el Síndrome de Down y el Retraso Mental.

<details class="card mb-2">
  <summary class="card-header question">¿Qué es el autismo?</summary>
  <div class="card-body" markdown="1">

Trastorno del desarrollo que afecta a la comunicación.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué es el sindrome de down?</summary>
  <div class="card-body" markdown="1">

Trastorno genético caracterizado por la presencia de un grado variable de retraso mental.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué es el retraso mental?</summary>
  <div class="card-body" markdown="1">

Trastorno del desarrollo que lleva asociado un funcionamiento intelectual menor de lo normal con limitaciones en el desempeño de las actividades diarias necesarias para lograr una independencia personal y social.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Las personas con discapacidad cognitiva presentan dificultades en el desarrollo de la inteligencia verbal y matemática, pueden tener un menor rendimiento en la lectura, en la precisión, en la comprensión o en la velocidad, lo que ocasiona trastornos del aprendizaje.

<details class="card mb-2">
  <summary class="card-header question">Una persona con discapacidad auditiva desde su nacimiento ¿presenta dificultades en el desarrollo de la inteligencia verbal y matemática?
</summary>
  <div class="card-body" markdown="1">

No siempre. Las personas con sordera de nacimiento pueden desarrollar su inteligencia verbal con otro medio de comunicación como es el lenguaje de signos. Sí van a tener un menor rendimiento en la lectura o en la comprensión debido a la escasez de vocabulario y a que las frases en el lenguaje de signos se construyen de forma diferente que en el lenguaje oral o el lenguaje escrito.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Tecnología asistencial

La tecnología asistencial es el conjunto de equipos, dispositivos, instrumentos o programas empleados con la finalidad de mejorar la calidad de vida de aquellas personas que tienen algún tipo de discapacidad incrementando así su autonomía.

La tecnología asistencial ayuda a las personas con discapacidad a realizar tareas que no podrían hacer de otra manera.

Algunos ejemplos de tecnología asistencial son:

- El **perro guía** que acompaña y conduce a las personas ciegas, ayudándoles a cruzar las calles o los perros que están adiestrados para acompañar a personas enfermas.
- **Coches adaptados** para sillas de ruedas o con asientos especiales.
- Las **rampas** en la entrada de los edificios y puertas automáticas facilitan el paso a aquellas personas que se desplazan en silla de ruedas aunque, no cabe duda, que las personas sin discapacidad también se benefician de este tipo de tecnología asistencial.
- Hay **sillas de ruedas** adaptadas para la práctica de deportes como el baloncesto o el tenis.
- El **soporte para libros** permite realizar la lectura con una sola mano.

Las personas ciegas o con discapacidad visual utilizan distintos tipos de tecnología para acceder a la información que se muestra en la pantalla, incluyendo los lectores de pantalla, los dispositivos braille, los ampliadores de pantalla o cualquier combinación de todos ellos mientras que, las personas con discapacidad motriz, utilizan distintos tipos de tecnología asistencial que incluyen, entre otros, los teclados y/o ratones modificados y los sistemas de reconocimiento de voz.

<details class="card mb-2">
  <summary class="card-header question" markdown="1">

Relaciona las siguientes tecnologías asistenciales con el tipo de discapacidad en la que se usan (Cognitiva, Auditiva, Visual o Motriz).:

1. Lector de pantalla.
1. Soporte para libros.
1. Ratón modificado.
1. Dispositivo braille.

  </summary>
  <div class="card-body" markdown="1">

1. Lector de pantalla. → Visual
1. Soporte para libros. → Motriz
1. Ratón modificado. → Motriz
1. Dispositivo braille. → Visual

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

### Dispositivos de entrada

Los dispositivos de entrada considerados como tecnología asistencial son aquellos que permiten realizar las mismas funciones que se realizarían con un teclado o con un ratón convencional.

Los más conocidos son:

- Teclado virtual
- Teclado alternativo
- Xbox Adaptive Controller
- Teclado Braille
- Software de reconocimiento de voz
- Apuntadores
- Trackball
- Webcams para seguimiento de ojos o cara

#### Teclado virtual

El teclado virtual es un teclado que se muestra en pantalla y que permite escribir textos eligiendo los caracteres con el ratón. Este dispositivo facilita el trabajo a aquellas personas que no pueden usar un teclado con normalidad. Algunos teclados virtuales incorporan un sistema predictivo de palabras con lo cual el esfuerzo para escribir es menor. La mayoría de sistemas operativos ya suministran su propio teclado virtual en pantalla.

![Teclado virtual de Windows 11](tecladoVirtualW11.png)
_Teclado virtual de Windows 11_

#### Teclado alternativo

Son teclados adaptados a las distintas necesidades. Las adaptaciones realizadas pueden ser:

- Un aumento del tamaño físico de las teclas o del espacio entre las teclas para facilitar su uso por las personas con discapacidad motriz,
- Un aumento del tamaño de las letras escritas sobre la tecla para facilitar la visión a aquellas personas con discapacidad visual
- Un teclado coloreado o con imágenes para facilitar el aprendizaje en las personas con discapacidad cognitiva.

Estos teclados pueden tener una retroalimentación auditiva, indicando mediante el sonido cuál es la tecla pulsada.

![Teclado alternativo](tecladoAlternativo.png)
_Teclado alternativo_

#### Xbox Adaptive Controller

Es un mando diseñado por Microsoft específicamente para personas con discapacidades o movilidad reducida. Su objetivo principal es hacer que los videojuegos sean más accesibles para todos.

<iframe width="560" height="315" src="https://www.youtube.com/embed/ie7ad7ZLL74?si=WYoWOVeyPfIjmYFJ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

#### Teclado Braille

Es un teclado adaptado para personas ciegas. Los teclados braille suelen tener 6 u 8 teclas principales y algunas teclas auxiliares permitiendo, así, representar cualquier carácter mediante la pulsación simultánea de un número reducido de teclas.

![Teclado Braille](tecladoBraille2.png)
_Teclado Braille_

![Teclado Braille](tecladoBraille.png)
_Teclado Braille_

#### Software de reconocimiento de voz

Empleado para poder introducir datos o ejecutar comandos en el ordenador a aquellas personas que no pueden hacer uso del teclado ni del ratón. Para ello el ordenador emplea sus funciones de audio. Los sistemas operativos y algunos navegadores ya dan soporte al reconocimiento de voz sin necesidad de instalar un software adicional.

![Windows Speech Recognition](windowsSpeechRecognition.png)
_Windows Speech Recognition_

#### Apuntadores

Los Apuntadores (también llamados licornios) están pensados para aquellas personas que no tienen movilidad en las extremidades pero sí en la cabeza. Es un casco que lleva incorporada una varilla larga acoplada en la frente o en la barbilla y que es empleada para realizar pulsaciones en el teclado. Estos apuntadores deben complementarse con una función conocida como "sticky keys" que permite simular la pulsación simultánea de varias teclas pero pulsándolas de una en una.

![Licornios o apuntadores](licornios.png)
_Licornios o apuntadores_

#### Trackball

Es un ratón que no necesita desplazarse. Tiene una bola de gran tamaño situada por encima del ratón que se mueve en cualquier dirección y unos botones de gran tamaño facilitando, de esta forma, su uso por las personas con discapacidad motriz. Algunos disponen de un botón adicional que permite ampliar las imágenes con lo que se convierte en una herramienta útil también para las personas con discapacidad visual.

![Trackball Logitech](trackballLogitech.jpg){: width="400px"}
_Trackball Logitech_

![Trackball Ablenet](trackballAblenet.jpg){: width="400px"}
_Trackball Ablenet_

#### Webcams para seguimiento de ojos o cara

Estas webcams están preparadas para transformar el movimiento de los ojos o la cara en movimientos del puntero del ratón en la pantalla simulando las pulsaciones del ratón con un parpadeo o con un gesto concreto de la cara. Estos dispositivos son adecuados para aquellas personas que tienen una discapacidad motriz severa de las extremidades y además tienen dificultad en el habla como para poder emplear el software de reconocimiento de voz.

<iframe width="560" height="315" src="https://www.youtube.com/embed/_qXh8sz9fuI?si=_oVvr6Kg49lCJ5S3" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

### Dispositivos de salida

Los dispositivos de salida en un sistema informático son: la pantalla o monitor donde se visualiza la información y los altavoces que reproducen el sonido. Hay que adoptar las medidas necesarias para que las personas con discapacidad auditiva puedan tener acceso a la información sonora y que las personas con discapacidad visual puedan tener acceso a toda la información visual presentada en el monitor. Tampoco hay que olvidar que si la información se suministra además con un lenguaje claro y sencillo, las personas con discapacidad auditiva severa y/o cognitiva no tendrán tantos problemas para comprender dicha información.

Los dispositivos de salida más conocidos empleados como tecnología asistencial son:

- Lectores de pantalla
- Ampliadores de pantalla
- Líneas Braille

#### Lectores de pantalla

Son programas especialmente útiles para las personas con ceguera o con una discapacidad visual muy grande ya que permiten hacer una lectura de lo que se muestra por pantalla mediante un sintetizador de voz. Existen diferentes lectores:

- Narrador: integrado en Windows.
- [Voice Aloud Reader](https://play.google.com/store/search?q=voice%20aloud%20reader&c=apps&hl=es) 🔥: para leer ficheros EPUB, Web y PDF.
- [NVDA](https://www.nvaccess.org/download/) (NonVisual Desktop Access): Gratuito y de código abierto.

![alt text](narratorW11.png)
_Narrador de Windows 11_

![alt text](voiceAloudReader.png)
_Voice Aloud Reader_

<iframe width="560" height="315" src="https://www.youtube.com/embed/8ZKlKAAh6HI?si=dK9J97CTg9FhXnhw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

#### Ampliadores de pantalla

Son programas especialmente útiles en las personas con baja visión ya que permiten ampliar el texto y las imágenes mostrados en el monitor. En este apartado tenemos como ejemplo la lupa que suministran algunos sistemas operativos.

![Aplicación de lupa de Windows 11](magnifierW11.png)
_Aplicación de lupa de Windows 11_

#### Líneas Braille

Están compuestas por una serie de celdas con 6 u 8 puntos cada una que muestran de forma táctil la misma información que leería un lector de pantalla. Son útiles para las personas ciegas y, sobre todo, para las sordo-ciegas que no se pueden beneficiar de los lectores de pantalla ni de los ampliadores de pantalla.

![Lineas Braille](lineasBraille.png)
_Lineas Braille_

<details class="card mb-2">
  <summary class="card-header question">¿cómo puedes tú (como persona dedicada al diseño web) contribuir a la accesibilidad en la web?</summary>
  <div class="card-body" markdown="1">

- Empleando un código XHTML semánticamente correcto.
- Proporcionando un texto descriptivo alternativo a las imágenes.
- Dando nombres significativos a los enlaces para que puedan ser leídos correctamente por los lectores de pantalla.
- Subtitulando los vídeos facilitaremos su comprensión por parte de las personas con discapacidad auditiva.
- Empleando un lenguaje claro y sencillo facilitaremos su comprensión a las personas con discapacidad cognitiva y aquellas con una discapacidad auditiva severa adquirida en una edad muy temprana.
- Eligiendo un tamaño de letra grande con un buen contraste con el fondo y una adecuada combinación de colores facilitaremos la lectura a las personas con baja visión.
- Creando elementos de interacción lo suficientemente grandes facilitaremos a las personas con alguna discapacidad motriz el poder interactuar con una página.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Crees que mi web cumple todos estos requisitos de accesibilidad?

<details class="card mb-2">
  <summary class="card-header question">¿Los "sticky keys" son teclas especiales de gran tamaño que pueden verse mejor?</summary>
  <div class="card-body" markdown="1">

No. La función de las "sticky keys" es simular la pulsación simultánea de varias teclas pero pulsándolas de una en una.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Bibliografía


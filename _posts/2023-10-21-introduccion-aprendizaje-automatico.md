---
title: "Introducción al aprendizaje automático"
date: 2023-10-22 9:00:00 +0100
categories: [Inteligencia Artificial y Big Data, Sistemas de aprendizaje automático]
tags: [inteligencia artificial y big data, sistemas de aprendizaje automático]
img_path: /assets/img/introduccion-aprendizaje-automatico/
math: true
---

{:.section}
## Introducción

<details class="card mb-2">
  <summary class="card-header question">¿Qué es la Inteligencia Artificial?</summary>
  <div class="card-body" markdown="1">

Definir la Inteligencia Artificial no es nada fácil. Incluso los investigadores de IA no tienen una definición exacta. Más bien, el campo se redefine constantemente cuando algunos temas se clasifican como no IA y surgen nuevos temas.

Hace cincuenta años, por ejemplo, se consideraba que los métodos automáticos de búsqueda y planificación pertenecían al dominio de la IA. Hoy en día, estos métodos se enseñan a todos los estudiantes de informática. De manera similar, ciertos métodos para procesar información incierta se están entendiendo tan bien que es probable que se pasen de la IA a las estadísticas o la probabilidad muy pronto. Un intento de definición sería enumerar las propiedades que son características de la IA:

- **Autonomía**: La capacidad de realizar tareas en entornos complejos sin la guía constante de un usuario.
- **Adaptabilidad**: La capacidad de mejorar el desempeño aprendiendo de la experiencia
<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Quién es Alan Turing?

<details class="card mb-2">
  <summary class="card-header question">¿Qué ocurrió en la conferencia de Dartmouth en el verano de 1956?</summary>
  <div class="card-body" markdown="1">

Leer <https://ecosistemahuawei.xataka.com/como-se-levanta-uno-e-inventa-la-ia-en-1956/>.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Qué diferencia hay entre IA, ML y DL?

<details class="card mb-2">
  <summary class="card-header question">¿Qué es  el test de Turing?</summary>
  <div class="card-body" markdown="1">

El Test de Turing nace como un método para determinar si una máquina puede pensar. 

El juez debe descubrir cuál es el ser humano y cuál es la máquina, estándoles a los dos permitido mentir o equivocarse al contestar por escrito las preguntas que el juez les hiciera. 

La tesis de Turing supone que si ambos jugadores son suficientemente hábiles, el juez no podrá distinguir quién es el ser humano y quién la máquina.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Cuándo decía Turing que existirá la Inteligencia Artificial?</summary>
  <div class="card-body" markdown="1">

Para Alan Turing, la inteligencia artificial existirá cuando no seamos capaces de distinguir entre un ser humano y un programa de una computadora en una conversación a ciegas. 

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Ejemplos de uso de IA

- **Coches autónomos**: Los automóviles autónomos requieren una combinación de técnicas de inteligencia artificial de muchos tipos: búsqueda y planificación para encontrar la ruta más conveniente de A a B, visión por computadora para identificar obstáculos y toma de decisiones en condiciones de incertidumbre para hacer frente al entorno complejo y dinámico en tiempo real con un gran volumen de información y sin necesidad de haber sido programados específicamente. Cada uno de ellos debe funcionar con una precisión casi perfecta para evitar accidentes tomando decisiones en menos de 0,1 segundos. Las mismas tecnologías también se utilizan en otros sistemas autónomos como robots de reparto, drones voladores y barcos autónomos. Noticia: <https://www.tuxera.com/blog/autonomous-cars-300-tb-of-data-per-year/>.
- **Recomendación de contenido**: Mucha de la información que encontramos en el transcurso de un día típico es personalizada. Los ejemplos incluyen Facebook, Twitter, Instagram y otros contenidos de redes sociales; anuncios en línea; recomendaciones de música en Spotify; recomendaciones de películas en Netflix, HBO y otros servicios de streaming… Muchos editores en línea, como las webs de periódicos y empresas de radiodifusión, así como motores de búsqueda como Google, también personalizan el contenido que ofrecen.
- **Procesamiento de imágenes y vídeos**: El reconocimiento facial ya es un producto que se utiliza en muchas aplicaciones gubernamentales, comerciales y de clientes, como la organización de sus fotos según las personas, el etiquetado automático en las redes sociales y el control de pasaportes. Se pueden utilizar técnicas similares para reconocer otros automóviles y obstáculos alrededor de un automóvil autónomo, o para estimar las poblaciones de vida silvestre, solo por nombrar algunos ejemplos. La IA también se puede utilizar para generar o alterar contenido visual. Los ejemplos que ya se utilizan en la actualidad incluyen la transferencia de estilo, mediante la cual puede adaptar sus fotos personales para que parezcan pintadas por Vincent van Gogh, y personajes generados por computadora en películas como Avatar , el Señor de los Anillos y animaciones populares de Pixar donde los personajes animados reproducen gestos realizados por actores humanos reales.
- **Filtros de SPAM**: google, Microsoft, Yahooo… aplican algoritmos de IA para detectar correos fraudulentos y de tipo SPAM.
- **Asistentes personales y chatbots**: sistemas que utilizan NLP (Natural Language Processing) para mejorar la experiencia de usuario. Permiten una comunicación bidireccional coherente con seres humanos ya sea oral o escrita. Ejemplos: Alexa, Siri... 
- **Videojuegos**: sistemas capaces de predecir la actuación del humano y que permiten generar escenarios de juego realistas sin necesidad de haber sido programados específicamente.

{:.section}
## Tipos de Inteligencia Artificial

Al pensar en inteligencia artificial, la mayoría de nosotros tiene en mente una IA con capacidades mentales humanas, un programa que nos supera con un largo margen, o una persona sintética capaz de imitarnos e incluso combatirnos.

Existen 2 tipos de Inteligencia Artificial:

- Inteligencia Artificial Débil
- Inteligencia Artificial Fuerte

{:.subsection}
### Inteligencia Artificial Débil

IA Débil (Artificial Narrow Intelligence): Todo nuestro desarrollo y avance científico ha cristalizado en una forma de inteligencia que, aunque puede superar algunas capacidades humanas y va a tener un enorme impacto en nuestra economía, sólo puede orientarse a un objetivo. Es la llamada inteligencia artificial débil (IAD). La IA débil es la capacidad de un sistema informático de imitar funciones cognitivas humanas, como el aprendizaje y la solución de problemas. «Débil» no significa que no tenga valor. La IAD nos es de gran ayuda a la hora de detectar una metástasis, por ejemplo. También nos echa una mano cuando tratamos de extraer valor de un gran conjunto de datos o cuando necesitamos coordinar una flota de vehículos en una ciudad, clave para la movilidad autónoma. Lo cierto es que la inteligencia artificial débil ya se encuentra a nuestro alrededor y le damos multitud de usos.

En la IA Débil, aunque parezca que la IA está pensando por sí misma en tiempo real, en realidad está analizando varios procesos estrechos y tomando decisiones dentro de un marco predeterminado. La IA débil no implica conciencia en sus acciones (IAF),es decir, inteligencia artificial igual o superior a la capacidad humana promedio. De momento, todos estos casos quedan dentro de la ciencia ficción. A día de hoy, no hemos conseguido programar una IA fuerte.

Para diferenciar IAD de IAF, Huawei ha elaborado la siguiente infografía para clasificar sus respectivas características:

![Diferencias entre IAD e IAF](IA_infografia.png)
_Diferencias entre IAD e IAF_

<details class="card mb-2">
  <summary class="card-header question">¿Qué es la Super IA?</summary>
  <div class="card-body" markdown="1">

Super IA (Artificial Super Intelligence): sistema informático que haya logrado una superinteligencia artificial superior a los humanos.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
## Inteligencia Artificial Fuerte

IA Fuerte (Artificial General Intelligence o de nivel humano): sistema informático que ha conseguido resolver problemas sumamente complejos, emitir juicios en situaciones inciertas e incorporar conocimientos previos a su razonamiento actual. Podría poseer creatividad e imaginación a la par que las personas y podría realizar tareas que la IA estrecha no puede.

Los tres casos mencionados inicialmente son ejemplos de inteligencia artificial fuerte

{:.section}
## ¿Qué es el Machine Learning?

El Machine Learning es una rama de la Inteligencia Artificial que se centra en el uso de datos y algoritmos para imitar el modo en que aprendemos los humanos gradualmente e incrementando la precisión sin intervención humana. Tom Mitchell proporciona una definición moderna: "Se dice que un programa de computadora aprende de la experiencia E con respecto a alguna clase de tareas T y medida de desempeño D, si su desempeño en las tareas de T, medido por D, mejora con la experiencia E."

Ejemplo: jugar a las damas.

- E = la experiencia de jugar muchos juegos de damas.
- T = la tarea de jugar a las damas.
- D = la probabilidad de que el programa gane el próximo juego.

Los modelos de aprendizaje automático se obtienen mediante el entrenamiento de los algoritmos con subconjuntos de datos. Ese subconjunto se denomina “training dataset” o conjunto de entrenamiento.

La esencia del machine learning comporta la existencia de un patrón que no podemos precisar matemáticamente a pesar de disponer de un gran volumen de datos (llamado dataset).

La década de 2000 marcó el comienzo de rápidos avances en el aprendizaje automático y el aprendizaje profundo, en parte debido a la ley de Moore y al auge de la informática en la nube. El resultado es un acceso más fácil a capacidades de informática y almacenamiento más grandes, más rápidas y económicas. Ahora puede alquilar potencia informática durante unas horas a un coste muy reducido, en comparación con las enormes inversiones necesarias para comprar y operar clústeres informáticos a gran escala.

- **Inteligencia artificial** (AI): Rama de la informática que intenta simular diferentes comportamientos humanos por parte de las máquinas. 
- **Aprendizaje automático** (ML): Es una parte de la inteligencia artificial (pero no la única) que permite a las máquinas aprender a partir de los datos sin ser programadas. Se centra en el uso de datos para entrenar modelos de aprendizaje automático para que los modelos puedan hacer predicciones. 
- **Redes neuronales** (NN): Uno de los tipos de aprendizaje automático (hoy en día, uno de los más populares). Es una técnica inspirada en la biología humana. Utiliza capas de neuronas para construir redes que resuelven problemas.
- **Aprendizaje profundo** (DL): Método para construir, entrenar y usar redes neuronales con múltiples capas internas.

![Aprendizaje automático vs aprendizaje profundo](Machine-learning-vs-deep-learning.jpg)
_Aprendizaje automático vs aprendizaje profundo_

{:.subsection}
### Estadística y probabilidad

{:.subsection}
### Modelos bayesianos

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un modelo?</summary>
  <div class="card-body" markdown="1">

Es aquel que sea capaz de contestar a las preguntas.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

#### Teorema de Bayes

La fórmula es:

$$
P(A|B) = \frac{P(B|A) \cdot P(A)}{P(B)}
$$

$$
P(B) = P(B|A+) * P(A) + P(B|A-) * P(A-)
$$

En un ejemplo de cancer, explicado en palabras sería:

$$
P(Tener\, cancer | Test^{+}) = \frac{P(Test^{+} | Tener\, cancer) \cdot P(Tener\, cancer\, a\, priori)}{P(Test^{+})}
$$

$$
P(Test^{+}) = P(Test^{+}|Tener\, cancer) * P(Tener\, cancer) + P(Test^{+}|No\, tener\, cancer) * P(No\, tener\, cancer)
$$ 

<iframe width="560" height="315" src="https://www.youtube.com/embed/D7KKlC0LOyw?si=aafB2y3h6HnorfLT" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Cuándo público Bayes su teorema?
1. Según Richard Price sobre el teorema de Bayes, ¿podemos tener mucha seguridad de que el sol saldrá mañana por el este?
1. ¿Qué ocurre a la fórmula de Bayes si tenemos un 0% de certeza a priori de una hipotesis?

<iframe width="560" height="315" src="https://www.youtube.com/embed/nod4kJW-Zas?si=h5rG3WbTRJZjRdGF" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Cuántos falsos positivos dará una prueba con un 99% de acierto en una muestra de 1000 personas?
1. ¿El teorema de Bayes está pensado para usarse cada vez que obtenemos más certeza sobre algo?
1. ¿Crees que Monitor fantasma ha visto el vídeo de Veritasium antes de realizar su vídeo? ¿Por qué?

#### Modelo probabilístico

#### Algoritmos Naive Bayes

{:.subsection}
### KNN

## Preguntas

{:.question}
¿Qué es un conjunto de entrenamiento etiquetado y en qué tipo de machine learning se utiliza?

{:.question}
¿Cuáles son las dos tareas supervisadas más comunes?

<details class="card mb-2">
  <summary class="card-header question">¿Qué tipo de algoritmo de machine learning utilizarías para permitir a un robot caminar por varios terrenos desconocidos?</summary>
  <div class="card-body" markdown="1">

Aprendizaje por refuerzo.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué tipo de algoritmo de machine learning utilizarías para segmentar a tus clientes en múltiples grupos?</summary>
  <div class="card-body" markdown="1">

Aprendizaje no supervisado - clustering.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Definirías el problema de detección de spam como un problema de aprendizaje supervisado o no supervisado?</summary>
  <div class="card-body" markdown="1">

Aprendizaje supervisado - clasificación (spam vs. no spam).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Porqué es útil separar los datos en entrenamiento y prueba?

<details class="card mb-2">
  <summary class="card-header question">¿Para qué se utiliza la función de activación de un perceptrón?</summary>
  <div class="card-body" markdown="1">

Activar(1)/inhibir(0) el paso de información desde la neurona actual a la neurona de la siguiente capa.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">Tenemos un conjunto de datos de personas con los campos edad, sexo, peso, altura y el índice de masa corporal. Si queremos entrenar una red neuronal para hacer una predicción de este último parámetro (índice de masa temporal) en función del resto, ¿cuántas neuronas tendrá nuestra red neuronal en la capa de entrada? ¿Y cuántas neuronas tendrá la capa de salida?</summary>
  <div class="card-body" markdown="1">

4 de entrada y 1 de salida.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Cuántas neuronas hacen falta en la capa de salida para clasificar mails entre correo no deseado y correo deseado?


<details class="card mb-2">
  <summary class="card-header question">¿Qué tipo de red neuronal utilizarías para crear un traductor de texto?</summary>
  <div class="card-body" markdown="1">

RNN o transformadora.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Para qué se utiliza la ecuación de Bellman? Busca un ejemplo que justifique su uso.</summary>
  <div class="card-body" markdown="1">

En aprendizaje por refuerzo para reducir y optimizar los cálculos de las recompensas. Por ejemplo: ajedrez, control de ingeniería.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Bibliografía

- <https://ecosistemahuawei.xataka.com/inteligencia-artificial-debil-vs-fuerte-donde-llega-otra-infografia/>
- <http://cesguiro.es/doku.php?id=clase:ia:saa:1eval:introduccion_ia>
- <https://github.com/cristinagom/machinelearning/>

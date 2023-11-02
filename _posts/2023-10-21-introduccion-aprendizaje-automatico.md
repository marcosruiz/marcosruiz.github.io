---
title: "Introducción al aprendizaje automático"
date: 2023-10-22 9:00:00 +0100
categories: [Inteligencia Artificial y Big Data, Sistemas de aprendizaje automático]
tags: [inteligencia artificial y big data, sistemas de aprendizaje automático]
img_path: /assets/img/introduccion-aprendizaje-automatico/
math: true
---

## Introducción



{:.section}
## Inteligencia Artificial Fuerte y Débil

{:.subsection}
### Inteligencia Artificial Débil

{:.subsection}
## Inteligencia Artificial Fuerte

{:.section}
## Antecedentes del Machine Learning

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

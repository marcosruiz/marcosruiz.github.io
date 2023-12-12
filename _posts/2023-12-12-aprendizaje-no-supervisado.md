---
title: "Aprendizaje No Supervisado"
date: 2023-12-12 9:00:00 +0100
categories: [Inteligencia Artificial y Big Data, Sistemas de aprendizaje automático]
tags: [inteligencia artificial y big data, sistemas de aprendizaje automático]
img_path: /assets/img/aprendizaje-no-supervisado/
math: true
---

{:.section}
## Introducción

El aprendizaje no supervisado permite abordar los problemas con poca o ninguna idea de cómo deberían verse los resultados y sin indicaciones externas. En este tipo de aprendizaje, los datos se agrupan en base a las relaciones no obvias entre las variables.

En este tipo de aprendizaje los datos no están etiquetados, y por tanto, no se dispone de resultados conocidos previos. Con el aprendizaje no supervisado, no hay retroalimentación basada en los resultados de la predicción.

El aprendizaje supervisado usa algoritmos de machine learning para analizar y agrupar conjuntos de datos no etiquetados.

Estos algoritmos son capaces de descubrir patrones ocultos en la información sin necesidad de intervención humana.

Su capacidad para descubrir similitudes y diferencias en la información los hace ideales para minería de datos, venta cruzada, segmentación de clientes, reconocimiento de imágenes, detección de anomalías, etc.

El aprendizaje no supervisado trata de resolver dos tipos principales de problemas:

- **Clustering**: dada una colección de 1,000,000 de genes diferentes, se busca una manera de agrupar automáticamente dichos genes en grupos que sean de alguna manera similares o relacionados por diferentes variables, como la vida útil, la ubicación, los roles, etc. Otros usos podría ser en marketing, bibliotecas, seguros...
- **Reducción de dimensionalidad**: por ejemplo, el “Cocktail Party Algoritm” permite encontrar estructuras en un entorno caótico (es decir, identificar voces y música individuales a partir de una malla de sonidos).

<details class="card mb-2">
  <summary class="card-header question">¿Qué es el efecto de fiesta de cóctel?</summary>
  <div class="card-body" markdown="1">

Leer <https://es.wikipedia.org/wiki/Efecto_de_fiesta_de_c%C3%B3ctel>. La implementación del “Cocktail Party Algoritm” está en [este enlace](https://es.mathworks.com/help/deeplearning/ug/cocktail-party-source-separation-using-deep-learning-networks.html).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Clustering

<iframe width="560" height="315" src="https://www.youtube.com/embed/aUPRixo1jFw?si=Cjx2Z_r30fqtFxrt" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Qué es un cluster?
1. ¿Es el clustering aprendizaje supervisado o no supervisado? ¿Por qué?

{:.section}
## Clustering K-Means

![Clustering K-Means](Day 43.jpg)
_Clustering K-Means_

<iframe width="560" height="315" src="https://www.youtube.com/embed/vFFGIPXwFlE?si=NQnPL8Gxne4FlBlp" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Es el método de K-Means iterativo?
1. ¿Cómo se calcula el nuevo centroide?

<iframe width="560" height="315" src="https://www.youtube.com/embed/gKU5zkN7BZw?si=YnsLP9qzZ0p7Xcij" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Para qué sirve numpy?
1. ¿Qué es una distribución normal?
1. ¿De qué dimensiones es la matriz `puntos`?
1. ¿De qué dimensiones es la matriz `centroides`?
1. ¿Se te ocurre una manera más sencilla de elegir los centroides?

<iframe width="560" height="315" src="https://www.youtube.com/embed/klTXlLU6ejM?si=_7DH4BHfRtTtWiDT" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Qué dimensiones tienen las matrices `puntos_expand` y `centroides_expand`?
1. ¿Qué es la distancia euclídea?
1. ¿Cómo se elige a que cluster pertenece un punto?

<iframe width="560" height="315" src="https://www.youtube.com/embed/d53WiYsnxv8?si=t6ofIF9jmchQKV8a" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Qué dimensiones tiene la matriz `lista`?
1. ¿Qué dimensiones tiene la matriz `nuevos_centroides`?

<iframe width="560" height="315" src="https://www.youtube.com/embed/GuCq5y0pb8Y?si=EMSZsgUofmqmmy1W" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Qué librería se usa para representar los tres clusters?

{:.section}
## Clustering G-Means

<iframe width="560" height="315" src="https://www.youtube.com/embed/OiKEs2BZ4v0?si=UdwrNTJkAeRC_xsC" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Con qué coincide el eje de simetría de la distribución normal?
1. Coloquialmente ¿qué simboliza la desviación estándar?
1. ¿Qué ejemplo de uso de una distribución normal se menciona en el vídeo?

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo una distribución normal que una distribución gausiana?</summary>
  <div class="card-body" markdown="1">

Si

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Clustering jerárquico

![Clustering jerárquico](Day 54.jpg)
_Clustering jerárquico_


## Bibliografía

- <https://github.com/cristinagom/machinelearning/>

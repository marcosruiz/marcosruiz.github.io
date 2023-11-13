---
title: "Algoritmos para el aprendizaje automático"
date: 2023-10-22 9:00:00 +0100
categories: [Inteligencia Artificial y Big Data, Sistemas de aprendizaje automático]
tags: [inteligencia artificial y big data, sistemas de aprendizaje automático]
img_path: /assets/img/algoritmos-aprendizaje-automatico/
math: true
---

## Introducción

<iframe width="560" height="315" src="https://www.youtube.com/embed/KytW151dpqU?si=GVVTwLVpZ39gk0dU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Qué dos tipos de IA existen?
1. ¿Hay algún ejemplo de IA fuerte en la vida real?
1. ¿Cuál es el término que se usa en inglés para "aprendizaje automático"?
1. ¿Qué 3 paradigmas de aprendizaje automático existen?
1. ¿Cuál es la diferencia entre el aprendizaje automático y la inteligencia artificial?
1. ¿Por qué es necesario/útil el deep learning?

<iframe width="560" height="315" src="https://www.youtube.com/embed/xrQ1YH0PnrM?si=0FnJ-LY-pmQ0-XLq" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. A día de hoy, ¿pueden las máquinas hacer una tarea específica mejor que las personas?
1. ¿Cómo aprende el pequeño robot?
1. ¿Qué es un modelo?
1. ¿Cómo se llama en aprendizaje automático agrupar en grupos los datos de muestra?
1. ¿En que se diferencia el aprendizaje supervisado del no supervisado?
1. ¿Qué es el aprendizaje semisupervisado?

<iframe width="560" height="315" src="https://www.youtube.com/embed/_tA5cinv0U8?si=83FYEyOK9lvNzuR4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Existen hoy en dia máquinas con autoconciencia?
1. ¿Para qué sirven los captchas?

{:.section}
## Regresión Lineal

<iframe width="560" height="315" src="https://www.youtube.com/embed/k964_uNn3l0?si=WsWwIMtLhJ-0JK6_" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Qué diferencia hay entre el modelo de regresión lineal simple y el modelo de regresión lineal múltiple?
1. ¿Por qué se usan matrices a la hora de programar modelos?
1. ¿Cómo podemos saber que una recta es mejor que otra en el modelo de regresión lineal?
1. ¿Por qué elevamos al cuadrado los errores en el modelo de regresión lineal?
1. ¿Por qué no se usa método de cuadrados ordinarios en inteligencia artificial?

<iframe width="560" height="315" src="https://www.youtube.com/embed/w2RJ1D6kz-o?si=t0LDQnQZkNpCh0Aa" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<details class="card mb-2">
  <summary class="card-header question">¿Qué es regresión?</summary>
  <div class="card-body" markdown="1">

El análisis de regresión es la parte del aprendizaje supervisado que se ocupa de la predicción de valores numéricos continuos. En este caso, el objetivo del algoritmo es inferir[^inferir] las relaciones entre las variables, que son previamente conocidas y que permiten ofrecer una predicción sobre la salida requerida. Para estos problemas, se utiliza un algoritmo de aprendizaje automático para construir un modelo que prediga un valor continuo. Es decir, dados los campos que definen una nueva instancia, el modelo predice un número real. Por ejemplo, el precio de una casa, el número de unidades vendidas de un producto, los ingresos potenciales de un posible cliente, el número de horas hasta el próximo fallo del sistema, etc.

[^inferir]: Extraer un juicio o conclusión a partir de hechos, proposiciones o principios, sean generales o particulares.

La regresión es un problema matemático ampliamente conocido en el que se aplican técnicas que van desde las más simples (regresión lineal o polinómica) hasta las más complejas (Deep Learning, etc.) pero que se asemeja a un proceso de aproximación de funciones clásico en el que a partir de unas variables de entrada necesitamos encontrar aquella función que ofrezca la salida requerida. El proceso de validación de los modelos que resuelven problemas de regresión se basa en el uso de métricas de error, por ejemplo el error absoluto medio (MAE), el coeficiente de determinación (R^{2}), etc.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### Información práctica

<iframe width="560" height="315" src="https://www.youtube.com/embed/J3Sw1Z2rVmc?si=NJtl9oz4EEQNXgwT" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Qué simboliza el $$\epsilon$$ en la fórumla $$Y = \beta_{0} + \beta_{1} X_{1} + \epsilon$$?
1. ¿Qué determina/simboliza el $$\beta_{1}$$ en la fórumla $$Y = \beta_{0} + \beta_{1} X_{1} + \epsilon$$?
1. ¿A través de que método se obtienen los valores de $$\beta_{0}$$ y $$\beta_{1}$$?

<iframe width="560" height="315" src="https://www.youtube.com/embed/tsjcrtCyraE?si=aQdAa8jx1gtizBP3" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/6ayzBy7U4A4?si=wNFljVNKPgHh86nT" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

{:.section}
## Regresión Logística

<iframe width="560" height="315" src="https://www.youtube.com/embed/BHok3wJpmf0?si=_2WDTq4oc922AP6X" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿En qué se diferencia la regresión lineal de la regresión logística?
1. ¿Qué es el BMI?
1. ¿Cuál es la función logística? 
1. ¿Qué otro nombre tiene la función logística?
1. ¿Con que algoritmo se optimiza el error en la regresión logística?

{:.section}
## Árbol de Decisión

<iframe width="560" height="315" src="https://www.youtube.com/embed/LZkIfA5kgl0?si=HtS7QZAD8sDVDZtJ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Por qué decide el árbol de decisión que la mejor variable a usar es el salario de los clientes?
1. ¿Qué es el OverallQual?
1. ¿Cuales son los pros de los árboles de decisión?
1. ¿Cuáles son los contras de los árboles de decisión?

{:.section}
## Máquinas de Vector Soporte (SVM)

<iframe width="560" height="315" src="https://www.youtube.com/embed/kl6tyEi5eso?si=f6DPqO9pqxfzUpTx" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Qué significan las siglas en inglés SVM?
1. ¿Es SVM aprendizaje supervisado o no supervisado? ¿Por qué?
1. ¿Cómo explica que se obtiene la recta que separa los dos grupos?
1. ¿Por qué llama hiperplano a la recta?

{:.section}
## Clustering

<iframe width="560" height="315" src="https://www.youtube.com/embed/aUPRixo1jFw?si=Cjx2Z_r30fqtFxrt" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Qué es un cluster?
1. ¿Es el clustering aprendizaje supervisado o no supervisado? ¿Por qué?

{:.subsection}
### K-Means

<iframe width="560" height="315" src="https://www.youtube.com/embed/vFFGIPXwFlE?si=NQnPL8Gxne4FlBlp" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Es el método de K-Means iterativo?
1. ¿Cómo se calcula el nuevo centroide?

<iframe width="560" height="315" src="https://www.youtube.com/embed/gKU5zkN7BZw?si=YnsLP9qzZ0p7Xcij" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo (voluntario):

1. ¿Para qué sirve numpy?
1. ¿Qué es una distribución normal?
1. ¿De qué dimensiones es la matriz `puntos`?
1. ¿De qué dimensiones es la matriz `centroides`?
1. ¿Se te ocurre una manera más sencilla de elegir los centroides?

<iframe width="560" height="315" src="https://www.youtube.com/embed/klTXlLU6ejM?si=_7DH4BHfRtTtWiDT" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo (voluntario):

1. ¿Qué dimensiones tienen las matrices `puntos_expand` y `centroides_expand`?
1. ¿Qué es la distancia euclídea?
1. ¿Cómo se elige a que cluster pertenece un punto?

<iframe width="560" height="315" src="https://www.youtube.com/embed/d53WiYsnxv8?si=t6ofIF9jmchQKV8a" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo (voluntario):

1. ¿Qué dimensiones tiene la matriz `lista`?
1. ¿Qué dimensiones tiene la matriz `nuevos_centroides`?

<iframe width="560" height="315" src="https://www.youtube.com/embed/GuCq5y0pb8Y?si=EMSZsgUofmqmmy1W" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo (voluntario):

1. ¿Qué librería se usa para representar los tres clusters?

{:.subsection}
### G-Means

<iframe width="560" height="315" src="https://www.youtube.com/embed/OiKEs2BZ4v0?si=UdwrNTJkAeRC_xsC" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Preguntas sobre el vídeo (voluntario):

1. ¿Con que coincide el eje de simetría de la distribución normal?
1. Coloquialmente ¿qué simboliza la desviación estándar?
1. ¿Qué ejemplo de uso de una distribución normal se menciona en el vídeo?

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo una distribución normal que una distribución gausiana?</summary>
  <div class="card-body" markdown="1">

Si
<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Bibliografía

## Pie de página

---
title: "Algoritmos para el aprendizaje automático"
date: 2023-10-22 9:00:00 +0100
categories: [Inteligencia Artificial y Big Data, Sistemas de aprendizaje automático]
tags: [inteligencia artificial y big data, sistemas de aprendizaje automático]
img_path: /assets/img/algoritmos-aprendizaje-automatico/
math: true
---

{:.section}
## ¿Qué es el Machine Learning?

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
## TRES tipos de machine learning

El machine learning se clasifica en 3 subtipos de aprendizaje: por refuerzo, supervisado y no supervisado.

- En el **aprendizaje supervisado**, cada muestra de entrenamiento del conjunto de datos tiene una etiqueta correspondiente o un valor de salida asociado. Como resultado, el algoritmo aprende a predecir etiquetas o valores de salida.
- En el **aprendizaje no supervisado**, no hay etiquetas para los datos de entrenamiento. Un algoritmo de aprendizaje automático intenta aprender los patrones o distribuciones subyacentes que gobiernan los datos.
- En el **aprendizaje por refuerzo**, el algoritmo determina qué acciones tomar en una situación para maximizar una recompensa (en forma de número) en el camino hacia la consecución de un objetivo específico. Este es un enfoque completamente diferente al aprendizaje supervisado y no supervisado.

{:.subsection}
### Aprendizaje supervisado

El aprendizaje supervisado se basa en modelos predictivos que hacen uso de datos de entrenamiento. El modelo se entrena con un juego de datos que incluye variables (features) y resultados (labels). Se busca que el modelo sea capaz de generalizar.

El aprendizaje supervisado se puede subdividir según la funcionalidad buscada:

- **Clasificación**. Puede ser binaria o multiclase. En el primer caso, se trata de una decisión binaria (Sí/No) y se clasifica entre dos clases. En el segundo caso, clasifica entre más de dos clases. En otras palabras, estamos tratando de mapear variables de entrada en categorías discretas.
- **Regresión**. Cálculo de un valor determinado. Es decir, estamos tratando de predecir resultados dentro de una salida continua, lo que significa que estamos tratando de asignar variables de entrada a alguna función continua.

Imaginemos un supuesto donde disponemos de un dataset sobre viviendas en el mercado inmobiliario. Si intentamos predecir el precio en función del tamaño es una salida continua, por lo que es un problema de regresión. Podríamos convertir el mismo supuesto en un problema de clasificación considerando obtener “todas las viviendas en venta por encima o por debajo de un determinado precio de venta". En este caso, se clasifican las viviendas según su precio en dos categorías discretas.

Otros ejemplos:

- **Regresión**: dada una imagen de una persona, tenemos que predecir su edad en base a una imagen facilitada; calcular precios de productos, de viviendas...
- **Clasificación**: dado un paciente con un tumor, predecir si el tumor es maligno o benigno; calcular el impago/pago...

{:.question}
¿Cuál es la diferencia entre clasificación y regresión?

Ejemplos de aprendizaje supervisado son:

- Regresión Lineal
- Árboles de decisión

{:.subsection}
### Aprendizaje no supervisado

El aprendizaje no supervisado permite abordar los problemas con poca o ninguna idea de cómo deberían verse los resultados y sin indicaciones externas. En este tipo de aprendizaje, los datos se agrupan en base a las relaciones no obvias entre las variables.

En este tipo de aprendizaje los datos no están etiquetados, y por tanto, no se dispone de resultados conocidos previos. Con el aprendizaje no supervisado, no hay retroalimentación basada en los resultados de la predicción.

Ejemplos de aprendizaje no supervisado:

- **Clustering**: dada una colección de 1,000,000 de genes diferentes, se busca una manera de agrupar automáticamente dichos genes en grupos que sean de alguna manera similares o relacionados por diferentes variables, como la vida útil, la ubicación, los roles, etc. Otros usos podría ser en marketing, bibliotecas, seguros...
- **Reducción de dimensionalidad**: por ejemplo, el “Cocktail Party Algoritm” permite encontrar estructuras en un entorno caótico (es decir, identificar voces y música individuales a partir de una malla de sonidos).

{:.subsection}
### Aprendizaje por refuerzo

Es un aprendizaje que une al supervisado y no supervisado.

El aprendizaje por refuerzo consiste en la iteración constante y basada en “prueba y error”. Una computadora es capaz de realizar iteraciones ante determinadas condiciones y con un objetivo específico llamado “recompensa”, ya que el algoritmo de aprendizaje recibe una valoración sobre la relevancia de la respuesta dada. Si la respuesta es correcta, el aprendizaje por refuerzo actúa como el aprendizaje supervisado.

El objetivo del aprendizaje por refuerzo consiste, por tanto, en maximizar la recompensa acumulativa total, así que con el tiempo, el agente aprende, a través de prueba y error, a identificar aquellas acciones que incrementan dicha recompensa. Cuanto mejor entrenado esté el agente, más eficientemente elegirá aquellas acciones que logren su objetivo.

El aprendizaje por refuerzo es particularmente útil para abordar problemas secuenciales con objetivos a largo plazo.

Este tipo de aprendizaje es el más habitual en la naturaleza. A diferencia de éste, el aprendizaje supervisado informa exactamente al algoritmo de que hubiese tenido que responder en caso de responder erróneamente.

Ejemplos:

- RL es excelente para jugar a juegos:
  - Go (juego de mesa) fue dominado por el software AlphaGo Zero de DeepMind (filial de Google) <https://es.wikipedia.org/wiki/AlphaZero>.
  - Los videojuegos clásicos de Atari se utilizan comúnmente como una herramienta de aprendizaje para crear y probar software RL.
  - StarCraft II, el videojuego de estrategia en tiempo real, fue dominado por el software AlphaStar.
- RL se utiliza en el diseño de niveles de videojuegos:
  - El diseño de nivel de videojuego determina qué tan compleja es cada etapa de un juego y afecta directamente a qué tan aburrido, frustrante o divertido es jugar ese juego.
  - Las empresas de videojuegos crean un agente que juega el juego una y otra vez para recopilar datos que se pueden visualizar en gráficos.
  - Estos datos visuales brindan a los diseñadores una forma rápida de evaluar qué tan fácil o difícil es para un jugador progresar, lo que les permite encontrar el equilibrio "perfecto" entre el aburrimiento y la frustración de forma más rápida.
- RL se utiliza en la optimización de la energía eólica:
  - Los modelos RL también se pueden utilizar para impulsar la robótica en dispositivos físicos. 
  - Cuando varias turbinas trabajan juntas en un parque eólico, las turbinas en el frente, que reciben el viento primero, pueden causar malas condiciones de viento para las turbinas detrás de ellas. Esto se llama estela turbulenta y reduce la cantidad de energía que se captura y se convierte en energía eléctrica. 
  - Las organizaciones de energía eólica de todo el mundo utilizan el aprendizaje por refuerzo para probar soluciones. Sus modelos responden a las condiciones cambiantes del viento cambiando el ángulo de las palas de la turbina. Cuando las turbinas delanteras disminuyen, ayuda a las turbinas traseras a capturar más energía.
- Otros ejemplos de RL del mundo real incluyen:
  - Robótica industrial.
  - Detección de fraudes.
  - Análisis de la bolsa.
  - Conducción autónoma.

{:.section}
## Regresión Lineal

Los modelos lineales simplemente describen la relación entre un conjunto de números de entrada y un conjunto de números de salida a través de una función lineal y = b0+ b1x como una línea en un gráfico xy.

Las tareas de clasificación a menudo usan un modelo logístico fuertemente relacionado, que agrega una transformación adicional mapeando la salida de la función lineal al rango [0, 1], interpretado como "probabilidad de estar en la clase objetivo". Los modelos lineales son rápidos de entrenar y generan una muy buena línea base contra la que comparar modelos más complejos. Los modelos más complejos pueden resultar atractivos, pero para la mayoría de problemas nuevos sería suficiente con considerar un modelo de regresión lineal simple.

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
## Árboles de Decisión

Los modelos basados en árboles son probablemente el segundo tipo de modelo más común por detrás de la regresión lineal y el más importante modelo de clasificación. Aprenden a categorizar o retroceder construyendo una estructura extremadamente grande de bloques if/else anidados, dividiendo el conjunto de datos en diferentes regiones en cada bloque if/else. El entrenamiento determina exactamente dónde ocurren estas divisiones y qué valor se asigna en cada región hoja. Por ejemplo, si intentamos determinar si un sensor de luz está al sol o a la sombra, podríamos entrenar un árbol de profundidad 1 con la configuración final aprendida:

si (valor_sensor> 0,698), entonces devuelve 1; de lo contrario, devuelve 0 ;

El modelo XGBoost basado en árboles de decisión se usa comúnmente como una implementación sencilla. Inicialmente es mejor probar modelos simples para posteriormente migrar a modelos más complejos.

![Árbol de decisión para jugar a futbol](decisionTree.jpg)
_Árbol de decisión para jugar a futbol_

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

{:.subsection}
### G-Means

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

## Bibliografía

- <https://github.com/cristinagom/machinelearning/>

## Pie de página

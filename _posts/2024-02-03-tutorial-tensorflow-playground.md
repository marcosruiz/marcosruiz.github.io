---
title: "Tutorial: Tensorflow Playground"
date: 2024-02-03 9:00:00 +0100
categories: [Inteligencia Artificial y Big Data, Sistemas de aprendizaje automático]
tags: [inteligencia artificial y big data, sistemas de aprendizaje automático]
img_path: /assets/img/tutorial-tensorflow-playground/
math: true
---

{:.section}
## ¿Qué es TensorFlow Playground?

[TensorFlow Playground](https://playground.tensorflow.org/#activation=tanh&batchSize=10&dataset=circle&regDataset=reg-plane&learningRate=0.03&regularizationRate=0&noise=0&networkShape=4,2&seed=0.25548&showTestData=false&discretize=false&percTrainData=50&x=true&y=true&xTimesY=false&xSquared=false&ySquared=false&cosX=false&sinX=false&cosY=false&sinY=false&collectStats=false&problem=classification&initZero=false&hideText=false) es una aplicación web de visualización interactiva, escrita en JavaScript, que nos permite simular redes neuronales densamente conectadas que se ejecutan en nuestro navegador y ver los resultados en tiempo real.

Permite añadir hasta 6 capas internas con hasta 8 neuronas por capa. Al entrenar la red neuronal, vemos si lo estamos consiguiendo o no por la métrica de “Training loss”, es decir, por la función de pérdida para los datos de entrenamiento. Posteriormente, para comprobar que el modelo generaliza, se debe conseguir también minimizar la “Test loss”, es decir, el error calculado por la función de pérdida para los datos de test.

{:.section}
## Interfaz de TensorFlow Playground

Aunque en la propia herramienta online tienes explicaciones de cómo se utiliza, a continuación te dejo una breve explicación de la interfaz.

![alt text](ejemploTensorflow1.png)

Podemos observar en la columna de la izquierda el tipo de dataset que se va a utilizar para el entrenamiento (distribución en “circle”, en “exclusive or”, “Gaussian”, o “Spiral”). También podemos regular el % de datos que se van a emplear para el entrenamiento vs la comprobación de confiabilidad del resultado, así como el ruido y la cantidad de datos que se empleará en cada iteración.

En la zona central de la aplicación definimos las capas de la red neuronal y cuántas neuronas tendrá cada una de ellas:

Features: Son las propiedades de entrada que buscará el modelo capa de entrada. Para estos ejercicios iniciales no recomendamos usar más de dos datos de entrada.
Hidden Layers: Son las capas de neuronas ocultas.
Output: La capa de salida o resultado. Cuando pongamos el modelo a funcionar se irá modificando el fondo separando en dos áreas distintas la distribución de puntos. Así podemos ver en tiempo real si nuestro modelo acierta o no.
En la banda superior hay posibilidad de ajustar también algunos parámetros aunque para este ejercicio no es necesario.

Proceso: Define número de capas ocultas, y en cada una de ellas el número de neuronas que consideres suficientes. Dale al botón "play" y comprueba cómo en el gráfico de arriba a la derecha se va "dibujando" una línea que separa las zonas probables de encontrar puntos de un color u otro.

Por ejemplo, en este caso, con una capa oculta y dos neuronas en ella, el resultado del entrenamiento no es satisfactorio, pues las áreas de color azul y naranja propuestas por el modelo contienen puntos del color opuesto. Habría que probar a meter más neuronas o alguna capa más:

![alt text](ejemploTensorflow2.png)

{:.section}
## Primeros pasos con TensorFlow Playground

Te recomiendo ver este video antes de empezar a tocar cosas con TensorFlow Playground para que tu aprendizaje sea más significativo.

<iframe width="560" height="315" src="https://www.youtube.com/embed/FVozZVUNOOA?si=1w-U8thE9N7y2L37" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Bibliografía

- <https://twitter.com/alvaro_opk/status/1358376337979944960>
- <https://github.com/cristinagom/machinelearning/>

---
title: "Tarea: Tensorflow Playground"
date: 2023-12-10 9:00:00 +0100
categories: [Inteligencia Artificial y Big Data, Sistemas de aprendizaje automático]
tags: [inteligencia artificial y big data, sistemas de aprendizaje automático]
img_path: /assets/img/tarea-tensorflow-playground/
---

## Entrega y presentación

La entrega será en formato PDF. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

## Calificación

La tarea se calificará como apto o no apto.

## Actividades

{:.activity}
### Experimentación con TensorFlow Playground

[TensorFlow Playground](https://playground.tensorflow.org/#activation=tanh&batchSize=10&dataset=circle&regDataset=reg-plane&learningRate=0.03&regularizationRate=0&noise=0&networkShape=4,2&seed=0.25548&showTestData=false&discretize=false&percTrainData=50&x=true&y=true&xTimesY=false&xSquared=false&ySquared=false&cosX=false&sinX=false&cosY=false&sinY=false&collectStats=false&problem=classification&initZero=false&hideText=false) es una aplicación web de visualización interactiva, escrita en JavaScript, que nos permite simular redes neuronales densamente conectadas que se ejecutan en nuestro navegador y ver los resultados en tiempo real.

Permite añadir hasta 6 capas internas con hasta 8 neuronas por capa. Al entrenar la red neuronal, vemos si lo estamos consiguiendo o no por la métrica de “Training loss”, es decir, por la función de pérdida para los datos de entrenamiento. Posteriormente, para comprobar que el modelo generaliza, se debe conseguir también minimizar la “Test loss”, es decir, el error calculado por la función de pérdida para los datos de test.

Propuestas de cambios:

- Subir el ratio of training to test data al 70%
- Dejar una única capa interna con una neurona
- Añadir 2 neuronas más a la capa interna (de forma que tenga 3 neuronas)
- Cambiar el dataset al que tiene 4 zonas cuadradas diferentes
- Cambiar el dataset al que tiene el remolino (necesitará más capas con más neuronas)
- Cambio valores de los hiperparámetros
- Adición de ruido a los datos de entrada

Conclusiones:

- Pocas neuronas en las capas ocultas provocarán infraajuste o underfitting.
- Demasiadas neuronas en las capas ocultas provocarán overfitting (la red neuronal tiene más capacidad de procesamiento de información que la cantidad de información contenida en el conjunto de entrenamiento que no es suficiente para entrenar a todas las neuronas de las capas ocultas) y mucho más tiempo de procesamiento.

## Bibliografía

- <https://github.com/ageron/handson-ml3>
- <https://www.khanacademy.org/>
- <https://playground.tensorflow.org>

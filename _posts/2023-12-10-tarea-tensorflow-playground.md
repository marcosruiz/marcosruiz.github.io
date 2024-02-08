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

Realiza las siguientes actividades.

{:.activity}
### (Voluntaria) Tutorial

Lee el artículo [Tutorial: Tensorflow Playground](/posts/tutorial-tensorflow-playground/) para que esta tarea tenga sentido.

{:.activity}
### Experimentación con TensorFlow Playground

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

> 📷 Haz una o varias capturas para demostrar que la actividad ha sido realizada satisfactoriamente por ti. Deberá verse la fecha y hora en la barra de inicio.
{:.prompt-info}

{:.activity}
### Dataset circle

Encontrar la estructura mínima necesaria para lograr una clasificación exitosa del data set "circle".

> 📷 Efectúa captura de pantalla de, al menos, la estructura mínima óptima que consideres (aunque también puedes añadir las de las diferentes pruebas que vayas haciendo). Deberá verse la fecha y hora en la barra de inicio.
{:.prompt-info}

{:.activity}
### Dataset spiral

Encontrar una estructura de red neuronal profunda que logre un modelo de clasificación exitoso para el dataset "spiral".

> En este caso, que es más complicado, es probable que necesites incorporar algún parámetro de entrada más. Pues por muchas capas y neuronas que incluyas, y por muchas iteraciones (o tiempo de entrenamiento) que dejes pasar, va a ser muy complicado que el entrenamiento proporcione un modelo sin errores. Por ejemplo, en este caso, se aproxima bastante, pero hay algunas áreas con puntos del color contrario y además se observa una inestabilidad importante en la corrección de los parámetros erróneos (gráfica de arriba a la derecha).
> 
> ![Entrenamiento inestable en Tensorflow Playground](ejemploTensorflowEspiral.png)
> _Entrenamiento inestable en Tensorflow Playground_
> 
> Te recomiendo que incluyas algún parámetro de entrada tipo "sin"
{:.prompt-tip}

> 📷 Efectúa captura de pantalla de, al menos, la estructura mínima óptima que consideres (aunque también puedes añadir las de las diferentes pruebas que vayas haciendo). Deberá verse la fecha y hora en la barra de inicio.
{:.prompt-info}

## Bibliografía

- <https://github.com/ageron/handson-ml3>
- <https://www.khanacademy.org/>
- <https://playground.tensorflow.org>

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

> Se ha usado la versión de **Python 3.9.13** para ejecutar los todos los cuadernos ya que la librería de Tensorflow no es compatible con Python 3.11.5. Si no recuerdas como instalar una versión de Python en concreto puedes volver a leer el artículo [Tutorial: Entornos de desarrollo para Aprendizaje Automático](/posts/tutorial-anaconda/).
{:.prompt-info}

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
### (Voluntaria) Dataset spiral

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

{:.activity}
### (Voluntaria) Breve Historia de las Redes Neuronales Artificiales

Lee el artículo [Breve Historia de las Redes Neuronales Artificiales](https://www.aprendemachinelearning.com/breve-historia-de-las-redes-neuronales-artificiales/) y responde a las siguientes preguntas sobre el mismo:

1. ¿Cómo es también llamada la neurona artificial?
1. ¿Cuántas salidas binarias puede tener un perceptrón?
1. ¿Qué diferencia hay entre un perceptrón y una neurona sigmoide?
1. ¿En una red tipo feedforward puede haber bucles?
1. ¿Para que son buenas las Redes Neuronales Convolucionales?
1. En las redes neuronales convolucionales, ¿de que depende el número de nodos de salida?
1. Me he quedado en 1997 Long Short Term Memory / Recurrent Neural Network

{:.activity}
### Aprendizaje Profundo: una Guía rápida

Lee el artículo [Aprendizaje Profundo: una Guía rápida](https://www.aprendemachinelearning.com/aprendizaje-profundo-una-guia-rapida/) y responde a las siguientes preguntas sobre el mismo:

{:.activity}
### Una sencilla Red Neuronal en Python con Keras y Tensorflow

Lee el artículo [Una sencilla Red Neuronal en Python con Keras y Tensorflow](https://www.aprendemachinelearning.com/una-sencilla-red-neuronal-en-python-con-keras-y-tensorflow/) y responde a las siguientes preguntas sobre el mismo:

{:.activity}
### Crear una Red Neuronal en Python desde cero

Lee el artículo [Crear una Red Neuronal en Python desde cero](https://www.aprendemachinelearning.com/crear-una-red-neuronal-en-python-desde-cero/) y responde a las siguientes preguntas sobre el mismo:

{:.activity}
### ML.4.1.IntroRRNN-MNIST

Dado el fichero `ML.4.1.IntroRRNN-MNIST`{: .filepath} , lee, ejecuta y responde a las preguntas que aparecen a lo largo del mismo.

Si es necesario escribir código para responder a alguna pregunta déjalo indicado en un bloque de código.

> 📸 Haz una o varias capturas de pantalla donde se vea lo que has ejecutado el fichero correspondiente.
{:.prompt-info}

{:.activity}
### (Voluntaria) Ejemplo_RRNN_convolucionales

Lee, ejecuta y comprende el fichero `Ejemplo_RRNN_convolucionales`{: .filepath}.

{:.activity}
### (Voluntaria) Notebooks de Google

Lee, ejecuta y comprende el fichero `Ejemplo_RRNN_convolucionales`{: .filepath}.


{:.activity}
### (Voluntaria) Demos Keras

{:.activity}
### (Voluntaria) 10_neural_nets_with_keras

{:.activity}
### (Voluntaria) 11_training_deep_neural_networks



{:.activity}
### (Voluntaria) Programa un coche Arduino con Inteligencia Artificial

Lee el artículo [Programa un coche Arduino con Inteligencia Artificial](https://www.aprendemachinelearning.com/programa-un-coche-arduino-con-inteligencia-artificial/) y responde a las siguientes preguntas sobre el mismo:

## Bibliografía

- <https://github.com/ageron/handson-ml3>
- <https://www.khanacademy.org/>
- <https://playground.tensorflow.org>
- <https://www.aprendemachinelearning.com/breve-historia-de-las-redes-neuronales-artificiales/>
- <https://www.aprendemachinelearning.com/aprendizaje-profundo-una-guia-rapida/>
- <https://www.aprendemachinelearning.com/una-sencilla-red-neuronal-en-python-con-keras-y-tensorflow/>
- <https://www.aprendemachinelearning.com/crear-una-red-neuronal-en-python-desde-cero/>
- <https://www.aprendemachinelearning.com/programa-un-coche-arduino-con-inteligencia-artificial/>
- <https://github.com/cristinagom/machinelearning/tree/main>

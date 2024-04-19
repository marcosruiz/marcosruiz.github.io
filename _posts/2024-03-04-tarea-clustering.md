---
title: "Tarea: Clustering"
date: 2024-03-04 9:00:00 +0100
categories: [Inteligencia Artificial y Big Data, Sistemas de aprendizaje automático]
tags: [inteligencia artificial y big data, sistemas de aprendizaje automático]
img_path: /assets/img/tarea-clustering/
---

## Entrega y presentación

La entrega será en formato PDF. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

## Calificación

La tarea se calificará con una nota de 0 a 10.

Duración: - horas

## Actividades

Descarga el fichero [enunciado_tarea_clustering.zip](/assets/img/tarea-clustering/enunciado_tarea_clustering.zip) y realiza las siguientes actividades:

{:.activity}
### (Voluntaria) K-Means en Python paso a paso

Lee el artículo [K-Means en Python paso a paso](https://www.aprendemachinelearning.com/k-means-en-python-paso-a-paso/) y responde a las siguientes preguntas sobre el mismo:

1. ¿K Means es un algoritmo supervisado o no supervisado?
1. ¿KMeans es un algoritmo de regresión o clasificación?
1. En el caso de K Means, ¿es recomendable que los valores utilizados estén normalizados?
1. En el caso de K Means, ¿conviene utilizar características/parámetros que estén correlacionados?
1. En K Means, las posiciones iniciales de los centroides, ¿cómo se calculan?
1. En K Means, ¿qué es el "punto codo" y para qué se utiliza?

{:.activity}
### Ejercicio_K_Means.ipynb

Dados los ficheros `Ejercicio_K_Means.ipynb`{: .filepath} y `analisis.csv`{: .filepath} del artículo [K-Means en Python paso a paso](https://www.aprendemachinelearning.com/k-means-en-python-paso-a-paso/).

Ejecuta el fichero `Ejercicio_K_Means.ipynb`{: .filepath} en tu workspace solventando los problemas que te puedan aparecer.

> 📸 Haz una captura de la gráfica 3D con sus respectivo centroides.
{:.prompt-info}

¿Cuál es el usuario más cercano a cada centroide?

¿En qué grupo se clasifica davidguetta?

> 📸 Haz una captura donde se vea la ejecución de la clasificación.
{:.prompt-info}

¿En qué grupo se clasificaría las siguientes cuentas?

```plaintext
"pata","49.541828","14.789355","47.688172","28.897527","8.211290","95.1008","8"
"peta","41.483701","26.283071","50.352283","30.561496","16.201707","39.6299","9"
"pita","36.813721","40.046124","52.722403","34.703256","6.625736","81.8495","1"
"pota","33.422105","31.572688","32.931613","17.494624","9.609785","89.9140","7"
"maria","39.315610","51.741463","10.739350","13.231220","6.201707","121.2602","8"
```

> 📸 Haz una captura donde se vea la ejecución de las clasificaciones.
{:.prompt-info}

Cambia el número de centroides y vuelve a ejecutar todo el notebook.

> 📸 Haz una captura de la gráfica 3D con sus respectivo centroides.
{:.prompt-info}

¿Cuál es el usuario más cercano a cada centroide?

> 📸 Haz una captura donde se vea la ejecución de la clasificación.
{:.prompt-info}

Con los nuevos centroides, ¿En que grupo se clasificaría las cuentas de davidguetta, pata, peta, pita, pota y maria?

> 📸 Haz una captura donde se vea el resultado de las nuevas clasificaciones.
{:.prompt-info}

{:.activity}
### ML_3_1_UnsupervisedLearning_Clustering.ipynb

Ejecuta el fichero `ML_3_1_UnsupervisedLearning_Clustering.ipynb`{: .filepath} y responde a las siguientes preguntas:

1. ¿Cuáles son algunas de las principales aplicaciones de los algoritmos de clustering?
1. Describe 2 técnicas para seleccionar el número correcto de clústeres al usar K-Means.

{:.activity}
### ClusteringMetrics.ipynb

Ejecuta el fichero `ClusteringMetrics.ipynb`{: .filepath} y responde a las siguientes preguntas:

1. Explica que otros dos métodos adicionales existen para seleccionar el número correcto de clusters. ¿En qué consisten? Busca información al respecto.
1. ¿Qué otros algoritmos de clustering existen al margen del clásico K-means? Busca 2 y descríbelos.

{:.activity}
### data_Clustering.csv

Dado el dataset `data_Clustering.csv`{: .filepath} aplica un algoritmo de clustering a dicho dataset. Responde a las siguientes preguntas:

1. ¿Cuál es la media, max, min de cada característica?
1. ¿Cuál es la distribución espacial del dataset? Obtén una representación gráfica.
1. ¿Cuál es la evolución de la inertia en función de K? Obtén una representación gráfica.
1. ¿Cuál es el número óptimo de clusters que obtienes según el método del Elbow y el método del Silhouette Score?
1. Una vez obtenido el valor óptimo de K, genera un modelo K-means y entrénalo con los datos anteriores.
1. Invéntate diversas predicciones para saber en qué clúster se asigna.

{:.activity}
### (Voluntaria) 09_unsupervised_learning.ipynb

Lee, ejecuta y trata de entender el fichero `09_unsupervised_learning.ipynb`{: .filepath}.

{:.activity}
### (Voluntaria) Datasets en Kaggle

Crea una cuenta en <https://www.kaggle.com/> y descárgate el dataset que más te interese para utilizar la técnica de K Means en él. Es probable que tengas que hacer una preparación previa de los datos.

Si no sabes que dataset utilizar, aquí tienes varias:

1. [Customer Clustering](https://www.kaggle.com/datasets/dev0914sharma/customer-clustering?select=segmentation+data.csv) → Encuentra cuantos grupos de clientes tenemos para poder hacer campañas de márketing dirigidas.
1. [Big Five Personality Test](https://www.kaggle.com/datasets/tunguz/big-five-personality-test) → Encuentra cuantos grupos de personalidad existen para poder hacer estudios psicológicos basándonos en estos grupos.
1. [Countries Dataset 2020](https://www.kaggle.com/datasets/dumbgeek/countries-dataset-2020?rvi=1) → Encuentra que países son similares a España.
1. [Wine Dataset for Clustering](https://www.kaggle.com/datasets/harrywang/wine-dataset-for-clustering) → Encuentra cuentos tipos de vinos hay.

> 📸 Haz una o varias capturas de pantalla donde se vea lo que has realizado.
{:.prompt-info}

## Bibliografía

- <https://github.com/ageron/handson-ml3>
- <https://www.aprendemachinelearning.com/k-means-en-python-paso-a-paso/>
- <https://github.com/tirthajyoti/Machine-Learning-with-Python>
- <https://github.com/cristinagom/machinelearning/>

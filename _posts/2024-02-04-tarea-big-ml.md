---
title: "Tarea: BigML"
date: 2024-02-04 9:00:00 +0100
categories: [Inteligencia Artificial y Big Data, Sistemas de aprendizaje automático]
tags: [inteligencia artificial y big data, sistemas de aprendizaje automático]
img_path: /assets/img/tarea-big-ml/
---

## Entrega y presentación

La entrega será en formato PDF. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

## Calificación

La tarea se calificará como apto o no apto.

## Actividades

A Eva le han pedido que entrene un modelo de Inteligencia Artificial que ayude a los médicos a predecir posibles casos de diabetes en pacientes.

Para ello le han facilitado una base de datos con el historial de las personas que han pasado por el hospital de su localidad y se les han hecho análisis de sangre para decidir después si tenían o no Diabetes.

La base de datos se la han dado en un archivo .csv, y no es especialmente grande, por lo que Eva va a hacer una primera aproximación con la herramienta BigML, que le va a permitir hacer un primer prototipo y detectar posibles aspectos a revisar en la propia base de datos.

Va a utilizar un algoritmo de Árbol de Decisión, que es el que generalmente da mejores resultados en este tipo de primeras aproximaciones con bases de datos pequeñas.

Lo bueno de hacerlo en la plataforma de BigML es que también va a poder enriquecer el informe que entregará a los responsables del hospital un pequeño análisis del caso, pudiendo aportar buenas recomendaciones para el tratamiento previo de los datos que se pretendan utilizar en el desarrollo definitivo.

Te pedimos que utilices la plataforma BigML, tal como se ha explicado en el caso práctico del primer capítulo de esta unidad. Se da por sentado que sabes acceder, y que tienes usuario para trabajar en ella. Tendrás que  entregar un documento con la siguiente información:

> Tendrás que sacar pantallazos de cada actividad para incorporarlos al documento que entregarás como tarea. Deberá verse la fecha y hora en la barra de inicio.
{:.prompt-info}

> Recuerda que BigML tiene una versión de prueba gratuita de SOLO 15 días.
{:.prompt-warning}

{:.activity}
### Localiza el dataset "Diabetes completo (spanish)"

- Utiliza el buscador de datasets que tiene la propia plataforma para ello.
- Incorpora una captura de pantalla del dataset mencionado incorporado a tu apartado Datasets.

{:.activity}
### Observación del dataset

- Incorpora una captura de pantalla del dataset donde se vean al menos 10 categorías con sus tipologías, errores, histogramas, etc.
- Explica cómo es el dataset: Número de instancias y número de categorías.
- Explica el tipo de categorías (numéricas, texto, items, categóricas...).
- Analiza los histogramas de cada categoría y comenta aquellos en los que consideres que hay algún tipo de anomalía.

{:.activity}
### Preparación del dataset para entrenamiento y test

- Incorpora una captura de pantalla del proceso en el que defines los porcentajes de datos reservados para entrenamiento y para test.

{:.activity}
### Entrenamiento

- Incorpora una captura de pantalla que muestre el árbol de decisión del modelo ya entrenado.
- Explica los principales resultados: Casos en los que haya resultado positivo o negativo con suficiente confiabilidad.
- Incorpora capturas de pantalla de los diagramas de confiabilidad (confidence) y predicción (prediction).

{:.activity}
### Evaluación

- Incorpora una captura de pantalla en la que se muestre la evaluación del modelo entrenado realizada con el dataset reservado en el apartado 3.
- Explica el resultado de dicha evaluación, indicando el nivel de confianza obtenido (Accuracy) y el nivel de precisión (Precision).

{:.activity}
### Comparativa de herramientas

Haz una breve comparativa entre las plataformas de aprendizaje automático y minería de datos de BigML, Rapid Miner y KNIME. ¿Con cuál de las tres plataformas te decidirías si tuvieses que usar una? ¿Por qué?

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)

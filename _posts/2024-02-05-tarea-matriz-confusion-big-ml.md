---
title: "Tarea: Matriz de confusión en BigML"
date: 2024-02-04 9:00:00 +0100
categories: [Inteligencia Artificial y Big Data, Sistemas de aprendizaje automático]
tags: [inteligencia artificial y big data, sistemas de aprendizaje automático]
img_path: /assets/img/tarea-matriz-confusion-big-ml/
---

## Entrega y presentación

La entrega será en formato PDF. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

## Calificación

La tarea se calificará como apto o no apto.

## Actividades

Max comenta con su profesor cómo le ha ido trabajando con un dataset de tipo médico, en el que los datos están un poco desbalanceados.

"Tengo el doble de casos negativos que de casos positivos" dice algo preocupada. "¿Crees que la precisión se verá afectada por ésto"

Su profesor, Antonio le contesta: "Si quieres saber realmente cómo clasifica los casos tu modelo, lo mejor es que obtengas la matriz de confusión y mires cuántos falsos negativos se están generando"

"La verdad es que no sería nada bueno que no se diagnosticase adecuadamente a alguien que sí está en riesgo" Dice Max, preocupada. "De acuerdo, calcularé la matriz de confusión y analizaré con más detalle los errores".

Utiliza uno de los modelos que ya has entrenado en BigML en las unidades anteriores, y evalúa los resultados de las predicciones sobre los datos de test utilizando la matriz de confusión.

> Tendrás que sacar pantallazos de cada actividad para incorporarlos al documento que entregarás como tarea. Deberá verse la fecha y hora en la barra de inicio.
{:.prompt-info}

> Recuerda que BigML tiene una versión de prueba gratuita de SOLO 15 días.
{:.prompt-warning}

{:.activity}
### Realiza una predicción por lote en BigML

- Elige un dataset para clasificación binaria de los que vienen por defecto en BigML o carga uno que te parezca interesante.
- Separa los datos en 80% para el entrenamiento y 20% para test.
- Entrena un modelo de árbol de decisión.
- Realiza la predicción por lotes, seleccionando el conjunto de datos de test. Descarga el archivo csv resultante.

{:.activity}
### Calcula la matriz de confusión

- Abre el archivo csv en una hoja de cálculo y aplica las fórmulas necesarias para obtener: errores totales, falsos negativos y falsos positivos.
- Construye la matriz de confusión, rellenando los valores correspondientes.
- Analiza los resultados. ¿Es fiable el modelo?

{:.activity}
### Aplica la técnica de aprendizaje no supervisado de Detección de Anomalías

- Aplica el modelo de detección de anomalías en BigML dentro de las funciones rápidas de algoritmos no supervisados.
- Analiza las top 5 anomalías de tu problema y decide si merece la pena analizarlas a parte.
- Si crees que son importantes, crea un dataset con ellas para analizarlas
- Si crees que son simplemente errores de medida, crea un dataset sin ellas.

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)

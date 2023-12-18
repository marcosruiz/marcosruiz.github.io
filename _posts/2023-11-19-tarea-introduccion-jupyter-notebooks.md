---
title: "Tarea: Introducción a Jupyter Notebooks"
date: 2023-11-19 9:00:00 +0100
categories: [Inteligencia Artificial y Big Data, Sistemas de aprendizaje automático]
tags: [inteligencia artificial y big data, sistemas de aprendizaje automático]
img_path: /assets/img/tarea-introduccion-jupyter-notebooks/
---

## Entrega y presentación

La entrega será en formato ZIP. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/). 

Ejemplo del árbol de directorios de entrega (si la tuviese que hacer yo):

```plaintext
mruizg_t03.zip
├─ mruizg_a02.ipynb
├─ mruizg_a03.ipynb
├─ mruizg_a04.ipynb
```

## Calificación

La tarea se calificará como apto o no apto.

## Actividades

{:.activity}
### Instala y configura Anaconda

Instala Python 3.11.5 (es OBLIGATORIO usar esta versión).

Instala y configura la aplicación Notebook de Jupyter. Puedes usar la alternativa con la que te sientas más cómodo, las más populares son las siguientes:

- [Jupyter](https://jupyter.org/install)
- [Anaconda](https://docs.anaconda.com/free/anaconda/install/index.html)
- [Miniconda](https://docs.conda.io/projects/miniconda/en/latest/miniconda-install.html)
- Visual Studio Code con la extensión de Jupyter

> Puedes usar el artículo [Tutorial: Entornos de desarrollo para Aprendizaje Automático](/posts/tutorial-anaconda) como guía.
{:.prompt-info}

{:.activity}
### MatPlotLib

Descarga el fichero [tools_matplotlib_con_preguntas.ipynb](/assets/img/tarea-introduccion-jupyter-notebooks/tools_matplotlib_con_preguntas.ipynb) lee, ejecuta en tu máquina local y responde a las preguntas que aparecen a lo largo del mismo.

{:.activity}
### NumPy

Descarga el fichero [tools_numpy_con_preguntas.ipynb](/assets/img/tarea-introduccion-jupyter-notebooks/tools_numpy_con_preguntas.ipynb) lee, ejecuta en tu máquina local y responde a las preguntas que aparecen a lo largo del mismo.

{:.activity}
### Vídeo de regresión lineal por DotCSV

Mira el vídeo de [IA NOTEBOOK #1 \| Regresión Lineal y Mínimos Cuadrados Ordinarios \| Programando IA](https://youtu.be/w2RJ1D6kz-o?si=7jfMNFJbUnxW3Z2e) y sigue los pasos para crear tu primer Notebook de Jupyter desde 0. Llámalo `<tu usuario>_a04.ipynb`.

El dataset de Boston tiene un problema ético por lo que ha sido eliminado de los datasets de sklearn por lo que hay que importarlo de la fuente original de la siguiente manera:

```python
import pandas as pd  # doctest: +SKIP
import numpy as np

data_url = "http://lib.stat.cmu.edu/datasets/boston"
raw_df = pd.read_csv(data_url, sep="s+", skiprows=22, header=None)
data = np.hstack([raw_df.values[::2, :], raw_df.values[1::2, :2]])
target = raw_df.values[1::2, 2]
```

Si quieres saber más puedes leer el [este artículo](https://scikit-learn.org/1.0/modules/generated/sklearn.datasets.load_boston.html).

> Si tienes dudas sobre cual es tu nombre de usuario lee el artículo [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).
{:.prompt-info}

{:.activity}
### (Voluntaria) Regresión lineal sobre california_housing

Utiliza regresión lineal con el dataset de california_housing donde aparecen datos de los precios de las casas en California. Lo puedes importar de la siguiente manera:

```python
from sklearn.datasets import fetch_california_housing
housing = fetch_california_housing()
```

{:.activity}
### (Voluntaria) Regresión lineal sobre openml

Utiliza regresión lineal con el dataset de openml donde aparecen datos de los precios de las casas en Ames (Iowa). Lo puedes importar de la siguiente manera:

```python
from sklearn.datasets import fetch_openml
housing = fetch_openml(name="house_prices", as_frame=True)
```

## Bibliografía

- <https://github.com/ageron/handson-ml3>

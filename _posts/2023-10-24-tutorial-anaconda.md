---
title: "Tutorial: Entornos de desarrollo para Aprendizaje Automático"
date: 2023-10-23 9:00:00 +0100
categories: [Inteligencia Artificial y Big Data, Sistemas de aprendizaje automático]
tags: [inteligencia artificial y big data, sistemas de aprendizaje automático]
img_path: /assets/img/tutorial-anaconda/
---

## Introducción

Hay diferentes entornos de desarrollo:

- Google Colab (cloud).
- Conda: con Miniconda o Anaconda.
- Editor de Notebooks:
  - Visual Studio Code
  - DataSpell/PyCharm
  - Jupyter Notebook (no autocompleta)

## Instalar Python

Ir a la web <https://www.python.org/downloads/> y descarga la versión 3.11.4 de Python.

Una vez instalado deberás poder ver la versión de Python desde el terminal con el siguiente comando:

```console
$python --version
Python 3.11.4
```

Deberás tener algo similar a lo que se ve a continuación:

![Versión de Python en terminal de Windows 11](terminalVersionPython.png)
_Versión de Python en terminal de Windows 11_

## Anaconda

<details class="card mb-2">
  <summary class="card-header question">¿Qué es Anaconda?</summary>
  <div class="card-body" markdown="1">

Es una suite de código abierto de los lenguajes R y Python. Se usa principalmente en trabajos de aprendizaje automático y de análisis de datos. Su funcionalidad es enorme, pues te permite efectuar las siguientes funciones:

- Procesar grandes volúmenes de información.
- Realizar un análisis predictivo.
- Ejecutar cómputos científicos.

Las diferentes versiones de los paquetes se administran mediante el sistema de gestión de paquetes conda, el cual lo hace bastante sencillo de instalar, correr, y actualizar software de ciencia de datos y aprendizaje automático como puede ser Scikit-team, TensorFlow y SciPy.3​

La distribución Anaconda es utilizada por 6 millones de usuarios e incluye más de 250 paquetes de ciencia de datos válidos para Windows, Linux y MacOS.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Ir a la web <https://www.anaconda.com/download> y descarga e instala la última versión de Anaconda.

### Instalar aplicaciones con Anaconda

Las aplicaciones que debemos instalar con Anaconda son:

- Spyder
- Notebook de Jupyter

Instalamos las aplicaciones marcadas:

![Instalar aplicaciones](instalarAplicaciones.png)

![Aplicaciones ya instaladas](aplicacionesInstaladas.png)
_Aplicaciones ya instaladas_

### Crear entorno de SAA en Anaconda

Creamos el entorno:

![Crear entorno](crearEntorno.png)
_imgDescription_

Le damos nombre de saa:

![Nombre de entorno](nombreDeEntorno.png)

### Instalar librerías en entorno SAA desde entorno gráfico en Anaconda

Instalamos numpy:

![imgDescription](instalarPaqueteNumpy.png)
_Instalación gráfica de paquete numpy_

<details class="card mb-2">
  <summary class="card-header question">¿Qué es NumPy?</summary>
  <div class="card-body" markdown="1">

NumPy es una librería de Python especializada en el cálculo numérico y el análisis de datos, especialmente para un gran volumen de datos.

Incorpora una nueva clase de objetos llamados arrays que permite representar colecciones de datos de un mismo tipo en varias dimensiones, y funciones muy eficientes para su manipulación.

La ventaja de Numpy frente a las listas predefinidas en Python es que el procesamiento de los arrays se realiza mucho más rápido (hasta 50 veces más) que las listas, lo cual la hace ideal para el procesamiento de vectores y matrices de grandes dimensiones.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

### Instalar paquetes en entorno SAA desde Anaconda Prompt

Iniciamos el Anaconda Prompt:

![Búsqueda de Anaconda Prompt desde el inicio de Windows](inicioAnacondaPrompt.png)
_Búsqueda de Anaconda Prompt desde el inicio de Windows_

Activamos el entorno de SAA:

```console
(base) C:\Users\marco>conda activate saa
(saa) C:\Users\marco>
```

Instalamos librería matplotlib:

```console
(saa) C:\Users\marco>conda install matplotlib
```

<details class="card mb-2">
  <summary class="card-header question">¿Qué es MatPlotLib?</summary>
  <div class="card-body" markdown="1">

Matplotlib es una librería de Python especializada en la creación de gráficos en dos dimensiones. Permite crear y personalizar los tipos de gráficos más comunes.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Instalamos librería scikit-learn del repositorio externo conda-forge:

```console
(saa) C:\Users\marco>conda install -c conda-forge scikit-learn
```

<details class="card mb-2">
  <summary class="card-header question">¿Qué es scikit-learn?</summary>
  <div class="card-body" markdown="1">

Scikit-learn es una biblioteca de aprendizaje automático de código abierto que admite el aprendizaje supervisado y no supervisado. También proporciona varias herramientas para el ajuste de modelos, el preprocesamiento de datos, la selección y evaluación de modelos, y muchas otras utilidades. Scikit-learn se basa en NumPy, SciPy y matplotlib, y es un buen paquete para explorar el aprendizaje automático. Aunque solo lo usa para tomar prestadas algunas funciones en un módulo posterior, puede explorar este paquete con mayor detalle después de completar este curso.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué es Pandas?</summary>
  <div class="card-body" markdown="1">

Pandas es una biblioteca para el manejo y análisis de datos. Representa los datos de una tabla que es similar a una hoja de cálculo. Esta tabla se conoce como un DataFrame de pandas.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué es Seaborn?</summary>
  <div class="card-body" markdown="1">

Seaborn es otra biblioteca de visualización de datos para Python. Está construido sobre matplotlib, y proporciona una interfaz de alto nivel para dibujar gráficos estadísticos informativos.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Visual Studio Code

Existe la posibilidad de usar Visual Studio Code para ejecutar y editar ficheros IPYNB. En este caso no haremos uso de entornos aislados por lo que podemos tener problemas a la hora de usar los Notebook si estos usan diferentes versiones de Python. Para instalar librerías por terminal, es tan sencillo como lo siguiente:

```console
$pip install scikit-learn matplotlib numpy pandas
```

Este comando instalará los paquetes de `scikit-learn`, `matplotlib`, `numpy` y `pandas`.

## Bibliografía

- <https://blog.ticjob.es/descubre-que-es-anaconda/>
- <https://es.wikipedia.org/wiki/Anaconda_(distribuci%C3%B3n_de_Python)>
- <https://aprendeconalf.es/docencia/python/manual/numpy/>
- <https://aprendeconalf.es/docencia/python/manual/matplotlib/>

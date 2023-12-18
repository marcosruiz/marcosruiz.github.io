---
title: "Tarea: Álgebra lineal"
date: 2023-11-19 9:00:00 +0100
categories: [Inteligencia Artificial y Big Data, Sistemas de aprendizaje automático]
tags: [inteligencia artificial y big data, sistemas de aprendizaje automático]
img_path: /assets/img/tarea-algebra-lineal/
math: true
---

## Entrega y presentación

La entrega será en formato ZIP. Dentro del ZIP deberá haber un documento en formato PDF. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

Ejemplo del árbol de directorios de entrega (si la tuviese que hacer yo):

```plaintext
mruizg_t01.zip
├─ mruizg_t01.pdf
├─ mruizg_a15.ipynb
```

## Calificación

La tarea se calificará con una nota de 0 a 10.

## Actividades

{:.activity}
### Vídeo "Esencia del álgebra lineal"

Mira el vídeo de [Fundamentos del Álgebra Lineal \| Esencia del álgebra lineal, reseña](https://www.youtube.com/watch?v=0Ndnzx6AyaA) y responde a las siguientes preguntas sobre el mismo:

1. ¿Por qué es importante tener una comprensión geométrica sobre la álgebra lineal?

{:.activity}
### Vídeo "Vectores, ¿qué son?"

Mira el vídeo de [Vectores, ¿qué son? \| Esencia del álgebra lineal, capítulo 1](https://www.youtube.com/watch?v=wiuEEkP_XuM) y responde a las siguientes preguntas sobre el mismo:

1. ¿De dónde debemos asumir que parten todos los vectores?
1. ¿Cómo se diferencia la nomenclatura/sintaxis de un vector respecto a un punto si ambos solo necesitan dos escalares para ser representados (supniendo que estamos en un espacio 2D)?
1. ¿Qué significa geométricamente multiplicar un vector por un escalar?
1. ¿Por qué es útil la algebra lineal?

{:.activity}
### (Importante) Vídeo "Combinaciones lineales, subespacio generado y bases"

Mira el vídeo de [Combinaciones lineales, subespacio generado y bases \| Esencia del álgebra lineal, capítulo 2](https://www.youtube.com/watch?v=RqQqFx4xUjk) y responde a las siguientes preguntas sobre el mismo:

1. ¿Cómo se llaman $\hat{i}$  y $\hat{j}$?
1. ¿Podemos cambiar la base de un sistema de coordenadas?
1. ¿Qué es el subespacio generado por dos vectores?
1. ¿Cuándo el subespacio generado por dos vectores 2D contiene todo el espacio 2D?
1. ¿Qué significa que dos vectores son linealmente independientes? ¿Qué tiene que ver esto con la generación de subespacios?

{:.activity}
### (Importante) Vídeo "Transformaciones lineales y matrices"

Mira el vídeo de [Transformaciones lineales y matrices \| Esencia del álgebra lineal, capítulo 3](https://www.youtube.com/watch?v=YJfS4_m_0Z8) y responde a las siguientes preguntas sobre el mismo:

1. ¿Por qué se usa el término transformación en lugar de función?
1. ¿Qué ocurre si $\hat{i}$  y $\hat{j}$ tras una transformación lineal son linealmente dependientes?

{:.activity}
### Vídeo "Multiplicación matricial como composición"

Mira el vídeo de [Multiplicación matricial como composición \| Esencia del álgebra lineal, capítulo 4a](https://youtu.be/8f7UUnbLqp0?si=TNrudd3cn_F_ZDye) y responde a las siguientes preguntas sobre el mismo:

1. ¿En qué consiste la multiplicación de dos matrices de manera geométrica?
1. ¿Por qué la multiplicación de matrices es asociativa ($(AB)C = A(BC)$) a pesar de no ser conmutativa ($AB \ne BA$)?

{:.activity}
### (Voluntaria) Vídeo "Transformaciones lineales en tres dimensiones"

Mira el vídeo de [Transformaciones lineales en tres dimensiones \| Esencia del álgebra lineal, capítulo 4b](https://youtu.be/IvGS6aFkofg?si=43phKcXZmkFA1UQP) y responde a las siguientes preguntas sobre el mismo:

1. ¿Se puede multiplicar $\begin{pmatrix}x \\\\ y \\\\ z \end{pmatrix}$ con $\begin{pmatrix}1 & 2 & 3 \\\\ 4 & 5 & 6 \\\\ 7 & 8 & 9 \end{pmatrix}$?
1. Haz la siguiente multiplicación de matices $\begin{pmatrix}1 & 2 & 3 \\\\ 4 & 5 & 6 \\\\ 7 & 8 & 9 \end{pmatrix}\begin{pmatrix}x \\\\ y \\\\ z \end{pmatrix}$ de la manera tradicional y de la manera en que se muestra enseña en el vídeo.

{:.activity}
### Vídeo "El determinante"

Mira el vídeo de [El determinante \| Esencia del álgebra lineal, capítulo 5](https://youtu.be/yt3eoYvGel0?si=d1-NaG_xgWGRIEYa) y responde a las siguientes preguntas sobre el mismo:

1. ¿Qué simboliza el determinante de manera geométrica en un espacio 2D?
1. ¿Qué ocurre si un determinante es mayor que 0 y menos que 1?
1. ¿Cuál es el determinante de $\begin{pmatrix}1 & 1 \\\\ 0 & 0 \end{pmatrix}$?
1. ¿Cual es el área de un rectángulo 1x1 si le aplicamos una transformación con la matriz $\begin{pmatrix}1 & 1 \\\\ 0 & 0 \end{pmatrix}$?
1. ¿Qué ocurre si un determinante es -3?
1. Explica en una frase (de manera geométrica) si la siguiente fórmula es cierta: $det(M_1 M_2) = det(M_1) det(M_2)$

{:.activity}
### Vídeo "Matriz inversa, rango y rango nulo"

Mira el vídeo de [Matriz inversa, rango y rango nulo \| Esencia del álgebra lineal, capítulo 6a](https://youtu.be/Xt_0OyLdQgI?si=PW0mirZ16wEim-2Y) y responde a las siguientes preguntas sobre el mismo:

1. ¿Qué es la matriz inversa de manera geométrica?
1. ¿Cómo transforma el espacio la matriz identidad?
1. Con una transformación del espacio, ¿podría convertirse un vector de rango 3 en uno de rango 2?

{:.activity}
### (Voluntaria) Vídeo "Matrices no cuadradas como transformaciones entre dimensiones"

Mira el vídeo de [Matrices no cuadradas como transformaciones entre dimensiones \| Álgebra lineal, capítulo 6b](https://youtu.be/VXJEsYgeXX0?si=8A0zKfHqcmwjBaxE) y responde a las siguientes preguntas sobre el mismo:

1. ¿Se pueden utilizar matrices no cuadradas para aumentar la dimensionalidad de un vector?
1. ¿Se pueden utilizar matrices no cuadradas para reducir la dimensionalidad de un vector?

{:.activity}
### Vídeo "Producto escalar y dualidad"

Mira el vídeo de [Producto escalar y dualidad \| Esencia del álgebra lineal, capítulo 7](https://youtu.be/quYTdFWTN1g?si=jYXr6c82NAk321EA) y responde a las siguientes preguntas sobre el mismo:

1. ¿Con qué símbolo se representa el producto escalar?
1. ¿Para qué puede servir el producto escalar?

{:.activity}
### Vídeo "Producto vectorial"

Mira el vídeo de [Producto vectorial \| Esencia del álgebra lineal, capítulo 8a](https://youtu.be/2u1YeOyGuAc?si=dN6TO4Z_ZSN23hg1) y responde a las siguientes preguntas sobre el mismo:

1. ¿Con qué símbolo se representa el producto vectorial?
1. ¿El producto vectorial de dos vectores 2D da como resultado otro vector?
1. ¿Cómo se interpreta el resultado al realizar el producto vectorial de dos vectores 2D?

{:.activity}
### (Voluntaria) Vídeo "Producto vectorial bajo la luz de las transformaciones lineales"

Mira el vídeo de [Producto vectorial bajo la luz de las transformaciones lineales \| Álgebra lineal, capítulo 8b](https://youtu.be/k5MxuAVGTto?si=xZvqIq75kqxs3baV) y responde a las siguientes preguntas sobre el mismo:

1. ¿El producto vectorial de dos vectores 3D da como resultado otro vector?
1. ¿Cómo se interpreta el resultado al realizar el producto vectorial de dos vectores 3D?

{:.activity}
### Vídeo "Cambio de Bases"

Mira el vídeo de [Cambio de Bases \| Esencia del álgebra lineal, capítulo 09](https://youtu.be/LYlaRDsi_T8?si=veice1e2pL7WmKOK) y responde a las siguientes preguntas sobre el mismo:

1. Traduce el vector $\begin{pmatrix}7 \\\\ -5 \end{pmatrix}$ al sistema de coordenadas de Jennifer.

{:.activity}
### Vídeo "Vectores propios y valores propios"

Mira el vídeo de [Vectores propios y valores propios \| Esencia del álgebra lineal, capítulo 10](https://www.youtube.com/embed/Gx0PaWI9eYo?si=vZtBoOe5Ot0G4DV4). Si no lo entiendes es recomendable verse los vídeos anteriores que recomienda el propio autor.

1. ¿Qué es un vector propio y que relación tiene con su valor propio?
1. ¿Los valores propios pueden ser negativos?
1. ¿Cuál es el valor propio de una rotación? ¿Por qué?
1. ¿Cómo transformamos el escalar $\lambda$ en una matriz?
1. ¿Hay transformaciones sin vectores propios en espacios 2D?

{:.activity}
### Notebook de álgebra lineal

Descarga el fichero [math_linear_algebra_con_preguntas.ipynb](/assets/img/tarea-algebra-lineal/math_linear_algebra_con_preguntas.ipynb) lee, ejecuta en tu máquina local y responde a las preguntas que aparecen a lo largo del mismo.

## Bibliografía

- <https://github.com/ageron/handson-ml3>
- <https://www.khanacademy.org/>
- <https://www.youtube.com/watch?v=0Ndnzx6AyaA&list=PLIb_io8a5NB2DddFf-PwvZDCOUNT1GZoA&index=1>

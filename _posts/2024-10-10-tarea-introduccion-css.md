---
title: "Tarea obligatoria: Introducción a CSS"
date: 2024-10-10 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/tarea-introduccion-css/
---

## Información sobre la tarea

La entrega será en formato PDF. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

La tarea se calificará con una nota de APTO (10) o NO APTO (0).

Duración actividades obligatorias: 7 horas.

## Actividades

A continuación, se muestran las actividades a realizar.

{:.activity}
### (Voluntaria) Menú cafetería en freeCodeCamp

Hacer el apartado "Aprende CSS básico construyendo un menú de cafetería" del curso [Diseño Web Responsivo](https://www.freecodecamp.org/espanol/learn/2022/responsive-web-design/).

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil público y añade el enlace de tu perfil. En mi caso este es [mi perfil público](https://www.freecodecamp.org/fccbc40f106-3a04-422a-afc3-e806f616be0b).
{:.prompt-info}

{:.activity}
### Marcadores de colores en freeCodeCamp

Hacer el apartado "Aprenda los colores de CSS construyendo un conjunto de marcadores de colores" del curso [Diseño Web Responsivo](https://www.freecodecamp.org/espanol/learn/2022/responsive-web-design/).

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil público y añade el enlace de tu perfil.
{:.prompt-info}

{:.activity}
### Formularios en freeCodeCamp

Hacer el apartado "Aprende formularios HTML construyendo un formulario de registro" del curso [Diseño Web Responsivo](https://www.freecodecamp.org/espanol/learn/2022/responsive-web-design/).

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil público y añade el enlace de tu perfil.
{:.prompt-info}

{:.activity}
### Modelo de cajas en freeCodeCamp

Hacer el apartado "Aprende formularios HTML construyendo un formulario de registro" del curso [Diseño Web Responsivo](https://www.freecodecamp.org/espanol/learn/2022/responsive-web-design/).

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil público y añade el enlace de tu perfil.
{:.prompt-info}

{:.activity}
### Color de fondo

A partir del siguiente documento HTML:

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <style>
      /* Escribe tu código CSS aquí */
    </style>
  </head>
  <body>
    <div id="pie"></div>
  </body>
</html>
```

Queremos conseguir con CSS que elemento con ID `pie` tenga las siguientes características:

- Relleno superior e inferior de `0.5em`.
- Relleno derecho e izquierdo de `0em`.
- Margen superior de `1em`.
- Bordes superior e inferior de tipo sólido, de 1 píxel de grosor y de color `#C5C5C5`.
- Fondo de color `#F8F8F8`.
- Altura de `3em`.

{:.question}
¿El relleno se pinta con el color de fondo?

> 📸 Haz una o varias capturas para demostrar que ha realizado esta tarea.
{:.prompt-info}

{:.activity}
### Anterior y siguiente

> En esta tarea esta prohibido usar  Flex o Grid.
{:.prompt-warning}

A partir del siguiente código:

```html
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Ejercicio de Flotar y Posicionamiento</title>
    <style type="text/css"></style>
  </head>

  <body>
    <div>&laquo; Anterior &nbsp; Siguiente &raquo;</div>
  </body>
</html>
```

Debes determinar las reglas CSS que pondrías en el elemento `style`, con las clases, identificadores y elementos que creas necesarios y modificar el código para que el resultado sea lo más parecido posible a la siguiente imagen:

![alt text](anteriorSiguiente.png)

> Puedes utilizar del artículo [Posicionamiento en CSS](https://marcosruiz.github.io/posts/posicionamiento-css/) para llevar a cabo esta actividad.
{:.prompt-info}

> 📸 Haz una o varias capturas para demostrar que ha realizado esta tarea.
{:.prompt-info}

{:.activity}
### (Voluntaria) Anterior y siguiente con Grid o Flex

Si ya has trabajado con Flex y/o Grid, realiza la tarea anterior pero ahora utilizando cualquiera de estos dos displays.

{:.activity}
### Tabla

Copia el siguiente código en tu editor de Visual Studio Code:

```html
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
  <title>Ejercicio de cambio de apariencia a tablas con CSS</title>
  <style type="text/css">

  </style>
</head>

<body>
  <table>
    <caption>Distancias planetarias</caption>
    <thead>
      <tr>
        <th>Planeta</th>
        <th>Distancia desde la Tierra</th>
        <th>Web</th>
      </tr>
    </thead>

    <tfoot>
      <tr>
        <td colspan="3">Astronomía Gobierno de España</td>
      </tr>
    </tfoot>

    <tbody>
      <tr>
        <td>Venus</td>
        <td>108 Millones de Kilómetros</td>
        <td><a href="https://es.wikipedia.org/wiki/Venus_(planeta)">Web Venus</a></td>
      </tr>
      <tr>
        <td>Saturno</td>
        <td>1.281 Millones de Kilómetros</td>
        <td><a href="https://es.wikipedia.org/wiki/Saturno_(planeta)">Web Saturno</a></td>
      </tr>
      <tr>
        <td>Urano</td>
        <td>2.720 Millones de Kilómetros</td>
        <td><a href="https://es.wikipedia.org/wiki/Urano_(planeta)">Web Urano</a></td>
      </tr>
      <tr>
        <td>Neptuno</td>
        <td>4.504 Millones de Kilómetros</td>
        <td><a href="https://es.wikipedia.org/wiki/Neptuno_(planeta)">Web Neptuno</a></td>
      </tr>
    </tbody>
  </table>

</body>

</html>
```

Una vez descargado el código puedes abrirlos con tu navegador. Verás que el resultado es el que se muestra en la imagen siguiente:

![alt text](tablaInicio.png)
_Tabla sin CSS_

Tendrás que editar el código y determinar las reglas CSS necesarias para que el resultado sea lo más parecido posible al de la siguiente imagen (Nota: Aunque no sale en la imagen, el puntero está sobre la primera fila, por eso se ve de color amarillo):

![alt text](tablaFin.png)
_Resultado final de la tabla_

> Puedes utilizar del artículo [CSS con tablas y listas](https://marcosruiz.github.io/posts/css-tablas-listas/) para llevar a cabo esta actividad.
{:.prompt-info}

> 📸 Haz una o varias capturas para demostrar que ha realizado esta tarea.
{:.prompt-info}

{:.activity}
### (Voluntaria) Web TofoFP

Realiza una web lo más parecida a la siguiente:

![alt text](webTodoFp.png)

La tabla de colores empleada es la siguiente:

![alt text](tablaDeColores.png)

Instrucciones para la realización del portal:

1. Ancho cabecera: 920px, con padding superior, izquierda y derecha de 20px.
1. Las opciones del menú están programadas como una lista. Cada opción es un hiperenlace cuyo color de fondo cambia al pasar el ratón por encima
1. Columna izquierda: ancho de 220px.
1. Columna central : 480px, padding left 20px.
1. Columna derecha: 180px, padding left 20px.
1. Pie de página: 960px de ancho.
1. Fijarse en los bordes de las cajas, de la página principal y del pie de página.

> 📸 Haz una o varias capturas para demostrar que ha realizado esta tarea.
{:.prompt-info}

## Dame tu feedback

<div class="strawpoll-embed" id="strawpoll_PbZqbYpQ0yN" style="height: 644px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_PbZqbYpQ0yN" src="https://strawpoll.com/embed/PbZqbYpQ0yN" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

<div class="strawpoll-embed" id="strawpoll_2ayLQbK63n4" style="height: 3012px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_2ayLQbK63n4" src="https://strawpoll.com/embed/2ayLQbK63n4" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

## Bibliografía

- <https://logongas.es/doku.php?id=clase:daw:diw:1eval:tema01>

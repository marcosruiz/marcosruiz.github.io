---
title: "Internet, características y evolución"
date: 2022-09-15 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, teoría]
---

## Introducción

Para recordar la asignatura de redes locales...

<iframe width="560" height="315" src="https://www.youtube.com/embed/gVUE2IDwWA0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/HeZWcZmrQUY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Historia de Internet

<iframe width="560" height="315" src="https://www.youtube.com/embed/mGG5o6vbKyQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/l-zFtlzanvQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/9hIQjrMHTv4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Leer artículo [Historia de Internet: cómo nació y cuál fue su evolución](https://marketing4ecommerce.net/historia-de-internet/)

Leer artículo [Historia de Internet](https://www.mastermarketing-valencia.com/marketing-digital/blog/internet-historia-evolucion/#Los_origenes_de_internet_ARPA) hasta la sección "Evolución de Internet en cifras" incluida.

Leer artículo [Historia de internet](https://www.fib.upc.edu/retro-informatica/historia/internet.html) hasta la sección "WWW" incluida.

## Historia de la web

Ver hasta el año 2001...

<iframe width="560" height="315" src="https://www.youtube.com/embed/NWUZCTTLQcg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<details class="card mb-2">
  <summary class="card-header question">¿Qué es una página web?</summary>
  <div class="card-body" markdown="1">
    
Una página web es un documento HTML. Este documento HTML es interpretado por un navegador:

- Google Chrome
- Mozilla Firefox
- Internet Explorer
- Microsoft Edge
- Opera
- Safari

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## HTML

<details class="card mb-2">
  <summary class="card-header question">¿Qué es HTML?</summary>
  <div class="card-body" markdown="1">
    
HyperText Markup Language.

Lenguaje de marcas de hipertexto.

Sirve para definir la estructura y  el contenido de una página web.

  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué significa hipertexto?</summary>
  <div class="card-body" markdown="1">

Del mismo modo que un hipermercado es mejor que un mercado. El hipertexto es mejor que el texto. De manera simplificada es texto con enlaces que te llevan a otros documentos.

  </div>
</details>

### Estructura básica de HTML

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Título de la página</title>
  </head>
  <body>

    <h1>Esto es una cabecera</h1>
    <p>Esto es un párrafo.</p>

    <p id=”bienvenida”>¡Bienvenido!</p>

  </body>
</html>
```

### Nomenclatura HTML

- **Elemento**: Los elementos HTML son los componentes básicos de un documento HTML. En esta página que estás leyendo, por ejemplo, el título, un párrafo y una imagen son elementos H1, P e IMG, respectivamente. No todos los tipos de elemento son visibles: algunos tienen como única función agrupar a otros elementos, por ejemplo.
- **Etiqueta**: Las etiquetas HTML son los códigos que se usan en el código fuente para declarar y delimitar cada uno de los elementos. Por ejemplo, el elemento P (párrafo) comienza siempre con la etiqueta de apertura <p> y suele terminar con la etiqueta de cierre `</p>. Algo así: <p>Hola, mundo.</p>`.
- **Atributo**: Los atributos se incluyen en las etiquetas de apertura para añadir información necesaria para el elemento. Por ejemplo, si quiero incluir aquí un enlace a Facebook, debo añadir al correspondiente elemento A (enlace) un atributo href donde especificaré la dirección de Facebook, así: `<a href="https://www.facebook.com">Ir a Facebook</a>`.


![Nomenclatura HTML](/assets/img/internet-caracteristicas-evolucion/nomenclaturaHtml.png)
_Nomenclatura HTML_

{:.question}
¿Cómo se llama un elemento que tiene clave pero no tiene valor?

{:.question}
Veamos el código fuente de [www.muylinux.com](www.muylinux.com). ¿Tiene la estructura que he explicado?

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un lenguaje de programación?</summary>
  <div class="card-body" markdown="1">
    
Un lenguaje de programación es un lenguaje formal que le proporciona a una persona, en este caso el programador, la capacidad de escribir (o programar) una serie de instrucciones o secuencias de órdenes en forma de algoritmos con el fin de controlar el comportamiento físico o lógico de un sistema informático, de manera que se puedan obtener diversas clases de datos o ejecutar determinadas tareas. 

A todo este conjunto de órdenes escritas mediante un lenguaje de programación se le denomina programa informático.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


<details class="card mb-2">
  <summary class="card-header question">¿Es HTML un lenguaje de programación?
</summary>
  <div class="card-body">

HTML es una forma de representar la información. No programas el comportamiento de una computadora por lo tanto no es un lenguaje de programación.

<iframe width="560" height="315" src="https://www.youtube.com/embed/b6sNxnldPhU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

  </div>
</details>


## Bibliografía
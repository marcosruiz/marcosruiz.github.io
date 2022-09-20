---
title: "Internet, características y evolución"
date: 2022-09-15 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, teoría]
---

## Introducción

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

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo Internet que la web?</summary>
  <div class="card-body" markdown="1">
    
No. WEB = INTERNET + HTTP

  </div>
</details>

## La web 1.0, 2.0 y 3.0

Leer artículo [¿Qué es la Web 3.0?](https://www.ceupe.com/blog/que-es-la-web-3-0.html)

## La web 4.0

Leer [Web 4.0](https://www.paradigmadigital.com/dev/web-4-0/)

## Arquitectura cliente-servidor

La web tiene una arquitectura cliente-servidor.

![Arquitectura cliente-servidor](/assets/img/internet-caracteristicas-evolucion/arquitecturaClienteServidor.png)
_Arquitectura cliente-servidor_

## Direcciones de Internet

### Direcciones IP

<iframe width="560" height="315" src="https://www.youtube.com/embed/gVUE2IDwWA0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/HeZWcZmrQUY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### URLs

Todo recurso de Internet debe tener una dirección accesible desde cualquier ordenador del mundo. A esa dirección se le llama URLs (Uniform Resource Locator).

Una URL es una secuencia de caracteres, de acuerdo a un formato estándar, que se usa para nombrar recursos en Internet para su localización o identificación.

Esta imagen [https://upload.wikimedia.org/wikipedia/en/thumb/2/22/Heckert_GNU_white.svg/246px-Heckert_GNU_white.svg.png](https://upload.wikimedia.org/wikipedia/en/thumb/2/22/Heckert_GNU_white.svg/246px-Heckert_GNU_white.svg.png) tiene una URL en Internet.

![Formato de una URL](/assets/img/internet-caracteristicas-evolucion/formatoUrl.png)
_Formato de una URL_

## HTML

HTML (Lenguaje de Marcas de Hipertexto, del inglés HyperText Markup Language) es el componente más básico de la Web. Define el significado y la estructura del contenido web. Además de HTML, generalmente se utilizan otras tecnologías para describir la apariencia/presentación de una página web (CSS) o la funcionalidad/comportamiento (JavaScript).

"Hipertexto" hace referencia a los enlaces que conectan páginas web entre sí, ya sea dentro de un único sitio web o entre sitios web. Los enlaces son un aspecto fundamental de la Web. Al subir contenido a Internet y vincularlo a las páginas creadas por otras personas, te conviertes en un participante activo en la «World Wide Web» (Red Informática Mundial).

HTML utiliza "marcas" para etiquetar texto, imágenes y otro contenido para mostrarlo en un navegador Web. Las marcas HTML incluyen "elementos" especiales como `<head>`, `<title>`, `<body>`, `<header>`, `<footer>`, `<article>`, `<section>`, `<p>`, `<div>`, `<span>`, `<img>`, `<aside>`, `<audio>`, `<canvas>`, `<datalist>`, `<details>`, `<embed>`, `<nav>`, `<output>`, `<progress>`, `<video>`, `<ul>`, `<ol>`, `<li>` y muchos otros.

Un elemento HTML se distingue de otro texto en un documento mediante "etiquetas", que consisten en el nombre del elemento rodeado por "`<`" y "`>`". El nombre de un elemento dentro de una etiqueta no distingue entre mayúsculas y minúsculas. Es decir, se puede escribir en mayúsculas, minúsculas o una mezcla. Por ejemplo, la etiqueta `<title>` se puede escribir como `<Title>`, `<TITLE>` o de cualquier otra forma.

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

    <p id="bienvenida">¡Bienvenido!</p>

  </body>
</html>
```

### Nomenclatura HTML

- **Elemento**: Los elementos HTML son los componentes básicos de un documento HTML. En esta página que estás leyendo, por ejemplo, el título, un párrafo y una imagen son elementos H1, P e IMG, respectivamente. No todos los tipos de elemento son visibles: algunos tienen como única función agrupar a otros elementos, por ejemplo.
- **Etiqueta**: Las etiquetas HTML son los códigos que se usan en el código fuente para declarar y delimitar cada uno de los elementos. Por ejemplo, el elemento P (párrafo) comienza siempre con la etiqueta de apertura `<p>` y suele terminar con la etiqueta de cierre `</p>`. Algo así: `<p>Hola, mundo.</p>`.
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

HTML ("Hypertext Markup Language") no es un lenguaje de programación. Es un lenguaje de marcado que le dice a los navegadores web cómo estructurar las páginas web que estás visitando. Puede ser tan complejo o tan simple como desee el desarrollador web. El HTML consiste en una serie de elementos, que puedes utilizar para encerrar, delimitar o marcar diferentes partes del contenido para hacer que aparezcan de una cierta manera, o actúen de determinada forma. Las etiquetas que delimitan un fragmento de contenido pueden hacer que dicho contenido enlace con otra página, ponga una palabra en cursiva, etcétera. Por ejemplo, dada la siguiente línea de contenido:

<iframe width="560" height="315" src="https://www.youtube.com/embed/b6sNxnldPhU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

  </div>
</details>


## Bibliografía

- [HTML: Lenguaje de etiquetas de hipertexto](https://developer.mozilla.org/es/docs/Web/HTML)
- [HTML Tutorial](https://www.w3schools.com/html/)
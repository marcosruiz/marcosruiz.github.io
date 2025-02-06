---
title: "¿Qué es el DOM?"
date: 2024-10-20 9:00:00 +0100
categories: [Derrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/dom-javascript/
---

{:.section}
## Introducción

El Modelo de Objetos del Documento (DOM), permite ver el mismo documento HTML de otra manera, describiendo el contenido del documento como un árbol de nodos, sobre los que un programa de Javascript puede interactuar.

![Estructura DOM simple](que-es-dom-1.png)
_Estructura DOM simple_

![Estructura DOM más detallada](estructuraDom.png)
_Estructura DOM más detallada_

El DOM (Document Object Model) es una interfaz de programación que permite a los scripts actualizar el contenido, la estructura y el estilo de un documento mientras este se está visualizando en el navegador.

(Voluntario) Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/z1a0eHWn5ds?si=-OB1766ZyOHra6yS" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un objeto?</summary>
  <div class="card-body" markdown="1">

Definimos como objeto, una entidad con una serie de propiedades que definen su estado, y unos métodos (funciones), que actúan sobre esas propiedades.

La forma de acceder a una propiedad de un objeto es la siguiente:

```javascript
nombreObjeto.propiedad
```

La forma de acceder a un método de un objeto es la siguiente:

```javascript
nombreObjeto.metodo([parámetros opcionales])
```

Como puedes ver, los parámetros van entre corchetes, indicando que son opcionales y que dependerán del método al que estemos llamando.

También podemos referenciar a una propiedad de un objeto, por su índice en la creación. Los índices comienzan por 0.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo una propiedad que un método?</summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Objeto document

El objeto `document` representa cualquier página web cargada en el navegador y sirve como punto de acceso a todos los elementos HTML, que es el árbol DOM (Document Object Model). Es decir, el objeto global `document` sirve de punto de entrada al DOM.

Cada documento cargado en una ventana del navegador, será un objeto de tipo `object` a la vez que una instancia de `Document`.

El objeto `document` proporciona a los scripts, el acceso a todos los elementos HTML dentro de una página.

Este objeto forma parte además del objeto `window`, y puede ser accedido a través de la propiedad `window.document` o directamente `document` (ya que podemos omitir la referencia a la `window` actual).

{:.subsection}
### Colecciones del objeto document

| Colección   | Descripción                                                    |
| ----------- | -------------------------------------------------------------- |
| `anchors[]` | Es un array que contiene todos los hiperenlaces del documento. |
| `forms[]`   | Es un array que contiene todos los formularios del documento.  |
| `images[]`  | Es un array que contiene todas las imágenes del documento.     |
| `links[]`   | Es un array que contiene todos los enlaces del documento.      |

{:.subsection}
### Propiedades del objeto document

| Propiedad  | Descripción                                                                          |
| ---------- | ------------------------------------------------------------------------------------ |
| `cookie`   | Devuelve todos los nombres/valores de las cookies en el documento.                   |
| `domain`   | Cadena que contiene el nombre de dominio del servidor que cargó el documento.        |
| `referrer` | Cadena que contiene la URL del documento desde el cuál llegamos al documento actual. |
| `title`    | Devuelve o ajusta el título del documento.                                           |
| `URL`      | Devuelve la URL completa del documento.                                              |

{:.subsection}
### Métodos del objeto document

| Método                   | Descripción                                                                                             |
| ------------------------ | ------------------------------------------------------------------------------------------------------- |
| `close()`                | Cierra el flujo abierto previamente con `document.open()`.                                              |
| `getElementById()`       | Para acceder a un elemento identificado por el id escrito entre paréntesis.                             |
| `getElementsByName()`    | Para acceder a los elementos identificados por el atributo name escrito entre paréntesis.               |
| `getElementsByTagName()` | Para acceder a los elementos identificados por el tag o la etiqueta escrita entre paréntesis.           |
| `open()`                 | Abre el flujo de escritura para poder utilizar `document.write()` o `document.writeln` en el documento. |
| `write()`                | Para poder escribir expresiones HTML o código de JavaScript dentro de un documento.                     |
| `writeln()`              | Lo mismo que `write()` pero añade un salto de línea al final de cada instrucción.                       |

(Voluntario) En el artículo de W3Schools [HTML DOM Documents](https://www.w3schools.com/jsref/dom_obj_document.asp) amplía información sobre el objeto `document`.

{:.section}
## Buscar nodos en el DOM

Para manipular elementos del DOM, primero debemos encontrarlos. Los métodos más comunes son:

- `document.getElementById(id)`: Encuentra un elemento por su ID.
- `getElementsByTagName(tag)`: Encuentra todos los elementos con un nombre de etiqueta específico.
- `getElementsByName(name)`: Encuentra todos los elementos con un nombre especificado.
- `querySelector(selector)`: Devuelve el primer elemento que coincide con un selector CSS.
- `querySelectorAll(selector)`: Devuelve todos los elementos que coinciden con un selector CSS.

```javascript
let element = document.getElementById('exampleId');
let elements = document.getElementsByTagName('p');
let elementByName = document.getElementsByName('exampleName');
let firstElement = document.querySelector('.exampleClass');
let allElements = document.querySelectorAll('.exampleClass');
```

A menudo, necesitamos acceder a un nodo específico a partir de uno ya existente en el DOM. Para esto, podemos utilizar los siguientes métodos aplicados a un elemento del árbol DOM:

- `elemento.parentElement`: retorna el elemento padre del nodo actual.
- `elemento.children`: retorna una colección de todos los elementos hijos del nodo actual (sólo elementos HTML, no incluye comentarios ni nodos de texto).
- `elemento.childNodes`: retorna una colección de todos los nodos hijos, incluyendo comentarios y nodos de texto, por lo cual no se usa frecuentemente.
- `elemento.firstElementChild`: retorna el primer hijo que es un elemento HTML.
- `elemento.firstChild`: retorna el primer nodo hijo, incluyendo nodos de texto o comentarios.
- `elemento.lastElementChild`: similar a `firstElementChild`, pero retorna el último hijo elemento HTML.
- `elemento.lastChild`: similar a `firstChild`, pero retorna el último nodo hijo.
- `elemento.nextElementSibling`: retorna el siguiente hermano que es un elemento HTML.
- `elemento.nextSibling`: retorna el siguiente nodo hermano, incluyendo nodos de texto o comentarios.
- `elemento.previousElementSibling`: similar a `nextElementSibling`, pero retorna el hermano anterior que es un elemento HTML.
- `elemento.previousSibling`: similar a `nextSibling`, pero retorna el nodo hermano anterior.
- `elemento.hasChildNodes()`: indica si el nodo tiene nodos hijos.
- `elemento.childElementCount`: retorna el número de elementos hijos.
- `elemento.closest(selector)`: retorna el ancestro más cercano que coincide con el selector dado. Por ejemplo, si el elemento es un `<td>` dentro de una tabla, `elemento.closest('table')` retornará la tabla a la que pertenece.

El DOM proporciona accesos directos (atajos) para obtener elementos comunes:

- `document.documentElement`: obtiene el nodo del elemento `<html>`.
- `document.head`: obtiene el nodo del elemento `<head>`.
- `document.body`: obtiene el nodo del elemento `<body>`.
- `document.title`: obtiene el nodo del elemento `<title>`.
- `document.links`: obtiene una colección de todos los hipervínculos del documento.
- `document.anchors`: obtiene una colección de todas las anclas del documento.
- `document.forms`: obtiene una colección de todos los formularios del documento.
- `document.images`: obtiene una colección de todas las imágenes del documento.
- `document.scripts`: obtiene una colección de todos los scripts del documento.

<details class="card mb-2">
  <summary class="card-header question" markdown="1">
  
  ¿Qué tipo de dato es `document.body`?
  
  </summary>
  <div class="card-body" markdown="1">

Es un objeto tipo `Object` y también una instancia de `HTMLBodyElement`. `HTMLBodyElement` hereda de `HTMLElement` que hereda de `Element` que hereda de `Node` que hereda de `EventTarget`:

```javascript
console.log(typeof document.body) // object
console.log(document.body instanceof HTMLBodyElement); // true
console.log(document.body instanceof HTMLElement); // true
console.log(document.body instanceof Element); // true
console.log(document.body instanceof Node); // true
console.log(document.body instanceof EventTarget); // true
```

La estructura de clases del elemento `document.body` que es del tipo `HTMLBodyElement` se puede ver a continuación:

![Jerarquía de clases del DOM](jerarquiaClasesDom.png)
_Jerarquía de clases del DOM_

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Modificar nodos del DOM

Una vez que hemos encontrado los nodos, podemos modificarlos. Algunos métodos útiles incluyen:

- `.innerHTML`, `.innerText`, `.outerHTML`: Para cambiar el contenido HTML o texto de un elemento.
- `.insertAdjacentHTML(position, text)`: Inserta texto HTML en una posición específica.
- `.append(content, element)`, .`prepend(content, element)`: Añade contenido al principio o al final de un elemento.
- `.after()`, `.before()`: Inserta un elemento antes o después del elemento actual.
- `.cloneNode(deep)`: Clona un nodo, con o sin sus hijos.
- `.remove()`: Elimina un nodo.

Métodos más antiguos pero aún en uso incluyen `removeChild()` y `appendChild()`.

```javascript
let element = document.getElementById('exampleId');
element.innerHTML = 'Nuevo contenido';
element.insertAdjacentHTML('beforeend', '<p>Más contenido</p>');
element.append('Texto adicional');
element.remove();
```

{:.subsection}
### Atributos

Los elementos suelen tener atributos. Algunos son especiales como el id o la class. El id está accesible directamente como atributo del elemento, así como el className, aunque luego veremos que es mejor manipularlo de otra manera. Otros atributos como value en los `Input` o `scr` en los `<img>` también pueden ser leídos y modificados como propiedades. Se trata de los atributos estándar.

Para los atributos que no tienen acceso directo porque no son estándar, podemos usar `setAttribute()`, `getAttribute()`, `hasAttribute()` o `removeAttribute()`:

```javascript
const button = document.querySelector("button");

button.setAttribute("name", "helloButton");
button.setAttribute("disabled", "");
```

{:.subsection}
### Propiedades

Puesto que los elementos HTML al ser parseados y convertidos al DOM se convierten en objetos, estos son manipulables como cualquier objeto, pudiendo añadir o modificar propiedades, incluso aquellas que vienen en el HTML como atributos estándar.

Atributos como `id` se sincronizan perfectamente con la propiedad. Otros como `value` no se sincronizan directamente. Lee <https://es.javascript.info/dom-attributes-and-properties#sincronizacion-de-propiedad-y-atributo> si quieres saber más.

Hay unos atributos que se sincronizan de forma especial con las propiedades. Son los que comienzan por `data-`, que se guardan en un objeto `.dataset` del elemento en el DOM.

<details class="card mb-2">
  <summary class="card-header question">¿Qué diferencia hay entre un atributo y una propiedad?</summary>
  <div class="card-body" markdown="1">

- **Atributos**: es lo que está escrito en HTML.
- **Propiedades**: es lo que hay en los objetos DOM.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### Estilos

Para manipular los estilos de un elemento, podemos usar propiedades de estilo y clases CSS.

- `.style.property`: Modifica un estilo CSS directamente.
- `.className`: Cambia el nombre de la clase del elemento.
- `.classList.add()`, .`classList.toggle()`, `.classList.remove()`, `.classList.replace()`: Métodos para manipular clases CSS de manera más dinámica.

```javascript
let element = document.getElementById('exampleId');
element.style.color = 'blue';
element.classList.add('new-class');
element.classList.remove('old-class');
```

`ClassName` no debería usarse, ya que puede molestar si se usa classList por otro lado. Usaremos classList en todas las ocasiones excepto para eliminar todas las clases.

{:.section}
## Creación de nodos

Se pueden crear elementos totalmente de forma programática. Pero puede ser tedioso. Muchas veces, si sabemos que hay fragmentos de HTML bastante estáticos, podemos usar `innerHTML` y `.append()` con plantillas creadas mediante strings.

Para crear elementos del DOM mediante plantillas hay muchas formas. Obviaremos las más farragosas y nos centraremos en aquellas que son más rápidas.

{:.subsection}
### Creación de elementos con Template Literals

Los template literals y las interpolaciones de cadenas permiten crear contenido dinámico de manera sencilla.

```javascript
function generateGraphCard(graph) {
    let cardTemplate = document.createElement('div');
    cardTemplate.classList.add('col');
    cardTemplate.innerHTML = `
        <div class="card">
            <div class="card-header">${graph.title}</div>
            <div class="card-body">
                <div class="graph"></div>
                <p class="card-text">${graph.description}</p>
                <a href="#/graph/${graph.id}" class="btn btn-primary">Full screen</a>
            </div>
        </div>`;
    let graphContainer = cardTemplate.querySelector('.graph');
    graphContainer.append(graph.Data ? generateBarGraph(graph.Data) : graphPlaceholder());
    return cardTemplate;
}
```

{:.question}
¿Que tipo de objeto debería ser el atributo/parámetro `graph`?

{:.subsection}
### Creación de elementos con template

La etiqueta `<template>` es especial. Su interior no se renderiza como el resto, pero queda accesible para ser buscado. La utilidad es crear plantillas en HTML que puedan ser clonadas y rellenadas como se desee.

Veamos este HTML extraído de la web de referencia: <https://developer.mozilla.org/en-US/docs/Web/HTML/Element/template>:

```javascript
<table id="producttable">
  <thead>
    <tr>
      <td>UPC_Code</td>
      <td>Product_Name</td>
    </tr>
  </thead>
  <tbody>
    <!-- datos opcionales pueden incluirse aquí opcionalmente -->
  </tbody>
</table>

<template id="productrow">
  <tr>
    <td class="record"></td>
    <td></td>
  </tr>
</template>
```

Y con este javascript obtenemos el contenido del template, se clona y se rellena las veces que sea necesario:

```javascript
// Test to see if the browser supports the HTML template element by checking
// for the presence of the template element's content attribute.
if ("content" in document.createElement("template")) {
  // Instantiate the table with the existing HTML tbody
  // and the row with the template
  const tbody = document.querySelector("tbody");
  const template = document.querySelector("#productrow");

  // Clone the new row and insert it into the table
  const clone = template.content.cloneNode(true);
  let td = clone.querySelectorAll("td");
  td[0].textContent = "1235646565";
  td[1].textContent = "Stuff";

  tbody.appendChild(clone);

  // Clone the new row and insert it into the table
  const clone2 = template.content.cloneNode(true);
  td = clone2.querySelectorAll("td");
  td[0].textContent = "0384928528";
  td[1].textContent = "Acme Kidney Beans 2";

  tbody.appendChild(clone2);
} else {
  // Find another way to add the rows to the table because
  // the HTML template element is not supported.
}
```

Cualquiera de las formas que hemos visto para crear elementos, mediante template literal o con templates es válida y combinable.

{:.section}
## Esperar a que Cargue el DOM

Podemos asegurarnos de que el DOM esté completamente cargado antes de ejecutar nuestro script utilizando `DOMContentLoaded` de la siguiente manera:

```javascript
(function () {
    "use strict";
    document.addEventListener("DOMContentLoaded", function () {
        for (let i = 0; i < 100; i++) {
            let container = document.getElementById("content");
            let number = document.createElement("p");
            number.innerHTML = i;
            container.appendChild(number);
        }
    });
})();
```

También podemos colocar nuestro script al final del cuerpo (`body`) del documento HTML.

Si, además, añadimos el atributo `defer` a un script, este se descargará de manera asíncrona y se ejecutará cuando el HTML haya sido totalmente interpretado y justo antes que `DOMContentLoaded`.

Si es necesario esperar a que cargue también todo el CSS, es decir el `CSSOM`, podemos recurrir al evento `load`, que espera a cargar e interpretar todo el CSS. Pero si no es necesario, es mejor esperar sólo al DOM. Esto es porque hay recursos muy pesados como imágenes o vídeos que puede incluso que no lleguen a cargar.

En general, recomendaremos usar `DOMContentLoaded` en vez de poner el script al final o `load` porque al ser ejecutado al principio, ya hay cosas que se puede ir ejecutando sin necesidad de DOM antes de que cargue totalmente. En cualquier caso, los script en Módulos siempre se ejecutan en modo `defer`.

<details class="card mb-2">
  <summary class="card-header question">¿Qué es el CSSOM?</summary>
  <div class="card-body" markdown="1">

El CSSOM (CSS Object Model) es una representación estructurada en forma de árbol de las reglas CSS de una página web, similar al DOM (Document Object Model) que estructura el HTML. El CSSOM se crea en el navegador cuando este procesa las hojas de estilo CSS vinculadas al HTML. Su propósito es permitir a los navegadores manipular y aplicar los estilos de manera dinámica mediante JavaScript.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Para qué sirve la instrucción `"use strict"`?</summary>
  <div class="card-body" markdown="1">

La instrucción `"use strict"` en JavaScript activa el modo estricto en el código, lo que ayuda a escribir un código más seguro y menos propenso a errores. Al utilizar `"use strict"`, el intérprete de JavaScript aplica reglas más estrictas y lanza errores en situaciones que normalmente pasaría por alto en el modo normal (o no estricto).

En resumen, cuando no usamos el strict mode pasan cosas como las que relata esta persona:

![Ejemplo de problemas al no usar el modo estricto](noStrictMode.png)
_Ejemplo de problemas al no usar el modo estricto_

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### Atributos de Datos

HTML5 permite agregar atributos personalizados no visuales a las etiquetas utilizando data-*. Estos atributos pueden ser accesibles a través de JavaScript usando dataset.

```html
<article
    id="electriccars"
    data-columns="3"
    data-index-number="12314"
    data-parent="cars">
    ...
</article>
```

```javascript
let article = document.getElementById('electriccars');
console.log(article.dataset.columns); // 3
console.log(article.dataset.indexNumber); // 12314
```

## Bibliografía

- <https://lenguajejs.com/dom/>
- <https://xxjcaxx.github.io/libro_dwec/dom.html>
- <https://lenguajejs.com/>
- <https://learnxinyminutes.com/docs/es-es/javascript-es/>
- <https://manuais.iessanclemente.net/index.php/Objetos_de_m%C3%A1s_alto_nivel_en_JavaScript>
- <https://developer.mozilla.org/es/docs/Web/API/Document>

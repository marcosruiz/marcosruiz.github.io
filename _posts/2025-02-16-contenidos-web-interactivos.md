---
title: "Contenidos web interactivos"
date: 2025-02-16 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/contenidos-web-interactivos/
---

{:.section}
## Elementos interactivos básicos

Un elemento interactivo es aquel que cambia cuando el usuario interactúa con él. Los elementos interactivos los siguientes:

- Los enlaces. Todos los elementos ancla del HTML , son elementos interactivos, puesto que, aunque no se definan estilos para ellos, el color que muestran al principio, cuando se hace clic sobre ellos y después de ser visitados, es diferente. Además una vez que se pulsa un enlace, debería haber algún cambio en la página.
- Todos los objetos propios de los formularios son elementos interactivos:
  - La cajas de texto.
  - Los botones de opción.
  - Las casillas de verificación.
  - Las áreas de texto.
  - Las listas de opciones.
  - Los botones.

## Comportamientos interactivos

Para añadir un comportamiento interactivo a los elementos podemos hacer uso de:

- Las reglas de estilo (CSS).
- Los lenguajes de programación dinámicos (JavaScript).

### Las reglas de estilo

En CSS nos podemos servir de las pseudoclases `link`, `visited`, `hover`, `active`, `focus` que ya hemos visto para añadir interactividad a nuestra web generando elementos interactivos avanzados como:

1. Mapas interactivos. Ejemplo: <http://green-beast.com/experiments/css_map_pop.php.html>
1. Menús de navegación. Ejemplo: <https://codepen.io/jesusmaes/pen/ExExZge>
1. Alternancia de imágenes. Ejemplo: <https://codepen.io/mehkera2/pen/qBNGxye>
1. Galería de imágenes. Ejemplos:
   1. <https://www.cssplay.co.uk/menu/cssplay-momentum-swipe-gallery-v2.html>
   1. <https://www.cssplay.co.uk/menu/cssplay-horizontal-vertical-sticky-grid-gallery.html>
   1. <https://www.cssplay.co.uk/menu/cssplay-columns-gallery-with-popover.html>
   1. <https://www.cssplay.co.uk/menu/cssplay-vertical-snap-horizontal-scrolling.html>

> Puedes buscar ejemplos de todo tipo buscando en <https://codepen.io>, <https://www.cssplay.co.uk>, <https://css-tricks.com/>, <https://tympanus.net/codrops/>, etc.
{:.prompt-info}

![imgDescription](css_map_pop.gif)
_Ejemplo de mapa interactivo_

![imgDescription](menuNavegacion01.gif)
_Ejemplo de menú de navegación_

![imgDescription](menuNavegacion02.gif)
_Ejemplo de menú de navegación_

![imgDescription](alternanciaDeImagenes.gif)
_Ejemplo de alternancia de imágenes_

![imgDescription](cssplay-momentum-swipe-gallery-v2.gif)
_Ejemplo de galería de imágenes_

![imgDescription](cssplay-horizontal-vertical-sticky-grid-gallery.gif)
_Ejemplo de Galería de imágenes_

![imgDescription](cssplay-columns-gallery-with-popover.gif)
_Ejemplo de galería de imágenes_

![imgDescription](cssplay-vertical-snap-horizontal-scrolling.gif)
_Ejemplo de galería de imágenes_

{:.question}
¿Qué diferencia hay entre una pseudoclase y un pseudoelemento?

<details class="card mb-2">
  <summary class="card-header question">El título incluido dentro de una etiqueta del HTML <h1> ¿es un elemento interactivo?
</summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Acceso a elementos del DOM

> A partir de aquí empezamos a mezclar la teoría de DIW con la de DWEC.
{:.prompt-warning}

Para comportamientos interactivos más avanzados debemos acceder al DOM mediante JavaScript.

Lee el artículo [¿Qué es el DOM?](/posts/dom-javascript) si no sabes o no recuerdas la manera de acceder al DOM mediante JavaScript y el objeto `document`.

## Ejecución de JavaScript para validar formularios

Con JavaScript puedes modificar el comportamiento de los elementos del DOM cambiando sus propiedades.

Lee el artículo [Integración de código JavaScript](/posts/integracion-codigo-javascript) si no sabes o no recuerdas como integrar código JavaScript en documentos HTML.

La validación de datos de formularios es uno de los usos más habituales de Javascript. Lee el artículo [Validación de formularios en JavaScript](/posts/validacion-formularios-javascript) si no sabes o no recuerdas la manera de validar formularios con JavaScript.

<details class="card mb-2">
  <summary class="card-header question">¿El uso de Javascript es la única manera de proporcionar interactividad a una página?
</summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Reproducción de sonido, vídeo y animación

Todos los sistemas operativos actuales permiten al usuario tomar la decisión de ver o no las imágenes, o reproducir o no los sonidos y/o las animaciones. En definitiva, es el usuario el que sabe lo que le interesa de un determinado sitio web.

El hecho de desactivar estas opciones mejora la experiencia visual de las personas con problemas de visión o de aquellas a las que las imágenes demasiado llamativas les producen molestias. Y la velocidad de descarga de la página mejora sustancialmente.

Los recursos gráficos siempre es mejor utilizarlos como complemento del contenido y no como elemento decorativo.

## Drag & drop

El drag & drop es una forma de simplificar los interfaces de usuario.

En el drag & drop siempre hay 2 elementos HTML que son:

- El elemento que se arrastra.
- El elemento donde se suelta.

Respecto a los eventos, hay 3 eventos en un drag & drop:

- `ondragstart`: Cuando se empieza a arrastrar
- `ondragover`: Cuando se está sobre el elemento donde se quiere soltar (pero sin soltarlo)
- `ondrop`: Cuando se suelta.

Por último está:

- La propiedad `draggable` que indica si un elemento se puede arrastrar.
- El objeto de JavaScript `dataTransfer` que es donde se almacena lo que que se está arrastrando.

(Voluntario) Tienes más información sobre el drag & drop en <http://www.w3schools.com/html/html5_draganddrop.asp>.

También tienes dos librerías para crear elementos drag and drop más fácilmente:

- La librería de alto nivel [Dragula](https://bevacqua.github.io/dragula/).
- La librería de bajo nivel [InteractJS](https://interactjs.io/).

## Funcionamiento de drag and drop en JavaScript

Para explicar como funciona drag & drop, vamos a usar el siguiente ejemplo:

```html
<!DOCTYPE HTML>
<html>

<head>
  <style>
    .destino {
      width: 350px;
      height: 70px;
      border: 1px solid #aaaaaa;
    }
  </style>
  <script>
    function onDragStart(ev) {
      var element = ev.target;
      var data = element.innerText;

      ev.dataTransfer.setData("text/plain", data);
    }

    function onDrop(ev) {
      ev.preventDefault();

      var element = ev.target;
      var data = ev.dataTransfer.getData("text/plain");

      element.innerText = data;
    }

    function onDragOver(ev) {
      ev.preventDefault();
    }
  </script>
</head>

<body>

  <p>Arrastra aquí la pieza a reparar:</p>
  <p class="destino" ondrop="onDrop(event)" ondragover="onDragOver(event)"></p>

  <ul>
    <li draggable="true" ondragstart="onDragStart(event)">Disco duro</li>
    <li draggable="true" ondragstart="onDragStart(event)">Procesador</li>
    <li draggable="true" ondragstart="onDragStart(event)">Memoria RAM</li>
    <li draggable="true" ondragstart="onDragStart(event)">Placa base</li>
  </ul>

</body>

</html>
```

- Atributo `draggable="true"`: Permite que ese elemento pueda ser arrastrado.
- Evento `ondragstart`: Función que se ejecuta al empezar a arrastrar el elemento.
  - `ev.target`: Obtenemos el elemento que se está arrastrando.
  - `ev.dataTransfer.setData("text", data)`: Guardamos la información de lo que se está arrastrando.
- Evento `ondragover`: Se ejecuta cuando hay algo arrastrándose sobre él , pero aun no se ha soltado. Se usa para indicar si se puede soltar sobre él. En caso de que si se pueda, habrá que llamar a la función ev.preventDefault();
- Evento `ondrop`: Se ejecuta cuando se ha soltado el elemento sobre él.
  - `ev.target`: Elemento donde se ha soltado
  - `ev.dataTransfer.getData("text")`: Obtenemos la información de lo que se estaba arrastrando.

### El objeto dataTransfer

El objeto `dataTransfer` es donde se almacena lo que que se está arrastrando.

Para guardar el dato, se usa:

```javascript
ev.dataTransfer.setData("text/plain", data);
```

Para obtener el dato, se usa:

```javascript
var data = ev.dataTransfer.getData("text/plain");
```

Sin embargo , podemos pensar que no es muy útil ya que se podría usar directamente una variable de JavaScript. En ese caso vamos a usar una variable global llamada data y el código quedaría así:

```javascript
var dragData = "";

function onDragOver(ev) {
  ev.preventDefault();
}

function onDragStart(ev) {
  var element = ev.target;
  dragData = element.innerText;
}

function onDrop(ev) {
  ev.preventDefault();
  var element = ev.target;
  element.innerText = dragData;
}
```

<details class="card mb-2">
  <summary class="card-header question">¿Cuál es la diferencia entre usar dataTransfer y una variable de JavaScript dragData?</summary>
  <div class="card-body" markdown="1">

Usando `dataTransfer` podemos hacer el Drag & Drop entre aplicaciones y con la variable no podemos hacer eso.

Sin embargo la ventaja de usar la variable es que podemos almacenar mas cosas que un simple texto.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://logongas.es/doku.php?id=clase:daw:diw:2eval:tema06>
- <https://logongas.es/doku.php?id=clase:daw:diw:2eval:tema07>
- <https://kinsta.com/es/blog/diseno-de-paginas-web-sensibles/>
- <https://www.cssplay.co.uk/>

Drag and drop:

- <http://www.w3schools.com/html/html5_draganddrop.asp>
- <https://bevacqua.github.io/dragula/>
- <https://interactjs.io/>

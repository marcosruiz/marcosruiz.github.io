---
title: "Eventos en JavaScript"
date: 2024-10-25 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec, teoría, eventos, handlers, manejadores, javascript]
img_path: /assets/img/eventos-javascript/
---

{:.section}
## Introducción

Los eventos y los manejadores (handlers) son elementos para capturar interacciones del usuario y realizar acciones en respuesta a estas interacciones.

Los eventos en JavaScript permiten capturar desde movimientos del mouse hasta pulsaciones de teclado y manipular el contenido y comportamiento de la página en respuesta a estas interacciones.

{:.section}
## Eventos (Events)

Los eventos son mecanismos que se activan cuando el usuario interactúa con la página web. Estas interacciones pueden ser clics del ratón, pulsaciones de teclado, desplazamientos, cambios en el tamaño de la ventana, etc. Los eventos permiten que JavaScript responda dinámicamente a las acciones del usuario.

Características principales:

- Son disparados por el navegador o por el usuario.
- Pueden estar relacionados con elementos específicos del DOM, como un botón o un campo de entrada.
- El objeto `Event` contiene información detallada sobre el evento que ocurrió, como qué elemento lo originó y detalles específicos del tipo de evento.

Lee el artículo [¿Qué son los eventos?](https://lenguajejs.com/javascript/eventos/que-son-eventos/)

{:.question}
¿Qué es un evento?

<details class="card mb-2">
  <summary class="card-header question">De todas las formas que tenemos para manejar eventos en JavaScript, ¿cuál es la más aconsejable por norma general?</summary>
  <div class="card-body" markdown="1">

Mediante `addEventListener()`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Manejadores (Handlers)

Un manejador, o handler en inglés, es una función que se ejecuta cuando ocurre un evento específico. Cada tipo de evento (como `click`, `submit`, `mouseover`, etc.) puede tener asociado un manejador que define qué acción debe realizarse en respuesta al evento.

Características principales:

- Es una función que se asigna a un evento particular en un elemento del DOM.
- Define la acción o comportamiento que se debe llevar a cabo cuando el evento ocurre.
- Los manejadores pueden ser definidos directamente en el HTML, usando atributos como `onclick`, o pueden ser asignados dinámicamente desde JavaScript.

{:.section}
## Ejemplo de uso en HTML y JavaScript

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eventos y Manejadores</title>
</head>
<body>
    <button id="myButton">Haz clic aquí</button>

    <script src="script.js"></script>
</body>
</html>
```

```javascript
// Obtener referencia al botón
const button = document.getElementById('myButton');

// Definir el manejador para el evento 'click'
function handleClick(event) {
    console.log('¡Se hizo clic en el botón!');
    console.log('Detalles del evento:', event);
}

// Asignar el manejador al evento 'click' del botón
button.addEventListener('click', handleClick);
```

{:.section}
## Modelo de eventos en línea → Eventos mediante HTML (No recomendable)

(Voluntario) Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/FbO4rxuowMw?si=arBcVJvYFPMqCEXG" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Preguntas sobre el vídeo:

- ¿Qué web podemos usar para consultar todos los eventos que existen?
- ¿A qué hace referencia la palabra clave `this`?
- ¿Qué alternativa existe al uso de `this`?
- ¿La función `cambiar` debe declararse antes de usarse?
- ¿Hay acciones que desencadenan varios eventos?
- ¿Cómo podemos hacer para que un elemento `href` no ejecute la acción por defecto?
- ¿Qué permite hacer el atributo `onload` del `body`?
- ¿Es recomendable usar el modelo de eventos en línea? ¿Por qué?

A continuación, se muestra un ejemplo en HTML:

```html
<p onmouseover="this.style.background='#FF0000';" onmouseout="this.style.background='#FFFFFF';">HOLA</p>
```

Este método incrusta el código JavaScript directamente en el atributo `onmouseover` y `onmouseout` del elemento `<p>`. Aunque es simple, no se recomienda porque mezcla lógica de presentación con el contenido y dificulta el mantenimiento.

(Voluntario) Lee el artículo [Eventos mediante HTML](https://lenguajejs.com/javascript/eventos/eventos-html/)

{:.question}
¿Qué atributo tenemos que añadir al elemento button para que dispare un evento de click?

{:.question}
¿Qué fallo tiene la siguiente línea de código: `<button onClick="alert("Hello!")">Saludar</button>`?

<details class="card mb-2">
  <summary class="card-header question">¿Es HTML case-sensitive?</summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Es JavaScript case-sensitive?</summary>
  <div class="card-body" markdown="1">

Si.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">En general, ¿es buena práctica incluir llamadas a funciones JavaScript en nuestro código HTML?</summary>
  <div class="card-body" markdown="1">

No. Es mejor localizar los elementos HTML desde el fichero JS.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Modelo de eventos tradicional → Eventos mediante JavaScript

(Voluntario) Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/w_dHL9arm6g?si=5abKbNBtYOBUyl-f" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Preguntas a responder tras la visualización del vídeo:

1. ¿Cómo cambiamos el contenido de un elemento HTML?
1. ¿Cómo podemos hacer que un evento `onclick` se ejecute una y solo una vez?
1. ¿Es necesario tener un elemento `button` o un `input` para ocurra el evento `onclick`?
1. ¿Es necesario que se cargue completamente la página para ejecutar las funciones DOM que asignan manejadores a los elementos HTML?
1. ¿Cuál de las siguientes es la forma correcta de asociar un evento: 1.
   1. `.onclick = miMensaje`
   1. `.onclick = miMensaje()`
1. ¿Es recomendable usar el modelo de eventos tradicional? ¿Por qué?

Para manejar eventos de manera más estructurada y mantenible, se utiliza el método tradicional de registrar eventos en JavaScript:

```javascript
window.onload = function() {
   document.getElementById('hola').onmouseover = function() {
       this.style.background = '#FF0000';
   };
   document.getElementById('hola').onmouseout = function() {
       this.style.background = '#FFFFFF';
   };
};
```

Aquí, se espera a que la ventana y todos los recursos se carguen completamente (`window.onload`) antes de asignar los manejadores de eventos `onmouseover` y `onmouseout` al elemento con `id` hola. Sin embargo, esta técnica tiene limitaciones, como la incapacidad de asignar múltiples manejadores a un mismo evento.

(Voluntario) Lee el artículo [Eventos mediante JavaScript](https://lenguajejs.com/javascript/eventos/eventos-javascript/)

{:.question}
¿Qué diferencia hay entre una propiedad y una función en JavaScript?

{:.question}
En JavaScript, la propiedad `.onclick` ¿puede ir en mayúsculas y minúsculas indistintamente? Es decir, ¿puedo escribir tanto `.onclick` como `.onClick`?

{:.section}
## Registro avanzado del W3C → El método addEventListener

(Voluntario) Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/nLyhVCCb9dc?si=mn3fxoJ6IBX_Mh_f" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Cuál es la forma correcta de añadir el evento de click?
   1. `document.getElementById("w3c").addEventListener(onclick, saludarUnaVez, false)`
   1. `document.getElementById("w3c").addEventListener("click", saludarUnaVez, false)`
   1. `document.getElementById("w3c").addEventListener("click", saludarUnaVez(), false)`
   1. `document.getElementById("w3c").addEventListener("click", "saludarUnaVez()", false)`
   1. `document.getElementById("w3c").addEventListener("onclick", saludarUnaVez, false)`
   1. `document.getElementById("w3c").addEventListener(onclick(), saludarUnaVez(), false)`
1. ¿Podemos añadir al mismo elemento dos eventos de diferente tipo al mismo tiempo?
1. ¿Podemos añadir al mismo elemento dos eventos del mismo tipo al mismo tiempo?
1. ¿Cuál es la función para borrar un `EventListener`?
   1. `.deleteEventListener()`
   1. `.delEventListener()`
   1. `.archiveEventListener()`
   1. `.removeEventListener()`

El método recomendado para registrar eventos es usando `addEventListener`, que ofrece más flexibilidad y mejores prácticas:

```javascript
(function() {
   "use strict";
   document.addEventListener("DOMContentLoaded", function() {
       document.getElementById('hola').addEventListener('mouseover', function() {
           this.style.background = '#FF0000';
       }, false);
       document.getElementById('hola').addEventListener('mouseout', function() {
           this.style.background = '#FFFFFF';
       }, false);
   });
})();
```

Aquí, `addEventListener` permite agregar múltiples manejadores para el mismo evento, separando la lógica de la presentación del HTML.

<details class="card mb-2">
  <summary class="card-header question">¿Qué formas tenemos de manejar eventos en JavaScript?</summary>
  <div class="card-body" markdown="1">

- Mediante atributos HTML. Por ejemplo: `<button onClick="..."></button>`.
- Mediante propiedades Javascript. Por ejemplo: `.onclick = function() { ... }`.
- Mediante `addEventListener()`. Por ejemplo: `.addEventListener("click", ...)`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

(Voluntario) Lee el artículo [El método addEventListener](https://lenguajejs.com/javascript/eventos/addeventlistener/)

<details class="card mb-2">
  <summary class="card-header question">¿Qué tres formas existen de añadir el evento de click a un botón utilizando únicamente JavaScript?</summary>
  <div class="card-body" markdown="1">

- Utilizando la propiedad de JavaScript `onclick`.
- Utilizando la función `setAttribute()`.
- Utilizando la función `addEventListener()`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question" markdown="1">
  
  ¿Es necesario que la función que pasamos como parámetro a la función `addEventListener()` tenga nombre?
  
</summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question" markdown="1">
  
  ¿Se pueden añadir varios listeners utilizando la función `.addEventListener()` sobre el mismo evento de manera sencilla?
  
  </summary>
  <div class="card-body" markdown="1">

Si.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Qué hace el la opción `once` del tercer parámetro de la función `addEventListener()`?

<details class="card mb-2">
  <summary class="card-header question" markdown="1">
  
  ¿Se puede borrar una función anónima con `.removeEventListener()`?
  
  </summary>
  <div class="card-body" markdown="1">

Sólo si la hemos guardado en una variable antes de llamar a `addEventListener()`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Obtención de información del evento

```javascript
(function() {
   "use strict";
   document.addEventListener("DOMContentLoaded", function() {
       document.getElementById('hola').addEventListener('mouseover', manejador, false);
       document.getElementById('hola').addEventListener('mouseout', manejador, false);
   });

   function manejador(e) {
       console.log(e.type, e.target);
       if (e.type === 'mouseover') {
           this.style.background = '#FF0000';
       }
       if (e.type === 'mouseout') {
           this.style.background = '#FFFFFF';
       }
       if (e.target.id === 'hola') {
           console.log('¡Hola!');
       }
   }
})();
```

En este ejemplo, manejador es una función que maneja tanto el evento `mouseover` como `mouseout`. Utiliza el objeto `Event` para obtener información sobre el tipo de evento (`e.type`) y el objetivo del evento (`e.target`), que es el elemento que disparó el evento.

{:.section}
## Propagación y captura de eventos

Los eventos se propagan desde el elemento que los desencadena hacia sus elementos padre. Se puede capturar un evento durante esta propagación y realizar acciones diferentes según el elemento específico que lo desencadenó. Para detener la propagación de un evento a elementos padre, se usa `event.stopPropagation()`.

```javascript
<div id="padre">
    <div id="hijo">
        <button id="boton">Haz clic aquí</button>
    </div>
</div>
```

```javascript
document.getElementById('boton').addEventListener('click', function(event) {
    alert('Haz clic en el botón hijo');
    event.stopPropagation(); // Detiene la propagación del evento hacia arriba
});

document.getElementById('hijo').addEventListener('click', function(event) {
    alert('Haz clic en el div hijo');
});

document.getElementById('padre').addEventListener('click', function(event) {
    alert('Haz clic en el div padre');
});
```

La propagación de eventos permite que los eventos desencadenados en elementos hijos se propaguen hacia sus elementos padres. Esta característica es muy útil para enviar datos desde elementos hijos a sus elementos padres mediante eventos personalizados y es fundamental en el funcionamiento de los componentes en varios frameworks de JavaScript como React, Vue.js y Angular.

La propagación de eventos tiene dos fases principales:

- **Capturing Phase**: La fase en la que el evento se propaga desde el documento raíz hasta el objetivo del evento.
- **Bubbling Phase**: La fase en la que el evento se propaga desde el objetivo del evento hacia el documento raíz.

{:.section}
## Enviar Datos de Hijos a Padres con Eventos Personalizados

Los eventos personalizados se pueden utilizar para comunicar datos desde un componente hijo a un componente padre. A continuación se muestra un ejemplo de cómo se puede lograr esto en un entorno sin frameworks, utilizando la propagación de eventos del DOM:

```javascript
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Custom Event Example</title>
</head>
<body>
    <div id="parent"></div>
    <script>
        // Crear el elemento hijo
        const child = document.createElement('button');
        child.textContent = 'Click me';

        // Crear el elemento padre
        const parent = document.getElementById('parent');
        parent.appendChild(child);

        // Añadir un evento personalizado al hijo
        child.addEventListener('click', () => {
            const customEvent = new CustomEvent('childEvent', { 
                bubbles: true,  // para que se propague
                detail: { message: 'Hello from child' }
            });
            child.dispatchEvent(customEvent);
        });

        // Añadir un listener en el padre para capturar el evento del hijo
        parent.addEventListener('childEvent', (event) => { 
            console.log('Received message from child:', event.detail.message);
        });
    </script>
</body>
</html>
```

En este ejemplo:

- **Elemento hijo** (`child`): Cuando se hace clic en el botón, se dispara un evento personalizado `childEvent` con algunos datos en la propiedad detail.
- **Elemento padre** (`parent`): El padre escucha el evento `childEvent` y maneja los datos recibidos del hijo.

En React, los datos de un componente hijo se envían a un componente padre mediante la elevación del estado y callbacks, en lugar de utilizar directamente la propagación de eventos del DOM.

En Vue.js, la comunicación de hijos a padres se realiza mediante la emisión de eventos personalizados.

Angular También proporciona `@Output` que crea un evento que es capturado por el componente padre.

Ejercicio de eventos y propagación: <https://jsfiddle.net/xxjcaxx/wep0c2j9/1/>

{:.section}
## Tipos de eventos

Lee el artículo [Eventos de navegador: ¿Qué son?](https://lenguajejs.com/javascript/eventos-navegador/que-son/)

<details class="card mb-2">
  <summary class="card-header question">¿En qué consiste la desestructuración?</summary>
  <div class="card-body" markdown="1">

Lee el artículo [Desestructuración en JavaScript](/posts/desestructuracion-javascript).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

A continuación, nos centraremos en los eventos de teclado y eventos de puntero.

{:.subsection}
### Eventos de teclado

Los eventos de teclado (`KeyboardEvent`) permiten capturar las pulsaciones de teclas y actuar en consecuencia. Se puede obtener el código de la tecla presionada usando `event.code`, lo que proporciona una manera estandarizada de identificar cada tecla. Aquí hay ejemplo sencillo que muestra cómo capturar eventos de teclado y obtener el código de la tecla presionada usando `event.code`:

```javascript
<input type="text" id="inputTexto" placeholder="Escribe algo aquí...">
```

```javascript
document.getElementById('inputTexto').addEventListener('keydown', function(event) {
    console.log('Tecla presionada:', event.code);
});
```

(Voluntario) Lee el artículo [Eventos de teclado](https://lenguajejs.com/javascript/eventos-navegador/keyboard-event/)

<details class="card mb-2">
  <summary class="card-header question">¿Cuál es el objeto de navegador para capturar eventos del teclado?</summary>
  <div class="card-body" markdown="1">

El objeto `KeyboardEvent`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question" markdown="1">
  
  ¿Cómo podemos diferenciar entre el 7 de arriba del teclado con el 7 del numpad en un `KeyboardEvent`?
  
  </summary>
  <div class="card-body" markdown="1">

Mediante la propiedad `location`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Está el evento "keycode" obsoleto?</summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Está el evento "keydown" obsoleto?</summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Qué hace `const { key, code } = ev;`?

<details class="card mb-2">
  <summary class="card-header question">¿Cómo se llama la tecla del logo de windows en un evento de teclado de JavaScript?</summary>
  <div class="card-body" markdown="1">

La tecla del logo de Windows es llamada `metaKey`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### Eventos de puntero

Lee el artículo [Eventos de puntero](https://lenguajejs.com/javascript/eventos-navegador/pointer-event/).

<details class="card mb-2">
  <summary class="card-header question">¿Qué evento usamos para trabajar con eventos realizados por el usuario con el ratón en JavaScript?</summary>
  <div class="card-body" markdown="1">

MouseEvent, TouchEvent o PointerEvent, siendo esta última la más conveniente ya que engloba a las dos anteriores.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Sabrías decir más de 5 tipos de dispositivos apuntadores?</summary>
  <div class="card-body" markdown="1">

Ratones, trackballs, lápiz óptico, touchpad, multitouch, trackpoint, etc.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question" markdown="1">
  
  ¿Cuándo se dispara el evento `auxclick` de un `PointerEvent?`?
  
  </summary>
  <div class="card-body" markdown="1">

Cuando hacemos click con el botón derecho.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Notas finales

Cuando programamos para el Frontend, la manera de tratar el DOM es muy diversa. Si distinguimos entre una SPA y una web generada en el servidor con algo de Javascript, las técnicas son muy diferentes. En el caso de la SPA, es muy importante tener claro una arquitectura MVC o similar en la que unas plantillas se rellenen con los datos del servidor. La interactividad y el manejo de formularios se suele implementar toda en Javascript porque préviamente no habia nada de HTML. En una web más tradicional en la que el HTML ya está generado por el servidor, es importante saber buscar nodos y manipularlos sin romper la estructura previa. Por otro lado, está el Javascript enfocado a la parte visual: controlar el scroll, drag & drop, animaciones... En este tema se han puesto las bases, pero eso requiere un estudio por separado. Esta parte puede ser explorada más profundamente en el módulo de Diseño de Interfaces.

{:.section}
## (Voluntario) Para saber más...

Lee el artículo [Escuchar eventos y handleEvent](https://lenguajejs.com/javascript/eventos/addeventlistener-handleevent/).

Lee el artículo [El objeto Event](https://lenguajejs.com/javascript/eventos/objeto-event/).

Lee el artículo [¿Qué son los Custom Events?](https://lenguajejs.com/javascript/custom-events/que-son/#custom-events)

{:.question}
¿Podemos crear eventos personalizados en JavaScript sin el uso de bibliotecas externas?

<details class="card mb-2">
  <summary class="card-header question">¿Podemos disparar eventos desde código JavaScript?</summary>
  <div class="card-body" markdown="1">

Si.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question" markdown="1">
  
  ¿Podemos añadir información adicional al crear un objeto Event de la siguiente manera: `const event = new Event("click", { detail: 123 });`?
  
  </summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Lee el artículo [Emisión de eventos](https://lenguajejs.com/javascript/custom-events/emision-eventos/).

Lee el artículo [Propagación de eventos](https://lenguajejs.com/javascript/custom-events/propagacion-eventos/).

## Bibliografía

- <https://xxjcaxx.github.io/libro_dwec/dom.html>
- <https://lenguajejs.com/>
- <https://learnxinyminutes.com/docs/es-es/javascript-es/>
- <https://fwhibbit.es/basics-of-javascript>
- <https://jonmircha.com/javascript-asincrono>
- <https://es.javascript.info/>

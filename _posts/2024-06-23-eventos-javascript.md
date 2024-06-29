---
title: "Eventos en JavaScript"
date: 2024-06-23 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [desarrollo de aplicaciones web, daw, desarrollo web en entorno cliente, dwec, teoria, eventos, javascript]
img_path: /assets/img/eventos-javascript/
---

{:.section}
## ¿Qué son los eventos?

Lee el artículo [¿Qué son los eventos?](https://lenguajejs.com/javascript/eventos/que-son-eventos/)

{:.question}
¿Qué es un evento?

<details class="card mb-2">
  <summary class="card-header question">¿Qué formas tenemos de manejar eventos en JavaScript?</summary>
  <div class="card-body" markdown="1">

- Mediante atributos HTML. Por ejemplo: `<button onClick="..."></button>`.
- Mediante propiedades Javascript. Por ejemplo: `.onclick = function() { ... }`.
- Mediante `addEventListener()`. Por ejemplo: `.addEventListener("click", ...)`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">De todas las formas que tenemos para manejar eventos en JavaScript, ¿cuál es la más aconsejable por norma general?</summary>
  <div class="card-body" markdown="1">

Mediante `addEventListener()`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Modelo de eventos en línea → Eventos mediante HTML

Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/FbO4rxuowMw?si=arBcVJvYFPMqCEXG" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Preguntas a responder tras la visualización del vídeo:

- ¿Qué web podemos usar para consultar todos los eventos que existen?
- ¿A qué hace referencia la palabra clave `this`?
- ¿Qué alternativa existe al uso de `this`?
- ¿La función `cambiar` debe declararse antes de usarse?
- ¿Hay acciones que desencadenan varios eventos?
- ¿Cómo podemos hacer para que un elemento `href` no ejecute la acción por defecto?
- ¿Qué permite hacer el atributo `onload` del `body`?
- ¿Es recomendable usar el modelo de eventos en línea? ¿Por qué?

Lee el artículo [Eventos mediante HTML](https://lenguajejs.com/javascript/eventos/eventos-html/)

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

Mira el siguiente vídeo:

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

Lee el artículo [Eventos mediante JavaScript](https://lenguajejs.com/javascript/eventos/eventos-javascript/)

{:.question}
¿Qué diferencia hay entre una propiedad y una función en JavaScript?

{:.question}
En JavaScript, la propiedad `.onclick` ¿puede ir en mayúsculas y minúsculas indistintamente? Es decir, ¿puedo escribir tanto `.onclick` como `.onClick`?

{:.subsection}
### Modelo de eventos del W3C → El método addEventListener

Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/nLyhVCCb9dc?si=mn3fxoJ6IBX_Mh_f" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Preguntas a responder tras la visualización del vídeo:

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

Lee el artículo [El método addEventListener](https://lenguajejs.com/javascript/eventos/addeventlistener/)

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

{:.section}
## ¿Qué son los eventos de navegador?

Lee el artículo [Eventos de navegador: ¿Qué son?](https://lenguajejs.com/javascript/eventos-navegador/que-son/)

{:.question}
¿En qué consiste la desestructuración?

{:.subsection}
### Eventos de teclado

Lee el artículo [Eventos de teclado](https://lenguajejs.com/javascript/eventos-navegador/keyboard-event/)

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

## Bibliografía

- <https://lenguajejs.com/>
- <https://learnxinyminutes.com/docs/es-es/javascript-es/>
- <https://fwhibbit.es/basics-of-javascript>
- <https://developer.mozilla.org/es/docs/Web/JavaScript/Reference/Functions/Arrow_functions>
- <https://jonmircha.com/javascript-asincrono>
- <https://es.javascript.info/>

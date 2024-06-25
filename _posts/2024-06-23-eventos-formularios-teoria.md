---
title: "Interacción con el usuario: eventos y formularios"
date: 2024-06-25 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [desarrollo de aplicaciones web, daw, desarrollo web en entorno cliente, dwec, teoria]
img_path: /assets/img/variable-entorno-path/
---

## Eventos

### ¿Qué son los eventos?

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

### Eventos mediante HTML

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

### Eventos mediante JavaScript

Lee el artículo [Eventos mediante JavaScript](https://lenguajejs.com/javascript/eventos/eventos-javascript/)


{:.question}
¿Qué diferencia hay entre una propiedad y una función en JavaScript?

{:.question}
En JavaScript, la propiedad `.onclick` ¿puede ir en maýusuculas y minúsculas indistintemante? Es decir, ¿puedo escribir tnato `.onclick` como `.onClick`?

### El método addEventListener

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
  <summary class="card-header question">¿Es necesario que la función que pasamos como parámetro a la función `addEventListener()` tenga nombre?
</summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Se pueden añadir varios listeners utilizando la función `.addEventListener()` sobre el mismo evento de manera sencilla?</summary>
  <div class="card-body" markdown="1">

Si.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Qué hace el la opción `once` del tercer parámetro de la función `addEventListener()`?

<details class="card mb-2">
  <summary class="card-header question">¿Se puede borrar una función anónima con `.removeEventListener()`?</summary>
  <div class="card-body" markdown="1">

Sólo si la hemos guardado en una variable antes de llamar a `addEventListener()`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

### (Voluntario) Para saber más...

Lee el artículo [Escuchar eventos y handleEvent](https://lenguajejs.com/javascript/eventos/addeventlistener-handleevent/).

Lee el artículo [El objeto Event](https://lenguajejs.com/javascript/eventos/objeto-event/).

### ¿Qué son los Custom Events?

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
  <summary class="card-header question">¿Podemos añadir información adicional al crar un objeto Event de la siguiente manera: `const event = new Event("click", { detail: 123 });`?</summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

### (Voluntario) Para saber más...

Lee el artículo [Emisión de eventos](https://lenguajejs.com/javascript/custom-events/emision-eventos/).

Lee el artículo [Propagación de eventos](https://lenguajejs.com/javascript/custom-events/propagacion-eventos/).

### ¿Qué son los eventos de navegador?

Lee el artículo [Eventos de navegador: ¿Qué son?](https://lenguajejs.com/javascript/eventos-navegador/que-son/)

{:.question}
¿Como podríamos obtener ?

{:.question}
¿En qué consiste la desestructuración?

### Eventos de teclado

Lee el artículo [Eventos de teclado](https://lenguajejs.com/javascript/eventos-navegador/keyboard-event/)

<details class="card mb-2">
  <summary class="card-header question">¿Cuál es el objeto de navegador para capturar eventos del teclado?</summary>
  <div class="card-body" markdown="1">

El objeto `KeyboardEvent`

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Cómo podemos diferenciar entre el 7 de arriba del teclado con el 7 del numpad en un `KeyboardEvent`?</summary>
  <div class="card-body" markdown="1">

Mediante la propiedad `location`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Keydown y keyup están obsoletos?</summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

### Eventos de puntero

Lee el artículo [Eventos de puntero](https://lenguajejs.com/javascript/eventos-navegador/pointer-event/)

## Utilización de formularios



## Manejo de los elementos de un formulario



## Modificación de apariencia y comportamiento



## Validación de formularios



## Expresiones regulares



## Cookies



## Bibliografía

- [Lenguaje JS](https://lenguajejs.com/)
- [Aprende X en Y minutos, Donde X=javascript](https://learnxinyminutes.com/docs/es-es/javascript-es/)
- [Basics of Javascript](https://fwhibbit.es/basics-of-javascript)
- [Comparación de funciones tradicionales con funciones flecha](https://developer.mozilla.org/es/docs/Web/JavaScript/Reference/Functions/Arrow_functions)
- [JavaScript Asíncrono](https://jonmircha.com/javascript-asincrono)

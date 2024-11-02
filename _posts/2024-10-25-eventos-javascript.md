---
title: "Eventos y handlers en JavaScript"
date: 2024-10-25 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/desarrollo-web-entorno-cliente-24-25/
---

> Artículo en construcción.
{:.prompt-warning}

## Introducción

Los eventos y los manejadores (handlers) son elementos para capturar interacciones del usuario y realizar acciones en respuesta a estas interacciones.

Los eventos en JavaScript permiten capturar desde movimientos del mouse hasta pulsaciones de teclado y manipular el contenido y comportamiento de la página en respuesta a estas interacciones.

## Eventos (Events)

Los eventos son mecanismos que se activan cuando el usuario interactúa con la página web. Estas interacciones pueden ser clics del ratón, pulsaciones de teclado, desplazamientos, cambios en el tamaño de la ventana, etc. Los eventos permiten que JavaScript responda dinámicamente a las acciones del usuario.

Características principales:

- Son disparados por el navegador o por el usuario.
- Pueden estar relacionados con elementos específicos del DOM, como un botón o un campo de entrada.
- El objeto `Event` contiene información detallada sobre el evento que ocurrió, como qué elemento lo originó y detalles específicos del tipo de evento.

## Manejadores (Handlers)

Un manejador, o handler en inglés, es una función que se ejecuta cuando ocurre un evento específico. Cada tipo de evento (como `click`, `submit`, `mouseover`, etc.) puede tener asociado un manejador que define qué acción debe realizarse en respuesta al evento.

Características principales:

- Es una función que se asigna a un evento particular en un elemento del DOM.
- Define la acción o comportamiento que se debe llevar a cabo cuando el evento ocurre.
- Los manejadores pueden ser definidos directamente en el HTML, usando atributos como `onclick`, o pueden ser asignados dinámicamente desde JavaScript.

### Ejemplo de uso en HTML y JavaScript

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

## Eventos en línea

### Ejemplo en HTML (No recomendable)

```javascript
<p onmouseover="this.style.background='#FF0000';" onmouseout="this.style.background='#FFFFFF';">HOLA</p>
```

Este método incrusta el código JavaScript directamente en el atributo `onmouseover` y `onmouseout` del elemento `<p>`. Aunque es simple, no se recomienda porque mezcla lógica de presentación con el contenido y dificulta el mantenimiento.
Registro tradicional de eventos

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
Registro avanzado de eventos

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

### Obtención de información del evento

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

### Propagación y captura de eventos

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

### Enviar Datos de Hijos a Padres con Eventos Personalizados

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

## Eventos de teclado

Los eventos de teclado (`KeyboardEvent`) permiten capturar las pulsaciones de teclas y actuar en consecuencia. Se puede obtener el código de la tecla presionada usando `event.code`, lo que proporciona una manera estandarizada de identificar cada tecla. Aquí hay ejemplo sencillo que muestra cómo capturar eventos de teclado y obtener el código de la tecla presionada usando `event.code`:

```javascript
<input type="text" id="inputTexto" placeholder="Escribe algo aquí...">
```

```javascript
document.getElementById('inputTexto').addEventListener('keydown', function(event) {
    console.log('Tecla presionada:', event.code);
});
```

## Notas finales

Cuando programamos para el Frontend, la manera de tratar el DOM es muy diversa. Si distinguimos entre una SPA y una web generada en el servidor con algo de Javascript, las técnicas son muy diferentes. En el caso de la SPA, es muy importante tener claro una arquitectura MVC o similar en la que unas plantillas se rellenen con los datos del servidor. La interactividad y el manejo de formularios se suele implementar toda en Javascript porque préviamente no habia nada de HTML. En una web más tradicional en la que el HTML ya está generado por el servidor, es importante saber buscar nodos y manipularlos sin romper la estructura previa. Por otro lado, está el Javascript enfocado a la parte visual: controlar el scroll, drag & drop, animaciones... En este tema se han puesto las bases, pero eso requiere un estudio por separado. Esta parte puede ser explorada más profundamente en el módulo de Diseño de Interfaces.

## Bibliografía

- <https://xxjcaxx.github.io/libro_dwec/dom.html>
- <https://lenguajejs.com/>
- <https://learnxinyminutes.com/docs/es-es/javascript-es/>

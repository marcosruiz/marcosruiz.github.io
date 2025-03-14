---
title: "Asincronía en JavaScript"
date: 2025-03-03 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/asincronia-javascript/
---

> Artículo en construcción.
{:.prompt-warning}

{:.section}
## Introducción

JavaScript solo puede tener un hilo de ejecución. Esto significa que si solicitamos algo al servidor de forma síncrona, toda la web se detendrá hasta que llegue la respuesta.

Sin embargo, JavaScript es asíncrono gracias al **event loop** y  la **cola de tareas**. Esto permite que operaciones como peticiones HTTP o temporizadores se ejecuten sin bloquear el hilo principal. Estas operaciones asíncronas son gestionadas por el navegador o el entorno de Node.js y, cuando terminan, sus callbacks se colocan en la cola para ser ejecutados cuando el hilo principal esté libre.

### Event loop (Bucle de eventos)

A pesar de que JavaScript es un lenguaje monohilo (single-threaded), en JavaScript existe el Event Loop (bucle de eventos), que es un mecanismo que permite la ejecución de código asíncrono y no bloqueante.

### Cola de tareas (Task Queue)

JavaScript gestiona las operaciones asíncronas utilizando varias colas de tareas, cada una con una prioridad diferente. Estas colas incluyen la cola de macrotareas y la cola de microtareas.

1. Macrotareas: Son las tareas que se colocan en la cola de tareas principal. Incluyen:
   - `setTimeout`
   - `setInterval`
   - Eventos del DOM (como clicks)
   - Peticiones HTTP (`fetch`, `XMLHttpRequest`)
1. Microtareas: Se colocan en la cola de microtareas y tienen prioridad sobre las macrotareas. Esto significa que después de cada macrotarea, el motor de JavaScript procesará todas las microtareas antes de continuar con la siguiente macrotarea. Incluyen:
   - Promesas (`.then`, `.catch`, `.finally`)

#### Ejemplo de cómo retrasar un bloqueo

```javascript
(() => {
  let start = Date.now();

  function count() {
    // Trabajo pesado
    let i = 0;
    for (let j = 0; j < 1e9; j++) {
      i++;
    }
    console.log("Done in " + (Date.now() - start) + 'ms');
  }

  //count();   // Esto bloquea el navegador
  setTimeout(count, 0);
})();
```

1. La función count ejecuta una operación costosa (una larga iteración de bucle).
1. Si count se ejecuta directamente, bloquea el navegador porque el bucle es muy largo.
1. Utilizando `setTimeout(count, 0)`, la función count se coloca en la cola de macrotareas, permitiendo que el navegador procese otras tareas mientras tanto

Este ejemplo ilustra cómo retrasar el bloqueo hasta que, por ejemplo, se ejecute todo el programa principal. Pero no soluciona el hecho de que, al final se va a quedar el navegador bloqueado, ya que se ejecutará en el único hilo de ejecución de Javascript.

#### Ejemplo de cómo dividir el trabajo

En el siguiente ejemplo se ve cómo dividir el trabajo para que, en medio, dé tiempo a renderizar o ejecutar otras tareas y microtareas como atender eventos:

```javascript
document.addEventListener("DOMContentLoaded", () => {
  let progress = document.querySelector("#progress");
  
  let i = 0;
  function count() {
    // Realiza una parte del trabajo pesado (*)
    do {
      i++;
      progress.innerHTML = i;
    } while (i % 1e3 != 0);

    if (i < 1e7) {
      setTimeout(count);
    }
  }
  count();
});
```

1. En lugar de hacer todo el trabajo pesado en una única ejecución, el trabajo se divide en trozos más pequeños.
1. La función `count` realiza una pequeña parte del trabajo (incrementar `i` y actualizar el texto de `progress`) antes de ceder el control al navegador con `setTimeout(count)`.
1. Esto permite que el navegador renderice el cambio en el DOM, evitando el bloqueo y ofreciendo una experiencia de usuario más fluida.

(Voluntario) Lee el artículo <https://www.bbss.dev/posts/eventloop/> con otro ejemplo.

#### Ejemplo de micro y macro tareas con promesas

```javascript
(() => {
  const messages = [];
  messages.push('Script start');

  setTimeout(() => {
    messages.push('SetTimeout');
    printMessages();
  }, 0);

  Promise.resolve().then(() => {
    messages.push('Promise 1');
  }).then(() => {
    messages.push('Promise 2');
  });
  
  messages.push('Script end');
  function printMessages() {
    console.log(messages.join('\n'));
  }
})();
```

1. El log ‘Script start’ se imprime primero porque es código síncrono.
1. `setTimeout` coloca su función de callback en la cola de macrotareas.
1. La promesa `Promesa` se resuelve inmediatamente, colocando sus callbacks en la cola de microtareas.
1. El log ‘Script end’ se imprime porque es código síncrono.
1. Las microtareas (las promesas) se ejecutan antes de la macrotarea (`setTimeout`), imprimiendo ‘Promise 1’ y ‘Promise 2’.
1. Finalmente, la función de `setTimeout` se ejecuta, imprimiendo ‘SetTimeout’.

## Callbacks en JavaScript


## Promesas en JavaScript





## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/promesas.html#>
- 

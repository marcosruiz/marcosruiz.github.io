---
title: "Promesas en JavaScript"
date: 2025-03-05 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/promesas-javascript/
---

{:.section}
## Introducción

Las promesas en JavaScript son objetos que representan la eventual finalización (satisfactoria o con error) de una operación asíncrona y su valor resultante. Proporcionan una forma de manejar operaciones asíncronas de manera más manejable y predecible, evitando los problemas del “callback hell”. A continuación, exploraremos cómo funcionan las promesas y cómo pueden ser utilizadas en diferentes contextos.

## Primer ejemplo de promesas

Una promesa se crea (manualmente) utilizando el constructor `Promise`, que acepta una función como argumento. Esta función recibe otras dos funciones como parámetros: `resolve` y `reject`.

1. A la función `resolve`, la deberemos llamar cuando todo haya ido bien.
1. A la función `reject`, la deberemos llamar cuando algo haya fallado.

```javascript
(() => {
  const promise = new Promise((resolve, reject) => { // Función ejecutora
    setTimeout(() => {
      if (Math.random() > 0.5) {
        resolve("Resolving an asynchronous request!");
      } else {
        reject("Rejecting an asynchronous request!");
      }
    }, 2000);
  });

  promise.then((response) => { //.then si se resuelve con resolve()
    console.log(response);
  }).catch((response) => { // .catch si falla con reject()
    console.log(response);
  });
})();
```

## Estados de las Promesas

Las promesas pueden estar en uno de los siguientes estados:

1. **Pendiente (Pending)**: Estado inicial, la promesa aún no se ha cumplido ni ha sido rechazada.
1. **Cumplida (Fulfilled)**: La operación se completó con éxito y se resolvió la promesa.
1. **Rechazada (Rejected)**: La operación falló y la promesa fue rechazada.

En el ejemplo anterior, la promesa tiene un 50% de probabilidad de resolverse o rechazarse después de 2 segundos. Dependiendo del resultado, se ejecuta la función correspondiente en `then` o `catch`.

## Segundo ejemplo de promesas

El objeto de tipo `Promise` nos permite trabajar con él sin bloquear el hilo de ejecución.

```javascript
(() => {
  function fetchData() {
    return new Promise((resolve, reject) => {
      setTimeout(() => {
        const data = { name: "John", age: 30 };
        resolve(data);
      }, 3000);
    });
  }

  fetchData().then((data) => {
    console.log(data);
  });

  console.log("Data is being fetched...");
})();
```

En este ejemplo, la función `fetchData` retorna una promesa que se resuelve con datos después de 3 segundos. Mientras se espera la resolución de la promesa, el código sigue ejecutándose y se imprime “Data is being fetched…”.

## Encadenar Promesas en serie

El método then de las promesas permite encadenar varias operaciones asíncronas de manera secuencial. Esto es útil cuando necesitamos ejecutar una serie de tareas asíncronas una tras otra.

```javascript
fetchData().then((data) => {
  console.log("First then:", data);
  return data.name;
}).then((name) => {
  console.log("Second then:", name);
});
```

En este ejemplo, la segunda llamada a then solo se ejecuta después de que la primera promesa se resuelva, garantizando un flujo secuencial de operaciones.

## Manejo de errores

El método `catch` se utiliza para manejar errores que ocurren durante la ejecución de una promesa. Este se puede encadenar después de uno o varios `then`.

```javascript
fetchData().then((data) => {
  console.log(data);
  throw new Error("Something went wrong!");
}).catch((error) => {
  console.log("Caught error:", error.message);
});
```

Aquí, si ocurre algún error en cualquiera de las funciones `then`, será capturado por `catch`.

## Promesas en paralelo

El método `Promise.all()` permite ejecutar múltiples promesas en paralelo y esperar a que todas se resuelvan antes de continuar. Si alguna de las promesas se rechaza, `Promise.all()` también se rechazará.

```javascript
(() => {
  const promise1 = Promise.resolve(3);
  const promise2 = 42;
  const promise3 = new Promise((resolve, reject) => {
    setTimeout(resolve, 100, 'foo');
  });

  Promise.all([promise1, promise2, promise3]).then((values) => {
    console.log(values); // [3, 42, "foo"]
  });

})();
```

En este ejemplo, `Promise.all()` espera a que todas las promesas se resuelvan y luego imprime los valores resueltos en un array.

## Arrays y promesas

En ocasiones es necesario recorrer un array y generar una promesa con cada elemento del array.

Las situaciones pueden ser distintas, por ejemplo:

1. No importa el orden ni si se cumplen las promesas.
1. No importa el orden, pero queremos hacer algo si se cumplen todas las promesas.
1. Las promesas se deben ejecutar en un cierto orden.

### No importa el orden ni si se cumplen las promesas

Por ejemplo, si queremos enviar un mensaje a varios usuarios al mismo tiempo. En caso de que algún mensaje no se pueda enviar, puede aparecer el mensaje en consola pero no debería bloquear nuestro flujo de trabajo.

Se puede ejecutar un `.forEach()` sobre el array y crear las promesas independientemente.

```javascript
(() => {
  const array = [1, 2, 3, 4, 5];

  array.forEach(item => {
    someAsyncFunction(item)
      .then(result => {
        console.log(`Result for item ${item}:`, result);
      })
      .catch(error => {
        console.error(`Error for item ${item}:`, error);
      });
  });

  function someAsyncFunction(item) {
    return new Promise((resolve, reject) => {
      setTimeout(() => {
        resolve(`Processed ${item}`);
      }, Math.random() * 1000);
    });
  }
})();
```

### No importa el orden, pero queremos hacer algo si se cumplen todas las promesas

Por ejemplo, en el caso de que queramos descargar múltiples archivos y notificar al usuario cuando todas las descargas se completen.

Podemos transformar el array en un array de promesas con `.map()` y pasarlo a un `Promise.all()`.

```javascript
(() => {
  const array = [1, 2, 3, 4, 5];

  const promises = array.map(item => someAsyncFunction(item));

  Promise.all(promises)
    .then(results => {
      console.log('All promises resolved:', results);
    })
    .catch(error => {
      console.error('One or more promises rejected:', error);
    });

  function someAsyncFunction(item) {
    return new Promise((resolve, reject) => {
      setTimeout(() => {
        resolve(`Processed ${item}`);
      }, Math.random() * 1000);
    });
  }
})();
```

### Las promesas se deben ejecutar en un cierto orden

Por ejemplo, si queremos aplicar una serie de filtros a una imagen a través de peticiones a un servidor especializado en edición de imágenes.

No se puede hacer con `.forEach()` ni `.map()`, ya que no trata las promesas correctamente ni async/await. Es mejor usar un `for-of` con async/await.

```javascript
(() => {
  const array = [1, 2, 3, 4, 5];

  async function processArrayInOrder() {
    for (const item of array) {
      try {
        const result = await someAsyncFunction(item);
        console.log(`Result for item ${item}:`, result);
      } catch (error) {
        console.error(`Error for item ${item}:`, error);
      }
    }
  }

  processArrayInOrder();

  function someAsyncFunction(item) {
    return new Promise((resolve, reject) => {
      setTimeout(() => {
        resolve(`Processed ${item}`);
      }, Math.random() * 1000);
    });
  }
})();
```

## Async/Await en JavaScript

El uso de `async` y `await` en JavaScript ofrece una forma más concisa y legible de trabajar con promesas. Introducida en ECMAScript 2017, esta sintaxis facilita la gestión de operaciones asíncronas, permitiendo escribir código que parece síncrono mientras maneja promesas en segundo plano.

Una función definida con la palabra clave `async` automáticamente retorna una promesa. Esto significa que incluso si la función parece devolver un valor regular, en realidad estará devolviendo una promesa que se resuelve con ese valor.

El uso de `async` y `await` en JavaScript simplifica la gestión de operaciones asíncronas, proporcionando una sintaxis más limpia y manejable en comparación con el uso tradicional de promesas con `.then()` y `.catch()`. Con la introducción del top-level `await`, ahora es posible manejar operaciones asíncronas de manera aún más directa en el nivel superior de los módulos.

### Primer ejemplo de async await

```javascript
(() => {
  async function getUser() {
    const response = await fetch('https://api.github.com/users/octocat');
    const data = await response.json();
    console.log(data);
  }

  // Ejecutar función asíncrona
  getUser();
})();
```


#### Definición de la función async

```javascript
async function getUser() {
```

Aquí, `async` antes de la función indica que esta función es asíncrona y retornará una promesa.

#### Uso de await

```javascript
const response = await fetch('https://api.github.com/users/octocat');
const data = await response.json();
```

Dentro de una función `async`, se puede usar await antes de una promesa para esperar su resolución. En este caso, `await fetch` espera a que la promesa devuelta por fetch se resuelva, es decir, que la solicitud HTTP se complete y se reciba una respuesta. Del mismo modo, `await response.json()` espera a que se procese la respuesta en formato JSON.

#### Ejecutar la función asíncrona

```javascript
getUser();
```

Llamar a `getUser()` ejecuta la función asíncrona. Dado que `getUser` retorna una promesa, se podría encadenar con `.then()` si fuera necesario.

### Top-Level await

Introducido en 2024, el top-level `await` permite usar `await` directamente en el nivel superior de los módulos, sin necesidad de envolver el código en una función `async`. Esto simplifica el código y mejora su legibilidad cuando se trabaja con operaciones asíncronas en el contexto global del módulo.

#### Ejemplo top-level await

```javascript
const colors = fetch("./colors.json").then((response) => response.json());
await colors;
console.log(colors)
```

En este ejemplo, se está utilizando `await` directamente en el nivel superior del módulo para esperar la resolución de la promesa devuelta por `fetch`. Esto permite que colors contenga el resultado de la operación asíncrona sin necesidad de definir una función `async`.

> ¡OJO CUIDAO! Si utilizas el top level await bloquearás la ejecución del hilo principal hasta que la promesa se resuelva.
{:.prompt-info}

### Ventajas de async/await

Las ventajas de async await son tres:

1. Sintaxis más limpia y legible
1. Manejo de errores simplificado
1. Ejecución secuencial de operaciones asíncronas

#### Sintaxis más limpia y legible

El código asíncrono escrito con `async/await` es más fácil de leer y entender, ya que se parece más a código síncrono. Esto facilita la identificación de la lógica y el flujo del programa.

#### Manejo de errores simplificado

Se pueden usar bloques `try/catch` para manejar errores en funciones `async`, lo que proporciona una forma clara y estructurada de gestionar excepciones.

```javascript
(() => {
  async function getUser() {
    try {
      const response = await fetch('https://api.github.com/users/octocat');
      if (!response.ok) throw new Error('Network response was not ok');
      const data = await response.json();
      console.log(data);
    } catch (error) {
      console.error('Fetching user failed:', error);
    }
  }
  getUser();

})();
```

En este ejemplo, cualquier error que ocurra dentro de la función `getUser` será capturado y manejado en el bloque `catch`.

#### Ejecución secuencial de operaciones asíncronas

Utilizando `await`, se puede asegurar que las operaciones asíncronas se ejecuten de manera secuencial, lo cual es útil cuando una operación depende de los resultados de otra.

```javascript
(() => {
  async function fetchData() {
    const user = await fetch('https://api.github.com/users/octocat').then(res => res.json());
    const repos = await fetch(user.repos_url).then(res => res.json());
    console.log(repos);
  }
  fetchData();
})();
```

Aquí, la segunda solicitud `fetch` solo se ejecuta después de que la primera solicitud se haya completado y se haya obtenido la URL de los repositorios del usuario.

Veamos ahora el ejemplo largo del callback Hell escrito con `async/await`:


```javascript
document.addEventListener("DOMContentLoaded", () => {
  // 1. Petición al servidor utilizando Fetch y Promesas
  async function hacerPeticion(url) {
    try {
      const respuesta = await fetch(url);
      if (!respuesta.ok) {
        throw new Error(`Error al hacer la petición a ${url}. Status: ${respuesta.status}`);
      }
      const datos = await respuesta.json();
      return datos;
    } catch (error) {
      throw error;
    }
  }

  // 2. Leer un archivo del input utilizando Promesas
  function leerArchivo() {
    return new Promise((resolve, reject) => {
      const inputArchivo = document.getElementById('archivoInput');
      const archivo = inputArchivo.files[0];
      if (!archivo) {
        reject(new Error('No se ha seleccionado ningún archivo'));
        return;
      }
      const lector = new FileReader();
      lector.onload = function (evento) {
        resolve(evento.target.result);
      };
      lector.onerror = function () {
        reject(new Error('Error al leer el archivo'));
      };
      lector.readAsText(archivo);
    });
  }
  
  // 3. Guardar los datos en IndexedDB utilizando Promesas
  function guardarEnIndexedDB(datos) {
    return new Promise((resolve, reject) => {
      const solicitudDB = indexedDB.open('miBaseDeDatos', 1);
      solicitudDB.onupgradeneeded = function (evento) {
        const db = evento.target.result;
        db.createObjectStore('archivos', { keyPath: 'id', autoIncrement: true });
      };
      solicitudDB.onsuccess = function (evento) {
        const db = evento.target.result;
        const transaccion = db.transaction('archivos', 'readwrite');
        const almacen = transaccion.objectStore('archivos');
        const solicitudInsertar = almacen.add({ contenido: datos });
        solicitudInsertar.onsuccess = function () {
          resolve('Datos guardados correctamente en IndexedDB');
        };
        solicitudInsertar.onerror = function () {
          reject(new Error('Error al guardar en IndexedDB'));
        };
      };
      solicitudDB.onerror = function () {
        reject(new Error('Error al abrir IndexedDB'));
      };
    });
  }

  // Manejo del botón y ejecución secuencial de las funciones
  document.querySelector("#boton").addEventListener("click", async (event) => {
    event.preventDefault();
    try {
      // 1. Petición al servidor
      const datosServidor = await hacerPeticion('http://localhost:5500/datos.json');
      console.log('Datos recibidos del servidor:', datosServidor);

      // 2. Leer el archivo después de un retraso simulado
      await new Promise(resolve => setTimeout(resolve, 1000)); // Retraso de 1 segundo
      const contenidoArchivo = await leerArchivo();
      console.log('Contenido del archivo leído:', contenidoArchivo);

      // 3. Guardar los datos en IndexedDB
      const mensaje = await guardarEnIndexedDB(contenidoArchivo + datosServidor);
      console.log(mensaje);
      console.log('Todas las operaciones se completaron con éxito.');
    } catch (error) {
      console.error(error.message);
    }
  });
});
```

El código de las funciones no se ha complicado demasiado. De hecho, el código de la del fetch es mucho más sencillo. Estas funciones retornan una promesa a la que podemos esperar dentro de una función async con un await y hemos reducido los callback a 1, el del evento del click.

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/promesas.html#>
- 

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

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/promesas.html#>
- 

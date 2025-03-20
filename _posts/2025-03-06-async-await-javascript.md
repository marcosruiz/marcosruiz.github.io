---
title: "Async await en JavaScript"
date: 2025-03-06 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/async-await-javascript/
---

{:.section}
## Introducción

El uso de `async` y `await` en JavaScript ofrece una forma más concisa y legible de trabajar con promesas. Introducida en ECMAScript 2017, esta sintaxis facilita la gestión de operaciones asíncronas, permitiendo escribir código que parece síncrono mientras maneja promesas en segundo plano.

Una función definida con la palabra clave `async` automáticamente retorna una promesa. Esto significa que incluso si la función parece devolver un valor regular, en realidad estará devolviendo una promesa que se resuelve con ese valor.

El uso de `async` y `await` en JavaScript simplifica la gestión de operaciones asíncronas, proporcionando una sintaxis más limpia y manejable en comparación con el uso tradicional de promesas con `.then()` y `.catch()`. Con la introducción del top-level `await`, ahora es posible manejar operaciones asíncronas de manera aún más directa en el nivel superior de los módulos.

## Primer ejemplo de async await

Los dos siguientes códigos son equivalentes:

```javascript
function getUser() {
  fetch('https://api.github.com/users/octocat')
    .then(respuesta => respuesta.json())
    .then(datos => console.log(datos))
}

// Ejecutar función asíncrona
getUser();
```

```javascript
async function getUser() {
  const response = await fetch('https://api.github.com/users/octocat');
  const data = await response.json();
  console.log(data);
}

// Ejecutar función asíncrona
getUser();
```

> Es importante darnos cuenta de que si usamos la primera opción NO es necesario declarar la función `getUser()`, ya que el comportamiento tras la llamada a la API se define dentro de las funciones flecha.
{:.prompt-info}

### Definición de la función async

```javascript
async function getUser() {
```

Aquí, `async` antes de la función indica que esta función es asíncrona y retornará una promesa.

### Uso de await

```javascript
const response = await fetch('https://api.github.com/users/octocat');
const data = await response.json();
```

Dentro de una función `async`, se puede usar await antes de una promesa para esperar su resolución. En este caso, `await fetch` espera a que la promesa devuelta por fetch se resuelva, es decir, que la solicitud HTTP se complete y se reciba una respuesta. Del mismo modo, `await response.json()` espera a que se procese la respuesta en formato JSON.

### Ejecutar la función asíncrona

```javascript
getUser();
```

Llamar a `getUser()` ejecuta la función asíncrona. Dado que `getUser` retorna una promesa, se podría encadenar con `.then()` si fuera necesario.

## Ventajas de async/await

Las ventajas de async/await son tres:

1. Sintaxis más limpia y legible
1. Manejo de errores simplificado
1. Ejecución secuencial de operaciones asíncronas

### Sintaxis más limpia y legible

El código asíncrono escrito con `async/await` es más fácil de leer y entender, ya que se parece más a código síncrono. Esto facilita la identificación de la lógica y el flujo del programa.

### Manejo de errores simplificado

Se pueden usar bloques `try/catch` para manejar errores en funciones `async`, lo que proporciona una forma clara y estructurada de gestionar excepciones.

#### Primer ejemplo de manejo de errores

Los dos siguientes códigos son equivalentes:

```javascript
function getUser() {
  fetch('https://api.github.com/users/octocat')
    .then(respuesta => respuesta.json())
    .then(datos => console.log(datos))
    .catch(error => console.error("Error:", error));
}

// Ejecutar función asíncrona
getUser();
```

```javascript
async function getUser() {
  try{
    const response = await fetch('https://api.github.com/users/octocat');
    const data = await response.json();
    console.log(data);
  } catch(error){
    console.error("Error:", error);
  }
}

// Ejecutar función asíncrona
getUser();
```

> Es importante darnos cuenta de que si usamos la primera opción NO es necesario declarar la función `getUser()`, ya que el comportamiento tras la llamada a la API se define dentro de las funciones flecha.
{:.prompt-info}

#### Segundo ejemplo de manejo de errores

Otro ejemplo, pero ahora, además, comprobamos que el servidor nos devuelve un código HTTP 200 si `response.ok == true`. En caso contrario lanzamos un error que capturaremos inmediatamente con el bloque `try/catch`.

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

### Ejecución secuencial de operaciones asíncronas

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
      const datosServidor = await hacerPeticion('./datos.json');
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

El código de las funciones no se ha complicado demasiado. De hecho, el código de la del `fetch` es mucho más sencillo. Estas funciones retornan una promesa a la que podemos esperar dentro de una función `async` con un `await` y hemos reducido los callback a 1, el del evento del `click`.

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/promesas.html#>

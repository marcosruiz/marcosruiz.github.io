---
title: "Callbacks en JavaScript"
date: 2025-03-04 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/callbacks-javascript/
---

{:.section}
## Introducción

En JavaScript, un callback es una función que se pasa como argumento a otra función para que se ejecute después de que se complete alguna operación. Los callbacks son esenciales para manejar operaciones asíncronas como la comunicación con servidores, temporizadores, y eventos del DOM. El propio lenguaje Javascript cuenta con multitud de funciones que aceptan funciones de callback, como `forEach`, `map`, `filter`, `addEventListener`...

{:.section}
## Ejemplo de uso de callbacks

```javascript
(() => {
  function fetchData(callback) {
    setTimeout(() => {
      const data = { name: "John", age: 30 };
      callback(data);
    }, 3000);
  }

  // Ejecutar la función con un callback
  fetchData(function (data) {
    console.log(data);
  });

  console.log("Data is being fetched...");
})();
```

1. La función `fetchData` toma un callback como argumento.
1. Dentro de `fetchData`, se usa `setTimeout` para simular una operación asíncrona que dura 3 segundos.
1. Después de 3 segundos, `setTimeout` ejecuta el callback pasando un objeto `data` como argumento.
1. `fetchData` se llama con una función anónima como callback que imprime el `data`.
1. Mientras `setTimeout` espera, el programa sigue ejecutando el código siguiente y muestra “Data is being fetched…”.

{:.section}
## Ejemplo de uso de callbacks

En el siguiente ejemplo, la función `second` tiene código asíncrono que usa un callback para garantizar que la función `third` se ejecute después de que `second` haya terminado su tarea.

```javascript
(() => {
  function first() {
    console.log(1);
  }

  function second(callback) {
    setTimeout(() => {
      console.log(2);
      callback();
    }, 0);
  }

  function third() {
    console.log(3);
  }

  second(third);
  first();
  // Salida: 2 1 3
})();
```

{:.section}
## Callback hell

El uso excesivo de callbacks puede llevar a una situación conocida como “Callback Hell” o “Pyramid of Doom”, donde el código se vuelve difícil de leer y mantener debido a la anidación profunda de funciones.

```javascript
function getData(callback){
  // Hace lo que sea
  let datoADevolver = "Data "
  callback(datoADevolver)
}

function getMoreData(datoDeEntrada, callback) {
  // Hace lo que sea
  let datoADevolver = datoDeEntrada + "MoreData ";
  callback(datoADevolver)
}

function getEvenMoreData(datoDeEntrada, callback) {
  // Hace lo que sea
  let datoADevolver = datoDeEntrada + "EvenMoreData "
  callback(datoADevolver)
}

function getEvenEvenMoreData(datoDeEntrada, callback) {
  // Hace lo que sea
  let datoADevolver = datoDeEntrada + "EvenEvenMoreData "
  callback(datoADevolver)
}

function getFinalData(datoDeEntrada, callback) {
  // Hace lo que sea
  let datoADevolver = datoDeEntrada + "FinalData "
  callback(datoADevolver)
}

getData(function (a) {
  getMoreData(a, function (b) {
    getEvenMoreData(b, function (c) {
      getEvenEvenMoreData(c, function (d) {
        getFinalData(d, function (finalData) {
          console.log(finalData);
        });
      });
    });
  });
});
```

En este ejemplo, cada función depende de los datos obtenidos por la función anterior. Esta cadena de dependencias se anida cada vez más profundamente, resultando en un código que es difícil de leer y mantener.

Veamos otro ejemplo de código que puede suponer un Callback Hell:

```javascript
document.addEventListener("DOMContentLoaded", () => {

  function hacerPeticion(url, callback) {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', url, true);
    xhr.onreadystatechange = function () {
      if (xhr.readyState === 4 && xhr.status === 200) {
        const data = JSON.parse(xhr.responseText);
        callback(null, data);
      } else if (xhr.readyState === 4) {
        callback(new Error(`Error al hacer la petición a ${url}`));
      }
    };
    xhr.send();
  }

  // 2. Leer un archivo del input
  function leerArchivo(callback) {
    const inputArchivo = document.getElementById('archivoInput');
    const archivo = inputArchivo.files[0];

    if (!archivo) {
      callback(new Error('No se ha seleccionado ningún archivo'));
      return;
    }
    const lector = new FileReader();
    lector.onload = function (evento) {
      const contenido = evento.target.result;
      callback(null, contenido);
    };
    lector.onerror = function () {
      callback(new Error('Error al leer el archivo'));
    };
    lector.readAsText(archivo);
  }

  // 3. Guardar los datos en IndexedDB
  function guardarEnIndexedDB(datos, callback) {
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
        callback(null, 'Datos guardados correctamente en IndexedDB');
      };

      solicitudInsertar.onerror = function () {
        callback(new Error('Error al guardar en IndexedDB'));
      };
    };

    solicitudDB.onerror = function () {
      callback(new Error('Error al abrir IndexedDB'));
    };
  }

  // Iniciamos la cadena de callbacks (Callback Hell)

  document.querySelector("#boton").addEventListener("click", (event) => {
    event.preventDefault();

    // 1. Petición al servidor
    hacerPeticion('http://127.0.0.1:3000/<ruta a rellenar>/datos.json', function (error, datosServidor) {
      if (error) {
        console.error(error);
        return;
      }
      console.log('Datos recibidos del servidor:', datosServidor);

      // 2. Leer archivo con retraso
      setTimeout(() => {
        leerArchivo(function (error, contenidoArchivo) {
          if (error) {
            console.error('Error al leer el archivo:', error);
            return;
          }
          console.log('Contenido del archivo leído:', contenidoArchivo);

          // 3. Guardar los datos en IndexedDB
          guardarEnIndexedDB(contenidoArchivo + datosServidor, function (error, mensaje) {
            if (error) {
              console.error('Error al guardar en IndexedDB:', error);
              return;
            }
            console.log(mensaje);
            console.log('Todas las operaciones se completaron con éxito.');
          });
        });
      }, 1000);
    });
    
    console.log("patata")
  });

});
```

Podemos ver que las funciones asíncronas aceptan una función de callback. Tenemos la función de tratamiento del evento del botón. La de hacer la petición al servidor, que hacemos con `XMLHttpRequest` para no usar promesas. Tenemos un `setTimeOut` que usamos para retrasar la función que le pasamos, la cual lee un fichero que el usuario ha puesto en un `input` con KD. Esta función recibe como callback una en la que guardamos el resultado en una base de datos indexedDB. Todas son peticiones asíncronas a la API del navegador y necesitan un callback.

Como se puede ver, mantener este código puede ser complicado. Después lo volveremos a escribir con `fetch` y con promesas y la sintaxis `async/await` y se demostrará que el código queda más limpio.

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/promesas.html#>

---
title: "Fetch en JavaScript"
date: 2025-03-08 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/fetch-javascript/
---

{:.section}
## Introducción

La función `fetch` de JavaScript proporciona una manera sencilla y poderosa de realizar solicitudes HTTP. Es similar a `XMLHttpRequest` (XHR), pero utiliza promesas y tiene una sintaxis más moderna y limpia.

```javascript
(() => {
  fetch('./datos.json')
    .then(
      function (response) {
        if (response.status !== 200) {
          console.log('Looks like there was a problem. Status Code: ' + response.status);
          return;
        }
        response.json().then(function (data) {
          console.log(data);
        });
      }
    )
    .catch(function (err) {
      console.log('Fetch Error : ', err);
    });
})();
```

En este ejemplo, `fetch` solicita un archivo JSON. Si la respuesta tiene un estado diferente de 200 (OK), se imprime un mensaje de error. Si la respuesta es correcta, se convierte a JSON y se imprime.

{:.section}
## Objeto Response

Si la solicitud tiene éxito, `fetch` devuelve un objeto `Response`, que es un flujo (stream) con varias propiedades y métodos útiles.

```javascript
(() => {
  fetch('./datos.json').then(function (response) {
    console.log(response.headers.get('Content-Type'));
    console.log(response.headers.get('Date'));
    console.log(response.status);
    console.log(response.statusText);
    console.log(response.type);
    console.log(response.url);
  });
})();
```

```plaintext
application/json
Tue, 18 Mar 2025 13:13:17 GMT
200
OK
basic
http://127.0.0.1:3000/DWEC%2024%2025/Sesiones/Sesi%C3%B3n%2019/24_objetoResponse/datos.json
```

Este ejemplo muestra cómo acceder a diferentes propiedades del objeto `Response`, como los encabezados y el estado de la solicitud.

{:.section}
## Guardar los Datos

`fetch` permite obtener el texto o un objeto de la respuesta. Las funciones `response.json()` y `response.text()` devuelven promesas que se resuelven con el contenido adecuado. No es posible usar ambas funciones en una misma petición.

```javascript
(() => {
  fetch("./productos.json")
    .then(response => response.json())
    .then(data => console.log(data));

  fetch("./productos.json")
    .then(response => response.text())
    .then(data => console.log(data));
})();
```

En estos ejemplos, se hace una solicitud a una URL y se procesan los datos como JSON en el primer caso y como texto en el segundo.

{:.section}
## Encadenar Promesas

Es posible encadenar promesas para manejar el flujo de la solicitud de manera más estructurada.

```javascript
(() => {
  function showStatus(response) {
    if (response.status >= 200 && response.status < 300) {
      return Promise.resolve(response);
    } else {
      return Promise.reject(new Error(response.statusText));
    }
  }

  function json(response) {
    return response.json();
  }

  fetch('./datos.json')
    .then(showStatus)
    .then(json)
    .then(function (data) {
      console.log('Request succeeded with JSON response', data);
    }).catch(function (error) {
      console.log('Request failed: ', error);
    });
})();
```

```plaintext
{
  "_id": "67d1ae42f335e6f2c8801d30",
  "picture": "http://placehold.it/32x32",
  "age": 29,
  "eyeColor": "blue",
  "name": "Rodriquez Wade",
  "gender": "male",
}
```

En este ejemplo, la función `status` verifica si la respuesta es correcta, y la función `json` convierte la respuesta en un objeto JSON. Luego, se manejan los datos o se capturan errores según corresponda.

{:.section}
## Enviar Datos con Fetch

En el desarrollo web, al interactuar con APIs o al enviar datos a un servidor, es común utilizar diferentes tipos de formatos de envío. Tres de los más utilizados son `multipart/form-data`, `x-www-form-urlencoded` y JSON. Cada uno tiene sus características y se usa según el tipo de datos que necesitemos enviar.

- **Multipart/form-data** es el formato ideal para enviar archivos junto con otros datos, ya que permite dividir los datos en partes y manejar de manera eficiente archivos binarios como imágenes o documentos.
- **x-www-form-urlencoded** es un formato de texto simple en el que los datos se envían en pares de clave-valor, muy utilizado en formularios HTML tradicionales, pero sin soporte para archivos binarios.
- **JSON** es un formato ligero y ampliamente utilizado para intercambiar datos estructurados entre el cliente y el servidor. Es ideal para enviar información de texto, pero no maneja archivos directamente.

En esta explicación, veremos cómo y cuándo usar cada uno de estos formatos según las necesidades de tu aplicación web.

{:.subsection}
### Usar el método POST

Para enviar datos a un servidor, se puede usar el método POST con `fetch`.

```javascript
fetch("https://jsonplaceholder.typicode.com/posts", {
  method: 'post',
  headers: {
    "Content-type": "application/x-www-form-urlencoded; charset=UTF-8"
  },
  body: 'foo=bar&lorem=ipsum'
})
  .then(response => response.json())
  .then(function (data) {
    console.log('Request succeeded with JSON response', data);
  })
  .catch(function (error) {
    console.log('Request failed', error);
  });
```

{:.question}
¿Sabrías hacer la petición anterior utilizando la interfaz de usuario de Postman?

En este ejemplo, se envían datos codificados en la URL (formato de formulario) al servidor.

En el siguiente ejemplo se usa `multipart/form-data` para poder adjuntar ficheros:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <form id="fileForm">
    <input type="file" id="fileInput">
    <button type="submit">Enviar</button>
  </form>

  <script src="./script.js"></script>

</body>
</html>
```

```javascript
document
.getElementById("fileForm")
.addEventListener("submit", function (event) {
  event.preventDefault();
  const fileInput = document.getElementById("fileInput");

  const file = fileInput.files[0]; // Obtiene el archivo seleccionado
  
  const formData = new FormData();
  formData.append("archivo", file); // "archivo" es el nombre del campo
  
  fetch("https://httpbin.org/anything", {
    method: "POST",
    body: formData, // Enviamos el FormData con el archivo
  })
    .then(response => response.json())
    .then(data => console.log("Archivo subido:", data))
    .catch(error => console.error("Error:", error));
  });
```

{:.subsubsection}
#### Enviar JSON

Para enviar datos en formato JSON, se debe configurar el encabezado `Content-Type` y convertir el objeto de datos a JSON.

```javascript
let datos = { username: 'example' };

fetch("https://jsonplaceholder.typicode.com/posts", {
  method: 'post',
  headers: {
    "Content-type": "application/json; charset=UTF-8"
  },
  body: JSON.stringify(datos)
})
  .then(response => response.json())
  .then(function (data) {
    console.log('Request succeeded with JSON response', data);
  })
  .catch(function (error) {
    console.log('Request failed', error);
  });
```

En este ejemplo, un objeto JavaScript se convierte a JSON y se envía al servidor.

{:.subsubsection}
#### Uso de FormData

`FormData` es un objeto predefinido en JavaScript que se utiliza para crear pares clave-valor para enviar formularios mediante `XMLHttpRequest` o `fetch`.

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="./styles.css">
</head>
<body>
  <form id="myFormElement">
    <label>Dato dentro del formulario: </label>
    <input name="patata" value="valor">
    <input type="submit" value="Click para enviar!">
  </form>

  <div class="noForm">
    <label>Dato fuera del formulario: </label>
    <input type="file" id="fileInputElement">
  </div>

  <script src="./script.js"></script>

</body>
</html>
```

```javascript
let serialNumber = 0;

document
  .getElementById("myFormElement")
  .addEventListener("submit", function (event) {
    event.preventDefault();

    let formElement = document.getElementById("myFormElement"); // Un formulario HTML
    let formData = new FormData(formElement); // Constructor de FormData con un formulario

    formData.append("serialnumber", serialNumber++); // Añadir más datos

    // Añadir un archivo
    let fileInputElement = document.getElementById("fileInputElement")
    formData.append("afile", fileInputElement.files[0]);

    fetch('https://httpbin.org/post', { method: 'POST', body: formData })
      .then(response => response.json())
      .then(function (data) {
        console.log('Request succeeded with JSON response', data);
      })
      .catch(function (error) {
        console.log('Request failed', error);
      });
  })
```

Este ejemplo muestra cómo crear un objeto `FormData` a partir de un formulario HTML y enviar datos adicionales, incluyendo un archivo, al servidor.

{:.subsubsection}
#### Convertir FormData a JSON

Para enviar `FormData` como JSON, se puede convertir a un objeto JavaScript y luego a una cadena JSON.

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>

  <form id="myFormElement">
    <input name="clavePatata" value="valorPatata">
    <input name="claveBerenjena" value="valorBerenjena">
    <input type="submit" value="Click para enviar!">
  </form>

  <script src="./script.js"></script>

</body>
</html>
```

```javascript
document
  .getElementById("myFormElement")
  .addEventListener("submit", function (event) {
    event.preventDefault();

    let form = document.getElementById("myFormElement")
    let data = new FormData(form);
    let body = JSON.stringify(Object.fromEntries(data));

    return fetch("https://httpbin.org/anything", {
      method: 'POST',
      headers: {
        "Content-type": "application/json; charset=UTF-8"
      },
      body
    })
      .then(response => response.json())
      .then(function (data) {
        console.log('Request succeeded with JSON response', data);
      })
      .catch(function (error) {
        console.log('Request failed', error);
      });;

  })
```

En este ejemplo, se convierte `FormData` en un objeto JSON antes de enviarlo.

{:.subsection}
### Cargar Imágenes en Segundo Plano

Es posible cargar imágenes en segundo plano utilizando `fetch` y el método `blob`.

```javascript
<img src="placeholder.png" alt="${name}">
```

```javascript
fetch("https://httpbin.org/image/png")
  .then(response => response.status == 200 ? response : Promise.reject(response.status))
  .then(response => response.blob())
  .then(imageBlob => {
    let imageURL = URL.createObjectURL(imageBlob);
    document.querySelector('img').src = imageURL;
  })
  .catch(error => console.log(error));
```

Este ejemplo muestra cómo cargar una imagen en segundo plano y actualizar la fuente de una etiqueta `<img>` con la URL del blob de la imagen.

La función `URL.createObjectURL(blob)` es un método del API de URL en JavaScript que permite crear una URL temporal, de tipo “blob”, que representa un objeto de datos (`Blob` o `File`) en el navegador. Esta URL puede ser utilizada para acceder y manipular el contenido del objeto de datos como si fuera un archivo disponible en una URL normal.

`URL.createObjectURL(blob)` crea una URL única que representa el objeto `Blob` (o `File`). Esta URL es válida mientras el documento que la creó esté en memoria, y se puede usar como referencia al contenido del objeto de datos. La URL generada permite acceder y manipular el contenido del `Blob` como si fuera un archivo remoto. La URL no requiere que los datos sean enviados a un servidor; todo se maneja localmente en el navegador. La URL generada puede ser asignada a elementos HTML, como `<img>`, `<video>`, `<audio>`, o cualquier otro elemento que acepte una URL de recursos. También se puede usar para descargar archivos, mostrar previsualizaciones, o procesar datos de archivos de manera local.

Las URLs creadas con `URL.createObjectURL(blob)` ocupan recursos en el navegador. Para liberar estos recursos cuando ya no se necesite la URL, se debe llamar a `URL.revokeObjectURL(url)`:

```javascript
const objectURL = URL.createObjectURL(file);
// Usar la URL...
URL.revokeObjectURL(objectURL); // Liberar la URL cuando ya no sea necesaria
```

{:.subsection}
### Construcción de URLs

`fetch` puede utilizar URLs construidas dinámicamente. Esto es útil cuando los parámetros de la consulta cambian en tiempo de ejecución.

{:.subsubsection}
#### Ejemplo sin URLSearchParams

```javascript
// Obtenemos los comentarios del post 1
let num = 1
let url = `https://jsonplaceholder.typicode.com/posts/${num}/comments`

fetch(`https://jsonplaceholder.typicode.com/posts/${num}/comments`)
  .then(response => response.json())
  .then(function (data) {
    console.log('Request succeeded with JSON response', data);
  })
  .catch(function (error) {
    console.log('Request failed', error);
  })

// Obtenemos los comentarios del siguiente post
num++
url = `https://jsonplaceholder.typicode.com/posts/${num}/comments`

fetch(url)
  .then(response => response.json())
  .then(function (data) {
    console.log('Request succeeded with JSON response', data);
  })
  .catch(function (error) {
    console.log('Request failed', error);
  })
```

{:.subsubsection}
#### Ejemplo de crear una URL con URLSearchParams

```javascript
url = `/api/cities?${new URLSearchParams([['country', country]])}`;

fetch(url);
//"/api/cities?country=Saint+Vincent+%26+the+Grenadines"
```

En este ejemplo, se construye una URL con parámetros de consulta utilizando `URLSearchParams`, asegurándose de que los caracteres especiales estén correctamente codificados.

{:.subsubsection}
#### Ejemplo de acceder a los parámetros de una URL con URLSearchParams

Si usamos el constructor con una URL ya formada nos retorna un objeto `URLSearchParams`, que es un iterable con los datos:

```javascript
const url = new URL("http://example.com/search?query=%40");
const searchParams3 = new URLSearchParams(url.search);
console.log(searchParams3.has("query")); // true
```

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/ajax.html>
- <https://developer.mozilla.org/es/docs/Learn_web_development/Core/Scripting/Network_requests>

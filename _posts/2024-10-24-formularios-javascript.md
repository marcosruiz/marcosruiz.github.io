---
title: "Formularios en JavaScript"
date: 2024-10-24 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/formularios-javascript/
---

{:.section}
## Introducción

En este artículo vamos a ver como enviar y probar formularios utilizando javascript.

{:.section}
## Formas de selección del objeto form con JavaScript

Dentro de un documento tendremos varias formas de selección de un formulario.

Si partimos del siguiente ejemplo:

```html
<div  id="menulateral">
  <form  id="contactar" name="contactar" action="...">...</form>
</div>
```

Tendremos los siguientes métodos de selección del objeto `form` en el documento:

- A través del método `getElementById()` del DOM, nos permite acceder a un objeto a través de su atributo ID. Tendremos que tener la precaución de asignar id únicos a nuestros objetos, para evitar que tengamos objetos con id repetidos:

```javascript
let formulario = document.getElementById("contactar");
```

- A través del método `getElementsByTagName()` del DOM, el cuál nos permite acceder a un objeto a través de la etiqueta HTML que queramos. Por ejemplo para acceder a los objetos con etiqueta form haremos:

```javascript
let formularios = document.getElementsByTagName("form");
let primerFormulario = formularios[0]; // primer formulario del documento
```

o también todo en una única línea:

```javascript
let primerFormulario = document.getElementsByTagName("form")[0] ;
```

Otra posibilidad interesante que te permite el método anterior, es la de buscar objetos con un padre determinado, por ejemplo:

```javascript
let menu = document.getElementById("menulateral");
let formularios = menu.getElementsByTagName("form"); // formularios contenidos en el menu lateral
let primerFormulario =  formularios[0]; // primer formulario en el menú lateral
```

- Otro método puede ser a través de la colección `forms[]` del objeto `document`. Esta colección es un array, que contiene la referencia a todos los formularios que tenemos en nuestro documento.

```javascript
let formularios = document.forms; // la referencia a todos los formularios del documento
let miFormulario = formularios[0]; // primer formulario del documento
```

o bien:

```javascript
let miFormulario = document.forms[0]; // primer formulario del documento
```

o bien:

```javascript
let miFormulario = formularios["contactar"]; // referenciamos al formulario con name "contactar"
```

{:.section}
## Formas de seleccionar los hijos de form con JavaScript

Una vez visto cómo referenciar a un formulario en JavaScript, tenemos que saber cómo acceder a cada uno de los elementos u objetos, que contiene ese formulario.

Cada uno de los elementos de un formulario, son objetos en JavaScript que tendrán propiedades y métodos, que nos permitirán realizar acciones sobre ellos. Gracias a esos métodos y propiedades, podremos realizar acciones como validar el contenido de un formulario, marcar o desmarcar una determinada opción, mostrar contenido de un campo u ocultarlo, etc.

Por ejemplo, si consideramos un ejemplo sencillo de formulario:

```html
<form  id="formularioBusqueda"  action="cgi-bin/buscar.pl">
  <p>
    <input type="text"  id="entrada"  name="cEntrada">
    <input type="submit"  id="enviar"  name="enviar"  value="Buscar...">
  </p>
</form>
```

Las siguientes referencias al campo de texto entrada, serán todas válidas:

```javascript
document.getElementById("entrada");
document.formularioBusqueda.cEntrada;
document.formularioBusqueda.elements[0];
document.forms["formularioBusqueda"].elements["cEntrada"];
document.forms["formularioBusqueda"].cEntrada;
```

Aunque muchos de los controles de un formulario tienen propiedades en común, algunas propiedades son únicas a un control en particular. Por ejemplo, en un objeto select tienes propiedades que te permiten conocer la opción que está actualmente seleccionada. Al igual que los `checkbox` es o los botones de tipo `radio`, que también disponen de propiedades para saber cuál es la opción que está actualmente seleccionada.

{:.section}
## Enviar formulario por JavaScript

Podemos enviar un formulario mediante JavaScript utilizando el método `submit()`. Esto es útil cuando queremos enviar el formulario después de realizar alguna operación adicional o validación personalizada.

{:.subsection}
### Ejemplo de envío por JavaScript

> Recuerda que puedes utilizar el mismo servidor de Node que hay en [Formularios en HTML](/posts/formularios-html/) para probar todos los formularios.
{:.prompt-info}

```html
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>
  <form id="formulario">
    <input type="text" name="tuberculo" value="patata">
    <button onclick="enviarFormulario()" id="buttonSubmit">Enviar</button>
  </form>
  <script src="script.js"></script>
</body>

</html>
```
{: file="index.html" }

```javascript
function enviarFormulario() {
  let formulario = document.getElementById("formulario");
  formulario.submit();
}
```
{: file="script.js" }

<details class="card mb-2">
  <summary class="card-header question">¿Qué Content-Type estamos usando? ¿Cómo lo podemos saber?</summary>
  <div class="card-body" markdown="1">

En este caso estamos usando `Content-Type: multipart/form-data;` a pesar de ser un formulario con solo texto.

En el caso de utilizar Mozilla Firefox lo podemos averiguar de la siguiente manera:

![alt text](requestHeaders.png)
_Request headers_

Además, podemos ver exactamente que información estamos enviando:

![alt text](requestPayload.png)
_Request payload_

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Pero si no nos vale con enviar el formulario con `submit()` y queremos manipular sus datos antes de enviar o enviar a una API por POST manualmente, obtendremos el contenido `input` por `input` o con `FormData`:

```html
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>
  <form id="formulario">
    <input type="text" name="tuberculo" value="patata">
    <button id="buttonSubmit">Enviar</button>
  </form>
  <script src="script.js"></script>
</body>

</html>
```
{: file="index.html" }

```javascript
document.querySelector("#buttonSubmit").addEventListener("click", (event) => {
  event.preventDefault();

  const formulario = document.getElementById("formulario");
  const formData = new FormData(formulario)

  fetch("http://localhost:3003/upload", {
    method: "POST",
    body: formData, // Enviar los datos del formulario
  })
});
```
{: file="script.js" }

{:.question}
¿Qué `Content-Type` estamos usando?

{:.subsection}
### Envío de datos con fetch en formato JSON

{:.subsection}
### Ejemplo

Este ejemplo demuestra cómo utilizar pseudo-clases CSS para estilizar formularios con validación interna en HTML.

```html
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Formulario con Validación</title>
  <link rel="stylesheet" href="styles.css">
</head>

<body>
  <h1>Enviar datos en formato JSON con JavaScript</h1>
  <form id="fileForm" enctype="multipart/form-data">
      <button type="submit">Enviar</button>
  </form>

  <script src="script.js"></script>
</body>

</html>
```
{: file="index.html" }

```javascript
document.getElementById('form').addEventListener('submit', function (event) {
  event.preventDefault();

  fetch('http://localhost:3003/update', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'  // Indica que los datos son JSON
    },
    body: JSON.stringify({
      nombre: 'Juan',
      edad: 30
    })
  })
    .then(response => response.json())
    .then(data => console.log(data))
    .catch(error => console.error('Error:', error));
});
```
{: file="script.js" }

{:.section}
## Ficheros en formularios

Enviar ficheros al servidor mediante un formulario HTML es una tarea común que se realiza utilizando un `input` de tipo `file`. El tratamiento de los ficheros puede diferir del de otros elementos del formulario.

Para entender mejor este apartado, también hay que dominar la comunicación `fetch` con el servidor.

{:.subsection}
### Envío de ficheros con fetch de JavaScript

Para enviar un fichero en un formulario tradicional, simplemente se crea un `FormData` a partir del formulario y se envía utilizando un método HTTP como `POST`. Los formularios tradicionales aceptan binarios a través del MIME, lo cual facilita este proceso.

Aquí hay un ejemplo de cómo hacerlo:

```html
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Formulario con Validación</title>
    <link rel="stylesheet" href="styles.css" />
  </head>

  <body>
    <h1>Formulario HTML desde JavaScript</h1>

    <form id="fileForm" enctype="multipart/form-data">
      <input type="file" name="file" id="fileInput" />
      <button type="submit">Enviar</button>
    </form>

    <script src="script.js"></script>
  </body>
</html>

```
{: file="index.html" }

```javascript
document.getElementById('fileForm').addEventListener('submit', function (event) {
  event.preventDefault();
  const formData = new FormData(this); // this es el formulario
  fetch('http://localhost:3003/update', {
    method: 'POST',
    body: formData
  })
    .then(response => response.json())
    .then(data => console.log(data))
    .catch(error => console.error('Error:', error));
});
```
{: file="script.js" }

{:.question}
¿Qué `Content-Type` estamos usando?

1. Se crea un formulario con `enctype="multipart/form-data"` para manejar la subida de ficheros.
1. En el evento `submit` del formulario, se previene el comportamiento por defecto.
1. Se crea un objeto `FormData` a partir del formulario y se envía con `fetch` usando el método `POST`.

{:.subsection}
### Envío de ficheros con fetch de JavaScript y datos extra

Con el anterior documento HTML podemos modificar el `script.js` para añadir inputs nuevos directamente sobre el objeto `FormData`.

```javascript
document.getElementById('fileForm').addEventListener('submit', function (event) {
  event.preventDefault();

  const fileInput = document.getElementById('file');

  const formData = new FormData();
  formData.append('name', 'patata');
  formData.append('file', fileInput.files[0]);

  // No es necesario añadir el Content-Type
  fetch('http://localhost:3003/update', {
    method: 'POST',
    body: formData
  })
    .then(response => response.json())
    .then(data => console.log('Archivo subido:', data))
    .catch(error => console.error('Error:', error));
});
```
{: file="script.js" }

{:.subsection}
### Envío de ficheros utilizando JSON

Si queremos enviar los datos con JSON, el proceso es un poco más complejo, ya que JSON no puede manejar binarios directamente. Para resolver esto, se puede convertir el fichero en una cadena en formato `Base64` antes de enviarlo.

Aquí hay un ejemplo de cómo hacerlo:

```javascript
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Formulario con Validación</title>
  <link rel="stylesheet" href="styles.css">
</head>

<body>
  <h1>Subir un JSON con un fichero codificado en Base64</h1>
  
  <form id="fileForm" enctype="multipart/form-data">
      <input type="file" name="file" id="fileInput">
      <button type="submit">Enviar</button>
  </form>

  <script src="script.js"></script>
</body>

</html>
```
{: file="index.html" }

```javascript
// Función para convertir archivo a Base64
function toBase64(file) {
  return new Promise((resolve, reject) => {
    const reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onload = () => resolve(reader.result.split(',')[1]); // Elimina el prefijo 'data:tipo;base64,'
    reader.onerror = (error) => reject(error);
  });
}

document.getElementById('fileForm').addEventListener('submit', async function (event) {
  event.preventDefault();

  const fileInput = document.getElementById("fileInput");
  if (fileInput.files.length === 0) {
    alert("Selecciona un archivo");
    return;
  }

  const file = fileInput.files[0]; // Obtener el archivo seleccionado
  const base64String = await toBase64(file); // Convertir a Base64

  const jsonData = JSON.stringify({
    nombre: 'Juan',
    edad: 30,
    contenidoFichero: base64String
  });

  fetch('http://localhost:3003/update', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'  // Indica que los datos son JSON
    },
    body: jsonData
  })
    .then(response => response.json())
    .then(data => console.log(data))
    .catch(error => console.error('Error:', error));
});
```
{: file="script.js" }

1. Se crea un formulario sin especificar `enctype`.
1. En el evento `submit`, se previene el comportamiento por defecto.
1. Se obtiene el fichero del `input` y se utiliza `FileReader` para leer el fichero como una URL de datos.
1. Se convierte la URL de datos en una cadena Base64.
1. Se crea un objeto JSON con el nombre, tipo y datos del fichero en Base64.
1. Se envía el objeto JSON utilizando fetch con el método POST y el encabezado `Content-Type` establecido como `application/json`.

Algunos servicios como supabase aceptan que se les envíe los binarios con el método tradicional y los datos textuales en JSON, eso implica dos peticiones.

## Bibliografía

- <https://xxjcaxx.github.io/libro_dwec/dom.html>
- <https://lenguajejs.com/>
- <https://learnxinyminutes.com/docs/es-es/javascript-es/>

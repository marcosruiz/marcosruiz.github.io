---
title: "Formularios en JavaScript"
date: 2024-10-24 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/formularios-javascript/
---

> Artículo en construcción.
{:.prompt-warning}

## Introducción

En una aplicación web, la validación de los formularios se realiza tanto en el lado del cliente como en el del servidor.

De hecho, la única validación estrictamente necesaria se debe hacer en el servidor para evitar peticiones ilegales por clientes como postman o `curl`.

Pero se puede usar Javascript para mucho más que validar formularios. Por ejemplo, nos puede ayudar a autocompletar campos, descargar datos en segundo plano o tratar con imágenes o datos complejos antes de enviar al servidor.

{:.question}
¿Qué es postman?

{:.question}
¿Qué es `curl`?

## Atributos de los formularios

El contenido de los campos de entrada en un formulario se puede visualizar y modificar utilizando el atributo `value`. Otros elementos del formulario, como los botones de opción (`radio button`) y las casillas de verificación (`checkbox`), deben tener un `name` común y también utilizan los atributos `value` y `checked`. Para los elementos `select`, se utilizan los atributos `options` y `selectedIndex`.

Observa el ejemplo a continuación, que usa la manera (obsoleta) de asociar eventos `onclick` para ejecutar una función que informe de los valores de los inputs del formulario:

```html
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Formulario de Ejemplo</title>
</head>

<body>
  <form id="exampleForm">
    <label for="textInput">Texto:</label>
    <input type="text" id="textInput" value="Texto inicial"><br><br>

    <label>Opciones:</label>
    <input type="radio" name="options" value="opcion1" checked> Opción 1
    <input type="radio" name="options" value="opcion2"> Opción 2<br><br>

    <label for="checkboxInput">Casilla:</label>
    <input type="checkbox" id="checkboxInput" checked><br><br>

    <label for="selectInput">Selecciona:</label>
    <select id="selectInput">
      <option value="1">Opción 1</option>
      <option value="2" selected>Opción 2</option>
      <option value="3">Opción 3</option>
    </select><br><br>

    <button type="button" onclick="manipulateValues()">Ver y Manipular Valores</button>
  </form>

  <script src="script.js"></script>
</body>

</html>
```

```javascript
function manipulateValues() {
  // Obtener el valor del campo de texto
  let textInput = document.getElementById("textInput");
  console.log("Valor del campo de texto:", textInput.value);
  textInput.value = "Nuevo texto";

  // Obtener el valor del radio button seleccionado
  let selectedOption = document.querySelector('input[name="options"]:checked');
  console.log("Valor del radio button seleccionado:", selectedOption.value);
  // Cambiar la selección del radio button
  document.querySelector(
    'input[name="options"][value="opcion2"]'
  ).checked = true;

  // Obtener el valor del checkbox
  let checkboxInput = document.getElementById("checkboxInput");
  console.log("Checkbox está marcado:", checkboxInput.checked);
  // Cambiar el estado del checkbox
  checkboxInput.checked = !checkboxInput.checked;

  // Obtener el valor del select
  let selectInput = document.getElementById("selectInput");
  console.log("Valor del select:", selectInput.value);
  // Cambiar la selección del select
  selectInput.value = "3";
}
```

## Ciclo Tradicional del Formulario

Tradicionalmente, un formulario está diseñado para enviar datos mediante HTTP al servidor. Al enviar (submit) un formulario, el navegador empaqueta los datos y los envía utilizando el método HTTP especificado (como GET o POST). Los formularios pueden incluir validación interna mediante HTML, lo que es más rápido que JavaScript pero ofrece menos control y personalización. La validación interna de HTML genera pseudo-clases que pueden estilizarse con CSS.

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
  <form id="validationForm">
    <label for="name">Nombre:</label>
    <input type="text" id="name" name="name" required><br><br>

    <label for="email">Correo Electrónico:</label>
    <input type="email" id="email" name="email" required><br><br>

    <label for="password">Contraseña:</label>
    <input type="password" id="password" name="password" required minlength="6"><br><br>

    <button type="submit">Enviar</button>
  </form>

  <script src="script.js"></script>
</body>

</html>
```

```css
/* Estilos básicos */
form {
  width: 300px;
  margin: 0 auto;
}

label {
  display: block;
  margin-bottom: 5px;
}

input {
  width: 100%;
  padding: 8px;
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

/* Pseudo-clases para la validación */
input:required {
  border-left: 5px solid #0000FF;
  /* Borde azul para campos requeridos */
}

input:valid {
  border-left: 5px solid #00FF00;
  /* Borde verde para campos válidos */
}

input:invalid {
  border-left: 5px solid #FF0000;
  /* Borde rojo para campos inválidos */
}

/* Pseudo-clase para campo enfocado */
input:focus {
  outline: none;
  border-color: #66AFE9;
  box-shadow: 0 0 8px rgba(102, 175, 233, 0.6);
}
```

```javascript
document
  .getElementById("validationForm")
  .addEventListener("submit", function (event) {
    event.preventDefault(); // Evita el envío del formulario para la demostración
    alert("Formulario enviado correctamente (validación exitosa)");
  });
```

Este ejemplo demuestra cómo utilizar pseudo-clases CSS para estilizar formularios con validación interna en HTML.

## Ciclo del Formulario con JavaScript

Podemos interceptar y detener el ciclo por defecto de un formulario para validarlo y enviarlo utilizando JavaScript. De esta manera, podemos evitar tener un botón `submit` y controlar completamente el proceso de envío. Si el formulario envía datos al servidor y se refresca, JavaScript pierde el control del programa. Para evitar esto, podemos utilizar `preventDefault()` dentro del evento `submit` o devolver `false`.

### Ejemplo de cómo interceptar el evento submit con JavaScript

Podemos manejar eventos de formularios para personalizar su comportamiento. Un ejemplo común es el uso del evento `onsubmit` para ejecutar una función de validación antes de enviar el formulario. Si la función de validación devuelve `true`, el formulario se envía; de lo contrario, se cancela el envío.

```html
<form id="formulario" onsubmit="return validar();">
  <input type="text" id="phone-number" required>
  <button type="submit">Enviar</button>
</form>

<script>
function validar() {
  var phoneNumber = document.getElementById('phone-number').value;
  var phoneRGEX = /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
  var phoneResult = phoneRGEX.test(phoneNumber);
  alert("phone: " + phoneResult);
  return phoneResult; // Retorna true si es válido, de lo contrario false
}
</script>
```

## Enviar Formulario por JavaScript

Podemos enviar un formulario mediante JavaScript utilizando el método `submit()`. Esto es útil cuando queremos enviar el formulario después de realizar alguna operación adicional o validación personalizada.

### Ejemplo de envío por JavaScript

```html
<button onclick="enviarFormulario()">Enviar</button>

<script>
  function enviarFormulario() {
    let formulario = document.getElementById("formulario");
    formulario.submit();
  }
</script>
```

Pero si no nos vale con enviar el formulario con `submit()` y queremos manipular sus datos antes de enviar o enviar a una API por POST manualmente, obtendremos el contenido input por input o con `FormData`:

```javascript
div.querySelector("#buttonSubmit").addEventListener("click", async (event) => {
  event.preventDefault();
  const newProfile = Object.fromEntries(
    new FormData(div.querySelector("form")).entries()
  );
  updateCurrentProfile(newProfile); // Le pasamos un objeto. Aunque en una petición POST tradicional podemos enviar un FormData directamente con fetch
});
```

## Validación de formularios

Puesto que podemos interceptar el ciclo del formulario o atender a cualquier evento y leer y escribir el value de los inputs, validar el formulario es sencillo. No obstante, cuando hay que hacer muchos formularios o muy grandes, el código puede resultar farragoso. En ese caso, hay técnicas como crear funciones validadoras que hacen el código más sencillo y fácil de mantener.

### Expresiones Regulares

Los campos de los formularios pueden ser validados utilizando expresiones regulares.

Lee el artículo [Expresiones regulares](/posts/expresiones-regulares/).

### Validación mediante la API de validación de formularios

Mediante JavaScript tenemos acceso a todos los campos del formulario por lo que podemos hacer la validación como queramos, pero es una tarea pesada, repetitiva y que provoca código espaguetti difícil de leer y mantener más adelante.

{:.question}
¿Qué es el código espaguetti?

Para hacerla más simple podemos usar la API de validación de formularios de HTML5 que permite que sea el navegador quien se encargue de comprobar la validez de cada campo pero las acciones (mostrar mensajes de error, no enviar el formulario, etc.) las realizamos desde Javascript.

Esto nos da la ventaja de:

- Los requisitos de validación de cada campo están como atributos HTML de dicho campo por lo que son fáciles de ver.
- Nos evitamos la mayor parte del código dedicada a comprobar si el contenido del campo es válido. Nosotros mediante la API sólo preguntamos si se cumplen o no y tomamos las medidas adecuadas.
- Aprovechamos las pseudo-clases `:valid` o `:invalid` que el navegador pone automáticamente a los campos por lo que no tenemos que añadirles clases para destacarlos.

Las principales propiedades y métodos que nos proporciona esta API son:

- `checkValidity()`: método booleano que nos dice si el campo al que se aplica es o no válido. También se puede aplicar al formulario para saber si es válido o no.
- `setCustomValidity(mensaje)`: añade un error personalizado al campo (que ahora ya NO será válido para el navegador) con el mensaje pasado como parámetro. Por ejemplo podemos usarlo para indicar que el nick elegido no es válido porque ya está en uso por otro usuario. Para quitar este error se hace `setCustomValidity('')`.
- `validationMessage`: en caso de que un campo no sea válido esta propiedad contiene el texto del error de validación proporcionado por el navegador. Si es válido esta propiedad es una cadena vacía.
- `validity` ([documentación aquí](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState)): es un objeto que tiene propiedades booleanas para saber qué requisito del campo es el que falla:
  - `valueMissing`: indica si no se cumple el atributo `required` (es decir, valdrá true si el campo tiene el atributo required pero no se ha introducido nada en él).
  - `typeMismatch`: indica si el contenido del campo no cumple con su atributo `type` (ej. `type="email"`).
  - `patternMismatch`: indica si no se cumple con el `pattern` indicado en su atributo.
  - `tooShort` / `tooLong`: indican si no se cumple el atributo `minlength` o `maxlength` respectivamente.
  - `rangeUnderflow` / rangeOverflow: indica si no se cumple el atributo `min` / `max`.
  - `stepMismatch`: indica si no se cumple el atributo `step` del campo.
  - `customError`: indica al campo se le ha puesto un error personalizado con `setCustomValidity`.
  - `valid`: indica si es campo es válido.

En la página de [W3Schools](https://www.w3schools.com/js/js_validation_api.asp) podéis ver algún ejemplo básico de esto. También a continuación tenéis un ejemplo simple del valor de las diferentes propiedades involucradas en la validación de un campo de texto que es obligatorio y cuyo tamaño debe estar entre 5 y 50 caracteres:

```html
<label>Nombre:</label>
<input type="text" required minlength="5" maxlength="50">
<span id="error" class="error"></span>
<button id="comprueba">Comprueba</button>
<p>checkValidity: <span id="checkValidity"></span></p>
<p>validationMessage: <span id="validationMessage"></span></p>
<p>validity.valueMissing: <span id="valueMissing"></span></p>
<p>validity.tooShort: <span id="tooShort"></span></p>
<p>validity.tooLong: <span id="tooLong"></span></p>
```

```javascript
document.getElementById('comprueba').addEventListener('click', (event) => {
  const inputName = document.getElementsByTagName('input')[0];

  document.getElementById('error').innerHTML = inputName.validationMessage;
  document.getElementById('checkValidity').innerHTML = inputName.checkValidity();
  document.getElementById('validationMessage').innerHTML = inputName.validationMessage;
  document.getElementById('valueMissing').innerHTML = inputName.validity.valueMissing;
  document.getElementById('tooShort').innerHTML = inputName.validity.tooShort;
  document.getElementById('tooLong').innerHTML = inputName.validity.tooLong;
})
```

```css
.error {
  color: red;
}
```

Para validar un formulario nosotros pero usando esta API debemos añadir al FORM el atributo novalidate que hace que no se encargue el navegador de mostrar los mensajes de error ni de decidir si se envía o no el formulario (aunque sí valida los campos) sino que lo haremos nosotros.

Como puedes ver, en caso de que un campo no sea válido, se puede manipular las clases CSS o mostrar un mensaje de error. Aquí entra el tema de la usabilidad. Estamos muy acostumbrados a un comportamiento de los formularios que nos informe de si estamos haciendo las cosas bien. Por ejemplo: un `input` que no haya sido manipulado de momento, no debería mostrarse como erróneo. Pero si ya se ha escrito algo en él y saltamos de `input`, ya debería mostrarse como erróneo. Esto también puede ser farragoso y siempre es mejor separar por funciones puras la validación y la aplicación de estilos.

{:.subsubsection}
#### Ejemplo

Un ejemplo sencillo de validación de un formulario podría ser:

```html
<form novalidate>
  <label for="nombre">Por favor, introduzca su nombre (entre 5 y 50 caracteres): </span>
  <input type="text" id="nombre" name="nombre" required minlength="5" maxlength="50">
  <span class="error"></label>
  <label for="mail">Por favor, introduzca una dirección de correo electrónico: </label>
  <input type="email" id="mail" name="mail" required minlength="8">
  <span class="error"></span>
  <button type="submit">Enviar</button>
</form>
```
{: file="index.html" }

```javascript
const form  = document.getElementsByTagName('form')[0];

const nombre = document.getElementById('nombre');
const nombreError = document.querySelector('#nombre + span.error');
const email = document.getElementById('mail');
const emailError = document.querySelector('#mail + span.error');

form.addEventListener('submit', (event) => {
  if(!form.checkValidity()) {
    event.preventDefault();
  }
  nombreError.textContent = nombre.validationMessage;
  emailError.textContent = email.validationMessage;
});
```
{: file="main.js" }

```css
.error {
  color: red;
}

input:invalid {
  border: 2px dashed red;
}
```
{: file="style.css" }

Estamos usando:

- `ValidationMessage` para mostrar el posible error de cada campo, o quitar el error cuando el campo sea válido.
- `CheckValidity()` para no enviar/procesar el formulario si contiene errores.

Si no nos gusta el mensaje del navegador y queremos personalizarlo podemos hacer una función que reciba un `<input>` y usando su propiedad validity devuelva un mensaje en función del error detectado:

```javascript
function customErrorValidationMessage(input) {
  if (input.checkValidity()) {
    return ''
  }
  if (input.validity.valueMissing) {
    return 'Este campo es obligatorio'
  }
  if (input.validity.tooShort) {
    return `Debe tener al menos ${input.minLength} caracteres` 
  }
  // Y seguiremos comprobando cada atributo que hayamos usado en el HTML
  return 'Error en el campo'   // por si se nos ha olvidado comprobar algo
}
```

Y ahora en vez de `nombreError.textContent = nombre.validationMessage` haremos `nombreError.textContent = customErrorValidationMessage(nombre)`.

Si tenemos que validar algo que no puede hacerse mediante atributos HTML (por ejemplo si el nombre de usuario ya está en uso) deberemos hacer la validación "a mano" y en caso de no ser válido ponerle un error con `.setCustomValidation()`, pero debemos recordar quitar el error si todo es correcto o el formulario siempre será inválido. Modificando el ejemplo:

```javascript
const nombre = document.getElementById('nombre');
const nombreError = document.querySelector('#nombre + span.error');

form.addEventListener('submit', (event) => {
  if (nombreEnUso(nombre.value)) {
    nombre.setCustomValidation('Ese nombre de usuario ya está en uso')
  } else {
    nombre.setCustomValidation('')  // Se quita el error personalizado
  }

  if(!form.checkValidity()) {
    ...
  }
})
```

> Existen múltiples librerías que facilitan enormemente el tedioso trabajo de validar un formulario. Un ejemplo es [yup](https://www.npmjs.com/package/yup).
{:.prompt-info}

## Ficheros en formularios

Enviar ficheros al servidor mediante un formulario HTML es una tarea común que se realiza utilizando un `input` de tipo `file`. El tratamiento de los ficheros puede diferir del de otros elementos del formulario.

Para entender mejor este apartado, también hay que dominar la comunicación `fetch` con el servidor.

### Envío de ficheros con un formulario tradicional

Para enviar un fichero en un formulario tradicional, simplemente se crea un `FormData` a partir del formulario y se envía utilizando un método HTTP como `POST`. Los formularios tradicionales aceptan binarios a través del MIME, lo cual facilita este proceso.

Aquí hay un ejemplo de cómo hacerlo:

```html
<form id="fileForm" enctype="multipart/form-data">
  <input type="file" name="file" id="fileInput">
  <button type="submit">Enviar</button>
</form>
```

```javascript
document
  .getElementById("fileForm")
  .addEventListener("submit", function (event) {
    event.preventDefault();
    const formData = new FormData(this);
    fetch("/upload", {
      method: "POST",
      body: formData,
    })
      .then((response) => response.json())
      .then((data) => console.log(data))
      .catch((error) => console.error("Error:", error));
  });
```

1. Se crea un formulario con `enctype="multipart/form-data"` para manejar la subida de ficheros.
1. En el evento `submit` del formulario, se previene el comportamiento por defecto.
1. Se crea un objeto `FormData` a partir del formulario y se envía con `fetch` usando el método `POST`.

### Envío de ficheros utilizando JSON

Si queremos enviar los datos con JSON, el proceso es un poco más complejo, ya que JSON no puede manejar binarios directamente. Para resolver esto, se puede convertir el fichero en una cadena en formato `Base64` antes de enviarlo.

Aquí hay un ejemplo de cómo hacerlo:

```javascript
<form id="fileForm">
  <input type="file" id="fileInput">
  <button type="submit">Enviar</button>
</form>
```

```javascript
document
  .getElementById("fileForm")
  .addEventListener("submit", function (event) {
    event.preventDefault();
    const fileInput = document.getElementById("fileInput");
    const file = fileInput.files[0];
    const reader = new FileReader();

    reader.onloadend = function () {
      const base64String = reader.result
        .replace("data:", "")
        .replace(/^.+,/, "");
      const jsonData = {
        fileName: file.name,
        fileType: file.type,
        fileData: base64String,
      };

      fetch("/upload-json", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(jsonData),
      })
        .then((response) => response.json())
        .then((data) => console.log(data))
        .catch((error) => console.error("Error:", error));
    };

    reader.readAsDataURL(file);
  });
```

1. Se crea un formulario sin especificar `enctype`.
1. En el evento `submit`, se previene el comportamiento por defecto.
1. Se obtiene el fichero del `input` y se utiliza `FileReader` para leer el fichero como una URL de datos.
1. Se convierte la URL de datos en una cadena Base64.
1. Se crea un objeto JSON con el nombre, tipo y datos del fichero en Base64.
1. Se envía el objeto JSON utilizando fetch con el método POST y el encabezado `Content-Type` establecido como `application/json`.

Algunos servicios como supabase aceptan que se les envíe los binarios con el método tradicional y los datos textuales en JSON, eso implica dos peticiones.

### Validación de ficheros

Los ficheros deben ser validados en el lado del servidor, pero nosotros también podemos validarlos en la parte de cliente para mejorar la usabilidad. Validar los ficheros en el lado del cliente mejora la usabilidad al proporcionar retroalimentación inmediata a los usuarios sobre cualquier problema con sus archivos antes de que intenten subirlos al servidor. Esto puede ahorrar tiempo y frustración tanto para el usuario como para el servidor.

Aquí hay un ejemplo completo que ilustra cómo realizar estas validaciones en un formulario HTML:

```html
<form id="fileForm">
  <input type="file" id="fileInput">
  <button type="submit">Enviar</button>
  <div id="errorMessage" class="error"></div>
</form>
```

```javascript
document
  .getElementById("fileForm")
  .addEventListener("submit", function (event) {
    event.preventDefault();
    const fileInput = document.getElementById("fileInput");
    const file = fileInput.files[0];
    const errorMessage = document.getElementById("errorMessage");
    errorMessage.textContent = "";

    // Validación del tamaño del fichero (por ejemplo, 2MB máximo)
    const maxSize = 2 * 1024 * 1024; // 2MB
    if (file.size > maxSize) {
      errorMessage.textContent =
        "El fichero es demasiado grande. El tamaño máximo es de 2MB.";
      return;
    }

    // Validación del tipo de fichero
    const allowedTypes = ["image/jpeg", "image/png", "image/gif"];
    if (!allowedTypes.includes(file.type)) {
      errorMessage.textContent =
        "Tipo de fichero no permitido. Solo se permiten imágenes (jpeg, png, gif).";
      return;
    }

    // Validación del nombre del fichero (sin caracteres especiales)
    const regex = /^[a-zA-Z0-9_\-\.]+$/;
    if (!regex.test(file.name)) {
      errorMessage.textContent =
        "El nombre del fichero contiene caracteres no permitidos.";
      return;
    }

    // Si todas las validaciones son correctas, proceder a la subida del fichero
    const reader = new FileReader();
    reader.onloadend = function () {
      const base64String = reader.result
        .replace("data:", "")
        .replace(/^.+,/, "");
      const jsonData = {
        fileName: file.name,
        fileType: file.type,
        fileData: base64String,
      };

      fetch("/upload-json", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(jsonData),
      })
        .then((response) => response.json())
        .then((data) => console.log(data))
        .catch((error) => console.error("Error:", error));
    };

    reader.readAsDataURL(file);
  });
```

### Imágenes en formularios

Las imágenes son un tipo interesante de ficheros, ya que se pueden previsualizar.

```javascript
function encodeFileAsURL(file, callback) {
  if (file) {
    const fileURL = URL.createObjectURL(file);
    callback(fileURL);
  } else {
    console.error("No file provided or file is invalid.");
  }
}

function handleFileInputChange(event, previewElementId) {
  const file = event.target.files[0];
  encodeFileAsURL(file, function (fileURL) {
    document.getElementById(previewElementId).src = fileURL;
  });
}

function attachFileInputHandler(inputElementId, previewElementId) {
  document
    .getElementById(inputElementId)
    .addEventListener("change", function (event) {
      handleFileInputChange(event, previewElementId);
    });
}

// Attach the handler for avatar file input
attachFileInputHandler("avatar", "avatar_prev");
```

Puede que los usuarios envíen imágenes demasiado grandes. Si queremos reducir el tiempo de carga y el espacio en disco del servidor, las podemos reducir antes de enviar. El siguiente ejemplo recoge la imagen, la pone en un canvas virtual y vuelve a recuperar la imagen reducida para enviarla:

```html
<input type="file" id="imageInput" accept="image/*">
<img id="imagePreview" alt="Previsualización de la imagen">
<button id="uploadButton">Subir Imagen</button>
```

```javascript
const resizeImage = (file, maxWidth, maxHeight) => {
  return new Promise((resolve, reject) => {
    const reader = new FileReader();
    reader.addEventListener("load", (event) => {
      const img = new Image();
      img.src = event.target.result;
      img.addEventListener("load", () => {
        const canvas = document.createElement("canvas");
        let width = img.width;
        let height = img.height;

        if (width > height) {
          if (width > maxWidth) {
            height *= maxWidth / width;
            width = maxWidth;
          }
        } else {
          if (height > maxHeight) {
            width *= maxHeight / height;
            height = maxHeight;
          }
        }

        canvas.width = width;
        canvas.height = height;
        const ctx = canvas.getContext("2d");
        ctx.drawImage(img, 0, 0, width, height);

        canvas.toBlob(
          (blob) => {
            if (blob) {
              resolve(blob);
            } else {
              reject(new Error("Error al redimensionar la imagen"));
            }
          },
          file.type,
          0.9
        );
      });
    });
    reader.addEventListener("error", () =>
      reject(new Error("Error al leer el archivo"))
    );
    reader.readAsDataURL(file);
  });
};
```

### Otros ficheros

Hay muchas cosas que se pueden hacer con otro tipo de ficheros antes de subirlos al servidor, o incluso sin subirlos nunca. Por ejemplo, se puede previsualizar el contenido de un fichero de texto:

```javascript
const formFileInput = fileForm.querySelector("#formFile");
formFileInput.addEventListener("change", () => {
    let file = formFileInput.files[0];
    let reader = new FileReader();
    reader.readAsText(file);
    reader.addEventListener("load", () => {
      fileForm.querySelector("#previewFile").innerText = `${reader.result}`;
    });
  });
```

O incluso de un fichero PDF:

```html
<div id="divLogin">
  <input type="file" id="pdfInput" accept="application/pdf">
  <embed id="pdfPreview" type="application/pdf">
</div>
```

```javascript
function previewPDF(file, previewElementId) {
  if (file && file.type === "application/pdf") {
    const fileURL = URL.createObjectURL(file);
    document.getElementById(previewElementId).src = fileURL;
  } else {
    console.error("El archivo seleccionado no es un PDF.");
  }
}
```

También se puede, gracias a HTML5, reproducir un fichero de audio:

```html
<input type="file" id="audioInput" accept="audio/*">
<audio id="audioPreview" controls>
  Tu navegador no soporta el elemento de audio.
</audio>
```

```javascript
function previewAudio(file, previewElementId) {
  if (file && file.type.startsWith("audio/")) {
    const fileURL = URL.createObjectURL(file);
    document.getElementById(previewElementId).src = fileURL;
  } else {
    console.error("El archivo seleccionado no es un audio válido.");
  }
}
```

### El Objeto File

Un objeto `File` en JavaScript representa un archivo que se ha seleccionado a través de un elemento `<input type="file">` o que se ha creado mediante la API de archivos. Este objeto hereda de `Blob` y, por lo tanto, tiene todos los atributos y métodos de un `Blob`, además de algunos atributos específicos para los archivos. Aquí tenemos una lista de los atributos principales del objeto `File` y su utilidad:

- `name`
  - **Descripción**: El nombre del archivo, incluido su extensión.
  - **Utilidad**: Utilizado para mostrar o manipular el nombre del archivo. Por ejemplo, se puede mostrar al usuario el nombre del archivo que se ha seleccionado o utilizarlo para enviarlo al servidor.
- `lastModified`
  - **Descripción**: El timestamp (en milisegundos desde el 1 de enero de 1970) de la última vez que el archivo fue modificado.
  - **Utilidad**: Permite conocer la fecha y hora de la última modificación del archivo. Puede ser útil para sincronización, control de versiones o simplemente para mostrar esta información al usuario.
- `lastModifiedDate` (obsoleto, usar `lastModified` en su lugar)
  - **Descripción**: Un objeto `Date` que representa la fecha de la última modificación del archivo.
  - **Utilidad**: Similar a `lastModified`, pero como un objeto `Date`. Este atributo está obsoleto y no se recomienda su uso.
- `size`
  - **Descripción**: El tamaño del archivo en bytes.
  - **Utilidad**: Permite conocer el tamaño del archivo. Es útil para validar si el archivo cumple con los requisitos de tamaño antes de subirlo o para mostrar esta información al usuario.
- `type`
  - **Descripción**: El tipo MIME del archivo (por ejemplo, `"image/png"` o `"application/pdf"`).
  - **Utilidad**: Utilizado para determinar el tipo de contenido del archivo. Esto es útil para validar el tipo de archivo que se ha seleccionado, para decidir cómo procesarlo o para enviarlo al servidor con el tipo correcto.

El objeto `File` también hereda todos los métodos de `Blob`, lo que permite manipular el contenido del archivo de varias maneras. Algunos de estos métodos incluyen:

- `slice([start[, end[, contentType]]])`
  - **Descripción**: Crea un nuevo `Blob` representando una porción del archivo original.
  - **Utilidad**: Permite trabajar con una parte específica del archivo, lo cual puede ser útil para subir archivos en partes o para manipular solo una sección del archivo.
- `text()`
  - **Descripción**: Devuelve una promesa que se resuelve con el contenido del `Blob` como una cadena de texto.
  - **Utilidad**: Permite leer el contenido de un archivo como texto, lo que es útil para archivos de texto, CSV, JSON, etc.
- `arrayBuffer()`
  - **Descripción**: Devuelve una promesa que se resuelve con el contenido del `Blob` como un `ArrayBuffer`.
  - **Utilidad**: Útil para trabajar con datos binarios de bajo nivel.
- `stream()`
  - **Descripción**: Devuelve un `ReadableStream` del contenido del `Blob`.
  - **Utilidad**: Permite trabajar con el contenido del archivo como un flujo de datos, lo que puede ser útil para grandes archivos que necesitan ser procesados por partes.

## El objeto FileReader

El objeto `FileReader` en JavaScript proporciona una forma de leer archivos de forma asíncrona desde el cliente, utilizando el API File de HTML5. Estos son los principales atributos y métodos del objeto `FileReader`:

- `readyState`:
  - **Descripción**: Indica el estado actual de la operación de lectura del archivo.
  - **Valores posibles**:
    - `EMPTY` (0): Objeto recién creado, sin archivo asignado.
    - `LOADING` (1): Archivo está siendo leído.
    - `DONE` (2): Lectura del archivo completada correctamente.
  - **Uso**: Puede ser útil para controlar el flujo de trabajo y saber cuándo ha finalizado la lectura del archivo.
- `result`:
  - **Descripción**: Contiene los datos del archivo leído, representados como una cadena de caracteres o como un `ArrayBuffer`, dependiendo del método utilizado para leer el archivo.
  - **Uso**: Después de que la lectura del archivo sea exitosa, este atributo contiene los datos del archivo en el formato especificado.

### Métodos del objeto FileReader

- `readAsArrayBuffer(file)`:
  - **Descripción**: Lee el contenido del archivo como un `ArrayBuffer`.
  - **Uso**: Útil cuando se trabaja con datos binarios, como imágenes o archivos PDF.
- `readAsBinaryString(file)`:
  - **Descripción**: Lee el contenido del archivo como una cadena binaria (`String`).
  - **Uso**: Aunque está en desuso, puede ser útil para leer archivos en formatos antiguos que no son compatibles con readAsText.
- `readAsDataURL(file)`:
  - **Descripción**: Lee el contenido del archivo y devuelve una URL de datos (`data URL`) que representa los datos del archivo.
  - **Uso**: Muy común para leer imágenes y otros tipos de archivos que pueden ser representados como URLs de datos en el navegador.
- `readAsText(file, encoding)`:
  - **Descripción**: Lee el contenido del archivo como texto (`String`), utilizando una codificación opcional.
  - **Uso**: Ideal para archivos de texto como archivos de configuración o documentos de texto plano.
- `abort()`:
  - **Descripción**: Cancela la operación de lectura del archivo en curso.
  - **Uso**: Útil si se desea interrumpir la lectura de un archivo antes de que se complete, por ejemplo, en respuesta a una acción del usuario.

- **Asincronía**: Todas las operaciones de lectura del `FileReader` son asíncronas, lo que significa que se debe manejar el resultado (o error) en los callbacks adecuados (`onload`, `onerror`).
- **Seguridad**: Debido a las políticas de seguridad del navegador, la lectura de archivos locales puede estar limitada. Es importante entender y respetar estas limitaciones al desarrollar aplicaciones web que interactúan con archivos del cliente.

## Bibliografía

- <https://xxjcaxx.github.io/libro_dwec/dom.html>
- <https://lenguajejs.com/>
- <https://learnxinyminutes.com/docs/es-es/javascript-es/>

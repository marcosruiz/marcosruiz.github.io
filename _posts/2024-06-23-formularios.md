---
title: "Formularios"
date: 2024-06-23 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [desarrollo de aplicaciones web, daw, desarrollo web en entorno cliente, dwec, teoria]
img_path: /assets/img/formularios/
---

## Introducción

Los formularios, son el principal medio de introducción de datos en una aplicación web, y el **principal punto de interactividad con el usuario**.

Básicamente tenemos 2 maneras de validar un formulario en el lado cliente:

- Usar la validación incorporada en HTML5 y dejar que sea el navegador quien se encargue de todo.
- Realizar nosotros la validación mediante JavaScript.

La ventaja de la primera opción es que no tenemos que escribir código sino simplemente poner unos atributos a los INPUT que indiquen qué se ha de validar. La principal desventaja es que no tenemos ningún control sobre el proceso, lo que provocará cosas como:

- El navegador valida campo a campo: cuando encuentra un error en un campo lo muestra y hasta que no se soluciona no valida el siguiente lo que hace que el proceso sea molesto para el usuario que no ve todo lo que hay mal de una vez.
- Los mensajes son los predeterminados del navegador y en ocasiones pueden no ser muy claros para el usuario.
- Los mensajes se muestran en el idioma en que está configurado el navegador, no en el de nuestra página.

Mira el vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/mlVXOg_Hb_E?si=Ps0VI4uVDPE8tYHI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Preguntas a responder tras la visualización del vídeo:

1. ¿Es seguro validar un formulario con HTML y JavaScript?
1. ¿Qué validación de formularios tiene mayor rendimiento, con HTML o con JavaScript?
1. ¿Qué tecla tenemos que pulsar para ver el código fuente de una web?
1. ¿Por qué hay que validar en el lado del cliente?

## Validación del navegador incorporada en HTML5

Funciona añadiendo atributos a los campos del formulario que queremos validar. Los más usados son:

- `required`: indica que el campo es obligatorio. La validación fallará si no hay nada escrito en el input. En el caso de un grupo de radiobuttons se pone sobre cualquiera de ellos (o sobre todos) y obliga a que haya seleccionada una opción cualquiera del grupo
- `pattern`: obliga a que el contenido del campo cumpla la expresión regular indicada. Por ejemplo para un código postal sería `pattern="^[0-9]{5}$"`
- `minlength` / maxlength: indica la longitud mínima/máxima del contenido del campo
- `min` / `max`: indica el valor mínimo/máximo del contenido de un campo numérico
También producen errores de validación si el contenido de un campo no se adapta al type indicado (`email`, `number`, ...) o si el valor de un campo numérico no cumple con el step indicado.

Cuando el contenido de un campo es valido dicho campo obtiene automáticamente la pseudoclase `:valid` y si no lo es tendrá la pseudoclase `:invalid` lo que nos permite poner reglas en nuestro CSS para destacar dichos campos, por ejemplo:

```css
input:invalid {
  border: 2px dashed red;
}
```

La validación del navegador se realiza al enviar el formulario. Si encuentra un error lo muestra, se detiene la validación del resto de campos y no se envía el formulario.

### La etiqueta form

Lee [La etiqueta form](https://lenguajehtml.com/html/formularios/etiqueta-html-form/).

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un formulario?</summary>
  <div class="card-body" markdown="1">

Se conoce como formulario a los mecanismos para enviar información por parte del usuario, a través de unos campos visuales de forma sencilla e intuitiva, que determinan la naturaleza del tipo de información que se va a enviar y como hacerla llegar a otro extremo donde se procesará esa información.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question" markdown="1">¿Se pueden utilizar varias etiquetas `form` en la misma página?</summary>
  <div class="card-body" markdown="1">

Si.
<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question" markdown="1">¿Cuáles son los dos atributos más importantes de un `form`?</summary>
  <div class="card-body" markdown="1">

- `action`: Dirección URL del backend al cuál se enviará la información obtenida en el formulario.
- `method`: Método HTTP de envío. GET a través de URL, POST para envío extenso de información.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Es necesario especificar la URL completa en el atributo `action` de un `form`?

{:.question}
¿Qué hace el atributo `target="_blank"` de un `form`?

{:.question}
¿Qué diferencia hay entre un `input` con el atributo `type="radio"` o con el atributo `type=checkbox`?

{:.question}
¿Si tenemos dos formularios en un mismo documento HTML? ¿Qué es más recomendable, usar una etiqueta `form` o dos etiquetas `form`? ¿Por qué?

<details class="card mb-2">
  <summary class="card-header question">Para enviar un formulario ¿que elemento usamos?</summary>
  <div class="card-body" markdown="1">

Un `<input type="submit"/>`

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

### La etiqueta input

Lee el artículo [La etiqueta HTML input](https://lenguajehtml.com/html/formularios/etiqueta-html-input/).

{:.question}
¿Es la etiqueta `input` versátil?

<details class="card mb-2">
  <summary class="card-header question" markdown="1">¿Para qué sirve el atributo `value` de un `input`?</summary>
  <div class="card-body" markdown="1">

Para dar un valor por defecto al campo `input`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question" markdown="1">¿Para qué sirve el atributo `placeholder` de un `input`?</summary>
  <div class="card-body" markdown="1">

El atributo `placeholder` establece una sugerencia visual, pero al enviar o pulsar sobre el campo para escribir, su valor estará en blanco, no hay contenido.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Existe el atributo `type="boolean"` de un `input`?

{:.question}
¿Existe el atributo `type="search"` de un `input`?

{:.question}
¿Existe el atributo `type="textarea"` de un `input`?

{:.question}
¿Existe el atributo `type="hidden"` de un `input`?

<details class="card mb-2">
  <summary class="card-header question" markdown="1">¿Qué diferencia hay entre un elemento `<input type="text">` y un `<input type="email">`?</summary>
  <div class="card-body" markdown="1">

En principio ninguno ya que ambos son dos inputs en los que se puede meter cualquier texto.

Solo sirve para que el autocompletado del navegador funcione correctamente y en el caso del móvil nos personalizará el teclado con un `@`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question" markdown="1">El elemento `<input type="password">` ¿encripta la contraseña cuando la envía al servidor?</summary>
  <div class="card-body" markdown="1">

No. Solo oculta el texto visualmente para protejernos de ojos ajenos.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

#### Checkboxes y radio buttons

Lee el artículo [La etiqueta input con casillas](https://lenguajehtml.com/html/formularios/etiqueta-html-input-checkbox-radio/).

{:.question}
En un elemento `ìnput type="checkbox"` ¿qué hace el atributo `checked`?

{:.question}
¿Qué quiere decir la frase: "El atributo checked muestra el estado inicial de la casilla. Por otro lado, la propiedad checked te muestra el estado actual de la casilla."?

<iframe width="560" height="315" src="https://www.youtube.com/embed/tqLJoWfdqIc?si=5AQJ6UKfInL_Lj-u" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

{:.question}
¿Qué información de un formulario llega al servidor? ¿Llegan los identificadores de los `input`?

{:.question}
En un grupo, cuando marcamos un botón tipo _____, al marcar uno deseleccionamos el resto.

<details class="card mb-2">
  <summary class="card-header question" markdown="1">Para hacer un grupo de casillas, ¿qué atributo debe coincidir entre los elementos `input`?</summary>
  <div class="card-body" markdown="1">

El name. Por ejemplo:

```html
<form method="post" action="/send/">
  <input id="el1" type="radio" name="category" value="user" checked> <label for="el1">Particular</label>
  <input id="el2" type="radio" name="category" value="business"> <label for="el2">Empresa</label>
</form>
```

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Se pueden diseñar radio buttons o checkboxes desde cero?</summary>
  <div class="card-body" markdown="1">

Si. Con la propiedad de css `appearance: none;`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

#### La etiqueta input submit

Lee el artículo [La etiqueta HTML input submit](https://lenguajehtml.com/html/formularios/etiqueta-html-input-submit/).

<details class="card mb-2">
  <summary class="card-header question" markdown="1">¿Qué es el `<input type="submit">`?</summary>
  <div class="card-body" markdown="1">

Un botón de envío de formulario.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question" markdown="1">¿Se pueden enviar formularios sin un input o botón tipo `submit`?</summary>
  <div class="card-body" markdown="1">

Si, pulsando ENTER en el último campo.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Se puede resetear un formulario sin utilizar JavaScript?</summary>
  <div class="card-body" markdown="1">

Si, con un `<input type="reset">`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Qué diferencia hay entre un `<input type="submit">` y un `<button>`?

#### Para cuando lo necesites...

Lee el artículo [La etiqueta HTML textarea](https://lenguajehtml.com/html/formularios/etiqueta-html-textarea/).
Lee el artículo [La etiqueta input con números](https://lenguajehtml.com/html/formularios/etiqueta-html-input-numeros/).
Lee el artículo [La etiqueta input con fechas](https://lenguajehtml.com/html/formularios/etiqueta-html-input-fechas/).
Lee el artículo [La etiqueta input con casillas](https://lenguajehtml.com/html/formularios/etiqueta-html-input-checkbox-radio/).
Lee el artículo [La etiqueta input con colores](https://lenguajehtml.com/html/formularios/etiqueta-html-input-color/).
Lee el artículo [La etiqueta HTML select](https://lenguajehtml.com/html/formularios/etiqueta-html-select/).

## Formas de selección del objeto form

Dentro de un documento tendremos varias formas de selección de un formulario.

Si partimos del siguiente ejemplo:

```html
<div  id="menulateral">
     <form  id="contactar" name="contactar" action="...">...</form>
</div>
```

Tendremos los siguientes métodos de selección del objeto `form` en el documento:

- A través del método `getElementById() `del DOM, nos permite acceder a un objeto a través de su atributo ID. Tendremos que tener la precaución de asignar id únicos a nuestros objetos, para evitar que tengamos objetos con id repetidos:

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

- Otro método puede ser a través de la colección forms[] del objeto document. Esta colección es un array, que contiene la referencia a todos los formularios que tenemos en nuestro documento.

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

## Formas de seleccionar los hijos de form

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

Aunque muchos de los controles de un formulario tienen propiedades en común, algunas propiedades son únicas a un control en particular. Por ejemplo, en un objeto select tienes propiedades que te permiten conocer la opción que está actualmente seleccionada. Al igual que los `checkbox`es o los botones de tipo `radio`, que también disponen de propiedades para saber cuál es la opción que está actualmente seleccionada.

## Validación de formularios con JavaScript

## Validación mediante la API de validación de formularios

Mediante JavaScript tenemos acceso a todos los campos del formulario por lo que podemos hacer la validación como queramos, pero es una tarea pesada, repetitiva y que provoca código espaguetti difícil de leer y mantener más adelante.

Para hacerla más simple podemos usar la API de validación de formularios de HTML5 que permite que sea el navegador quien se encargue de comprobar la validez de cada campo pero las acciones (mostrar mensajes de error, no enviar el formulario, …) las realizamos desde Javascript.

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

## Bibliografía

- <https://lenguajejs.com/>
- <https://learnxinyminutes.com/docs/es-es/javascript-es/>
- <https://fwhibbit.es/basics-of-javascript>
- <https://jonmircha.com/javascript-asincrono>
- <https://es.javascript.info/>
- <https://cipfpbatoi.github.io/materials/daw/dwc/01-js/08-forms.html>

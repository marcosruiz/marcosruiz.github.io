---
title: "Formularios en HTML"
date: 2024-06-23 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [desarrollo de aplicaciones web, daw, desarrollo web en entorno cliente, dwec, teoria, formularios, javascript]
img_path: /assets/img/formularios-html/
---

{:.section}
## Introducción

Los formularios, son el principal medio de introducción de datos en una aplicación web, y el **principal punto de interactividad con el usuario**.

Básicamente tenemos 2 maneras de validar un formulario en el lado cliente:

- Usar la validación incorporada en HTML5 y dejar que sea el navegador quien se encargue de todo.
- Realizar nosotros la validación mediante JavaScript.

La ventaja de la primera opción es que no tenemos que escribir código sino simplemente poner unos atributos a los INPUT que indiquen qué se ha de validar. La principal desventaja es que no tenemos ningún control sobre el proceso, lo que provocará cosas como:

- El navegador valida campo a campo: cuando encuentra un error en un campo lo muestra y hasta que no se soluciona no valida el siguiente lo que hace que el proceso sea molesto para el usuario que no ve todo lo que hay mal de una vez.
- Los mensajes son los predeterminados del navegador y en ocasiones pueden no ser muy claros para el usuario.
- Los mensajes se muestran en el idioma en que está configurado el navegador, no en el de nuestra página.

(Voluntario) Mira el vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/mlVXOg_Hb_E?si=Ps0VI4uVDPE8tYHI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Es seguro validar un formulario con HTML y JavaScript?
1. ¿Qué validación de formularios tiene mayor rendimiento, con HTML o con JavaScript?
1. ¿Qué tecla tenemos que pulsar para ver el código fuente de una web?
1. ¿Por qué hay que validar en el lado del cliente?

{:.section}
## La etiqueta form

Lee el artículo [La etiqueta form](https://lenguajehtml.com/html/formularios/etiqueta-html-form/).

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un formulario?</summary>
  <div class="card-body" markdown="1">

Se conoce como formulario a los mecanismos para enviar información por parte del usuario, a través de unos campos visuales de forma sencilla e intuitiva, que determinan la naturaleza del tipo de información que se va a enviar y como hacerla llegar a otro extremo donde se procesará esa información.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question" markdown="1">
  
  ¿Se pueden utilizar varias etiquetas `form` en la misma página?
  
  </summary>
  <div class="card-body" markdown="1">

Si.
<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question" markdown="1">
  
  ¿Cuáles son los dos atributos más importantes de un `form`?
  
  </summary>
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
  <summary class="card-header question">Para enviar un formulario ¿qué elemento usamos?</summary>
  <div class="card-body" markdown="1">

Un `<input type="submit"/>`

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## La etiqueta input

Lee el artículo [La etiqueta HTML input](https://lenguajehtml.com/html/formularios/etiqueta-html-input/).

{:.question}
¿Es la etiqueta `input` versátil?

<details class="card mb-2">
  <summary class="card-header question" markdown="1">
  
  ¿Para qué sirve el atributo `value` de un `input`?
  
  </summary>
  <div class="card-body" markdown="1">

Para dar un valor por defecto al campo `input`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question" markdown="1">
  
  ¿Para qué sirve el atributo `placeholder` de un `input`?
  
  </summary>
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
  <summary class="card-header question" markdown="1">
  
  ¿Qué diferencia hay entre un elemento `<input type="text">` y un `<input type="email">`?
  
  </summary>
  <div class="card-body" markdown="1">

En principio ninguno ya que ambos son dos inputs en los que se puede meter cualquier texto.

Solo sirve para que el autocompletado del navegador funcione correctamente y en el caso del móvil nos personalizará el teclado con un `@`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question" markdown="1">
  
  El elemento `<input type="password">` ¿encripta la contraseña cuando la envía al servidor?
  
  </summary>
  <div class="card-body" markdown="1">

No. Solo oculta el texto visualmente para protejernos de ojos ajenos.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### Checkboxes y radio buttons

Lee el artículo [La etiqueta input con casillas](https://lenguajehtml.com/html/formularios/etiqueta-html-input-checkbox-radio/).

{:.question}
En un elemento `input type="checkbox"` ¿qué hace el atributo `checked`?

{:.question}
¿Qué quiere decir la frase: "El atributo checked muestra el estado inicial de la casilla. Por otro lado, la propiedad checked te muestra el estado actual de la casilla."?

<iframe width="560" height="315" src="https://www.youtube.com/embed/tqLJoWfdqIc?si=5AQJ6UKfInL_Lj-u" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

{:.question}
¿Qué información de un formulario llega al servidor? ¿Llegan los identificadores de los `input`?

{:.question}
En un grupo, cuando marcamos un `input` tipo _____, al marcar uno deseleccionamos el resto.

<details class="card mb-2">
  <summary class="card-header question" markdown="1">
  
  Para hacer un grupo de casillas, ¿qué atributo debe coincidir entre los elementos `input`?
  
  </summary>
  <div class="card-body" markdown="1">

El `name`. Por ejemplo:

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

{:.subsection}
### La etiqueta input submit

Lee el artículo [La etiqueta HTML input submit](https://lenguajehtml.com/html/formularios/etiqueta-html-input-submit/).

<details class="card mb-2">
  <summary class="card-header question" markdown="1">
  
  ¿Qué es el `<input type="submit">`?
  
  </summary>
  <div class="card-body" markdown="1">

Un botón de envío de formulario.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question" markdown="1">
  
  ¿Se pueden enviar formularios sin un input o botón tipo `submit`?
  
  </summary>
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

{:.subsection}
### Para cuando lo necesites...

Lee el artículo [La etiqueta HTML textarea](https://lenguajehtml.com/html/formularios/etiqueta-html-textarea/).

Lee el artículo [La etiqueta input con números](https://lenguajehtml.com/html/formularios/etiqueta-html-input-numeros/).

Lee el artículo [La etiqueta input con fechas](https://lenguajehtml.com/html/formularios/etiqueta-html-input-fechas/).

Lee el artículo [La etiqueta input con casillas](https://lenguajehtml.com/html/formularios/etiqueta-html-input-checkbox-radio/).

Lee el artículo [La etiqueta input con colores](https://lenguajehtml.com/html/formularios/etiqueta-html-input-color/).

Lee el artículo [La etiqueta HTML select](https://lenguajehtml.com/html/formularios/etiqueta-html-select/).

{:.section}
## Formas de selección del objeto form

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

Aunque muchos de los controles de un formulario tienen propiedades en común, algunas propiedades son únicas a un control en particular. Por ejemplo, en un objeto select tienes propiedades que te permiten conocer la opción que está actualmente seleccionada. Al igual que los `checkbox` es o los botones de tipo `radio`, que también disponen de propiedades para saber cuál es la opción que está actualmente seleccionada.

{:.section}
## Validación de formularios

{:.subsection}
### Validación del navegador incorporada en HTML5

Funciona añadiendo atributos a los campos del formulario que queremos validar. Los más usados son:

- `required`: indica que el campo es obligatorio. La validación fallará si no hay nada escrito en el input. En el caso de un grupo de radiobuttons se pone sobre cualquiera de ellos (o sobre todos) y obliga a que haya seleccionada una opción cualquiera del grupo.
- `pattern`: obliga a que el contenido del campo cumpla la expresión regular indicada. Por ejemplo para un código postal sería `pattern="^[0-9]{5}$"`.
- `minlength` / maxlength: indica la longitud mínima/máxima del contenido del campo
- `min` / `max`: indica el valor mínimo/máximo del contenido de un campo numérico
También producen errores de validación si el contenido de un campo no se adapta al type indicado (`email`, `number`, ...) o si el valor de un campo numérico no cumple con el step indicado.

> Puedes leer el artículo [Expresiones regulares](/posts/expresiones-regulares) si quieres saber más sobre expresiones regulares.
{:.prompt-tip}

Cuando el contenido de un campo es valido dicho campo obtiene automáticamente la pseudoclase `:valid` y si no lo es tendrá la pseudoclase `:invalid` lo que nos permite poner reglas en nuestro CSS para destacar dichos campos, por ejemplo:

```css
input:invalid {
  border: 2px dashed red;
}
```

La validación del navegador se realiza al enviar el formulario. Si encuentra un error lo muestra, se detiene la validación del resto de campos y no se envía el formulario.

## Bibliografía

- <https://lenguajejs.com/>
- <https://learnxinyminutes.com/docs/es-es/javascript-es/>
- <https://fwhibbit.es/basics-of-javascript>
- <https://jonmircha.com/javascript-asincrono>
- <https://es.javascript.info/>
- <https://cipfpbatoi.github.io/materials/daw/dwc/01-js/08-forms.html>
- 

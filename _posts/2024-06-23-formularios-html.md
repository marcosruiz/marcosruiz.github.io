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

## Envío de formularios

En las páginas web actuales, los clientes (también llamados navegadores) no solo obtienen un elemento HTML del servidor, sino que también envían información como la siguiente:

- El texto de búsqueda que el usuario ha escrito en el motor de búsqueda
- El contenido de los formularios
- El filtro de selección en tiendas online
- El orden de una lista

Para enviar ciertos tipos de información al servidor, el protocolo HTTP provee diferentes métodos de petición. Los dos más importantes son GET y POST, los cuales, aunque entregan los mismos resultados, revelan algunas diferencias entre ellos. A continuación se explican estas diferencias y cuándo conviene utilizar uno u otro.

Debes conocer que cuando introducimos una URL en la dirección de búsqueda se realiza una petición GET y que la información de los formularios HTML se puede enviar tanto usando GET como POST aunque la opción más habitual y flexible es usar POST.

### GET

Con el método GET, los datos que se envían al servidor se escriben en la misma dirección URL. En la ventana del navegador, lo encontrarás así:

```plaintext
www.ejemplo.com/registrarse.php?nombre=pedro&apellido=perez&edad=55&genero=hombre
```

Toda la información introducida por el usuario (los llamados “parámetros URL”) se transmiten tan abiertamente como el URL en sí mismo. Esto tiene ventajas y desventajas.

#### Ventajas de GET

Los parámetros URL se pueden guardar junto a la dirección URL como marcador. De esta manera, puedes introducir una búsqueda y más tarde consultarla de nuevo fácilmente. También se puede volver a acceder a la página a través del historial del navegador.

Esto resulta práctico, por ejemplo, si visitas con asiduidad un mismo lugar en Google Maps o si guardas páginas web con configuraciones de filtro determinadas.

#### Desventajas de GET

La mayor desventaja del método GET es su débil protección de los datos. Los parámetros URL que se envían quedan visibles en la barra de direcciones del navegador y son accesibles sin clave en el historial de navegación, en el caché y en el log de los servidores.

Otra desventaja es que su capacidad es limitada: dependiendo del servidor y del navegador, no es posible introducir más de 2000 caracteres. Además, los parámetros URL solo pueden contener caracteres ASCII (letras, números, signos, etc.) y no datos binarios como archivos de audio o imágenes.

#### Formularios con GET

La codificación URL, también conocida como "codificación porcentual", es un mecanismo para codificar información en un Identificador Uniforme de Recursos (URI).

```html
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>
  <form action="http://localhost:3003/foo" method="get" enctype="application/x-www-form-urlencoded">
    <div>
      <label for="decir"> ¿Qué saludo quiere decir? </label>
      <input name="decir" id="decir" value="Hola" />
    </div>
    <div>
      <label for="para"> ¿A quién se lo quiere decir? </label>
      <input name="para" value="mamá" />
    </div>
    <div>
      <button>enviar mis saludos</button>
    </div>
  </form>
</body>

</html>
```

Toda la información se envía en la URL ya que las peticiones de GET no tienen body:

```plaintext
http://localhost:3003/foo?decir=Hola&para=mam%C3%A1
```

Y un resumen de las cabeceras de la petición sería la siguiente:

```plaintext
GET /foo?decir=Hola&para=mam%C3%A1 HTTP/1.1
```

### POST

El método POST introduce los parámetros en el cuerpo de la solicitud HTTP para el servidor. Por ello, no quedan visibles para el usuario. Además, la capacidad del método POST es ilimitada.

#### Ventajas de POST

En lo relativo a los datos, como, por ejemplo, al rellenar formularios con nombres de usuario y contraseñas, el método POST ofrece mucha discreción. Los datos no se muestran en el caché ni tampoco en el historial de navegación. La flexibilidad del método POST también resulta muy útil: no solo se pueden enviar textos cortos, sino también otros tipos de información, como fotos o vídeos.

#### Desventajas de POST

La principal desventaja de los datos transferidos con el método POST no pueden guardarse junto al URL como marcador.

### Content-Type en formularios HTML

En una solicitud POST, que resulta del envío de un formulario html, el `Content-Type` de la solicitud es especificado como un atributo `enctype` del elemento `form`.

| **Método** | **Atributos**                                 | **Formato Enviado**                               | **Uso Común**      |
| ---------- | --------------------------------------------- | ------------------------------------------------- | ------------------ |
| `POST`     | `enctype="application/x-www-form-urlencoded"` | `application/x-www-form-urlencoded` (por defecto) | Envío de datos     |
| `POST`     | `enctype="multipart/form-data"`               | `multipart/form-data`                             | Subida de archivos |

#### POST con x-www-form-urlencoded

Este tipo de codificación utiliza la misma codificación que utilizamos en las URL de las peticiones GET.

```html
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>
  <form action="http://localhost:3003/foo" method="post" enctype="application/x-www-form-urlencoded">
    <div>
      <label for="decir"> ¿Qué saludo quiere decir? </label>
      <input name="decir" id="decir" value="Hola" />
    </div>
    <div>
      <label for="para"> ¿A quién se lo quiere decir? </label>
      <input name="para" value="mamá" />
    </div>
    <div>
      <button>enviar mis saludos</button>
    </div>
  </form>
</body>

</html>
```

```plaintext
POST /foo HTTP/1.1
Content-Length: 25
Content-Type: application/x-www-form-urlencoded

decir=Hola&para=mam%C3%A1
```

#### POST con form-data

```html
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>
  <form action="http://localhost:3003/foo" method="post" enctype="multipart/form-data">
    <input type="text" name="description" value="some text" />
    <input type="file" name="myFile" />
    <button type="submit">Submit</button>
  </form>
</body>

</html>
```

Debido a que utilizamos el tipo `multipart/form-data` los datos que enviamos al servidor se visualizarían de la siguiente forma:

```plaintext
POST /foo HTTP/1.1
Content-Length: 1619
Content-Type: multipart/form-data; boundary=---------------------------21532953428956400213398210119

-----------------------------21532953428956400213398210119
Content-Disposition: form-data; name="description"

some text
-----------------------------21532953428956400213398210119
Content-Disposition: form-data; name="myFile"; filename="2024-12-02_12-41-45.png"
Content-Type: image/png

(binary)
-----------------------------21532953428956400213398210119--
```

{:.question}
¿Qué `Content-Type` existen?

## Servidor de Node para probar cualquier formulario

He preparado un sencillo servidor de Node que recibe cualquier tipo de petición y la muestra por pantalla. Esto permite que podáis hacer diferentes pruebas con todo tipo de formularios.

```javascript
const express = require('express');
const app = express();
const cors = require('cors'); // Importar CORS

const PORT = 3003;

// Habilitar CORS para todas las rutas y orígenes
app.use(cors());

app.use(express.raw({ type: '*/*', limit: '10mb' })); // Captura cualquier tipo de datos sin procesar

app.post('*', (req, res) => {
  console.log("🔥 Datos recibidos:");

  const data = req.body.toString();

  // Si los datos contienen saltos de línea o son muy grandes, mostrar solo los primeros 100 caracteres
  if (data.length > 1000) {
    console.log(data.substring(0, 1000) + '... [truncado]');
  } else {
    console.log(data);
  }

  //res.send("Datos recibidos");
  res.json({
    status: "success",
    message: "Datos recibidos"
  })
});


app.listen(PORT, () => {
  console.log(`👽👽👽 Servidor escuchando en http://localhost:${PORT}`);
});
```
{: file="server.js" }

Para iniciarlo deberás tener instalado node y ejecutar las siguientes instrucciones colocándote en la carpeta donde este el fichero `sever.js`:

```console
npm init -y
npm install express cors
node server.js
```

## Bibliografía

- <https://lenguajejs.com/>
- <https://learnxinyminutes.com/docs/es-es/javascript-es/>
- <https://fwhibbit.es/basics-of-javascript>
- <https://jonmircha.com/javascript-asincrono>
- <https://es.javascript.info/>
- <https://cipfpbatoi.github.io/materials/daw/dwc/01-js/08-forms.html>
- <https://www.ionos.es/digitalguide/paginas-web/desarrollo-web/get-vs-post/>

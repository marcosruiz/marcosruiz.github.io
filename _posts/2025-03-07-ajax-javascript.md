---
title: "AJAX en JavaScript"
date: 2025-03-07 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/ajax-javascript/
---

{:.section}
## Introducción

AJAX, acrónimo de “Asynchronous JavaScript and XML”, es un conjunto de tecnologías que permite a las aplicaciones web enviar y recibir datos del servidor de manera asíncrona, sin necesidad de recargar la página completa. Esto mejora significativamente el rendimiento y la experiencia del usuario. De esta manera, originalmente, AJAX se compone de:

- **JavaScript**: El lenguaje de programación que controla la interacción y el comportamiento dinámico de la página web.
- **XHTML y CSS**: Utilizados para estructurar y estilizar la página web.
- **XML o JSON**: Formatos de datos que se envían y reciben desde el servidor.
- **XMLHttpRequest**: El objeto que permite a JavaScript realizar solicitudes HTTP de manera asíncrona.

Esta es la definición original de AJAX pero ahora se usa JSON en lugar de XML y `fetch` en vez de `XMLHttpRequest`. Sin embargo se sigue manteniendo el nombre de AJAX ya que aunque contradice el acrónimo no contradice la definición.

{:.section}
## Modelo clásico vs modelo AJAX

El modelo clásico de aplicaciones Web funciona de la siguiente forma: la mayoría de las acciones del usuario se producen en la interfaz, disparando solicitudes HTTP al servidor web. El servidor efectúa un proceso (recopila información, realiza las acciones oportunas), y devuelve una pagina HTML al cliente. Este es un modelo adaptado del uso original de la Web como medio hipertextual, pero a nivel de aplicaciones de software, este tipo de modelo no es necesariamente el más recomendable.

Cada vez que se realiza una petición al servidor, el usuario lo único que puede hacer es esperar, ya que muchas veces la página cambia a otra diferente, y hasta que no reciba todos los datos del servidor, no se mostrará el resultado, con lo que el usuario no podrá interactuar de ninguna manera con el navegador.

Con AJAX, lo que se intenta evitar, son esencialmente esas esperas. El cliente podrá hacer solicitudes al servidor, mientras el navegador sigue mostrando la misma página web, y cuando el navegador reciba una respuesta del servidor, la mostrará al cliente y todo ello sin recargar o cambiar de página, es decir, de manera dinámica.

<details class="card mb-2">
  <summary class="card-header question">¿En qué modelo de aplicación web la actividad del usuario se ve interrumpida o bloqueada por la espera de las respuestas del servidor?</summary>
  <div class="card-body" markdown="1">

Clásico.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Requerimientos previos

Para la programación con AJAX vamos a necesitar de un servidor web, ya que las peticiones AJAX que hagamos, las haremos a un servidor (backend).

Los códigos que hacen peticiones POST necesitan de un backend.

- Para peticiones GET:
  - Puedes utilizar la extensión de Live Server de Visual Studio Code, la cual te crea un servidor en el proyecto que estés actualmente.
- Para peticiones POST:
  - Puedes realizar peticiones a APIs públicas como: <https://postman-echo.com/>, <https://httpbin.org/>, <https://jsonplaceholder.typicode.com/> o <https://designer.mocky.io>.
  - Puedes utilizar el servidor local de Node que está en el artículo [Formularios en HTML](https://marcosruiz.github.io/posts/formularios-html/#servidor-de-node-para-probar-cualquier-formulario).
  - Puedes crearte tu propio backend con Firebase o Supabase de manera rápida.
  - Puedes utilizar los conocimientos que has obtenido en el módulo profesional de DWES.

{:.section}
## Ejemplo básico de AJAX con XMLHttpRequest

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
  
  <button id="loadData">Load Data</button>
  <div id="result"></div>
  
  <script src="script.js"></script>
</body>
</html>
```

```javascript
document.getElementById('loadData').addEventListener('click', function () {
  var xhr = new XMLHttpRequest();
  xhr.open('GET', 'https://api.github.com/users/octocat', true);
  xhr.onreadystatechange = function () {
    if (xhr.readyState == 4 && xhr.status == 200) {
      var data = JSON.parse(xhr.responseText);
      document.getElementById('result').innerText = `Followers de octocat: ${data.followers}`;
    }
  };
  xhr.send();
});
```

En este ejemplo, cuando se hace clic en el botón “Load Data”, se envía una solicitud GET al servidor. La respuesta, que se espera esté en formato JSON, se procesa y se muestra en el `div` con ID `result`.

Este ejemplo se puede considerar anticuado, a partir de ES6 es mejor hacerlo con `fetch` y promesas. No obstante, es interesante analizar este código y entender cómo funciona. Además, `fetch` no permite un control a tan bajo nivel de todas las etapas de una petición, por lo que sigue siendo necesario para hacer barras de progreso, cancelar peticiones, etc.

> Prueba a hacer debug de este código y comprueba cuantas veces se entra en la función anónima que asignamos a `onreadystatechange`.
{:.prompt-info}

{:.section}
## Beneficios de AJAX

- **Mejora del Rendimiento**: Al no recargar la página completa, solo se actualizan las partes necesarias, lo que resulta en una experiencia de usuario más rápida y fluida.
- **Experiencia de Usuario Mejorada**: Las actualizaciones dinámicas permiten una interacción más rápida y eficiente.

{:.section}
## Problemas de AJAX

- **SEO**: Las páginas que utilizan AJAX pueden ser más difíciles de indexar por los motores de búsqueda, ya que gran parte del contenido se carga de manera dinámica.
- **Complejidad en el Desarrollo**: El desarrollo de aplicaciones AJAX puede ser más complicado debido a la necesidad de manejar las solicitudes asíncronas y actualizar el DOM dinámicamente.

{:.section}
## APIs

La comunicación entre el cliente y el servidor en una aplicación web puede llevarse a cabo de varias maneras. Dos enfoques comunes incluyen:

- **Solicitudes de HTML**: JavaScript puede solicitar un HTML estático o dinámico y luego insertar el resultado en la página.
- **Interacción con APIs**: JavaScript puede enviar y recibir datos en formato XML o JSON a través de una API.

Las APIs (Interfaz de Programación de Aplicaciones) permiten que diferentes software se comuniquen entre sí. Existen varios **tipos de APIs**, cada una con sus propias características y casos de uso:

- **SOAP (Simple Object Access Protocol)**:
  - Es un protocolo basado en XML.
  - Conocido por su complejidad y sobrecarga debido a la utilización de XML.
  - No está optimizado para HTTP.
- **REST (Representational State Transfer)**:
  - Basado en HTTP y utiliza URLs.
  - Aprovecha los verbos HTTP (GET, POST, PUT, DELETE, PATCH).
  - Es popular por su simplicidad y eficiencia.
- **GraphQL**:
  - Permite consultas más granulares y controladas.
  - Envía un JSON con la consulta en la URL.
  - Independiente del protocolo HTTP.
  - Utiliza un lenguaje de definición de esquemas (IDL).
- **gRPC (gRPC Remote Procedure Calls)**:
  - Utiliza HTTP/2, permitiendo una comunicación más eficiente.
  - Ofrece soporte para múltiples lenguajes de programación.

{:.subsection}
### API REST

Las APIs REST utilizan las peticiones HTTP como verbos del protocolo:

- **GET**: Recuperar recursos.
- **POST**: Crear nuevos recursos.
- **PUT**: Actualizar recursos existentes.
- **DELETE**: Eliminar recursos.
- **PATCH**: Actualizar parcialmente recursos.

{:.subsubsection}
#### Características de las APIs REST

- Utilizan rutas URL para identificar los recursos.
- Los códigos de respuesta HTTP indican el estado de la solicitud (por ejemplo, 200 para éxito, 404 para no encontrado, 500 para error del servidor).
- Los datos (payload) pueden enviarse en XML o JSON.
- Una API que sigue estrictamente las características REST se denomina RESTful.

{:.subsubsection}
#### Ejemplo de API REST

Supongamos una API para gestionar una colección de libros:

- `GET /books`: Recupera la lista de libros.
- `POST /books`: Crea un nuevo libro.
- `GET /books/:id`: Recupera un libro específico.
- `PUT /books/:id`: Actualiza un libro específico.
- `DELETE /books/:id`: Elimina un libro específico.

{:.subsection}
### API GraphQL

GraphQL es una alternativa a REST que permite realizar consultas más precisas y específicas. En lugar de varias URLs, una sola URL acepta consultas en JSON.

{:.subsubsection}
#### Características de las APIs GraphQL

- Permiten más control y granularidad en las consultas.
- Las peticiones son fáciles de entender y leer para los humanos.
- No están limitadas a HTTP.
- Utilizan el IDL (Schema Definition Language) para definir el esquema.

{:.subsubsection}
#### Ejemplo de API GraphQL

Consulta para obtener el título y autor de un libro específico:

```graphql
{
  book(id: "1") {
    title
    author
  }
}
```

{:.section}
## SDKs

Las APIs pueden ser complejas, y herramientas como Firebase, MongoDB Realm, y Supabase ofrecen SDKs (Kits de Desarrollo de Software) que simplifican tareas comunes como la autenticación de usuarios y las consultas avanzadas.

{:.subsection}
### Características de los SDKs

- Facilitan la interacción con las APIs al proporcionar bibliotecas preconstruidas.
- Ahorra tiempo en la programación de la comunicación entre el cliente y el servidor.
- No son estándar y dependen del proveedor del servicio.

> Aunque los SDKs pueden simplificar mucho el trabajo, en este curso evitaremos su uso para centrarnos en aprender los fundamentos de las APIs.
{:.prompt-info}

{:.section}
## Webs SPA

Las aplicaciones de una sola página (SPA) utilizan AJAX para cargar y actualizar contenido sin necesidad de recargar la página completa. Esto permite crear aplicaciones web más rápidas y con una experiencia de usuario similar a las aplicaciones de escritorio.

{:.subsection}
### Ejemplo de SPA con AJAX

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    .hidden {
      display: none;
    }
  </style>
</head>
  
  <nav>
    <button onclick="loadPage('./home')">Home</button>
    <button onclick="loadPage('./about')">About</button>
    <button onclick="loadPage('./contact')">Contact</button>
  </nav>
  <div id="content"></div>
  
  <script src="script.js"></script>
</body>
</html>
```
{: file="index.html" }

```javascript
function loadPage(page) {
  var xhr = new XMLHttpRequest();
  xhr.open('GET', page + '.html', true);
  xhr.onreadystatechange = function () {
    if (xhr.readyState == 4 && xhr.status == 200) {
      document.getElementById('content').innerHTML = xhr.responseText;
    }
  };
  xhr.send();
}
```
{: file="script.js" }

En este ejemplo, cada botón en la navegación carga contenido diferente en el `div` con el ID `content` utilizando AJAX. Esto permite que la página se actualice dinámicamente sin necesidad de recargarla por completo.

![imgDescription](ejemploSpa.gif)
_Ejemplo de funcionamiento de código anterior_

> Deberás crear un fichero `home.html`, `about.html` y `contact.html` con el contenido que quieres que se muestre cuando hagas click en cada uno de los botones.
{:.prompt-info}

{:.section}
## XMLHttpRequest en JavaScript

`XMLHttpRequest` (XHR) es una API utilizada para enviar y recibir datos entre un cliente web y un servidor. A pesar de su nombre, `XMLHttpRequest` puede manejar diferentes tipos de datos, aunque en este capítulo nos centraremos principalmente en JSON debido a su popularidad en las aplicaciones web modernas.

`XMLHTTPRequest` juega un papel muy importante en AJAX, ya que sin este objeto, no sería posible realizar las peticiones asíncronas al servidor.

Con la llegada de las librerías cross-browser como jQuery, Prototype, scriptaculous, etc, los programadores pueden utilizar toda la funcionalidad de `XMLHTTPRequest`, sin codificar directamente sobre la API, con lo que se acelera muchísimo el desarrollo de aplicaciones AJAX.

Y con la llegada de `fetch`, ya no es tan necesario el uso de librerías cross-browser.

<details class="card mb-2">
  <summary class="card-header question">¿Qué son las peticiones cross-site?</summary>
  <div class="card-body" markdown="1">

Son peticiones que se hacen a dominios diferentes. Es decir, esto ocurriría si desde la web de Facebook se hacen peticiones `fetch` a la API de X (llamémoslo Twitter). Por defecto, este tipo de peticiones son bloqueadas.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### Inicialización y Uso Básico

Para comenzar a utilizar `XMLHttpRequest`, primero debemos crear una instancia del objeto `XMLHttpRequest`.

```javascript
var req = new XMLHttpRequest();
```

Una vez creado el objeto, debemos configurar la solicitud utilizando el método `open`. Este método tiene tres parámetros principales:

- **Método HTTP**: El método de la solicitud, como ‘GET’ o ‘POST’.
- **URL**: La URL a la que se envía la solicitud.
- **Asíncrono**: Un valor booleano que indica si la solicitud debe ser asíncrona (`true`) o síncrona (`false`). En la mayoría de los casos, queremos que sea asíncrona para no bloquear la ejecución del script.

```javascript
req.open('GET', 'http://www.mozilla.org/', true);
```

`XMLHttpRequest` tiene un conjunto de estados que indican el progreso de la solicitud. Estos estados están representados por la propiedad `readyState` del objeto XHR. Los posibles valores de `readyState` son:

- `0` (`UNSENT`): La solicitud no ha sido inicializada.
- `1` (`OPENED`): Se ha establecido la conexión con el servidor.
- `2` (`HEADERS_RECEIVED`): Se han recibido los encabezados de la respuesta.
- `3` (`LOADING`): El cuerpo de la respuesta se está recibiendo.
- `4` (`DONE`): La solicitud se ha completado y la respuesta está lista.

Para realizar alguna acción cuando la solicitud cambie de estado, se utiliza la propiedad `onreadystatechange`, que se asigna a una función. Esta función se ejecutará cada vez que cambie el estado de la solicitud.

```javascript
req.onreadystatechange = function (aEvt) {
  if (req.readyState == 4) {
    if (req.status == 200) {
      console.log(req.responseText);
    } else {
      console.log("Error loading page\n");
    }
  }
};
```

Finalmente, enviamos la solicitud al servidor utilizando el método `send`. Si estamos enviando datos (por ejemplo, en una solicitud POST), estos se pasan como argumento a `send`. En una solicitud GET, simplemente pasamos `null`.

```javascript
req.send(null);
```

{:.subsection}
### Ejemplo Completo

```javascript
var req = new XMLHttpRequest();
req.open('GET', 'http://www.mozilla.org/', true);
req.onreadystatechange = function (aEvt) {
  if (req.readyState == 4) {
    if (req.status == 200) {
      console.log(req.responseText);
    } else {
      console.log("Error loading page\n");
    }
  }
};
req.send(null);
```

{:.subsubsection}
#### Crear el Objeto XHR

```javascript
var req = new XMLHttpRequest();
```

Aquí se crea una nueva instancia del objeto `XMLHttpRequest`.

{:.subsubsection}
#### Configurar la Solicitud

```javascript
req.open('GET', 'http://www.mozilla.org/', true);
```

Se configura la solicitud para hacer una petición GET a la URL especificada. El tercer parámetro, `true`, indica que la solicitud debe ser asíncrona.

<details class="card mb-2">
  <summary class="card-header question">En JavaScript una petición AJAX, ¿puede ser síncrona?</summary>
  <div class="card-body" markdown="1">

Si. Una petición AJAX puede ser síncrona, pero en general no es recomendable.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsubsection}
#### Monitorear Cambios de Estado

```javascript
req.onreadystatechange = function (aEvt) {
  if (req.readyState == 4) {
    if (req.status == 200) {
      console.log(req.responseText);
    } else {
      console.log("Error loading page\n");
    }
  }
};
```

Se define una función que se ejecuta cada vez que cambia el estado de la solicitud. Cuando `readyState` es `4`, significa que la solicitud se ha completado. Si `status` es `200`, significa que la solicitud fue exitosa y se imprime la respuesta en la consola. Si el estado es diferente, se imprime un mensaje de error.

{:.subsubsection}
#### Enviar la Solicitud

```javascript
req.send(null);
```

Finalmente, se envía la solicitud al servidor.

{:.section}
## Conclusión

En este artículo se han cubierto los conceptos básicos y la implementación de `XMLHttpRequest`. En artículos posteriores, exploraremos métodos modernos como `fetch` y la forma en que se integran con las características más recientes de JavaScript, como las promesas y la sintaxis `async/await`.

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/ajax.html>
- <https://developer.mozilla.org/es/docs/Learn_web_development/Core/Scripting/Network_requests>

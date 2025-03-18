---
title: "Comunicación con el servidor"
date: 2025-03-07 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/comunicacion-servidor/
---

> Artículo en construcción.
{:.prompt-warning}

{:.section}
## Introducción

AJAX, acrónimo de “Asynchronous JavaScript and XML”, es un conjunto de tecnologías que permite a las aplicaciones web enviar y recibir datos del servidor de manera asíncrona, sin necesidad de recargar la página completa. Esto mejora significativamente el rendimiento y la experiencia del usuario. De esta manera, originalmente, AJAX se compone de:

- **JavaScript**: El lenguaje de programación que controla la interacción y el comportamiento dinámico de la página web.
- **XHTML y CSS**: Utilizados para estructurar y estilizar la página web.
- **XML o JSON**: Formatos de datos que se envían y reciben desde el servidor.
- **XMLHttpRequest**: El objeto que permite a JavaScript realizar solicitudes HTTP de manera asíncrona.

Esta es la definición original de AJAX pero ahora se usa JSON en lugar de XML y `fetch` en vez de `XMLHttpRequest`. Sin embargo se sigue manteniendo el nombre de AJAX ya que aunque contradice el acrónimo no contradice la definición.

Con AJAX, JavaScript puede enviar o solicitar datos en formato XML o JSON al servidor sin recargar la página. El servidor responde a estas solicitudes, generalmente a través de una API. El cliente, usando JavaScript, procesa la respuesta y actualiza el contenido de la página dinámicamente.

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
  xhr.open('GET', 'https://api.example.com/data', true);
  xhr.onreadystatechange = function () {
    if (xhr.readyState == 4 && xhr.status == 200) {
      var data = JSON.parse(xhr.responseText);
      document.getElementById('result').innerText = data.message;
    }
  };
  xhr.send();
});
```

En este ejemplo, cuando se hace clic en el botón “Load Data”, se envía una solicitud GET al servidor. La respuesta, que se espera esté en formato JSON, se procesa y se muestra en el `div` con ID `result`.

Este ejemplo se puede considerar anticuado, a partir de ES6 es mejor hacerlo con fetch y promesas. No obstante, es interesante analizar este código y entender cómo funciona. Además, fetch no permite un control a tan bajo nivel de todas las etapas de una petición, por lo que sigue siendo necesario para hacer barras de progreso, cancelar peticiones, etc.

## Beneficios de AJAX

- **Mejora del Rendimiento**: Al no recargar la página completa, solo se actualizan las partes necesarias, lo que resulta en una experiencia de usuario más rápida y fluida.
- **Experiencia de Usuario Mejorada**: Las actualizaciones dinámicas permiten una interacción más rápida y eficiente.

## Problemas de AJAX

- **SEO**: Las páginas que utilizan AJAX pueden ser más difíciles de indexar por los motores de búsqueda, ya que gran parte del contenido se carga de manera dinámica.
- **Complejidad en el Desarrollo**: El desarrollo de aplicaciones AJAX puede ser más complicado debido a la necesidad de manejar las solicitudes asíncronas y actualizar el DOM dinámicamente.

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

### API REST

Las APIs REST utilizan las peticiones HTTP como verbos del protocolo:

- GET: Recuperar recursos.
- POST: Crear nuevos recursos.
- PUT: Actualizar recursos existentes.
- DELETE: Eliminar recursos.
- PATCH: Actualizar parcialmente recursos.

#### Características de las APIs REST

- Utilizan rutas URL para identificar los recursos.
- Los códigos de respuesta HTTP indican el estado de la solicitud (por ejemplo, 200 para éxito, 404 para no encontrado, 500 para error del servidor).
- Los datos (payload) pueden enviarse en XML o JSON.
- Una API que sigue estrictamente las características REST se denomina RESTful.

#### Ejemplo de API REST

Supongamos una API para gestionar una colección de libros:

- `GET /books`: Recupera la lista de libros.
- `POST /books`: Crea un nuevo libro.
- `GET /books/:id`: Recupera un libro específico.
- `PUT /books/:id`: Actualiza un libro específico.
- `DELETE /books/:id`: Elimina un libro específico.

### API GraphQL

GraphQL es una alternativa a REST que permite realizar consultas más precisas y específicas. En lugar de varias URLs, una sola URL acepta consultas en JSON.

#### Características de las APIs GraphQL

- Permiten más control y granularidad en las consultas.
- Las peticiones son fáciles de entender y leer para los humanos.
- No están limitadas a HTTP.
- Utilizan el IDL (Schema Definition Language) para definir el esquema.

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

### SDKs

Las APIs pueden ser complejas, y herramientas como Firebase, MongoDB Realm, y Supabase ofrecen SDKs (Kits de Desarrollo de Software) que simplifican tareas comunes como la autenticación de usuarios y las consultas avanzadas.

#### Características de los SDKs

- Facilitan la interacción con las APIs al proporcionar bibliotecas preconstruidas.
- Ahorra tiempo en la programación de la comunicación entre el cliente y el servidor.
- No son estándar y dependen del proveedor del servicio.

> Aunque los SDKs pueden simplificar mucho el trabajo, en este curso evitaremos su uso para centrarnos en aprender los fundamentos de las APIs.
{:.prompt-info}

### Webs SPA

Las aplicaciones de una sola página (SPA) utilizan AJAX para cargar y actualizar contenido sin necesidad de recargar la página completa. Esto permite crear aplicaciones web más rápidas y con una experiencia de usuario similar a las aplicaciones de escritorio.

#### Ejemplo de SPA con AJAX

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SPA Example</title>
  <style>
    .hidden {
      display: none;
    }
  </style>
</head>
  
  <nav>
    <button onclick="loadPage('home')">Home</button>
    <button onclick="loadPage('about')">About</button>
    <button onclick="loadPage('contact')">Contact</button>
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

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/ajax.html>
- <https://developer.mozilla.org/es/docs/Learn_web_development/Core/Scripting/Network_requests>

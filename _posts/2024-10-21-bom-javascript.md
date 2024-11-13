---
title: "¿Qué es el BOM?"
date: 2024-10-21 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/bom-javascript/
---

{:.section}
## Introducción

El código JavaScript ejecutado en un navegador tiene acceso a un número alto de objetos. Estos objetos pueden estar divididos en varios tipos:

- **Objetos del núcleo ECMAScript**: Todos los objetos mencionados en el artículo [Objetos nativos en JavaScript](/posts/objetos-nativos-javascript).
- **DOM** (Document Object Model): Objetos que nos permiten hacer algo con la página cargada en estos momentos, objeto que se denomina document y todos los que cuelgan de él.
- **BOM** (Browser Object Model): Objetos externos al documento web en sí, como la ventana del navegador y la pantalla del equipo.

![alt text](objetosAltoNivelJavaScript.png)

Históricamente, el BOM no es parte de ningún estándar. El estándar HTML5 implementa el comportamiento común de los navegadores e incluye objetos BOM comunes. Además, los dispositivos móviles vienen con sus objetos específicos (y HTML5 tiene como objetivo estandarizar esos objetos también), que tradicionalmente no eran necesarios para los equipos de escritorio, pero tienen sentido en un mundo móvil, como geolocalización, acceso a la cámara, vibración, eventos táctiles, telefonía y SMS.

El BOM es una colección de objetos que dan acceso al navegador y a la pantalla del ordenador. Estos objetos veremos que son accesibles desde el objeto global window.

Así, ahora, nos centraremos en objetos de alto nivel, que se encontrarán frecuentemente en las aplicaciones de JavaScript: window, location, navigator, screen y history.

- **Window**: Representa la ventana del navegador y es el objeto global en los scripts del navegador.
- **Document**: Representa el documento HTML que se carga en la ventana.
- **Navigator**: Proporciona información sobre el navegador.
  - `navigator.userAgent`
  - `navigator.language`
  - `navigator.geolocation`
  - `navigator.getBattery()`
- **Screen**: Proporciona información sobre la pantalla del usuario.
  - `screen.width`
  - `screen.height`
  - `screen.availWidth`
  - `screen.availHeight`
- **History**: Permite la manipulación del historial del navegador.
  - `history.back()`
  - `history.forward()`
  - `history.go()`
  - `Location`: Proporciona la URL actual de la ventana.
  - `location.href`
  - `location.hostname`
  - `location.pathname`
  - `location.search`
  - `location.hash`
  - `location.reload()`
- **Storage APIs**: `LocalStorage`, `sessionStorage`, `IndexedDB`
- **Network APIs**: `XMLHttpRequest`, `fetch`
- **Console**: Proporciona acceso a la consola de depuración del navegador.
- **WebSocket**: Proporciona una interfaz para las conexiones WebSocket.
- **Worker**: Permite la ejecución de scripts en segundo plano.

{:.section}
## Objeto window

En la jerarquía de objetos, tenemos en la parte superior el objeto `window`.

Este objeto está situado justamente ahí, porque es el contenedor principal de todo el contenido que se visualiza en el navegador. Tan pronto como se abre una ventana (`window`) en el navegador, incluso aunque no se cargue ningún documento en ella, este objeto `window` ya estará definido en memoria.

Además de la sección de contenido del objeto `window`, que es justamente dónde se cargarán los documentos, el campo de influencia de este objeto, abarca también las dimensiones de la ventana, así como todo lo que rodea al área de contenido: las barras de desplazamiento, barra de herramientas, barra de estado, etc.

Cómo se ve en la siguiente figura, debajo del objeto `window` tenemos otros objetos como el `navigator`, `screen`, `history`, `location` y el objeto `document`. Este objeto `document` será el que contendrá toda la jerarquía de objetos, que tengamos dentro de nuestra página HTML.

![alt text](jerarquiaDeObjetos.png)

{:.subsection}
### Acceso a propiedades y métodos del objeto window

Para acceder a las propiedades y métodos del objeto `window`, lo podremos hacer de diferentes formas, dependiendo más de nuestro estilo, que de requerimientos sintácticos. Así, la forma más lógica y común de realizar esa referencia, incluiría el objeto `window` tal y como se muestra en este ejemplo:

```javascript
window.nombrePropiedad
window.nombreMétodo([parámetros])
```

Un objeto `window` también se podrá referenciar mediante la palabra `self`, cuando estamos haciendo la referencia desde el propio documento contenido en esa ventana:

```javascript
self.nombrePropiedad
self.nombreMétodo([parámetros])
```

Podremos usar cualquiera de las dos referencias anteriores, pero intentaremos dejar la palabra reservada `self`, para scripts más complejos en los que tengamos múltiples marcos y ventanas.

Debido a que el objeto `window` siempre estará presente cuando ejecutemos nuestros scripts, podremos omitirlo, en referencias a los objetos dentro de esa ventana. Así que, si escribimos:

```javascript
nombrePropiedad
nombreMétodo([parámetros])
```

También funcionaría sin ningún problema, porque se asume que esas propiedades o métodos, son del objeto de mayor jerarquía (el objeto `window`) en el cuál nos encontramos.

{:.subsection}
### Gestión de ventanas

Para generar una nueva ventana en el navegador hacemos `window.open()`. Este método contiene hasta tres parámetros, que definen las características de la nueva ventana:

1. La URL del documento a abrir
1. El nombre de esa ventana
1. Su apariencia física (tamaño, color,etc.).

Por ejemplo, la siguiente instrucción que abre una nueva ventana de un tamaño determinado y con el contenido de un documento HTML:

```javascript
let subVentana = window.open("nueva.html", "nueva", "height=800, width=600");
```

Lo importante de esa instrucción, es la asignación que hemos hecho en la variable subVentana. De esta forma podremos a lo largo de nuestro código, referenciar a la nueva ventana desde el script original de la ventana principal. Por ejemplo, si quisiéramos cerrar la nueva ventana desde nuestro script, simplemente tendríamos que hacer: `subVentana.close()`;

Aquí si que es necesario especificar subVentana, ya que si escribiéramos `window.close()`, `self.close()` o `close()` estaríamos intentando cerrar nuestra propia ventana (previa confirmación), pero no la subVentana que creamos en los pasos anteriores.

Ejemplo que permite abrir y cerrar una sub-ventana:

```html
<!DOCTYPE html>
<html lang="es">

<head>
  <meta http-equiv="content-type" content="text/html;charset=utf-8">
  <title>Apertura y Cierre de Ventanas</title>
  <script type="text/javascript">
    const inicializar = () => {
      document.getElementById("crear-ventana").onclick = crearNueva;
      document.getElementById("cerrar-ventana").onclick = cerrarNueva;
    }

    let nuevaVentana;

    const crearNueva = () => {
      nuevaVentana = window.open("http://www.google.es", "", "height=400,width=800");
    }

    const cerrarNueva = () => {
      if (nuevaVentana) {
        nuevaVentana.close(); nuevaVentana = null;
      }
    }
  </script>
</head>

<body onLoad="inicializar()">
  <h1>Abrimos y cerramos ventanas</h1>
  <form>
    <input type="button" id="crear-ventana" value="Crear Nueva Ventana">
    <input type="button" id="cerrar-ventana" value="Cerrar Nueva Ventana">
  </form>

</html>
```

{:.subsection}
### Propiedades del objeto window

El objeto `window` representa una ventana abierta en un navegador. Si un documento contiene marcos (`<frame>` o `<iframe>`), el navegador crea un objeto `window` para el documento HTML, y un objeto `window` adicional para para cada marco.

| Propiedad       | Descripción                                                                         |
| -------------- | ---------------------------------------------------------------------------------- |
| `closed`        | Devuelve un valor Boolean indicando cuando una ventana ha sido cerrada o no.        |
| `defaultStatus` | Ajusta o devuelve el valor por defecto de la barra de estado de una ventana.        |
| `document`      | Devuelve el objeto document para la ventana.                                        |
| `frames`        | Devuelve un array de todos los marcos (incluidos iframes) de la ventana actual.     |
| `history`       | Devuelve el objeto history de la ventana.                                           |
| `length`        | Devuelve el número de frames (incluyendo iframes) que hay en dentro de una ventana. |
| `location`      | Devuelve la Localización del objeto ventana (URL del fichero).                      |
| `name`          | Ajusta o devuelve el nombre de una ventana.                                         |
| `navigator`     | Devuelve el objeto navigator de una ventana.                                        |
| `opener`        | Devuelve la referencia a la ventana que abrió la ventana actual.                    |
| `parent`        | Devuelve la ventana padre de la ventana actual.                                     |
| `self`          | Devuelve la ventana actual.                                                         |
| `status`        | Ajusta el texto de la barra de estado de una ventana.                               |

{:.subsection}
### Métodos del objeto window

| Método            | Descripción                                                                                |
| ---------------- | ----------------------------------------------------------------------------------------- |
| `alert()`         | Muestra una ventana emergente de alerta y un botón de aceptar.                             |
| `blur()`          | Elimina el foco de la ventana actual.                                                      |
| `clearInterval()` | Resetea el cronómetro ajustado con setInterval().                                          |
| `setInterval()`   | Llama a una función o evalúa una expresión en un intervalo especificado (en milisegundos). |
| `close()`         | Cierra la ventana actual.                                                                  |
| `confirm()`       | Muestra una ventana emergente con un mensaje, un botón de aceptar y un botón de cancelar.  |
| `focus()`         | Coloca el foco en la ventana actual.                                                       |
| `open()`          | Abre una nueva ventana de navegación.                                                      |
| `prompt()`        | Muestra una ventana de diálogo para introducir datos.                                      |

{:.section}
## Objeto location

El objeto `location` contiene información referente a la URL actual.

Este objeto, es parte del objeto `window` y accedemos a él a través de la propiedad `window.location`.

El objeto `location` contiene información referente a la URL actual.

Este objeto, es parte del objeto `window` y accedemos a él a través de la propiedad `window.location`.

{:.subsection}
### Propiedades del objeto location

| Propiedad  | Descripción                                                                                  |
| --------- | ------------------------------------------------------------------------------------------- |
| `hash`     | Cadena que contiene el nombre del enlace, dentro de la URL.                                  |
| `host`     | Cadena que contiene el nombre del servidor y el número del puerto, dentro de la URL.         |
| `hostname` | Cadena que contiene el nombre de dominio del servidor (o la dirección IP), dentro de la URL. |
| `href`     | Cadena que contiene la URL completa.                                                         |
| `pathname` | Cadena que contiene el camino al recurso, dentro de la URL.                                  |
| `port`     | Cadena que contiene el número de puerto del servidor, dentro de la URL.                      |
| `protocol` | Cadena que contiene el protocolo utilizado (incluyendo los dos puntos), dentro de la URL.    |
| `search`   | Cadena que contiene la información pasada en una llamada a un script, dentro de la URL.      |

{:.subsection}
### Métodos del objeto location

| Método      | Descripción                                                                    |
| ---------- | ----------------------------------------------------------------------------- |
| `assign()`  | Carga un nuevo documento.                                                      |
| `reload()`  | Vuelve a cargar la URL especificada en la propiedad href del objeto location.  |
| `replace()` | Reemplaza el historial actual mientras carga la URL especificada en cadenaURL. |

{:.section}
## Objeto navigator

Este objeto `navigator`, contiene información sobre el navegador que estamos utilizando cuando abrimos una URL o un documento local.

{:.subsection}
### Propiedades del objeto navigator

| Propiedad       | Descripción                                                                                                                                            |
| --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `appCodeName`   | Cadena que contiene el nombre en código del navegador.                                                                                                 |
| `appName`       | Cadena que contiene el nombre del cliente.                                                                                                             |
| `appVersion`    | Cadena que contiene información sobre la versión del cliente.                                                                                          |
| `cookieEnabled` | Determina si las cookies están o no habilitadas en el navegador.                                                                                       |
| `platform`      | Cadena con la plataforma sobre la que se está ejecutando el programa cliente.                                                                          |
| `userAgent`     | Cadena que contiene la cabecera completa del agente enviada en una petición HTTP. Contiene la información de las propiedades appCodeName y appVersion. |

{:.subsection}
### Métodos del objeto navigator

| Método          | Descripción                                                                                        |
| --------------- | -------------------------------------------------------------------------------------------------- |
| `javaEnabled()` | Devuelve `true` si el cliente permite la utilización de Java, en caso contrario, devuelve `false`. |

{:.section}
## Objeto document

Lee el artículo [¿Qué es el DOM?](/posts/dom-javascript).

## Bibliografía

- <https://xxjcaxx.github.io/libro_dwec/dom.html>
- <https://lenguajejs.com/>
- <https://learnxinyminutes.com/docs/es-es/javascript-es/>

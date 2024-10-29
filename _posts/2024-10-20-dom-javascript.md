---
title: "¿Qué es el DOM?"
date: 2024-10-20 9:00:00 +0100
categories: [Derrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/desarrollo-web-entorno-cliente-24-25/
---

## Introducción

El DOM (Document Object Model) es una interfaz de programación que permite a los scripts actualizar el contenido, la estructura y el estilo de un documento mientras este se está visualizando en el navegador.

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un objeto?</summary>
  <div class="card-body" markdown="1">

Definimos como objeto, una entidad con una serie de propiedades que definen su estado, y unos métodos (funciones), que actúan sobre esas propiedades.

La forma de acceder a una propiedad de un objeto es la siguiente:

```javascript
nombreObjeto.propiedad
```

La forma de acceder a un método de un objeto es la siguiente:

```javascript
nombreObjeto.metodo([parámetros opcionales])
```

Como puedes ver, los parámetros van entre corchetes, indicando que son opcionales y que dependerán del método al que estemos llamando.

También podemos referenciar a una propiedad de un objeto, por su índice en la creación. Los índices comienzan por 0.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo una propiedad que un método?</summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

En esta unidad, nos enfocaremos en objetos de alto nivel:

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
- **Storage APIs**: LocalStorage, sessionStorage, IndexedDB
- **Network APIs**: XMLHttpRequest, fetch
- **Console**: Proporciona acceso a la consola de depuración del navegador.
- **WebSocket**: Proporciona una interfaz para las conexiones WebSocket.
- **Worker**: Permite la ejecución de scripts en segundo plano.

## Objeto window

En la jerarquía de objetos, tenemos en la parte superior el objeto `window`.

Este objeto está situado justamente ahí, porque es el contenedor principal de todo el contenido que se visualiza en el navegador. Tan pronto como se abre una ventana (`window`) en el navegador, incluso aunque no se cargue ningún documento en ella, este objeto `window` ya estará definido en memoria.

Además de la sección de contenido del objeto `window`, que es justamente dónde se cargarán los documentos, el campo de influencia de este objeto, abarca también las dimensiones de la ventana, así como todo lo que rodea al área de contenido: las barras de desplazamiento, barra de herramientas, barra de estado, etc.

Cómo se ve en la siguiente figura, debajo del objeto `window` tenemos otros objetos como el `navigator`, `screen`, `history`, `location` y el objeto `document`. Este objeto `document` será el que contendrá toda la jerarquía de objetos, que tengamos dentro de nuestra página HTML.

![alt text](jerarquiaDeObjetos.png)

### Acceso a propiedades y métodos

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

## Bibliografía

- <https://lenguajejs.com/dom/>
- <https://xxjcaxx.github.io/libro_dwec/dom.html>
- <https://lenguajejs.com/>
- <https://learnxinyminutes.com/docs/es-es/javascript-es/>

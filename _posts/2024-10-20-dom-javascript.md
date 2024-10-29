---
title: "¿Qué es el DOM?"
date: 2024-10-20 9:00:00 +0100
categories: [Derrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/desarrollo-web-entorno-cliente-24-25/
---

> Artículo en construcción.
{:.prompt-warning}

## Introducción

El DOM es un estándar definido por el W3C y tiene diferentes versiones, llamadas niveles, como son DOM Level1, DOM Level 2, etc. Los navegadores actuales implementan en cierto grado el estándar DOM pero, en general, todos implementan completamente el DOM Level 1, el denominado DOM Level 0 (aunque no existe ese estándar en sí).

El Modelo de Objetos del Documento (DOM), permite ver el mismo documento de otra manera, describiendo el contenido del documento como un conjunto de objetos, sobre los que un programa de Javascript puede interactuar.

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

## Objeto document

Cada documento cargado en una ventana del navegador, será un objeto de tipo `document`.

El objeto `document` proporciona a los scripts, el acceso a todos los elementos HTML dentro de una página.

Este objeto forma parte además del objeto `window`, y puede ser accedido a través de la propiedad `window.document` o directamente `document` (ya que podemos omitir la referencia a la `window` actual).

### Colecciones del objeto document

| Colección   | Descripción                                                    |
| ----------- | -------------------------------------------------------------- |
| `anchors[]` | Es un array que contiene todos los hiperenlaces del documento. |
| `forms[]`   | Es un array que contiene todos los formularios del documento.  |
| `images[]`  | Es un array que contiene todas las imágenes del documento.     |
| `links[]`   | Es un array que contiene todos los enlaces del documento.      |

### Propiedades del objeto Document

| Propiedad  | Descripción                                                                          |
| ---------- | ------------------------------------------------------------------------------------ |
| `cookie`   | Devuelve todos los nombres/valores de las cookies en el documento.                   |
| `domain`   | Cadena que contiene el nombre de dominio del servidor que cargó el documento.        |
| `referrer` | Cadena que contiene la URL del documento desde el cuál llegamos al documento actual. |
| `title`    | Devuelve o ajusta el título del documento.                                           |
| `URL`      | Devuelve la URL completa del documento.                                              |

### Métodos del objeto Document

| Método                   | Descripción                                                                                             |
| ------------------------ | ------------------------------------------------------------------------------------------------------- |
| `close()`                | Cierra el flujo abierto previamente con `document.open()`.                                              |
| `getElementById()`       | Para acceder a un elemento identificado por el id escrito entre paréntesis.                             |
| `getElementsByName()`    | Para acceder a los elementos identificados por el atributo name escrito entre paréntesis.               |
| `getElementsByTagName()` | Para acceder a los elementos identificados por el tag o la etiqueta escrita entre paréntesis.           |
| `open()`                 | Abre el flujo de escritura para poder utilizar `document.write()` o `document.writeln` en el documento. |
| `write()`                | Para poder escribir expresiones HTML o código de JavaScript dentro de un documento.                     |
| `writeln()`              | Lo mismo que `write()` pero añade un salto de línea al final de cada instrucción.                       |

(Voluntario) En el artículo de W3Schools [HTML DOM Documents](https://www.w3schools.com/jsref/dom_obj_document.asp) amplía información sobre el objeto `document`.



```javascript
```

```javascript
```

```javascript
```

```javascript
```


## Bibliografía

- <https://lenguajejs.com/dom/>
- <https://xxjcaxx.github.io/libro_dwec/dom.html>
- <https://lenguajejs.com/>
- <https://learnxinyminutes.com/docs/es-es/javascript-es/>
- <https://manuais.iessanclemente.net/index.php/Objetos_de_m%C3%A1s_alto_nivel_en_JavaScript>
- 
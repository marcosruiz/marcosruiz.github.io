---
title: "Integración de código JavaScript"
date: 2024-10-02 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/integracion-codigo-javascript/
---

{:.section}
## Introducción

Lee el artículo [¿Qué es Javascript?](https://lenguajejs.com/javascript/introduccion/que-es-javascript/).

<details class="card mb-2">
  <summary class="card-header question">¿Es JavaScript un lenguaje de programación?</summary>
  <div class="card-body" markdown="1">

Si, ya que es un mecanismo con el que podemos decirle a nuestro navegador que tareas debe realizar, en que orden y cuantas veces.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Es JavaScript un lenguaje compilado o interpretado?</summary>
  <div class="card-body" markdown="1">

Interpretado.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## La consola JavaScript

Lee el artículo [La consola Javascript](https://lenguajejs.com/javascript/introduccion/consola-de-javascript/).

{:.question}
¿Cómo se abre la consola de JavaScript en un navegador?

{:.section}
## Integración de código JavaScript

{:.subsection}
### Integración de JavaScript directamente en el HTML

Los navegadores web te permiten varias opciones de inserción de código de JavaScript. Podremos insertar código usando las etiquetas `<script> </script>` y empleando un atributo `type` indicaremos qué tipo de lenguaje de script estamos utilizando:

Por ejemplo:

```html
<!-- Integración de JavaScript directamente en el HTML -->
<script type="text/javascript">
    // Este es un bloque de código JavaScript embebido directamente en el documento HTML.
    // Funciona para pequeños bloques en webs tradicionales. No recomendable en SPAs
    console.log("Hola, este es un mensaje desde JavaScript embebido.");
</script>
```

{:.subsection}
### Integración de un archivo JavaScript externo

Otra forma de integrar el código de JavaScript es utilizar un fichero externo que contenga el código de JavaScript y referenciar dicho fichero. Ésta sería la forma más recomendable, ya que así se consigue una separación entre el código y la estructura de la página web y como ventajas adicionales podrás compartir código entre diferentes páginas, centralizar el código para la depuración de errores, tendrás mayor claridad en tus desarrollos, más modularidad, seguridad del código y conseguirás que las páginas carguen más rápido. La rapidez de carga de las páginas se consigue al tener el código de JavaScript en un fichero independiente, ya que si más de una página tiene que acceder a ese fichero lo cogerá automáticamente de la caché del navegador con lo que se acelerará la carga de la página.

Para ello tendremos que añadir a la etiqueta `script` el atributo `src`, con el nombre del fichero que contiene el código de JavaScript. Generalmente los ficheros que contienen código JavaScript tendrán la extensión .js.

Por ejemplo:

```html
<!-- Integración de un archivo JavaScript externo -->
<script type="text/javascript" src="scripts.js"></script>
```

Si necesitas cargar más de un fichero .js repite la misma instrucción cambiando el nombre del fichero. Las etiquetas de `<script>` y `</script>` son obligatorias a la hora de incluir el fichero .js.

> No debes escribir ningún código de JavaScript entre esas etiquetas cuando uses el atributo src.
{:.prompt-warning}

Para referenciar el fichero origen .js de JavaScript dependerá de la localización física de ese fichero. Por ejemplo en la línea anterior el fichero miScript.js deberá estar en el mismo directorio que el fichero .html. Podrás enlazar fácilmente a otros ficheros de JavaScript localizados en directorios diferentes de tu servidor o de tu dominio. Si quieres hacer una referencia absoluta al fichero, la ruta tendrá que comenzar por `http://`, en otro caso tendrás que poner la ruta relativa dónde se encuentra tu fichero .js.

Por ejemplo:

```html
<script  type="text/javascript"  src="http://www.midominio.com/miScript.js"></script>
```

En este caso estamos referenciando nuestro script mediante una referencia absoluta, que hace referencia a nuestro dominio en primer lugar y posteriormente a la ruta dentro de nuestro domino. Es decir, estamos referenciando mediante una URL que se refiere a nuestro domino.

{:.question}
¿Qué diferencia hay entre una ruta relativa y una ruta absoluta?

Otro ejemplo:

```html
<script  type="text/javascript"  src="./js/miScript.js"></script>
```

En este caso estamos referenciando nuestro script mediante una referencia relativa, que hace referencia a nuestro nuestro script desde el mismo directorio o carpeta en la que se encuentra la página .html en la que está incrustado dicho código, pero situado en el directorio js.

Cuando alguien examine el código fuente de tu página web verá el enlace a tu fichero .js, en lugar de ver el código de JavaScript directamente. Ésto no quiere decir que tu código sea inaccesible, ya que simplemente copiando la ruta de tu fichero .js y tecleándola en el navegador podremos descargar el fichero .js y ver todo el código de JavaScript. En otras palabras, nada de lo que tu navegador descargue para mostrar la página web podrá estar oculto de la vista de cualquier programador.

A veces te puedes encontrar que tu script se va a ejecutar en un navegador que no soporta JavaScript. Para ello dispones de una etiqueta `<noscript>Texto informativo</noscript>` que te permitirá indicar un texto adicional que se mostrará indicando que ese navegador no soporta JavaScript. Pero eso no es lo habitual hoy día.

En resumen, para insertar código Javascript en HTML5 existen dos formas:

- Insertando el código directamente en el archivo index.html.
- Haciendo referencia al código existente en otro archivo .js.

{:.subsection}
### AVANZADO Atributos `async` y `defer` en la Etiqueta `<script>`

{:.question}
¿Qué es un atributo?

A partir de HTML5, la etiqueta `<script>` admite dos atributos, async y defer, que permiten que los scripts comiencen su descarga inmediatamente sin interrumpir el proceso de parseo del documento HTML.

![alt text](asyncdefer.jpeg)
_Diagrama del funcionamiento de Async o Defer_

{:.subsubsection}
#### async

El atributo async permite que el script se ejecute de manera asíncrona tan pronto como se haya descargado. Esto significa que:

- El script se descargará en paralelo con el parseo del documento.
- Se ejecutará tan pronto como la descarga haya terminado, sin esperar a que el documento se haya parseado por completo.
- Los scripts marcados con async pueden no ejecutarse en el orden en el que aparecen en el documento HTML, ya que la ejecución depende de cuál script se descargue primero.

Ejemplo:

```html
<script src="scripts.js" async></script>
```

{:.subsubsection}
#### defer

El atributo `defer` asegura que los scripts se ejecutarán en el orden en el que aparecen en el documento HTML. Las características de defer incluyen:

- El script se descarga en paralelo con el parseo del documento, similar a async.
- La ejecución del script se pospone hasta que el documento se haya parseado completamente.
- La ejecución ocurre justo antes del evento `DOMContentLoaded`, pero después de que todo el HTML haya sido procesado.

Ejemplo:

```html
<script src="scripts.js" defer></script>
```

{:.subsubsection}
#### Sin async ni defer

Si un script no tiene ninguno de estos atributos, el comportamiento por defecto es que el script se descarga y se ejecuta de manera síncrona. Esto significa que:

- El parseo del documento se pausa hasta que el script haya sido descargado y ejecutado completamente.
- Los scripts se ejecutan en el orden en que aparecen en el documento.

Ejemplo:

```html
<script src="scripts.js"></script>
```

En cualquier caso, salvo ocasiones específicas, suele ser más fácil añadir un sólo script, trabajar con módulos y esperar al evento DOMContentLoaded.

{:.section}
## Seguridad en JavaScript

Seguramente estarás pensando en cómo puedes proteger el código de JavaScript que vas a programar, del uso fraudulento por otros programadores o visitantes a tu página: la respuesta rápida a esa pregunta es que es imposible hacerlo.

Para que el código de JavaScript pueda ejecutarse correctamente deberá ser cargado por el navegador web y por lo tanto su código fuente deberá estar visible al navegador. Si realmente te preocupa que otras personas usen o roben tus scripts, deberías incluir un mensaje de copyright en tu código fuente. Piensa que no solamente tus scripts son visibles al mundo, sino que los scripts del resto de programadores también lo son. De esta forma puedes ver fácilmente cuando alguien está utilizando al pie de la letra tus scripts, aunque ésto no evita que alguien copie tu código y elimine tu mensaje de copyright.

Lo más que se puede hacer es ofuscar el código, o hacerlo más difícil de entender. Las técnicas de ofuscación incluyen la eliminación de saltos de línea, espacios en blanco innecesarios, tabuladores, utilización de nombres ininteligibles en las funciones y variables, utilización de variables para almacenar trozos de código, uso de recursividad, etc. La forma más rápida de hacer todas esas tareas de ofuscación es utilizar un software que producirá una copia comprimida del script que has programado para facilitar su carga rápida.

Para que veas un ejemplo de ofuscador de JavaScript visita [este enlace](https://www.javascriptobfuscator.com/Javascript-Obfuscator.aspx).

El siguiente código es un ejemplo de un simple "Hello World!":

```javascript
var _0x47a0=['log','Hello\x20World!']; (function (_0x558f55,_0x47a08a){var _0x257f99= function (_0x256ed6) 
{while(--_0x256ed6) {_0x558f55['push'] (_0x558f55['shift']()); }};_0x257f99(++_0x47a08a);}
(_0x47a0,0x1cb));var _0x257f =function(_0x558f55,_0x47a08a){_0x558f55=_0x558f55-0x0;
var _0x257f99=_0x47a0[_0x558f55];return _0x257f99;};function hi(){console[_0x257f('0x1')](_0x257f('0x0'));}hi();
```

{:.question}
¿En qué consiste la ofuscación de código JavaScript?

Lo mejor es que cambies ese paradigma y pienses de una manera diferente. En lugar de proteger tu código, lo mejor es promocionarlo y hacer ostentación de él para hacer ver lo bueno que eres programando y así muchas empresas llamarán a tu puerta.

Si esta sección no te ha quedado clara puedes leer el artículo [¿Cómo funciona Javascript?](https://lenguajejs.com/javascript/introduccion/como-funciona/).

<details class="card mb-2">
  <summary class="card-header question">¿Cuántas maneras hay de incluir código JavaScript en un documento HTML?</summary>
  <div class="card-body" markdown="1">

Dos. Usando la etiqueta script e incluyendo un fichero .js externo.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Dónde podemos poner la etiqueta script dentro de un documento HTML?

<details class="card mb-2">
  <summary class="card-header question">¿Qué diferencia hay entre JavaScript y ECMAScript?</summary>
  <div class="card-body" markdown="1">

A partir de 1997, el World Wide Web Consortium (W3C) y ECMA International comenzaron a definir las especificaciones del lenguaje JavaScript bajo el nombre de ECMAScript. Este estándar asegura la interoperabilidad y la compatibilidad del lenguaje en distintos navegadores y plataformas. El W3C se encarga también de otros protocolos y lenguajes estándar, incluso de principios éticos: <https://www.w3.org/TR/ethical-web-principles/>.

Lee el artículo [La especificación ECMAScript](https://lenguajejs.com/javascript/introduccion/ecmascript/) si quieres saber más.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://lenguajejs.com/>
- <https://xxjcaxx.github.io/libro_dwec/lenguajejavascript.html>

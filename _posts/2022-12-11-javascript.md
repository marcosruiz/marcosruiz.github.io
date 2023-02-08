---
title: "JavaScript"
date: 2022-12-11 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, teoría, css]
img_path: /assets/img/javascript/
---

## Introducción a JavaScript

Leer [¿Qué es Javascript?](https://lenguajejs.com/javascript/introduccion/que-es-javascript/).

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

Leer [La consola Javascript](https://lenguajejs.com/javascript/introduccion/consola-de-javascript/).

{:.question}
¿Cómo se abre la consola de JavaScript en un navegador?

Leer [¿Cómo funciona Javascript?](https://lenguajejs.com/javascript/introduccion/como-funciona/).

<details class="card mb-2">
  <summary class="card-header question">¿Cuántas maneras hay de incluir código JavaScript en un documento HTML?</summary>
  <div class="card-body" markdown="1">

Dos. Usando la etiqueta script e incluyendo un fichero .js externo.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Dónde podemos poner la etiqueta script dentro de un documento HTML?

Leer [Conceptos básicos](https://lenguajejs.com/javascript/introduccion/conceptos-basicos/).

{:.question}
¿Qué significa indentar?

{:.question}
¿Qué diferencia hay entre una variable y una constante?

{:.question}
¿Es lo mismo un parámetro que un argumento?

{:.question}
¿Qué es una iteración?

Leer [Comentarios de código](https://lenguajejs.com/javascript/introduccion/comentarios-de-codigo/).

{:.question}
¿Qué dos tipos de comentarios hay en JavaScript? ¿Qué diferencia hay entre ellos?

Leer [Estructuras de control](https://lenguajejs.com/javascript/introduccion/estructuras-de-control/).

{:.question}
¿Qué es un condicional? ¿Qué devuelve un condicional?¿Para qué sirven las condiciones en un lenguaje de programación como JavaScript?

Leer [Bucles e iteraciones](https://lenguajejs.com/javascript/introduccion/bucles/).

{:.question}
¿Cómo se sale de un bucle?

{:.question}
¿Sabrías diferenciar las tres partes de un bucle `for`?

{:.question}
¿Cuándo debemos usar un `while` y cuando un `for`?

<details class="card mb-2">
  <summary class="card-header question">En JavaScript, ¿existen bucles específicos para arrays?</summary>
  <div class="card-body" markdown="1">

Si, `for..in` y `for..of`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Qué es el iterador?

{:.question}
¿Podemos crear bucles infinitos?

Leer [Operadores básicos](https://lenguajejs.com/javascript/introduccion/operadores-basicos/).

{:.question}
¿Qué hace el operador aritmético módulo? ¿Qué utilidad puede tener (ejemplo)?

{:.question}
¿Cómo se asigna un valor a una variable? ¿Cuál es el operador utilizado para asignar en JavaScript?

{:.question}
¿Cómo se incrementa en uno una variable numérica de la forma más corta posible?

Leer [Indentación de código](https://lenguajejs.com/javascript/introduccion/indentacion/).

{:.question}
¿Es lo mismo indentar que tabular?

<details class="card mb-2">
  <summary class="card-header question">¿Cómo se puede indentar automáticamente en Visual Studio Code?</summary>
  <div class="card-body" markdown="1">

Leer el artículo [Trabajar con Visual Studio Code](/posts/trabajar-visual-studio-code).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Leer [Convenciones de nombres](https://lenguajejs.com/javascript/introduccion/convenciones-de-nombres/).

<details class="card mb-2">
  <summary class="card-header question">¿Es JavaScript case sensitive?</summary>
  <div class="card-body" markdown="1">

Si.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Sabrías decir algún estilo de nombrado?</summary>
  <div class="card-body" markdown="1">

camelCase, PascalCase, snake_case, kebab-case, dot.case, Húngara. Yo recomiendo usar camelCase ya que es la más usada.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Cuál es la convención de nombres más usada en JavaScript?</summary>
  <div class="card-body" markdown="1">

camelCase

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Leer [Funciones básicas](https://lenguajejs.com/javascript/introduccion/funciones-basicas/).

<details class="card mb-2">
  <summary class="card-header question">¿Qué es una función?</summary>
  <div class="card-body" markdown="1">

Las funciones nos permiten agrupar líneas de código en tareas con un nombre, para que, posteriormente, podamos hacer referencia a ese nombre para realizar todo lo que se agrupe en dicha tarea.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo declarar una función que ejecutar una función?
</summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>
{:.question}

{:.question}
¿Qué es un parámetro/argumentos?

{:.question}
¿Puede tener una función múltiples parámetros? ¿Cuál es el límite?

{:.question}
¿Existen los parámetros por defecto?

{:.question}
¿En qué consiste la devolución o retorno de valores? ¿Todas las funciones devuelven algo?

## Fundamentos de JavaScript

Leer [Tipos de datos](https://lenguajejs.com/javascript/fundamentos/tipos-de-datos/).

{:.question}
¿Es JavaScript un lenguaje estático o dinámico? ¿Qué quiere decir esto?

{:.question}
¿Es JavaScript un lenguaje tipado (fuertemente tipado) o no tipado (debilmente tipado)?

<details class="card mb-2">
  <summary class="card-header question">¿Sabrías decir algún tipo de dato de JavaScript?</summary>
  <div class="card-body" markdown="1">

Number, BigInt, String, Boolean, undefined, Function, Symbol, Object

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Cómo puedo saber el tipo de dato de una variable?</summary>
  <div class="card-body" markdown="1">

Usando la función `typeOf()` o utilizando `constructor.name`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Leer [Variables y constantes](https://lenguajejs.com/javascript/fundamentos/variables/).

<details class="card mb-2">
  <summary class="card-header question">Para declarar variables en JavaScript, ¿es mejor usar var, let o const? ¿Desde cuándo?</summary>
  <div class="card-body" markdown="1">

Siempre es mejor usar `let` desde que se creó esta palabra clave en ES6 o ECMAScript 2015.

`const` se usar para constantes, es decir, para variables que nunca van a cambiar de valor.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Se pueden declarar variables de la siguiente forma: `var a = 3, c = 1, d = 2;`?

Leer [Funciones](https://lenguajejs.com/javascript/fundamentos/funciones/). No es necesario leer el apartado de "Clausuras", ni "Ámbito léxico de this".

{:.question}
¿Cuántas maneras existen de declarar una función? ¿Hay alguna no recomendada?

{:.question}
¿Qué es una función anónima? ¿Cómo ejecutamos una función que no tiene nombre?

{:.question}
¿Qué es un callback?

{:.question}
¿Qué es una función autoejecutable?

<details class="card mb-2">
  <summary class="card-header question">¿Qué es una arrow function? ¿Es igual a una función tradicional?</summary>
  <div class="card-body" markdown="1">

Una arrow function es una forma más abreviada/simplificada de escribir funciones. Esto las hace más complicadas de entender hasta que te acostumbras a su uso.

A continuación te muestro como pasar de una función anónima a una función flecha:

```javascript
// Función tradicional
function (a){
  return a + 100;
}

// Desglose de la función flecha

// 1. Elimina la palabra "function" y coloca la flecha entre el argumento y el corchete de apertura.
(a) => {
  return a + 100;
}

// 2. Quita los corchetes del cuerpo y la palabra "return" — el return está implícito.
(a) => a + 100;

// 3. Suprime los paréntesis de los argumentos
a => a + 100;
```

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


Leer [Operadores avanzados](https://lenguajejs.com/javascript/fundamentos/operadores-avanzados/). No es necesario leer el apartado de "Operador Nullish coalescing", ni "Asignación lógica nula", ni "Encadenamiento opcional"

{:.question}
¿Qué hace el operador `+` si usa valores tipo String?

{:.question}
¿Sabrías decir al menos dos operadores lógicos? ¿Qué quiere decir que un operador es lógico?

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un operador ternario y para qué sirve?</summary>
  <div class="card-body" markdown="1">

El operador ternario es una especie de if compacto que tienen la mayoría de los lenguajes de programación, donde en lugar de utilizar un if / else tradicional, para escribir en varias líneas, podemos hacerlo mediante el operador ternario. Su estructura es la siguiente: (condición) ? valor verdadero : valor falso.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Para qué sirve el operador coma?

## Number

[¿Qué es un Number?](https://lenguajejs.com/javascript/number/variables-numericas/)

## Strings

Leer [¿Qué es un String?](https://lenguajejs.com/javascript/string/variables-texto/)

{:.question}
¿Es el número 18.5 tipo number?

{:.question}
¿Debemos tener cuidado con los rangos de los números que utilizamos?

{:.question}
¿Existe el concepto de infinito en JavaScript?

## Objetos

Leer [¿Qué son los objetos?](https://lenguajejs.com/javascript/objetos/que-son/)

{:.question}
¿Se pueden añadir propiedades a un objeto una vez creado? ¿Y quitar?

{:.question}
¿Puede un objeto tener una función como propiedad?

{:.question}
¿Todos los objetos tienen una función `toString()`? ¿Se puede sobreescribir para que tenga un comportamiento diferente?

Leer [Formato JSON](https://lenguajejs.com/javascript/objetos/json/)

{:.question}
¿Es lo mismo un JSON que un objeto de JavaScript?

<details class="card mb-2">
  <summary class="card-header question">¿Se pueden guardar funciones dentro de un JSON? ¿Y comentarios?</summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


<details class="card mb-2">
  <summary class="card-header question">¿Se puede pasar de un objeto de JavaScript a un JSON de forma fácil (con el uso de una sola función)?</summary>
  <div class="card-body" markdown="1">

Si.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


<details class="card mb-2">
  <summary class="card-header question">¿Podemos descargarnos contenido JSON de una web mediante peticiones HTTP?</summary>
  <div class="card-body" markdown="1">

Si. Se suele utilizar la función `fetch()`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Arrays

Leer [¿Qué es un Array en Javascript?](https://lenguajejs.com/javascript/arrays/que-es/)

{:.question}
En JavaScript, ¿es lo mismo un array que un arreglo que un vector y que una lista?

{:.question}
¿Cómo podemos saber cuántos elementos hay en una lista?

Puedes descargar [esta chuleta sobre los métodos de las arrays en JavaScript](/assets/img/javascript/js-metodos-array.pdf).

<details class="card mb-2">
  <summary class="card-header question">¿Qué método debemos usar si queremos insertar un elemento entre medias de un array?</summary>
  <div class="card-body" markdown="1">

Con la función `splice()`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Existen métodos para añadir elementos al principio y al final de un array? ¿Y para quitar?

## DOM

Leer [¿Qué es el DOM?](https://lenguajejs.com/javascript/dom/que-es/)

<details class="card mb-2">
  <summary class="card-header question">¿Qué significan las siglas DOM?</summary>
  <div class="card-body" markdown="1">

Las siglas DOM significan Document Object Model, o lo que es lo mismo, la estructura del documento HTML.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Es el DOM algo específico de JavaScript?</summary>
  <div class="card-body" markdown="1">

Si.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


Leer [Seleccionar elementos del DOM](https://lenguajejs.com/javascript/dom/seleccionar-elementos-dom/)

{:.question}
¿Cuál es la forma de seleccionar elementos del DOM? ¿Y de modificar dichos elementos una vez seleccionados?

## Eventos

Leer [¿Qué son los eventos?](https://lenguajejs.com/javascript/eventos/que-son-eventos/)


<details class="card mb-2">
  <summary class="card-header question">¿Es necesario modificar el documento HTML para añadir eventos JavaScript?</summary>
  <div class="card-body" markdown="1">

Mediante atributos HTML no es posible, pero si mediante propiedades JavaScript o la función `addEventListener()`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


## Vídeos que te pueden servir de ayuda

<iframe width="560" height="315" src="https://www.youtube.com/embed/Q9fwkpxr3Dw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/oqXYMnmq3c8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/8GTaO9XhA5M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

{:.question}
Si has visto los 3 vídeos deja un comentario de cual te parece mejor.

## Ejercicios en español

- [freeCodeCamp](https://www.freecodecamp.org/) ➡️ Ejercicios guiados de JS
- [Algoritmos y Estructuras de Datos en JavaScript](https://github.com/trekhleb/javascript-algorithms/blob/master/README.es-ES.md) ➡️ AVANZADO
- [DesafioLatam/guia-de-ejercicios-javascript](https://github.com/DesafioLatam/guia-de-ejercicios-javascript/blob/master/ejercicios.md)
- [Exámenes de JavaScript](https://cibertest.com/test-examen/20/javascript)
- [mouredev/Weekly-Challenge-2022-Kotlin](https://github.com/mouredev/Weekly-Challenge-2022-Kotlin)
- [Lista de preguntas (avanzadas) de JavaScript](https://github.com/lydiahallie/javascript-questions/blob/master/es-ES/README-ES.md) ➡️ Preguntas rebuscadas de JS
- [Reto #1 - Bingo (ManzDev)](https://lenguajejs.com/retos/nivel-medio/bingo/)
- [JavaScript Ya](https://www.tutorialesprogramacionya.com/javascriptya/) ➡️ 111 Ejercicios guiados de JS y con solución.
- [denulemos/programming-training (Ejercicios Logica de Programacion)](https://github.com/denulemos/programming-training) ➡️ 102 Ejercicios de JS y con solución.
- [a0viedo/fullstack](https://github.com/a0viedo/fullstack/blob/master/contenido/ejercicios/auto-evaluacion.md) ➡️ 6 problemas de JS.
- [Juanma-Gutierrez/Ejercicios-Javascript-06-05-2022 (Ejercicios Javascript)](https://github.com/Juanma-Gutierrez/Ejercicios-Javascript-06-05-2022) ➡️ 29 ejercicios JS un poco interesantes.
- [fryntiz/javascript-ejercicios-resueltos (Javascript Ejercicios_Resueltos)](https://github.com/fryntiz/javascript-ejercicios-resueltos) ➡️ Nivel muy básico, introducción y nivel medio de JS con el DOM.
- [makeitrealcamp/js-foundation](https://github.com/makeitrealcamp/js-foundation) ➡️ 60 ejercicios básicos de JS.
- [maxwellnewage/javascript_ejercicios (Ejercicios de Javascript)](https://github.com/maxwellnewage/javascript_ejercicios) ➡️ 65 ejercicios JS con solución.
- [makeitrealcamp/ejercicios-javascript (Ejercicios de JavaScript)](https://github.com/makeitrealcamp/ejercicios-javascript) ➡️ 31 ejercicios de JS.
- [Ada-Online-2da-Gen/ejercicios-javascript (ejercicios-javascript)](https://github.com/Ada-Online-2da-Gen/ejercicios-javascript) ➡️ Ejercicios de JS y React.

## Ejercicios en inglés

- [CodeAcademy](https://www.codecademy.com/catalog/language/javascript) ➡️ Ejercicios guiados de JS
- [Learn JavaScript](https://learnjavascript.online/) ➡️ Ejercicios guiados de JS
- [Advent of Code](https://adventjs.dev/es) ➡️ Lo recomiendan mucho.
- [Edabit](https://edabit.com/challenges/javascript) ➡️ Lo recomiendan mucho.
- [Eloquent Javascript](https://eloquentjavascript.net/2nd_edition/code/) ➡️ Curso de JavaScript
- [JavaScript Exercises](https://www.w3schools.com/js/js_exercises.asp)
- [CodinGame](https://www.codingame.com/start) ➡️ Para aprender jugando
- [CodeWars](https://www.codewars.com/) ➡️ Para aprender jugando
- [Exercism](https://exercism.org/) ➡️ Ejercicios guiados de JS 
- [Project Lovelace](https://projectlovelace.net/problems/) ➡️ Problemas para resolver con JS
- [JSChallenger](https://www.jschallenger.com/) ➡️ Ejercicios guiados de JS y retos.
- [Kattis](https://open.kattis.com/) ➡️ Programación competitiva y problemas para resolver. 
- [Online Judge](https://onlinejudge.org/) ➡️ Ejercicios difíciles de programación competitiva.

## Chuletas de JavaScript en español

- [Conceptos Básicos de JS Cheat Sheet by Martin Ordonez](https://cheatography.com/martin-ordonez/cheat-sheets/conceptos-basicos-de-js/#downloads)
- [Cheat Sheet sobre Javascript: guía rápida a dudas frecuentes (Paradigma)](https://www.paradigmadigital.com/wp-content/uploads/2018/02/JSCheatsheetv1.1.pdf)
- [Chuleta: JavaScript + Ejemplo](https://www.tutorialesprogramacionya.com/herramientas/chuletajs/chuletamasejemplo.html)

## Chuletas de JavaScript en inglés

- [Cheatsheets de Codecademy](https://www.codecademy.com/learn/introduction-to-javascript/modules/learn-javascript-introduction/cheatsheet)
- [Chuleta Javascript de LenguajeJS](https://lenguajejs.com/javascript/cheatsheets/). Puedes descargarla directamente [aquí](/assets/img/javascript/javascript-cheatsheet-2019-lenguajejs.com.pdf)
- [JavaScript Tutorial for Beginners](https://edabit.com/tutorial/javascript)

## Desarrollar en la nube

- [JS Bin](https://jsbin.com/)
- [Codepen](https://codepen.io/)
- [StackBlitz](https://stackblitz.com/)
- [JSFiddle](https://jsfiddle.net/)

## Bibliografía

- [Lenguaje JS](https://lenguajejs.com/)
- [Aprende X en Y minutos, Donde X=javascript](https://learnxinyminutes.com/docs/es-es/javascript-es/)
- [Basics of Javascript](https://fwhibbit.es/basics-of-javascript)
- [Comparación de funciones tradicionales con funciones flecha](https://developer.mozilla.org/es/docs/Web/JavaScript/Reference/Functions/Arrow_functions)
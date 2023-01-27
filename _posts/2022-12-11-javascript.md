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
¿Dónde debemos poner la etiqueta script dentro de un documento HTML?

Leer [Conceptos básicos](https://lenguajejs.com/javascript/introduccion/conceptos-basicos/).

{:.question}
¿Cómo se inicializa una variable? ¿Y una constante?

Leer [Comentarios de código](https://lenguajejs.com/javascript/introduccion/comentarios-de-codigo/).

{:.question}
¿Qué dos tipos de comentarios hay en JavaScript?

Leer [Estructuras de control](https://lenguajejs.com/javascript/introduccion/estructuras-de-control/).

{:.question}
¿Para que sirven las condiciones en un lenguaje de programación como JavaScript?

Leer [Bucles e iteraciones](https://lenguajejs.com/javascript/introduccion/bucles/).

{:.question}
¿Cómo se sale de un bucle?

{:.question}
¿Sabrías diferencias las tres partes de un bucle for?

{:.question}
¿Cuándo debemos usar un while y cuando un for?

Leer [Operadores básicos](https://lenguajejs.com/javascript/introduccion/operadores-basicos/).

{:.question}
¿Qué hace el operador aritmético módulo?

{:.question}
¿Cómo se asigna un valor a una variable?

{:.question}
¿Cómo se incrementa en uno una variable numérica de la forma más corta posible?

Leer [Indentación de código](https://lenguajejs.com/javascript/introduccion/indentacion/).

{:.question}
¿Es lo mismo indentar que tabular?

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

{:.question}
¿Qué es una función?

{:.question}
¿Es lo mismo declarar una función que ejecutar una función?

{:.question}
¿Qué es un parámetro?

{:.question}
¿Cuántos parámetros puede tener una función?

{:.question}
¿Existen los parámetros por defecto?

{:.question}
¿En qué consiste la devolución o retorno de valores?

## Fundamentos de JavaScript

Leer [Tipos de datos](https://lenguajejs.com/javascript/fundamentos/tipos-de-datos/).

{:.question}
¿Es JavaScript un lenguaje estático o dinámico?

{:.question}
¿Es JavaScript un lenguaje fuertemente tipado o debilmente tipado?

{:.question}
¿Sabrías decir algún tipo de dato de JavaScript?

<details class="card mb-2">
  <summary class="card-header question">¿Cómo puedo saber el tipo de dato de una variable?</summary>
  <div class="card-body" markdown="1">

Usando la función `typeOf()`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Leer [Variables y constantes](https://lenguajejs.com/javascript/fundamentos/variables/).

<details class="card mb-2">
  <summary class="card-header question">Para declarar variables en JavaScript, ¿es mejor usar var, let o const? ¿Desde cuándo?</summary>
  <div class="card-body" markdown="1">

Siempre es mejor usar let desde que se creó esta palabra clave en ES6 o ECMAScript 2015.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Leer [Funciones](https://lenguajejs.com/javascript/fundamentos/funciones/). No es necesario leer el apartado de "Clausuras", ni "Ámbito léxico de this".

{:.question}
¿Cuántas maneras existen de declarar una función? ¿Hay alguna no recomendada?

{:.question}
¿Qué es una función anónima?

{:.question}
¿Qué es un callback?

{:.question}
¿Qué es una función autoejecutable?

{:.question}
¿Qué es una arrow function? ¿Es igual a una función tradicional?

Leer [Operadores avanzados](https://lenguajejs.com/javascript/fundamentos/operadores-avanzados/). No es necesario leer el apartado de "Operador Nullish coalescing", ni "Asignación lógica nula", ni "Encadenamiento opcional"

{:.question}
¿Sabrías decir al menos dos operadores lógicos?

{:.question}
¿Qué es un operador ternario y para qué sirve?

{:.question}
¿Para qué sirve el operador coma?

## Number

[¿Qué es un Number?](https://lenguajejs.com/javascript/number/variables-numericas/)

## Strings

Leer [¿Qué es un String?](https://lenguajejs.com/javascript/string/variables-texto/)

## Objetos

Leer [¿Qué son los objetos?](https://lenguajejs.com/javascript/objetos/que-son/)

Leer [Formato JSON](https://lenguajejs.com/javascript/objetos/json/)

## Arrays

Leer [¿Qué es un Array en Javascript?](https://lenguajejs.com/javascript/arrays/que-es/)

Puedes descargar [esta chuleta sobre los métodos de las arrays en JavaScript](js-metodos-array.pdf).

## DOM

Leer [¿Qué es el DOM?](https://lenguajejs.com/javascript/dom/que-es/)

Leer [Seleccionar elementos del DOM](https://lenguajejs.com/javascript/dom/seleccionar-elementos-dom/)

## Eventos

Leer [¿Qué son los eventos?](https://lenguajejs.com/javascript/eventos/que-son-eventos/)

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

## Ejercicios en inglés

- [CodeAcademy](https://www.codecademy.com/catalog/language/javascript) ➡️ Ejercicios guiados de JS
- [Advent of Code](https://adventjs.dev/es) ➡️ Lo recomiendan mucho.
- [Edabit](https://edabit.com/challenges/javascript) ➡️ Lo recomiendan mucho.
- [Eloquent Javascript](https://eloquentjavascript.net/2nd_edition/code/) ➡️ Curso de JavaScript
- [JavaScript Exercises](https://www.w3schools.com/js/js_exercises.asp)
- [CodinGame](https://www.codingame.com/start) ➡️ Para aprender jugando
- [CodeWars](https://www.codewars.com/) ➡️ Para aprender jugando

## Enlaces pendientes de mirar

- [Exercism](https://exercism.org/)
- [HackerRank](https://www.hackerrank.com/)
- [Lista de preguntas (avanzadas) de JavaScript](https://github.com/lydiahallie/javascript-questions/blob/master/es-ES/README-ES.md)
- [Retos](https://lenguajejs.com/retos/)
- [Project Lovelace](https://projectlovelace.net/problems/)
- [JavaScript Ya](https://www.tutorialesprogramacionya.com/javascriptya/)
- [Ejercicios Logica de Programacion](https://github.com/denulemos/programming-training)
- [JSChallenger](https://www.jschallenger.com/)
- [Autoevaluación](https://github.com/a0viedo/fullstack/blob/master/contenido/ejercicios/auto-evaluacion.md)
- [Ejercicios Javascript](https://github.com/Juanma-Gutierrez/Ejercicios-Javascript-06-05-2022)
- [Javascript Ejercicios_Resueltos](https://github.com/fryntiz/javascript-ejercicios-resueltos)
- [Ejercicios de Javascript](https://github.com/maxwellnewage/javascript_ejercicios)
- [Ejercicios de JavaScript](https://github.com/makeitrealcamp/ejercicios-javascript)
- [makeitrealcamp js-foundation](https://github.com/makeitrealcamp/js-foundation)
- [ejercicios-javascript](https://github.com/Ada-Online-2da-Gen/ejercicios-javascript)

## Competitive programming

- [Online Judge](https://onlinejudge.org/)
- [Kattis](https://open.kattis.com/)

## Chuletas de JavaScript en español

- [Chuleta: JavaScript + Ejemplo](https://www.tutorialesprogramacionya.com/herramientas/chuletajs/chuletamasejemplo.html) ➡️ En español.

## Chuletas de JavaScript en inglés

- [Cheatsheets de Codecademy](https://www.codecademy.com/learn/introduction-to-javascript/modules/learn-javascript-introduction/cheatsheet)
- [Chuleta Javascript de LenguajeJS](https://lenguajejs.com/javascript/cheatsheets/). Puedes descargarla directamente [aquí](javascript-cheatsheet-2019-lenguajejs.com.pdf)
- [JavaScript Tutorial for Beginners](https://edabit.com/tutorial/javascript)

## Bibliografía

- [Lenguaje JS](https://lenguajejs.com/)
- [Aprende X en Y minutos, Donde X=javascript](https://learnxinyminutes.com/docs/es-es/javascript-es/)
- [Basics of Javascript](https://fwhibbit.es/basics-of-javascript)

---
title: "Fundamentos de la programación con JavaScript"
date: 2024-10-14 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/desarrollo-web-entorno-cliente-24-25/
---

{:.section}
## Introducción

Lee el artículo [Conceptos previos](https://lenguajejs.com/fundamentos/introduccion/conceptos-previos/).

{:.question}
¿Qué diferencia hay entre una variable y una constante?

{:.section}
## Comentarios

Lee el artículo [Comentarios de código](https://lenguajejs.com/javascript/introduccion/comentarios-de-codigo/).

{:.question}
¿Qué dos tipos de comentarios hay en JavaScript? ¿Qué diferencia hay entre ellos?

{:.section}
## Indentación de código

Lee el artículo [Indentación de código](https://lenguajejs.com/fundamentos/introduccion/indentacion-de-codigo/).

{:.question}
¿Qué significa indentar?

{:.question}
¿Es lo mismo indentar que tabular?

<details class="card mb-2">
  <summary class="card-header question">¿Cómo se puede indentar automáticamente en Visual Studio Code?</summary>
  <div class="card-body" markdown="1">

Con el atajo de teclado `Shift + Alt + F`. Lee el artículo [Trabajar con Visual Studio Code](/posts/trabajar-visual-studio-code) si quieres saber más.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Convenciones de nombres

Lee el artículo [Convenciones de nombres](https://lenguajejs.com/javascript/introduccion/convenciones-de-nombres/).

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

{:.section}
## Variables y constantes

Lee el artículo [Variables y constantes](https://lenguajejs.com/javascript/fundamentos/variables/).

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

{:.section}
## Tipos de datos

Lee el artículo [Tipos de datos en JavaScript](/posts/tipos-datos-javascript).

{:.subsection}
### Funciones

Lee el artículo [Funciones en JavaScript](/posts/funciones-javascript/).

{:.subsection}
### Conversiones entre tipos de datos

En javascript las conversiones de tipos no siempre son necesarias, ya que existe un concepto llamado Type coercion que fuerza a una conversión automática cuando se usan distintos tipos.

Puede ser útil, pero es una mala práctica usar continuamente la conversión forzada. Es mejor tener claro el tipo de datos que estamos usando. Para evitar los posibles problemas se inventó TypeScript.

- Convertir cadenas a números usando parseInt(), parseFloat(), o el operador “+”:

```javascript
let cadenaNumerica = "1234";
let numero1 = parseInt(cadenaNumerica); // convierte la cadena a un número entero
let numero2 = parseFloat(cadenaNumerica); // convierte la cadena a un número de punto flotante
let numero3 = +"1234"; // convierte la cadena a un número utilizando el operador "+"
```

- Convertir números a cadenas concatenándolos con una cadena vacía “”:

```javascript
let cadena = "" + 3600;
let longitudCadena = cadena.length; // longitud de la cadena (en este caso, 4)
```

{:.section}
## Operadores básicos

Leer [Operadores básicos](https://lenguajejs.com/javascript/introduccion/operadores-basicos/).

{:.question}
¿Qué hace el operador aritmético módulo? ¿Qué utilidad puede tener (ejemplo)?

{:.question}
¿Cómo se asigna un valor a una variable? ¿Cuál es el operador utilizado para asignar en JavaScript?

{:.question}
¿Cómo se incrementa en uno una variable numérica de la forma más corta posible?

{:.section}
## Condicionales if else

Lee el artículo [Condicionales if else](https://lenguajejs.com/fundamentos/estructuras-de-control/condicionales-if-else/).

{:.question}
¿Qué es un condicional `if else`?

{:.question}
¿Qué devuelve un condicional `if else`?

{:.question}
¿Para qué sirven las condiciones en un lenguaje de programación como JavaScript?

{:.section}
## Bucles e iteraciones

Lee el artículo [¿Qué son los bucles?](https://lenguajejs.com/fundamentos/bucles-e-iteraciones/que-son/).

{:.question}
¿Qué es una iteración?

{:.question}
¿Cómo se sale de un bucle?

{:.question}
¿Qué es el iterador?

{:.question}
¿Podemos crear bucles infinitos?

(Voluntario) Lee [Bucles while](https://lenguajejs.com/fundamentos/bucles-e-iteraciones/bucles-while/).

{:.question}
¿Qué diferencia hay entre un bucle `while` y un bucle `do while`?

(Voluntario) Lee [Bucles for](https://lenguajejs.com/fundamentos/bucles-e-iteraciones/bucles-for/).

{:.question}
¿Sabrías diferenciar las tres partes de un bucle `for`?

{:.question}
¿Cuándo debemos usar un `while` y cuando un `for`?

{:.question}
¿Se pueden incrementar dos variables al mismo tiempo en un bucle `for` (dentro de los paréntesis)?

{:.question}
¿Por qué el bucle for es quizás uno de los más utilizados en el mundo de la programación?

<details class="card mb-2">
  <summary class="card-header question">En JavaScript, ¿existen bucles específicos para arrays?</summary>
  <div class="card-body" markdown="1">

Si, `for..in` y `for..of`. Pero... ¿Sabrías decir para qué se usa cada uno?

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

(Voluntario) Lee [Interrumpir bucles](https://lenguajejs.com/fundamentos/bucles-e-iteraciones/interrumpir-bucles/).

{:.question}
¿Con qué palabra clave podemos saltar una iteración de un bucle?

{:.question}
¿Es fácil evitar el uso del `continue`?

{:.question}
¿Qué diferencia hay entre usar `continue` en un bucle `while` y un bucle `for`?

{:.question}
¿Cómo podemos interrumpir un bucle por completo?

{:.section}
## Ámbitos o contextos

Lee el artículo [Ámbitos o contextos](https://lenguajejs.com/fundamentos/estructuras-de-datos/ambitos-o-contextos/).

{:.section}
## ¿Cuál es la forma más rápida de ser un maestro en JavaScript?

Mira este vídeo [How To Master JavaScript](https://youtube.com/shorts/I5_Gx3JNho8?si=8WunChsHu2Ncjqd_.).

## Bibliografía

- [Lenguaje JS](https://lenguajejs.com/)
- [Aprende X en Y minutos, Donde X=javascript](https://learnxinyminutes.com/docs/es-es/javascript-es/)
- [Basics of Javascript](https://fwhibbit.es/basics-of-javascript)
- [Comparación de funciones tradicionales con funciones flecha](https://developer.mozilla.org/es/docs/Web/JavaScript/Reference/Functions/Arrow_functions)

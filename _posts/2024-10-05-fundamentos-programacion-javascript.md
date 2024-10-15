---
title: "Fundamentos de la programación con JavaScript"
date: 2024-10-06 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/desarrollo-web-entorno-cliente-24-25/
---

{:.section}
## Introducción

ECMAScript o JavaScript no para de evolucionar y ya está en la la versión ES2024.

- **Mayo de 1995**
  - Brendan Eich crea un lenguaje llamado Mocha cuando trabajaba en Netscape.
- **Septiembre de 1995**
  - Se renombra a LiveScript hasta que le cambiaron el nombre a JavaScript debido a una estrategia de marketing, ya que Netscape fue adquirida por Sun Microsystems, propietaria del lenguaje Java, muy popular por aquel entonces.
  - Es muy importante aclarar que JavaScript no tiene nada nada que ver con Java; son dos lenguajes de programación totalmente diferentes.
- **Año 1997**
  - Se crea el comité European Computer Manufacturers' Association (ECMA de aquí en adelante) y se estadariza el DOM y todo navegador que soporte JavaScript se debe atener a dicho estándar.
- **Año 1998**
  - Sale a a la luz la segunda versión del estándar ECMAScript: ES2.
- **Año 1999**
  - Sale a la luz la tercera versión del estándar ECMAScript: ES3.
- **Año 2011**
  - Sale a la luz la quinta versión del estándar ECMAScript: ES5. La versión ES4 al final no salió a la luz.
- **Año 2015**
  - Sale a la luz la sexta versión del estándar ECMAScript: ES6. Fue en diciembre del año anterior cuando se propuso la versión candidata pero que no se aprobó hasta el citado año.

Lee el artículo [Conceptos previos](https://lenguajejs.com/fundamentos/introduccion/conceptos-previos/).

{:.question}
¿Qué diferencia hay entre una variable y una constante?

{:.section}
## Comentarios

A la hora de programar en cualquier lenguaje de programación, es muy importante que comentes tu código. Aunque hoy día se aconseja que el propio código sea el que esté autodocumentado. Es decir, si una serie de sentencias realizan una determinada acción o función, es mejor y más claro crear una función para dicho propósito con un identificador lo suficientemente claro, que poner el comentario en el código. Pero todo eso lo veremos más adelante.

Los comentarios son sentencias que el intérprete de JavaScript ignora. Sin embargo, estas sentencias permiten a los desarrolladores dejar notas sobre cómo funcionan las cosas en sus scripts.

JavaScript permite dos estilos de comentarios: de una sola línea o de varias. Ejemplos de comentarios de una única línea o de varias líneas:

```javascript
// Comentarios de una línea

/*
Comentarios de varias líneas
*/
```

(Voluntario) Lee el artículo [Comentarios de código](https://lenguajejs.com/javascript/introduccion/comentarios-de-codigo/).

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

Una variable es un contenedor de un valor de un tipo dado al que le damos un identificador. El valor de una variable puede cambiar en el tiempo. También existen las constantes que, al contrario de las variables, su valor no puede cambiar.

Para nombrar una variable o constante sólo podemos utilizar caracteres alfanuméricos `[a-zA-Z0-9]` y el caracter de subrayado `_`. No debe comenzar por un número. Tampoco podemos utilizar como identificador una palabra reservada ya que nos daría error. Es conveniente que los nombres, o los identificadores que les damos, sean descriptivos e informen del cometido de dicha variable para que nuestro código sea legible y entendible. También es conveniente seguir la convención **lower camel case** en la que se utilizan minúsculas para nombrarlas y si es la unión de varias palabras éstas se unen y se distingue entre palabras utilizando la primera letra en mayúscula.

Antes de utilizar una variable deberemos declararla y luego darle un valor, ya que si no su valor será undefined.

Para declarar constantes y variables debemos utilizar las palabras reservadas `const`, `var` y `let` (la primera para las constantes y las otras para las variables en las que ahora nos detendremos).

```javascript
const pi = 3.14;
var edad = 18;
let nombre = "Bob Esponja";
```

La palabra `var` declara una variable y se sigue utilizando por motivos históricos ya que genera algunos problemas que viene a solucionar `let`.

Debido al **hoisting**, era posible declarar una variable con var después de ser utilizada y eso funcionaba. Por ejemplo:

```javascript
edad = 18;
...
...
var edad;
```

{:.question}
¿Qué es el hoisting?

Ese código era válido, pero la verdad es que se hace confuso y más complejo de entender. Pues el hoisting ya no funciona con `let`, por lo que para utilizar una variable que vamos a declarar con let, primero debemos declararla o de lo contrario nos dará un error.

```javascript
let edad;
...
edad = 18;
```

Además con el uso de `var`, una variable se podía declarar varias veces y era correcto, pero como ves en el ejemplo vuelve a ser confuso.

```javascript
var edad = 18;
....
var edad = 20;
```

Eso con `let` ya no funciona y habría que hacerlo de la siguiente forma:

```javascript
let edad = 18;
....
edad = 20;
```

JavaScript es un lenguaje "débilmente tipado", lo cual significa que, a diferencia de otros lenguajes, no es necesario especificar el tipo de dato que vamos a almacenar en una variable y además éste puede cambiar. Esto deberíamos evitarlo para evitar confusiones.

```javascript
let edad;
edad = '18';    // En este caso contiene una cadena
edad = 18;      // En este caso contiene un número
```

(Voluntario) Lee el artículo [Variables y constantes](https://lenguajejs.com/javascript/fundamentos/variables/).

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

JavaScript es un lenguaje rico en operadores: símbolos y palabras que realizan operaciones sobre uno o varios valores, para obtener un nuevo valor.

Cualquier valor sobre el cuál se realiza una acción (indicada por el operador), se denomina un operando. Una expresión puede contener un operando y un operador (denominado operador unario), como por ejemplo en `b++`, o bien dos operandos, separados por un operador (denominado operador binario), como por ejemplo en `a + b`. Incluso exsite algún operador ternario.

Categorías de operadores en JavaScript:

- Comparación: `==  !=  === !==  >  >=  <  <=`
- Aritméticos: `+   -   *   /   %   ++   - -   +valor  -valor`
- Asignación: `=    +=    -=    *=    /=    %=    <<=    >=    >>=    >>>=    &=    |=     ˆ =    []`
- Lógicos: `&&  ||  !`
- Bit a Bit: `&    |     ˆ ∼ <<    >>    >>>`
- Objeto: `.    []    ()    delete    in    instanceOf    new    this`
- Otros: `,    ?:    typeof    void`

Leer [Operadores básicos](https://lenguajejs.com/javascript/introduccion/operadores-basicos/).

{:.question}
¿Qué hace el operador aritmético módulo? ¿Qué utilidad puede tener (ejemplo)?

{:.question}
¿Cómo se asigna un valor a una variable? ¿Cuál es el operador utilizado para asignar en JavaScript?

{:.question}
¿Cómo se incrementa en uno una variable numérica de la forma más corta posible?

<details class="card mb-2">
  <summary class="card-header question">¿Qué es el operador `:?`?</summary>
  <div class="card-body" markdown="1">

Este operador condicional es la forma reducida de la expresión `if else`.

La sintaxis formal para este operador condicional es:

```javascript
(condicion) ? expresionV : expresionF;
```

Si la condición evalúa a `true` devuelve `expresionV` y en caso contrario devuelve `expresionF`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Condicionales if else

En los lenguajes de programación, las instrucciones que te permiten controlar las decisiones y bloques de ejecución, se denominan "Estructuras de Control". Una estructura de control, dirige el flujo de ejecución a través de una secuencia de instrucciones, basadas en decisiones simples y en otros factores.

Una parte muy importante de una estructura de control es la "condición". Cada condición es una expresión que se evalúa a `true` o `false`.

Lee el artículo [Condicionales if else](https://lenguajejs.com/fundamentos/estructuras-de-control/condicionales-if-else/).

{:.question}
¿Qué es un condicional `if else`?

{:.question}
¿Qué devuelve un condicional `if else`?

{:.question}
¿Para qué sirven las condiciones en un lenguaje de programación como JavaScript?

{:.section}
## Bucles e iteraciones

Los bucles son estructuras repetitivas, que se ejecutarán un número de veces determinado.

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

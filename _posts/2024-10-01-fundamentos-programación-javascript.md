---
title: "Fundamentos de la programación con JavaScript"
date: 2024-10-01 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/desarrollo-web-entorno-cliente-24-25/
---

## Introducción

Lee el artículo [Conceptos previos](https://lenguajejs.com/fundamentos/introduccion/conceptos-previos/).

{:.question}
¿Qué diferencia hay entre una variable y una constante?

### Comentarios

Lee el artículo [Comentarios de código](https://lenguajejs.com/javascript/introduccion/comentarios-de-codigo/).

{:.question}
¿Qué dos tipos de comentarios hay en JavaScript? ¿Qué diferencia hay entre ellos?

### Indentación de código

Lee el artículo [Indentación de código](https://lenguajejs.com/javascript/introduccion/indentacion/).

{:.question}
¿Qué significa indentar?

{:.question}
¿Es lo mismo indentar que tabular?

<details class="card mb-2">
  <summary class="card-header question">¿Cómo se puede indentar automáticamente en Visual Studio Code?</summary>
  <div class="card-body" markdown="1">

Lee el artículo [Trabajar con Visual Studio Code](/posts/trabajar-visual-studio-code).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

### Convenciones de nombres

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

## Estructuras de control

Lee el artículo [Estructuras de control](https://lenguajejs.com/javascript/introduccion/estructuras-de-control/).

{:.question}
¿Qué es un condicional? ¿Qué devuelve un condicional?¿Para qué sirven las condiciones en un lenguaje de programación como JavaScript?

## Bucles e iteraciones

Lee el artículo [Bucles e iteraciones](https://lenguajejs.com/javascript/introduccion/bucles/).

{:.question}
¿Qué es una iteración?

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

## Estructuras de datos básicas

### Variables y constantes

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

### Tipos de datos

Lee el artículo [Tipos de datos](https://lenguajejs.com/javascript/fundamentos/tipos-de-datos/).

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

#### Number

[¿Qué es un Number?](https://lenguajejs.com/javascript/number/variables-numericas/)

#### Strings

Leer [¿Qué es un String?](https://lenguajejs.com/javascript/string/variables-texto/)

{:.question}
¿Es el número 18.5 tipo number?

{:.question}
¿Debemos tener cuidado con los rangos de los números que utilizamos?

{:.question}
¿Existe el concepto de infinito en JavaScript?

#### Objetos

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

#### Arrays

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

### Operadores básicos

Leer [Operadores básicos](https://lenguajejs.com/javascript/introduccion/operadores-basicos/).

{:.question}
¿Qué hace el operador aritmético módulo? ¿Qué utilidad puede tener (ejemplo)?

{:.question}
¿Cómo se asigna un valor a una variable? ¿Cuál es el operador utilizado para asignar en JavaScript?

{:.question}
¿Cómo se incrementa en uno una variable numérica de la forma más corta posible?

### Ámbitos o contextos

Lee el artículo [Ámbitos o contextos](https://lenguajejs.com/fundamentos/estructuras-de-datos/ambitos-o-contextos/).

## Funciones

Lee el artículo [¿Qué es una función?](https://lenguajejs.com/javascript/introduccion/funciones-basicas/).

{:.question}
¿Es lo mismo un parámetro que un argumento?

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

### Parámetros de una función

Leer [Parámetros de una función](https://lenguajejs.com/fundamentos/funciones/parametros/).

{:.question}
¿Cuántas maneras existen de declarar una función? ¿Hay alguna no recomendada?

{:.question}
¿Cómo ejecutamos una función que no tiene nombre?

<details class="card mb-2">
  <summary class="card-header question">¿Qué es una función anónima?</summary>
  <div class="card-body" markdown="1">

Leer [apartado Funciones anónimas de Funciones](https://lenguajejs.com/javascript/fundamentos/funciones/#funciones-an%C3%B3nimas)

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Qué es un callback?

<details class="card mb-2">
  <summary class="card-header question">¿Qué es una función autoejecutable?</summary>
  <div class="card-body" markdown="1">

Leer [apartado Funciones autoejecutables de Funciones](https://lenguajejs.com/javascript/fundamentos/funciones/#funciones-autoejecutables).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué es una arrow function? ¿Es igual a una función tradicional?</summary>
  <div class="card-body" markdown="1">

Una arrow function es una forma más abreviada/simplificada de escribir funciones. Esto las hace más complicadas de entender hasta que te acostumbras a su uso.

A continuación te muestro como pasar de una función anónima a una función flecha:

```javascript
// Función tradicional
(function (a){
  return a + 100;
})

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

## Bibliografía

- [Lenguaje JS](https://lenguajejs.com/)
- [Aprende X en Y minutos, Donde X=javascript](https://learnxinyminutes.com/docs/es-es/javascript-es/)
- [Basics of Javascript](https://fwhibbit.es/basics-of-javascript)
- [Comparación de funciones tradicionales con funciones flecha](https://developer.mozilla.org/es/docs/Web/JavaScript/Reference/Functions/Arrow_functions)

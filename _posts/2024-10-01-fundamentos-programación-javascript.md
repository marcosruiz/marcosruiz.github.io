---
title: "Fundamentos de la programación con JavaScript"
date: 2024-10-01 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/desarrollo-web-entorno-cliente-24-25/
---

> Artículo en construcción.
{:.prompt-warning}

{:.section}
## Introducción

Lee el artículo [Conceptos previos](https://lenguajejs.com/fundamentos/introduccion/conceptos-previos/).

{:.question}
¿Qué diferencia hay entre una variable y una constante?

{:.subsection}
### Comentarios

Lee el artículo [Comentarios de código](https://lenguajejs.com/javascript/introduccion/comentarios-de-codigo/).

{:.question}
¿Qué dos tipos de comentarios hay en JavaScript? ¿Qué diferencia hay entre ellos?

{:.subsection}
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

{:.subsection}
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

{:.section}
## Estructuras de control

Lee el artículo [Estructuras de control](https://lenguajejs.com/javascript/introduccion/estructuras-de-control/).

{:.question}
¿Qué es un condicional? ¿Qué devuelve un condicional?¿Para qué sirven las condiciones en un lenguaje de programación como JavaScript?

{:.section}
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

{:.section}
## Estructuras de datos básicas

{:.subsection}
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

{:.subsection}
### Tipos de datos

Javascript es un lenguaje no tipado. Aunque ya veremos que esta definición se queda corta.

No tipado significa que no es necesario declarar el tipo de datos de una variable al definirla. Esto es diferente a lenguajes como Java o C#, donde se debe especificar si una variable es un entero, un string, etc.

Aunque Javascript no requiere que se declare el tipo de datos, una vez que una variable es asignada, adquiere un tipo. Además, las variables en Javascript pueden cambiar de tipo a lo largo de la ejecución del programa, lo que se conoce como “tipado dinámico”. Por ejemplo:

```javascript
let x = 1;  // x es un número
x = '1';    // ahora x es un string
```

Javascript es un lenguaje débilmente tipado, lo que significa que permite operaciones entre diferentes tipos de datos, y a menudo convierte automáticamente los tipos según sea necesario. Estas conversiones automáticas pueden llevar a resultados inesperados, pero también hacen que el lenguaje sea más flexible. Por ejemplo:

```javascript
console.log("1234" * 1);  // 1234, string convertido a número
console.log(2 / "bla bla");  // NaN, "bla bla" no se puede convertir a número
```

Estos son los tipos soportados, como se puede ver, hay menos cantidad que en otros lenguajes sin perder la capacidad de representación de la información. El caso de las variables numéricas es interesante porque internamente usa coma flotante de doble precisión para cualquier número.

- Cadena
- Número
- Boolean
- Null
- Function
- Object

Cabe destacar que Javascript tiene los tipos stringy String o numbery Number, así como Boolean. Con mayúsculas son objetos especiales que pueden ser usados como primitivos, pero también tienen métodos. Las strings siempre se comportan tanto como primitivos como String.

Además, soporta valores especiales:

- `undefined`: Indica que a la variable no se le ha asignado valor.
- `null`: Valor nulo, se comporta como un objeto vacío.
- `NaN`: Not a Number, se obtiene cuando no se puede convertir a número el resultado de una operación.
- `Inifinity -Infinity`: Demasiado grande o pequeño o el infinito en sí mismo. Por ejemplo, se puede hacer un bucle for de 0 a Infinity.

> Si no te queda claro, puedes leer el artículo [Tipos de datos](https://lenguajejs.com/javascript/fundamentos/tipos-de-datos/).
{:.prompt-info}

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

{:.subsection}
### typeOf

Si queremos saber de qué tipo es una variable, podemos preguntar con typeOf():

```javascript
let array_mix = [
 "abcdef", 2 , 2.1 , 2.9e3 , 2e-3 ,
 0o234 , 0x23AF , true , [1,2,3] , {'a': 1, 'b': 2}
];
for (let i=0;i<array_mix.length;i++) {
 console.log(typeof(array_mix[i]));
}
```

```plaintext
string
number
number
number
number
number
number
boolean
object
object
```

<details class="card mb-2">
  <summary class="card-header question">¿Cómo puedo saber el tipo de dato de una variable?</summary>
  <div class="card-body" markdown="1">

Usando la función `typeOf()` o utilizando `constructor.name`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### Conversiones

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

{:.subsubsection}
#### Number

[¿Qué es un Number?](https://lenguajejs.com/javascript/number/variables-numericas/)

{:.subsubsection}
#### Strings

Leer [¿Qué es un String?](https://lenguajejs.com/javascript/string/variables-texto/)

{:.question}
¿Es el número 18.5 tipo number?

{:.question}
¿Debemos tener cuidado con los rangos de los números que utilizamos?

{:.question}
¿Existe el concepto de infinito en JavaScript?

{:.subsubsection}
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

{:.subsubsection}
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

{:.subsection}
### Operadores básicos

Leer [Operadores básicos](https://lenguajejs.com/javascript/introduccion/operadores-basicos/).

{:.question}
¿Qué hace el operador aritmético módulo? ¿Qué utilidad puede tener (ejemplo)?

{:.question}
¿Cómo se asigna un valor a una variable? ¿Cuál es el operador utilizado para asignar en JavaScript?

{:.question}
¿Cómo se incrementa en uno una variable numérica de la forma más corta posible?

{:.subsection}
### Ámbitos o contextos

Lee el artículo [Ámbitos o contextos](https://lenguajejs.com/fundamentos/estructuras-de-datos/ambitos-o-contextos/).

{:.section}
## Funciones

Las funciones son bloques fundamentales de código en JavaScript. Permiten agrupar y reutilizar código, y son esenciales para la programación modular, estructurada y funcional.

> Lee el artículo [¿Qué es una función?](https://lenguajejs.com/javascript/introduccion/funciones-basicas/).
{:.prompt-info}

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

{:.subsection}
### Parámetros de una función

Una característica notable de JavaScript es que no da error si llamas a una función con más argumentos de los que espera. Los argumentos adicionales simplemente son ignorados.

```javascript
function saludar(nombre) {
  console.log("Hola, " + nombre);
}
saludar("Juan", "extra"); // "Hola, Juan"
```

```plaintext
Hola, Juan
```

El orden de los argumentos es crucial. Los argumentos se asignan a los parámetros en el orden en que se pasan.

Javascript, en las funciones, crea un objeto llamando arguments que tiene los argumentos pasados, la posición como clave y la cantidad de argumentos con length.

```javascript
function a(){ console.log(arguments)} 
a(1,2,3);
```

```plaintext
[Arguments] { "0": 1, "1": 2, "2": 3 }
```

> Lee el artículo [Parámetros de una función](https://lenguajejs.com/fundamentos/funciones/parametros/).
{:.prompt-info}

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

{:.subsection}
### Return en funciones

Las funciones pueden o no tener un valor de retorno. Si no se especifica un return, la función devuelve undefined por defecto. Las funciones sólo retornan un valor. Si queremos retornar más de uno los podemos agrupar en arrays o objetos.

```javascript
function sinRetorno() {
  let mensaje = "Hola";
}

function conRetorno() {
  let mensaje = "Hola";
  return mensaje;
}

console.log(sinRetorno(),conRetorno()); 
```

```plaintext
undefined Hola
```

{:.subsection}
### Invocación de funciones

Al usar paréntesis `()`, invocas a la función. Sin paréntesis, haces referencia al objeto que representa la función.

{:.subsection}
### Las funciones son objetos

En JavaScript, las funciones son objetos de primera clase. Esto significa que pueden ser asignadas a variables, pasadas como argumentos y devueltas por otras funciones.

```javascript
function multiplicar(x, y) {
  return x * y;
}
let operacion = multiplicar;
console.log(operacion(2, 3)); // 6
```

```javascript
6
```

La capacidad de Javascript de tratar a las funciones como objetos le permite facilitar el uso de funciones de Callback y la programación funcional, que veremos en su capítulo.

{:.question}
¿Qué es un callback?

<details class="card mb-2">
  <summary class="card-header question">¿Qué es una función autoejecutable?</summary>
  <div class="card-body" markdown="1">

Leer [apartado Funciones autoejecutables de Funciones](https://lenguajejs.com/javascript/fundamentos/funciones/#funciones-autoejecutables).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### Declaración de funciones

Las funciones pueden ser declaradas de manera explícita. Este tipo de declaración se carga en tiempo de compilación, permitiendo su uso antes de la declaración (hoisting).

```javascript
console.log(suma(2, 3)); // 5

function suma(a, b) {
  return a + b;
}
```

```plaintext
5
```

Las funciones también pueden ser definidas mediante expresiones. Este tipo de función se evalúa en tiempo de ejecución y no soporta hoisting.

```javascript
let restar = function(a, b) {
  return a - b;
};

console.log(restar(5, 3)); // 2
```

```plaintext
2
```

Las expresiones de función pueden ser anónimas, es decir, no tener un nombre. Al no tener nombre, no se pueden invocar a si mismas, por lo que no se pueden hacer recursivas. Si no tienen nombre y son asignadas a una variable con una expresión de función, adquieren el nombre de la variable. Se suelen usar como funciones de “Callback”, aunque no es lo más recomendable porque luego complican la trazabilidad de los errores.

```javascript
let dividir = function(a, b) {
  return a / b;
};
console.log(dividir(10, 2)); // 5
```

```plaintext
5
```

{:.subsection}
### Funciones flecha

Una arrow function es una forma más abreviada/simplificada de escribir funciones anónimas. Esto las hace más complicadas de entender hasta que te acostumbras a su uso. Estas son su principales características:

- **Sintaxis Concisa**: No es necesario usar la palabra clave function, return, ni utilizar llaves {} si la función solo tiene una expresión.
- **Constantes por Defecto**: Se recomienda declarar funciones flecha utilizando const en lugar de var o let, ya que una vez asignadas, no pueden ser reasignadas a otro valor.
- **No tienen this propio**: A diferencia de las funciones regulares, las funciones flecha no tienen su propio contexto this. En su lugar, heredan el this del contexto en el que fueron creadas.
- **No son hoisted**: Las funciones flecha no son elevadas (hoisted) como las funciones tradicionales. Esto significa que no pueden ser invocadas antes de su declaración en el código.
- **Uso de {} y return**: Si la función flecha tiene más de una línea de código o más de una instrucción, es necesario utilizar llaves {} y la palabra clave return explícitamente.
- **No pueden ser métodos**: Debido a que no tienen su propio this, no pueden ser utilizadas como métodos en objetos.

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

{:.section}
## ¿Cuál es la forma más rápida de ser un maestro en JavaScript?

Mira este vídeo [How To Master JavaScript](https://youtube.com/shorts/I5_Gx3JNho8?si=8WunChsHu2Ncjqd_.).

## Bibliografía

- [Lenguaje JS](https://lenguajejs.com/)
- [Aprende X en Y minutos, Donde X=javascript](https://learnxinyminutes.com/docs/es-es/javascript-es/)
- [Basics of Javascript](https://fwhibbit.es/basics-of-javascript)
- [Comparación de funciones tradicionales con funciones flecha](https://developer.mozilla.org/es/docs/Web/JavaScript/Reference/Functions/Arrow_functions)

---
title: "Funciones en JavaScript"
date: 2024-10-06 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/desarrollo-web-entorno-cliente-24-25/
---

{:.section}
## Introducción

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

{:.section}
## Parámetros de una función

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

{:.section}
## Return en funciones

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

{:.section}
## Invocación de funciones

Al usar paréntesis `()`, invocas a la función. Sin paréntesis, haces referencia al objeto que representa la función.

{:.section}
## Las funciones son objetos

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

{:.section}
## Declaración de funciones

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

{:.section}
## Funciones flecha

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

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/desarrollofrontend.html>

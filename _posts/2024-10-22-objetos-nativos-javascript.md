---
title: "Objetos nativos en JavaScript"
date: 2024-10-22 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/objetos-nativos-javascript/
---

{:.section}
## Introducción

En esta sección vamos a echar una ojeada a objetos que son nativos en JavaScript, ésto es, aquello que JavaScript nos da, listos para su utilización en nuestra aplicación.

Echaremos un vistazo a los objetos `Object`, `Function`, `Array`, `String`, `Math`, `Number`, `Boolean` y `Date`.

> Aunque ya hemos tratado con los objetos `Object`, `Function`, `Array` en el artículo [Tipos de datos en JavaScript](/posts/tipos-datos-javascript/) en este artículo lo haremos desde el punto de vista de objetos en lugar de tipos de datos. En este caso estamos hablando de lo mismo.
{:.prompt-info}

> También hemos tratado el tipo de dato `string` pero debes ser consciente de que también existe el objeto `String`. Ambos se comportan del mismo modo aunque no sean el mismo tipo de dato. En la práctica, es indiferente usar uno u otro.
{:.prompt-info}

> Aunque ya hemos tratado con el tipo de dato `boolean` también existe el objeto `Boolean` que NO se comporta de la misma manera y en general NO se recomienda su uso.
{:.prompt-info}

También existen otros objetos nativos como: `RegExp`, `Error`, `Map`, `Set`, `WeakMap`, `WeakSet` y `Promise` que verás en el futuro en caso de que lo necesitemos.

{:.section}
## Objeto Object

Es la base de todos los objetos en JavaScript. Todos los objetos heredan de `Object`. Por lo tanto todos ellos tienen las siguientes métodos clave: `Object.create()`, `Object.assign()`, `Object.keys()`, `Object.values()`, `Object.entries()` y `Object.defineProperty()`.

{:.section}
## Objeto Function

Representa funciones y métodos en JavaScript. Cada función es en sí misma un objeto `Function`.

Propiedades y métodos clave: `.apply()`, `.call()`, `.bind()`.

Aunque `typeof` identifica las funciones como `function`, las funciones en JavaScript siguen siendo objetos.

```javascript
function myFunction() {}
console.log(typeof myFunction); // "function"
```

{:.section}
## Objeto Array

Permite almacenar una lista ordenada de elementos.

Propiedades y métodos clave: `Array.push()`, `Array.pop()`, `Array.map()`, `Array.filter()`, `Array.reduce()`, `Array.forEach()`.

Como se puede ver en el siguiente código una array es una subclase del objeto `Object`.

```javascript
let arr = [1, 2, 3];
console.log(typeof arr);            // "object"
console.log(Array.isArray(arr));     // true
```

Las arrays son objetos que contienen diferentes valores, que pueden ser de diferentes tipos, indexados por su índice, comenzando en 0. Para declararlos utilizamos los corchetes y para acceder a sus valores utilizamos su índice encerrado entre corchetes:

```javascript
let personajes = ['Bob Esponja', 'Calamardo', 'Patricio'];
console.log(personajes[0]);        // Muestra por consola: Bob Esponja
```

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

Lee la sección ["Arrays" del artículo Arrays Objetos y clases](https://xxjcaxx.github.io/libro_dwec/arraysobjetosclases.html#arrays).

O si lo prefieres, puedes optar por leer los siguientes artículos:

- [¿Qué es un Array en Javascript?](https://lenguajejs.com/javascript/arrays/que-es/)
- [Desestructuración de arrays](https://lenguajejs.com/javascript/arrays/desestructuracion-arrays/)
- [Buscar elementos en un array](https://lenguajejs.com/javascript/arrays/buscar-y-comprobar/)
- [Modificar o crear subarrays](https://lenguajejs.com/javascript/arrays/modificar-subarrays/)
- [Ordenación de un array](https://lenguajejs.com/javascript/arrays/ordenacion/)
- (Voluntario) [Array functions](https://lenguajejs.com/javascript/arrays/array-functions/)

{:.section}
## Objeto String

Recuerda que las cadenas de texto son una secuencia de caracteres. Para expresar su valor, éstas se pueden encerrar entra comillas simples `'` o comillas dobles `"`.

La forma en la que se crean las cadenas en JavaScript, hace que cuando tengamos que emplear ciertos caracteres especiales en una cadena de texto, tengamos que escaparlos, empleando el símbolo `\` seguido del carácter.

| Símbolos | Explicación            |
| -------- | ---------------------- |
| `\"`     | Comillas dobles.       |
| `\'`     | Comilla simple.        |
| `\\`     | Contrabarra inclinada. |
| `\b`     | Retroceso.             |
| `\t`     | Tabulador.             |
| `\n`     | Nueva línea.           |
| `\r`     | Salto de línea.        |
| `\f`     | Avance de página.      |

Para crear un objeto String lo podremos hacer de la siguientes formas:

```javascript
let cadena1 = new String('Primera cadena');
let cadena2 = "Segunda cadena";
let cadena3 = 'Tercera cadena';
let todasCadenas = `${cadena1} - ${cadena2} - ${cadena3}`;
```

Es decir, cada vez que tengamos una cadena de texto, en realidad es un objeto `String` que tiene propiedades y métodos:

```javascript
cadena.propiedad;
cadena.metodo( [parámetros] );
```

En JavaScript, `string` (en minúsculas) es un tipo de dato primitivo y el objeto `String` (con mayúscula). En este caso ambos se comportan exactamente igual a la hora de programar.

```javascript
let textObj1 = "Hola, mundo"; // "textObj2" es un string
console.log(typeof textObj1); // "string"

let textObj2 = new String("Hola, mundo"); // "textObj2" es un objeto
console.log(typeof textObj2); // "object"

console.log(textObj1 == textObj2); // true
console.log(textObj1 === textObj2); // false
```

{:.subsection}
### Propiedades y métodos de String

| Propiedad | Descripción                         |
| --------- | ----------------------------------- |
| `length`  | Contiene la longitud de una cadena. |

| Métodos          | Descripción                                                                                                                   |
| ---------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `charAt()`       | Devuelve el carácter especificado por la posición que se indica entre paréntesis.                                             |
| `charCodeAt()`   | Devuelve el Unicode del carácter especificado por la posición que se indica entre paréntesis.                                 |
| `concat()`       | Une una o más cadenas y devuelve el resultado de esa unión.                                                                   |
| `fromCharCode()` | Convierte valores Unicode a caracteres.                                                                                       |
| `indexOf()`      | Devuelve la posición de la primera ocurrencia del carácter buscado en la cadena.                                              |
| `lastIndexOf()`  | Devuelve la posición de la última ocurrencia del carácter buscado en la cadena.                                               |
| `match()`        | Busca una coincidencia entre una expresión regular y una cadena y devuelve las coincidencias o null si no ha encontrado nada. |
| `replace()`      | Busca una subcadena en la cadena y la reemplaza por la nueva cadena especificada.                                             |
| `search()`       | Busca una subcadena en la cadena y devuelve la posición dónde se encontró.                                                    |
| `slice()`        | Extrae una parte de la cadena y devuelve una nueva cadena.                                                                    |
| `split()`        | Divide una cadena en un array de subcadenas.                                                                                  |
| `substr()`       | Extrae los caracteres de una cadena, comenzando en una determinada posición y con el número de caracteres indicado.           |
| `substring()`    | Extrae los caracteres de una cadena entre dos índices especificados.                                                          |
| `toLowerCase()`  | Convierte una cadena en minúsculas.                                                                                           |
| `toUpperCase()`  | Convierte una cadena en mayúsculas.                                                                                           |

{:.section}
## Objeto Math

El objeto `Math` no posee un constructor (no nos permitirá por lo tanto crear o instanciar nuevos objetos que sean de tipo `Math`), por lo que para llamar a sus propiedades y métodos, lo haremos anteponiendo `Math` a la propiedad o el método. Por ejemplo:

```javascript
let x = Math.PI;            // Devuelve el número PI.
let y = Math.sqrt(16);      // Devuelve la raíz cuadrada de 16.
```

{:.subsection}
### Propiedades y métodos del objeto Math

| Propiedad | Descripción                                                     |
| --------- | --------------------------------------------------------------- |
| `E`         | Devuelve el número Euler (aproximadamente 2.718).               |
| `LN2`       | Devuelve el logaritmo neperiano de 2 ( aproximadamente 0.693).  |
| `LN10`      | Devuelve el logaritmo neperiano de 10 ( aproximadamente 2.302). |
| `LOG2E`     | Devuelve el logaritmo base 2 de E ( aproximadamente 1.442).     |
| `LOG10E`    | Devuelve el logaritmo base 10 de E ( aproximadamente 0.434).    |
| `PI`        | Devuelve el número PI ( aproximadamente 3.14159).               |
| `SQRT2`     | Devuelve la raíz cuadrada de 2 ( aproximadamente 1.414).        |

| Método           | Descripción                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `abs(x)`           | Devuelve el valor absoluto de x.                                            |
| `acos(x)`          | Devuelve el arcocoseno de x, en radianes.                                   |
| `asin(x)`          | Devuelve el arcoseno de x, en radianes.                                     |
| `atan(x)`          | Devuelve el arcotangente de x, en radianes con un valor entre -PI/2 y PI/2. |
| `atan2(y,x)`       | Devuelve el arcotangente del cociente de sus argumentos.                    |
| `ceil(x)`          | Devuelve el número x redondeado al alta hacia el siguiente entero.          |
| `cos(x)`           | Devuelve el coseno de x (x está en radianes).                               |
| `floor(x)`         | Devuelve el número x redondeado a la baja hacia el anterior entero.         |
| `log(x)`           | Devuelve el logaritmo neperiano (base E) de x.                             |
| `max(x,y,z,...,n)` | Devuelve el número más alto de los que se pasan como parámetros.            |
| `min(x,y,z,...,n)` | Devuelve el número más bajo de los que se pasan como parámetros.            |
| `pow(x,y)`         | Devuelve el resultado de x elevado a y.                                     |
| `random()`         | Devuelve un número al azar entre 0 y 1.                                     |
| `round(x)`         | Redondea x al entero más próximo.                                           |
| `sin(x)`           | Devuelve el seno de x (x está en radianes).                                 |
| `sqrt(x)`          | Devuelve la raíz cuadrada de x.                                             |
| `tan(x)`           | Devuelve la tangente de un ángulo.                                          |

{:.section}
## Objeto Number

El objeto `Number` se usa muy raramente, ya que para la mayor parte de los casos, JavaScript satisface las necesidades del día a día con los valores numéricos que almacenamos en variables. Pero el objeto Number contiene alguna información y capacidades muy interesantes.

Lo primero, es que el objeto `Number` contiene propiedades que nos indican el rango de números soportados en el lenguaje. El número más alto es `1.79E + 308`; el número más bajo es `2.22E-308`. Cualquier número mayor que el número más alto, será considerado como infinito positivo, y si es más pequeño que el número más bajo, será considerado infinito negativo.

Los números y sus valores están definidos internamente en JavaScript, como valores de doble precisión y de 64 bits.

El objeto `Number`, es un objeto envoltorio para valores numéricos primitivos.

Los objetos `Number` son creados con `new Number()`.

{:.subsection}
### Propiedades y métodos del objeto Number

| Propiedad         | Descripción                                                        |
| ----------------- | ------------------------------------------------------------------ |
| `constructor`       | Devuelve la función que creó el objeto `Number`.                     |
| `MAX_VALUE`         | Devuelve el número más alto disponible en JavaScript.              |
| `MIN_VALUE`         | Devuelve el número más pequeño disponible en JavaScript.           |
| `NEGATIVE_INFINITY` | Representa a infinito negativo (se devuelve en caso de overflow).  |
| `POSITIVE_INFINITY` | Representa a infinito positivo (se devuelve en caso de overflow).  |
| `prototype`         | Permite añadir nuestras propias propiedades y métodos a un objeto. |

{:.question}
¿Qué es el overflow?

| Método           | Descripción                                                                                                                                                                                                                            |
| ---------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `toExponential(x)` | Convierte un número a su notación exponencial.                                                                                                                                                                                         |
| `toFixed(x)`       | Formatea un número con x digitos decimales después del punto decimal.                                                                                                                                                                  |
| `toPrecision(x)`   | Formatea un número a la longitud x.                                                                                                                                                                                                    |
| `toString()`       | Convierte un objeto `Number` en una cadena. Si se pone 2 como parámetro se mostrará el número en binario. Si se pone 8 como parámetro se mostrará el número en octal. Si se pone 16 como parámetro se mostrará el número en hexadecimal. |
| `valueOf()`        | Devuelve el valor primitivo de un objeto Number.                                                                                                                                                                                       |

{:.section}
## Objeto Boolean

El objeto `Boolean` se utiliza para convertir un valor no lógico, a un valor lógico (`true` o `false`).

Diferencias entre `boolean` y `Boolean`:

- `boolean` primitivo: Representa directamente el valor `true` o `false`.
- Objeto `Boolean`: Un envoltorio que convierte el valor en un objeto. Al convertir valores no booleanos, el constructor `Boolean()` convierte valores "falsy" (como `0`, `null`, `undefined`, `NaN`, `""`) en `false`, y los demás valores en `true`.

```javascript
let booleanObject = new Boolean(true);
console.log(typeof booleanObject); // "object"
console.log(booleanObject instanceof Boolean); // true
```

```javascript
let booleanObject = new Boolean(false);
console.log(booleanObject.valueOf()); // false
```

{:.subsection}
### Propiedades y métodos del objeto Boolean

| Propiedad      | Descripción                                            |
| ----------- | ------------------------------------------------------ |
| `constructor` | Devuelve la función que creó el objeto Boolean.        |
| `prototype`   | Te permitirá añadir propiedades y métodos a un objeto. |

| Método     | Descripción                                                      |
| ---------- | ---------------------------------------------------------------- |
| `toString()` | Convierte un valor Boolean a una cadena y devuelve el resultado. |
| `valueOf()`  | Devuelve el valor primitivo de un objeto Boolean.                |

{:.section}
## Objeto Date

El objeto Date se utiliza para trabajar con fechas y horas. Los objetos Date se crean con `new Date()`.

Hay 4 formas de instanciar (crear un objeto de tipo `Date`):

```javascript
let dia1 = new Date();
let dia2 = new Date(milisegundos);
let dia3 = new Date(cadena de Fecha);
let dia4 = new Date(año, mes, día, horas, minutos, segundos, milisegundos);
```

{:.subsection}
### Propiedades y métodos del objeto Date

| Propiedad      | Descripción                                            |
| ----------- | ------------------------------------------------------ |
| `constructor` | Devuelve la función que creó el objeto Date.           |
| `prototype`   | Te permitirá añadir propiedades y métodos a un objeto. |

| Método              | Descripción                                                             |
| ------------------- | ----------------------------------------------------------------------- |
| `getDate()`           | Devuelve el día del mes (de 1-31).                                      |
| `getDay()`            | Devuelve el día de la semana (de 0-6).                                  |
| `getFullYear()`       | Devuelve el año (4 dígitos).                                            |
| `getHours()`          | Devuelve la hora (de 0-23).                                             |
| `getMilliseconds()`   | Devuelve los milisegundos (de 0-999).                                   |
| `getMinutes()`        | Devuelve los minutos (de 0-59).                                         |
| `getMonth()`          | Devuelve el mes (de 0-11).                                              |
| `getSeconds()`        | Devuelve los segundos (de 0-59).                                        |
| `getTime()`           | Devuelve los milisegundos desde media noche del 1 de Enero de 1970.     |
| `getTimezoneOffset()` | Devuelve la diferencia de tiempo entre GMT y la hora local, en minutos. |
| `getUTCDate()`        | Devuelve el día del mes en base a la hora UTC (de 1-31).                |
| `getUTCDay()`         | Devuelve el día de la semana en base a la hora UTC (de 0-6).            |
| `getUTCFullYear()`    | Devuelve el año en base a la hora UTC (4 dígitos).                      |
| `setDate()`           | Ajusta el día del mes del objeto (de 1-31).                             |
| `setFullYear()`       | Ajusta el año del objeto (4 dígitos).                                   |
| `setHours()`          | Ajusta la hora del objeto (de 0-23).                                    |

## Bibliografía

- <https://xxjcaxx.github.io/libro_dwec/dom.html>
- <https://lenguajejs.com/>
- <https://learnxinyminutes.com/docs/es-es/javascript-es/>

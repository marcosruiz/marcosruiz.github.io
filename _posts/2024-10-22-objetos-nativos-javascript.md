---
title: "Objetos nativos en JavaScript"
date: 2024-10-22 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/desarrollo-web-entorno-cliente-24-25/
---

{:.section}
## Introducción

En esta sección vamos a echar una ojeada a objetos que son nativos en JavaScript, ésto es, aquello que JavaScript nos da, listos para su utilización en nuestra aplicación.

Echaremos un vistazo a los objetos `String`, `Math`, `Number`, `Boolean` y `Date`.

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
| `log(x)`           | Devuelve el logaritmo neperiando (base E) de x.                             |
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

Los objetos `Number` son creados con new `Number()`.

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

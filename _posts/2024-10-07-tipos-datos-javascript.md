---
title: "Tipos de datos en JavaScript"
date: 2024-10-07 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/desarrollo-web-entorno-cliente-24-25/
---

{:.section}
## Introducción

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

- Número (Number)
- Cadena (String)
- Booleano (Boolean)
- Lista (Array)
- Nulo (Null)
- Función (Function)
- Objeto (Object)

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
### Number

Pueden almacenar tanto números enteros como números decimales. Para expresar el valor de un número decimal se utiliza el separador.

[¿Qué es un Number?](https://lenguajejs.com/javascript/number/variables-numericas/)

{:.subsection}
### Strings

Las cadenas de texto son una secuencia de caracteres. Para expresar su valor, éstas se pueden encerrar entra comillas simples `'` o comillas dobles `"`.

Leer [¿Qué es un String?](https://lenguajejs.com/javascript/string/variables-texto/)

{:.question}
¿Es el número 18.5 tipo number?

{:.question}
¿Debemos tener cuidado con los rangos de los números que utilizamos?

{:.question}
¿Existe el concepto de infinito en JavaScript?

{:.subsubsection}
#### Template literal o template strings

Las template literals son una característica de JavaScript que te permite crear cadenas de texto de manera más legible.

Puedes usar comillas simples o dobles para definir una cadena de texto, pero si necesitas incluir el mismo tipo de comillas dentro de la cadena, debes escaparlas con una barra invertida (`\`).

```javascript
console.log('"No cometemos errores. Solo tenemos accidentes felices." - Bob Ross');
console.log("\"No cometemos errores. Solo tenemos accidentes felices.\" - Bob Ross");
```

Con las plantillas de cadenas de texto, puedes definir cadenas de texto usando comillas invertidas (backticks).

Esto te permite incluir fácilmente comillas simples y dobles sin necesidad de escaparlas.

También te permite incluir variables y expresiones dentro de la cadena utilizando `${}`.

```javascript
console.log(`"No cometemos errores. Solo tenemos accidentes felices." - Bob Ross`);
console.log(`Homer J. Simpson
742 Evergreen Terrace
Springfield`);
```

Con las plantillas de cadenas de texto, puedes incrustar variables y expresiones dentro de la cadena utilizando `${}`.

Esto hace que sea más fácil y legible concatenar variables y expresiones en una cadena de texto.

```javascript
let a = 2;
console.log('La variable a vale: ' + a);
console.log('La variable a vale:', a);
console.log(`La variable a vale: ${a}`);
console.log(`${host}/login/oauth/authorize?client_id=${clientId}&scope=${scope}`);
```

Puedes incluir expresiones condicionales dentro de las plantillas de cadenas de texto para generar dinámicamente partes de la cadena.

```javascript
let edad = 19;
console.log(`El alumno es: ${edad < 18 ? 'menor' : 'mayor'}`);
```

También se pueden hacer una funciones especiales llamadas tagged template literals.

{:.subsection}
### Booleanos

Pueden almacenar los valores `true` o `false` y se suelen utilizar en las sentencias condicionales o ser el resultado de una operación de comparación como luego veremos.

{:.subsection}
### Arrays

Son objetos que contienen diferentes valores, que pueden ser de diferentes tipos, indexados por su índice, comenzando en 0. Para declararlos utilizamos los corchetes y para acceder a sus valores utilizamos su índice encerrado entre corchetes:

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

{:.subsection}
### Objetos

Un objeto un tipo de dato que puede contener diferentes propiedades que lo definen, aunque esto no es del todo cierto. Para definir un objeto utilizamos las llaves y expresamos cada uno de sus atributos indicando el nombre y su valor separados por dos puntos.

```javascript
let personaje = { nombre: 'Bob Esponja', edad: 5 };
console.log(personaje.nombre);      // Muestra por consola: Bob Esponja
console.log(personaje[nombre]);     // Muestra por consola: Bob Esponja
```

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
### Funciones

Lee el artículo [Funciones en JavaScript](/posts/funciones-javascript/).

{:.subsection}
### Conversiones entre tipos de datos

En javascript las conversiones de tipos no siempre son necesarias, ya que existe un concepto llamado Type coercion que fuerza a una conversión automática cuando se usan distintos tipos.

Puede ser útil, pero **es una mala práctica** usar continuamente la conversión forzada. Es mejor tener claro el tipo de datos que estamos usando. Para evitar los posibles problemas se inventó TypeScript.

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

## Bibliografía

- [Lenguaje JS](https://lenguajejs.com/)
- [Aprende X en Y minutos, Donde X=javascript](https://learnxinyminutes.com/docs/es-es/javascript-es/)
- [Basics of Javascript](https://fwhibbit.es/basics-of-javascript)
- [Comparación de funciones tradicionales con funciones flecha](https://developer.mozilla.org/es/docs/Web/JavaScript/Reference/Functions/Arrow_functions)

---
title: "Arrays en JavaScript"
date: 2024-11-19 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/arrays-javascript/
---

## Introducción

El array, es como una variable o zona de almacenamiento continuo, donde podemos introducir varios valores en lugar de solamente uno, como ocurre con las variables normales.

Los arrays también se suelen denominar matrices o vectores.

Se puede considerar que todos los arrays son de una dimensión: la dimensión principal, pero los elementos de dicha fila pueden a su vez contener otros arrays o matrices, lo que nos permitiría hablar de arrays multidimensionales (los más fáciles de imaginar son los de una, dos y tres dimensiones). No es aconsejable utilizar arrays de más dimensiones, si nuestra lógica de programa no la requiere, ya que hacen difícil su comprensión.

Los arrays nos permiten guardar un montón de elementos y acceder a ellos de manera independiente. Cada elemento es referenciado por la posición que ocupa dentro del array. Dichas posiciones se llaman índices y siempre son correlativos.

En JavaScript cuando trabajamos con arrays se utiliza la indexación base-cero: en este modo, el primer elemento del array será la componente 0, es decir tendrá el índice 0.

<details class="card mb-2">
  <summary class="card-header question">En JavaScript ¿los índices de los arrays comienzan en 1?</summary>
  <div class="card-body" markdown="1">

No. Empiezan en 0.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Trabajando con Arrays

Los arrays se definen utilizando corchetes [] y los elementos se separan por comas. A diferencia de otros lenguajes como C o Java, no es necesario definir la longitud del array al declararlo. Además, los arrays pueden contener posiciones vacías (empty), y es posible acceder a sus elementos de manera similar a otros lenguajes, utilizando índices. Por ejemplo:

```javascript
let a = [];
a[0] = 1;
// Acceder al último elemento:
a.at(-1) = 2;
```

Un array en JavaScript puede contener cualquier tipo de dato, incluyendo otros arrays, objetos o funciones. Esto le otorga una gran flexibilidad. Además, los arrays son objetos en JavaScript y se pueden construir usando el constructor `new`:

```javascript
var cars = new Array("Saab", "Volvo", "BMW");
```

## Métodos y propiedades de los arrays

Los arrays en JavaScript tienen varias propiedades y métodos interesantes que facilitan su manipulación. A lo largo de este capítulo y en el de programación funcional iremos viendo algunos de ellos. Entre otros:

- `length`: Devuelve el número de elementos en el array.
- `sort()`: Ordena los elementos del array.
- `push()`: Agrega uno o más elementos al final del array.
- `pop()`: Elimina y retorna el último elemento del array.

Ejemplo de uso:

```javascript
(()=>{
let a = [1, 2, 3];
console.log(a.length); // 3
a.sort();
a.push(4); // [1, 2, 3, 4]
a.pop(); // [1, 2, 3]
a
})()
```

```javascript
3
```

## Recorrer arrays

Para iterar sobre los elementos de un array, JavaScript ofrece varias opciones:

- for loop
- for of loop
- forEach
- map

La mejor manera de recorrer los arrays depende de la necesidad

### for loop

```javascript
for (let i = 0; i < a.length; i++) {
    console.log(a[i]);
}
```

En el primer caso, la sintaxis típica de C, creamos una variable de control del bucle que puede ser útil dentro del bucle. Si es necesaria esa variable o queremos alterar las iteraciones en función de esa variable, puede ser la mejor opción. Se puede detener fácilmente alterando el índice o con `break`. El problema es que esa variable de control hace el código más “sucio” y puede molestar.

### for of loop

```javascript
for (let i of a) {
    console.log(i);
}
```

El caso de `for..of` es uno de los más sencillos, ya que no necesitamos la variable de control y sigue siendo ámbito de bloque. Esta sería la mejor opción en casi todos los casos en los que necesitamos recorrer un array completamente y en orden. Se puede detener con `break` y no tiene acceso al índice.

### forEach

```javascript
a.forEach(i => console.log(i));
```

`forEach(callback, thisArg)` es como el anterior, pero en este caso creamos una función de callback. Una ventaja es que esta función también acepta el índice y el array. Puede ser útil en programación funcional cuando tenemos una función que ejecutar para cada elemento. El problema es que al pasar una función como callback, el ámbito de la función pasa a ser indefinido y podemos tener problemas con el this (`this` no es el array, sino el ámbito en el que se ejecuta, que puede ser un objeto, `Window`, `Global` o `undefined` en modo estricto). Si queremos un ámbito concreto para las funciones de callback se puede usar el argumento `thisArg`. No se puede detener. Normalmente si queremos que se detenga podemos usar `.every()` o `.some()`.

### map

```javascript
a.map(i => console.log(i));
```

El map (aunque en este caso, `forEach` es más adecuado para solo imprimir) solo se debería usar para retornar una copia modificada del array, como veremos más adelante. Tampoco se puede detener.

## Búsqueda en Arrays

JavaScript proporciona métodos útiles para buscar elementos en un array:

- `includes()`: Comprueba si un array contiene un determinado elemento.
- `find()`: Retorna el primer elemento que cumple con la condición dada.
- `findIndex()`: Devuelve el índice del primer elemento que cumple con la condición dada.
- `indexOf()`: Devuelve el primer índice en el que se puede encontrar un elemento.
- `filter()`: Crea un nuevo array con todos los elementos que cumplen la condición.

Ejemplo:

```javascript
(()=>{
const alligator = ["thick scales", 80, "4 foot tail", "rounded snout"];

console.log(alligator.includes("thick scales")); // true
console.log(alligator.find(el => el.length < 12)); // '4 foot tail'
console.log(alligator.find((el, idx) => typeof el === "string" && idx === 2)); // '4 foot tail'
console.log(alligator.indexOf("rounded snout")); // 3
console.log(alligator.findIndex(el => el == "rounded snout")); // 3
console.log(alligator.filter(el => el === 80)); // [80]
})();
```

Salida:

```plaintext
true
4 foot tail
4 foot tail
3
3
[ 80 ]
```

## Ordenar Arrays

La función `sort()` de los arrays permite ordenarlos. Esta operación muta el array original también lo retorna. Si no queremos mutarlo, podemos usar `toSorted()` o `[...array].sort()`.

La función sin argumentos ordena alfabéticamente. Veamos el resultado de ordenar un array diverso:

```javascript
console.log([2,3,44,5,"1","a"].sort());
```

Salida:

```plaintext
[ "1", 2, 3, 44, 5, "a" ]
```

Para usar un criterio de ordenación personalizado en JavaScript con la función `.sort()`, hay que pasar una función de comparación. Esta función de comparación debe retornar un número:

- Un valor negativo si el primer argumento debe aparecer antes que el segundo.
- Un valor positivo si el primer argumento debe aparecer después que el segundo.
- Cero si ambos argumentos son iguales y su posición relativa no cambia.

Aquí hay un ejemplo de cómo funciona:

```javascript
const array = [10, 5, 3, 8, 2];

// Función de comparación para ordenar de menor a mayor
array.sort((a, b) => {
  return a - b;
});

console.log(array); // [2, 3, 5, 8, 10]

// Función de comparación para ordenar de mayor a menor
array.sort((a, b) => {
  return b - a;
});

console.log(array); // [10, 8, 5, 3, 2]
```

En este ejemplo, la función de comparación `(a, b) => a - b` ordena los números de menor a mayor. La función `(a, b) => b - a` ordena los números de mayor a menor.

Para ordenar objetos en base a una propiedad específica, la función de comparación puede ser como la siguiente:

```javascript
const items = [
  { name: 'Pencil', price: 2 },
  { name: 'Notebook', price: 5 },
  { name: 'Eraser', price: 1 }
];

// Ordenar por precio de menor a mayor
items.sort((a, b) => {
  return a.price - b.price;
});

console.log(items);
// [{ name: 'Eraser', price: 1 }, { name: 'Pencil', price: 2 }, { name: 'Notebook', price: 5 }]

// Ordenar por precio de mayor a menor
items.sort((a, b) => {
  return b.price - a.price;
});

console.log(items);
// [{ name: 'Notebook', price: 5 }, { name: 'Pencil', price: 2 }, { name: 'Eraser', price: 1 }]
```

No obstante, si los elementos del array no son todos números, debemos evitar hacer la resta. En ese caso se puede usar un operador ternario:

```javascript
(()=>{
const items = [
    { name: 'Pencil', price: 2 },
    { name: 'Notebook', price: 5 },
    { name: 'Eraser', price: 1 }
  ];
  
  // Ordenar por nombre alfabéticamente
  items.sort((a, b) => {
    return a.name > b.name ? 1 : a.name < b.name ? -1 : 0;
  });
  
  console.log(items);
  // [{ name: 'Eraser', price: 1 }, { name: 'Notebook', price: 5 }, { name: 'Pencil', price: 2 }]
  
  // Ordenar por nombre en orden inverso
  items.sort((a, b) => {
    return a.name < b.name ? 1 : a.name > b.name ? -1 : 0;
  });
  
  console.log(items);
  // [{ name: 'Pencil', price: 2 }, { name: 'Notebook', price: 5 }, { name: 'Eraser', price: 1 }]
})();
```

Salida:

```plaintext
[
  { name: "Eraser", price: 1 },
  { name: "Notebook", price: 5 },
  { name: "Pencil", price: 2 }
]
[
  { name: "Pencil", price: 2 },
  { name: "Notebook", price: 5 },
  { name: "Eraser", price: 1 }
]
```

Veamos si Javascript nos sabe responder a la clásica pregunta:

```javascript
console.log(['🥚','🐤'].sort());
```

Salida:

```plaintext
[ "🐤", "🥚" ]
```

```javascript
console.log(['🦑','🌱','🦣','🫵','🌍'].sort());
```

Salida:

```plaintext
[ "🌍", "🌱", "🦑", "🦣", "🫵" ]
```

## Otras Operaciones en Arrays

Existen varios métodos adicionales para manipular arrays en JavaScript:

- `splice()`: Permite eliminar elementos o agregar nuevos a partir de una posición específica (modifica el array).
- `slice()`: Extrae una porción del array sin modificarlo, retorna un nuevo array.
- `flat()`: Convierte un array multidimensional en un array de menos dimensiones.
- `flatMap()`: Aplica una función a cada elemento y aplana una dimensión del array.
- `join()`: Transforma un array en una cadena.
- `split()`: Transforma una cadena en un array.
- `fill()`: Llena un array con un valor específico.

![alt text](otrosarrays.png)
_Otras operaciones con arrays_

Ejemplo de uso:

```javascript
let array = [1, 2, 3, 4, 5];

// splice
array.splice(2, 1); // Elimina un elemento desde la posición 2
console.log(array); // [1, 2, 4, 5]

// slice
let newArray = array.slice(1, 3);
console.log(newArray); // [2, 4]

// flat
let multiArray = [1, [2, [3, 4]]];
console.log(multiArray.flat(2)); // [1, 2, 3, 4]

// flatMap
let mapArray = [1, 2, 3];
console.log(mapArray.flatMap(x => [x, x * 2])); // [1, 2, 2, 4, 3, 6]

// join
console.log(array.join('-')); // "1-2-4-5"

// split
let str = "Hello World";
let strArray = str.split(' ');
console.log(strArray); // ["Hello", "World"]

// fill
array.fill(0, 1, 3); // Llena con 0 desde la posición 1 hasta la 3
console.log(array); // [1, 0, 0, 5]

// delete
delete array[3]; // Deja un empty
console.log(array); // [1, 0, 0, empty]
```

Salida:

```plaintext
[ 1, 2, 4, 5 ]
[ 2, 4 ]
[ 1, 2, 3, 4 ]
[ 1, 2, 2, 4, 3, 6 ]
1-2-4-5
[ "Hello", "World" ]
[ 1, 0, 0, 5 ]
[ 1, 0, 0, <1 empty item> ]
```

## Mutabilidad de los arrays

En Javascript, los arrays son mutables. Esto quiere decir que se puede alterar su contenido. No siempre nos interesa mutar un array cuando queremos obtener un resultado de él.

Métodos que mutan el array:

- `Array.prototype.copyWithin()`
- `Array.prototype.fill()`
- `Array.prototype.pop()`
- `Array.prototype.push()`
- `Array.prototype.reverse()`
- `Array.prototype.shift()`
- `Array.prototype.sort()`
- `Array.prototype.splice()`
- `Array.prototype.unshift()`

Métodos que no mutan el array:

- `Array.prototype.concat()`
- `Array.prototype.includes()`
- `Array.prototype.indexOf()`
- `Array.prototype.join()`
- `Array.prototype.keys()`
- `Array.prototype.lastIndexOf()`
- `Array.prototype.map()`
- `Array.prototype.reduce()`
- `Array.prototype.reduceRight()`
- `Array.prototype.slice()`
- `Array.prototype.some()`
- `Array.prototype.toLocaleString()`
- `Array.prototype.toString()`
- `Array.prototype.values()`
- `Array.prototype.every()`
- `Array.prototype.filter()`
- `Array.prototype.find()`
- `Array.prototype.findIndex()`
- `Array.prototype.flat()`
- `Array.prototype.flatMap()`
- `Array.prototype.forEach()`
- `Array.prototype.entries()`
- Alternativas modernas no mutables:
  - `Array.prototype.toSorted()`
  - `Array.prototype.toReverse()`
  - `Array.prototype.toSpliced()`

En esta tabla se muestran algunos métodos que mutan con una alternativa. En algunos casos, la alternativa puede ser hacer una copia con `[...array]` sobre la que aplicar el método:

| Método que muta el array | Método que no muta el array                       |
| ------------------------ | ------------------------------------------------- |
| `push()`                   | `concat()`                                          |
| `pop()`                    | `slice(0, -1)` (o similar)                          |
| `shift()`                  | `slice(1)`                                          |
| `unshift()`                | `[...newElements, ...arr]`                          |
| `splice()`                 | `slice()` (para obtener) / `concat()` (para combinar) |
| `sort()`                   | `[...arr].sort()` o `.toSorted()`                     |
| `reverse()`                | `[...arr].reverse()` o `toReversed()`                |
| `fill()`                   | `[...arr].fill()`                                   |
| `copyWithin()`             | `[...arr].copyWithin()`                             |

<details class="card mb-2">
  <summary class="card-header question">¿Un array en JavaScript siempre debe contener elementos del mismo tipo?</summary>
  <div class="card-body" markdown="1">

No. Un array puede contener elementos de diferentes tipos.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Lecturas voluntarias de ampliación

- [¿Qué es un Array en Javascript?](https://lenguajejs.com/javascript/arrays/que-es/)
- [Desestructuración de arrays](https://lenguajejs.com/javascript/arrays/desestructuracion-arrays/)
- [Buscar elementos en un array](https://lenguajejs.com/javascript/arrays/buscar-y-comprobar/)
- [Modificar o crear subarrays](https://lenguajejs.com/javascript/arrays/modificar-subarrays/)
- [Ordenación de un array](https://lenguajejs.com/javascript/arrays/ordenacion/)
- (Voluntario) [Array functions](https://lenguajejs.com/javascript/arrays/array-functions/)

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/arraysobjetosclases.html#arrays>

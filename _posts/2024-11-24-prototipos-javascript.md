---
title: "Prototipos en JavaScript"
date: 2024-11-22 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/prototipos-javascript/
---

{:.section}
## Introducción

En JavaScript, todos los objetos tienen un prototipo. Un prototipo es también un objeto, y a su vez, tiene su propio prototipo. Este concepto crea una cadena de prototipos, conocida como prototype chain. A través de los prototipos, un objeto puede delegar propiedades y métodos a otros objetos, permitiendo la reutilización de código y la herencia.

(Voluntario) Lee el artículo [Herencia y la cadena de prototipos](https://developer.mozilla.org/es/docs/Web/JavaScript/Inheritance_and_the_prototype_chain).

(Voluntario) Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/h_n_UIOycgM?si=xGq4OlB4WpgaJALL" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

{:.section}
## La Cadena de Prototipos (Prototype Chain)

Todos los objetos en JavaScript están conectados a un prototipo común llamado `Object`. Esto permite que los objetos hereden propiedades y métodos definidos en `Object.prototype`.

```javascript
let homework = {
    topic: "JS"
};
console.log(homework.toString()); // [object Object]
```

Salida:

```plaintext
[object Object]
```

En el ejemplo anterior, el objeto `homework` no tiene una propiedad o método `toString`. Sin embargo, JavaScript lo encuentra en `Object.prototype`, lo que permite llamar a `homework.toString()`.

Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/TWSI9SybwmI?si=OC-kRubsXwEOjvbz" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

{:.section}
## Vínculo de Objetos (Object Linkage)

Se pueden crear nuevos objetos que hereden de otros objetos utilizando `Object.create()`. Esto permite crear una cadena de prototipos donde el objeto hijo puede acceder a las propiedades y métodos del objeto padre:

```javascript
let homework = {
    topic: "JS"
};
var otherHomework = Object.create(homework);
console.log(otherHomework.topic); // "JS"
```

Salida:

```plaintext
JS
```

En este ejemplo, `otherHomework` hereda la propiedad `topic` de `homework` a través de la cadena de prototipos.

> Cuando hacemos un `Object.create(homework)` creamos un objeto VACÍO con el `[[Prototype]]` que le indiquemos como parámetro (`homework` en este caso).
{:.prompt-info}

{:.subsection}
### Prototype en Objetos y Funciones

Las funciones en JavaScript tienen una propiedad llamada `prototype`, que es un objeto con una propiedad `constructor` (que apunta a la propia función) y un prototipo que es `Object`.

```javascript
function Apple(type) {
    this.type = type;
    this.color = "red";
}

Apple.prototype.getInfo = function() {
    return this.color + ' ' + this.type + ' apple';
};

let myApple = new Apple("Granny Smith");
console.log(myApple.getInfo()); // "red Granny Smith apple"
```

Salida:

```plaintext
red Granny Smith apple
```

Cuando se crea un nuevo objeto utilizando `new Apple("Granny Smith")`, este objeto hereda las propiedades y métodos definidos en `Apple.prototype`.

> La propiedad `prototype` de las funciones constructoras funciona a modo de plantilla que se copiará en el `[[Prototype]]` del objeto que se cree al utilizar `new`.
{:.prompt-info}

Los objetos creados con literales o con `new` NO tienen una propiedad `prototype`, pero se puede acceder a su prototipo (`[[Prototype]]`) utilizando `Object.getPrototypeOf(objeto)`.

```javascript
let obj = {};
console.log(Object.getPrototypeOf(obj));
```

Salida:

```plaintext
[Object: null prototype] {}
```

(Voluntario) Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/h_n_UIOycgM?si=qYYoHhfdBdWNY6oT" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

{:.subsection}
### Prototype en Objetos Predefinidos

Es posible extender los prototipos de objetos predefinidos como `String`, `Array`, y `Object` añadiendo métodos adicionales. Esto permite que todos los objetos de ese tipo en la aplicación tengan acceso a los nuevos métodos. Sin embargo, esta práctica puede ser peligrosa en aplicaciones grandes o cuando se utilizan múltiples bibliotecas, ya que puede causar conflictos.

Por ejemplo, se puede añadir un método a `Array.prototype`:

```javascript
Array.prototype.forEachLog = function() {
    for (let i of this) {
        console.log(i);
    }
};

let a = [1, 2, 3, 4];
a.forEachLog();
// Output: 1 2 3 4
```

Salida:

```plaintext
1
2
3
4
```

Aunque esta técnica puede ser útil, también puede llevar a problemas de compatibilidad y mantenimiento en aplicaciones complejas.

Una alternativa más segura es usar `Object.defineProperty` para definir métodos no enumerables, lo que evita que el método sea iterado en un bucle for...in:

```javascript
Object.defineProperty(Array.prototype, 'forEachLog', {
    value: function() {
        for (let i of this) {
            console.log(i);
        }
    },
    enumerable: false
});

//Esto asegura que `forEachLog` no aparezca en iteraciones `for...in`:


let a = [1, 2, 3, 4];
a.forEachLog(); // Output: 1 2 3 4

for (let key in a) {
    console.log(key); // Output: 0 1 2 3
}
```

```javascript
1
2
3
4
0
1
2
3
```

En cualquier caso es una práctica no recomendada y fácilmente sustituible con técnicas de programación funcional.

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/arraysobjetosclases.html#arrays>
- <https://developer.mozilla.org/es/docs/Web/JavaScript/Inheritance_and_the_prototype_chain>

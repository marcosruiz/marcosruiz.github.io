---
title: "Clases en JavaScript (ES6)"
date: 2024-11-23 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/clases-javascript-es6/
---

{:.section}
## Introducción

Como ya se ha explicado anteriormente, en JavaScript, todas las clases son en realidad funciones constructoras, que son a su vez objetos. Aunque JavaScript es un lenguaje basado en prototipos (`classless`), ES6 introdujo la palabra reservada `class` para proporcionar una sintaxis más familiar y cómoda para los programadores provenientes de otros lenguajes orientados a objetos. Sin embargo, bajo esta sintaxis, JavaScript sigue funcionando con prototipos.

Las clases en JavaScript pueden definirse de dos maneras: utilizando funciones constructoras o la sintaxis de clase de ES6.

```javascript
// Funciones Constructoras

function Hero(name, level) {
    this.name = name;
    this.level = level;
}
const hero1 = new Hero('Link', 10);
console.log(hero1); // Hero { name: 'Link', level: 10 }


// Sintaxis de Clase
class HeroClass {
    constructor(name, level) {
        this.name = name;
        this.level = level;
    }
}
const hero2 = new HeroClass('Zelda', 20);
console.log(hero2); // Hero { name: 'Zelda', level: 20 }
```

Salida:

```plaintext
Hero { name: "Link", level: 10 }
HeroClass { name: "Zelda", level: 20 }
```

En ambos ejemplos, se crea una clase `Hero` con un constructor que inicializa las propiedades `name` y `level`.

{:.section}
## Creación de Métodos

Los métodos en una clase pueden definirse directamente dentro del constructor utilizando funciones constructoras o como métodos de clase en la sintaxis ES6.

```javascript
// Funciones Constructoras
(()=>{
function Hero(name, level) {
    this.name = name;
    this.level = level;
}

Hero.prototype.greet = function() {
    return `${this.name} says hello.`;
};
const hero3 = new Hero('Mario', 5);
console.log(hero3.greet()); // Mario says hello.
})();
// Sintaxis de Clase
(()=>{
class Hero {
    constructor(name, level) {
        this.name = name;
        this.level = level;
    }

    greet() {
        return `${this.name} says hello.`;
    }
}
const hero4 = new Hero('Luigi', 7);
console.log(hero4.greet()); // Luigi says hello.
})()
```

Salida:

```plaintext
Mario says hello.
Luigi says hello.
```

En ambos casos, se añade un método `greet` que devuelve un saludo del héroe.

{:.section}
## Herencia

La herencia permite crear una nueva clase que hereda las propiedades y métodos de otra clase.

```javascript
// Funciones Constructoras

function Mage(name, level, spell) {
    Hero.call(this, name, level);
    this.spell = spell;
}

Mage.prototype = Object.create(Hero.prototype);
Mage.prototype.constructor = Mage;

const mage1 = new Mage('Gandalf', 100, 'Fireball');
console.log(mage1); // Mage { name: 'Gandalf', level: 100, spell: 'Fireball' }


// Sintaxis de Clase
(()=>{
class Mage extends Hero {
    constructor(name, level, spell) {
        super(name, level);
        this.spell = spell;
    }
}

const mage2 = new Mage('Merlin', 150, 'Ice Blast');
console.log(mage2); // Mage { name: 'Merlin', level: 150, spell: 'Ice Blast' }
})()
```

Salida:

```plaintext
Mage { name: "Gandalf", level: 100, spell: "Fireball" }
Mage { name: "Merlin", level: 150, spell: "Ice Blast" }
```

En estos ejemplos, `Mage` extiende `Hero`, añadiendo una nueva propiedad `spell`.

{:.section}
## Atributos Estáticos

Los atributos y métodos estáticos se definen en la clase en lugar de en las instancias.

```javascript
class Foo {
    constructor(prop) {
        this.prop = prop;
    }

    static staticMethod() {
        return 'classy';
    }

    prototypeMethod() {
        return 'prototypical';
    }
}

const foo = new Foo(123);
console.log(Foo.staticMethod()); // classy
console.log(foo.prototypeMethod()); // prototypical
```

Salida:

```plaintext
classy
prototypical
```

En este ejemplo, `staticMethod` se llama en la clase `Foo`, mientras que `prototypeMethod` se llama en la instancia `foo`.

Fíjate en la siguiente figura cómo la variable `foo` NO tiene la propiedad `staticMethod`.

![Relación entre instancias y funciones constructoras en JavaScript](static.png)
_Relación entre instancias y funciones constructoras en JavaScript_

Fíjate también en cómo la variable `foo` del tipo `Foo` tiene acceso al padre a través de la propiedad `[[Prototype]]`.

{:.section}
## Atributos Privados

Por defecto, en ES6, todo es público. Sin embargo, ES2019 introdujo la sintaxis `#` para declarar atributos privados. Alternativamente, se pueden utilizar funciones internas y scopes para emular privacidad.

```javascript
// Con Sintaxis ES2019
(()=>{

class SmallRectangle {
    #width = 20;
    #height = 10;

    getDimension() {
        return { width: this.#width, height: this.#height };
    }

    increaseSize() {
        this.#width++;
        this.#height++;
    }
}

const rectangle = new SmallRectangle();
console.log(rectangle.getDimension()); // { width: 20, height: 10 }
console.log(rectangle.height); // undefined
console.log(rectangle.width); // undefined
})();

// Utilizando Closure
(()=>{
class SmallRectangle {
    constructor() {
        let width = 20;
        let height = 10;

        this.getDimension = () => {
            return { width, height };
        };

        this.increaseSize = () => {
            width++;
            height++;
        };
    }
}

const rectangle = new SmallRectangle();
console.log(rectangle.getDimension()); // { width: 20, height: 10 }
console.log(rectangle.height); // undefined
console.log(rectangle.width); // undefined
})()
```

Salida:

```plaintext
{ width: 20, height: 10 }
undefined
undefined
{ width: 20, height: 10 }
undefined
undefined
```

En ambos ejemplos, `width` y `height` son privados y solo accesibles a través de métodos específicos.

{:.section}
## Closure

Una técnica importante para manejar variables privadas y comportamiento similar a las clases es el uso de closures.

```javascript
let add = (function () {
    let counter = 0;
    return function () {
        counter += 1;
        return counter;
    };
})();

console.log(add()); // 1
console.log(add()); // 2
```

Salida:

```plaintext
1
2
```

En este ejemplo, `add` es una función autoinvocada que mantiene un `counter` privado.

Habrás observado que en muchos ejemplos, envuelvo el código en `(()=>{ ....codigo.... })()`. Esto es para mantener las variables creadas en el ámbito de esa función autoinvocada y que no moleste al resto del código. Esto es un ejemplo de `closure`.

(Voluntario) Lee el artículo <https://github.com/getify/You-Dont-Know-JS/blob/2nd-ed/get-started/ch3.md#closure>.

Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/xa8lhVwQBw4?si=N2NT80VbrwhfmNbG" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

(Voluntario) Lee el artículo [Closures](https://developer.mozilla.org/es/docs/Web/JavaScript/Closures).

{:.section}
## Setters y Getters

Los setters y getters permiten controlar cómo se acceden y modifican las propiedades de una clase.

```javascript
class Producto {
    constructor(nombre, precio) {
        this.nombre = nombre;
        this.precio = precio;
    }

    set setPrecio(precio) {
        if (isNaN(precio)) {
            this.precio = 0;
        } else {
            this.precio = precio;
        }
    }

    get getPrecio() {
        return parseFloat(this.precio);
    }
}

let p1 = new Producto('PC', 1000);
p1.setPrecio = 900;
console.log(p1.getPrecio); // 900
```

Salida:

```plaintext
900
```

En este ejemplo, el setter `setPrecio` valida el valor antes de asignarlo, y el getter `getPrecio` devuelve el precio como un número flotante.

{:.section}
## Clases, Objetos y this en JavaScript

El valor de `this` en JavaScript depende del contexto de ejecución y de cómo se llama la función. Esta peculiaridad puede causar confusión, ya que en otros lenguajes `this` o `self` siempre son el objeto al que pertenecen. Cualquier función que use `this` debe ejecutarse con un objeto como contexto de ejecución. Por tanto, la podemos denominar un método. Pero no es tan sencillo, porque los métodos no siempre pertenecen al mismo entorno de ejecución. El entorno depende de cómo se invoque y el tipo de función que sea.

No importa que los métodos estén declarados dentro de una clase o objeto literal. El contexto puede cambiar.

Veamos un ejemplo para ilustrar cómo this funciona en diferentes contextos:

```javascript
(()=>{
function classroom(teacher) {
    //"use strict";   // prueba el modo estricto
    this.plant = 3;   // sin new, this es window
    console.log(this);
    return function study() {
        console.log(
            `${teacher} says to study ${this.topic} in plant ${this.plant}`
        );
    };
}
// Descomenta las líneas para ver el fallo y intenta repararlo. 
//let assignment = classroom("Kyle");  // Prueba con new
//console.log(assignment);
//assignment();

let clase = { 
    topic: 'mates',
    plant: '5',   // prueba a comentar esta línea
   // assignment: assignment
};
//clase.assignment();
})();
```

1. Sin `new`, this en la función `classroom` es el objeto global `window` (o `undefined` en modo estricto). Cuando se llama a `assignment()`, `this` dentro de `study` también es el objeto global, resultando en `undefined` para `this.topic` y `this.plant`.
1. Al usar `new`, this se refiere a la nueva instancia creada.
1. Cuando se asigna assignment a `clase.assignment` y se llama como un método de clase, `this` se refiere al objeto clase.

(Voluntario) Si quieres saber más sobre this lee la sección [Clases, Objetos y this en JavaScript del artículo Arrays Objetos y clases](https://xxjcaxx.github.io/libro_dwec/arraysobjetosclases.html#clases-objetos-y-this-en-javascript).

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/arraysobjetosclases.html#clases-en-javascript-es6>
- <https://developer.mozilla.org/es/docs/Web/JavaScript/Closures>
- 

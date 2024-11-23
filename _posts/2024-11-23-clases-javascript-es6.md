---
title: "Clases en JavaScript (ES6)"
date: 2024-11-23 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/clases-javascript-es6/
---

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

```plaintext
Hero { name: "Link", level: 10 }
HeroClass { name: "Zelda", level: 20 }
```

En ambos ejemplos, se crea una clase `Hero` con un constructor que inicializa las propiedades `name` y `level`.

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

```plaintext
Mario says hello.
Luigi says hello.
```

En ambos casos, se añade un método `greet` que devuelve un saludo del héroe.

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

```plaintext
Mage { name: "Gandalf", level: 100, spell: "Fireball" }
Mage { name: "Merlin", level: 150, spell: "Ice Blast" }
```

En estos ejemplos, `Mage` extiende `Hero`, añadiendo una nueva propiedad `spell`.

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

```plaintext
classy
prototypical
```

En este ejemplo, `staticMethod` se llama en la clase `Foo`, mientras que `prototypeMethod` se llama en la instancia `foo`.

![alt text](static.png)

## Atributos Privados

Por defecto, en ES6, todo es público. Sin embargo, ES2019 introdujo la sintaxis # para declarar atributos privados. Alternativamente, se pueden utilizar funciones internas y scopes para emular privacidad.

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

```plaintext
{ width: 20, height: 10 }
undefined
undefined
{ width: 20, height: 10 }
undefined
undefined
```

En ambos ejemplos, `width` y `height` son privados y solo accesibles a través de métodos específicos.

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

```plaintext
1
2
```

En este ejemplo, `add` es una función autoinvocada que mantiene un `counter` privado.

Habrás observado que en muchos ejemplos, envuelvo el código en `(()=>{ ....codigo.... })()`. Esto es para mantener las variables creadas en el ámbito de esa función autoinvocada y que no moleste al resto del notebook. Esto es un ejemplo de closure.

(Voluntario) Lee el artículo <https://github.com/getify/You-Dont-Know-JS/blob/2nd-ed/get-started/ch3.md#closure>.

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

```plaintext
900
```

En este ejemplo, el setter `setPrecio` valida el valor antes de asignarlo, y el getter `getPrecio` devuelve el precio como un número flotante.

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/arraysobjetosclases.html#clases-en-javascript-es6>
- 

---
title: "Clases en JavaScript"
date: 2024-11-22 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/objetos-javascript/
---

## Introducción

Antes de la introducción de ES6, las clases en JavaScript se creaban utilizando funciones constructoras. Esta técnica sigue siendo utilizada. Con ES6, se incorporó la palabra clave class, que se asemeja más a la sintaxis de otros lenguajes de programación orientados a objetos. Sin embargo, es importante entender que JavaScript no funciona exactamente con clases en el sentido tradicional, sino con prototipos.

JavaScript siempre ha tenido objetos, pero no clases de la forma tradicional que se encuentran en otros lenguajes como Java o C++. Las clases en ES6 no tienen atributos y métodos privados de manera directa; esto se maneja mediante `closures`. En las nuevas versiones ya se permite declarar atributos privados con `#`. En JavaScript, las clases son más una técnica de programación que una funcionalidad del lenguaje.

En este apartado vamos a ver lo que realmente son las clases, explicando cómo se crean con funciones constructoras, aunque sabemos que hoy en dia se puede usar `class`.

## Creación de Objetos con Funciones Constructoras

Una función constructora es una plantilla para crear nuevos objetos. Veamos un ejemplo:

```javascript
(()=>{
function Apple(type) {
    this.type = type;
    this.color = "red";
    this.getInfo = function() {
        return this.color + ' ' + this.type + ' apple';
    };
}
})();
```

En este ejemplo, hemos declarado una función constructora llamada `Apple`. Esta función toma un parámetro `type` y establece las propiedades `type` y `color` en el nuevo objeto. También define un método `getInfo` que retorna una cadena con la información del objeto.

Para crear una instancia de `Apple`, se utiliza el operador `new`:

```javascript
(()=>{
function Apple(type) {
    this.type = type;
    this.color = "red";
    this.getInfo = function() {
        return this.color + ' ' + this.type + ' apple';
    };
}
let myApple = new Apple("Granny Smith");
console.log(myApple.getInfo()); // "red Granny Smith apple"
})();
```

```javascript
red Granny Smith apple
```

Al utilizar `new`, la función constructora Apple es invocada, creando un nuevo objeto con las propiedades y métodos definidos en la función.

## Métodos en el Prototipo

Para hacer el código más eficiente, es posible definir métodos en el prototipo de la función constructora en lugar de definirlos dentro de la propia función. Esto evita recrear la función cada vez que se crea un nuevo objeto:

En este caso, `getInfo` se define en el prototipo de `Apple`. Esto significa que todas las instancias de `Apple` comparten la misma función `getInfo`, en lugar de tener su propia copia. Esto es más eficiente en términos de memoria y rendimiento.

```javascript
(()=>{
function Apple(type) {
    this.type = type;
    this.color = "red";
}

Apple.prototype.getInfo = function() {
    return this.color + ' ' + this.type + ' apple';
};

let myApple = new Apple("Granny Smith");
console.log(myApple.getInfo()); // "red Granny Smith apple"
})();
```

```javascript
red Granny Smith apple
```

## Objetos Literales

Los objetos literales permiten crear objetos de manera más sencilla y directa. Veamos un ejemplo:

```javascript
var apple = {
    type: "macintosh",
    color: "red",
    getInfo: function() {
        return this.color + ' ' + this.type + ' apple';
    }
};
```

Este objeto `apple` se crea directamente con sus propiedades y métodos. A veces se le llama “singleton” porque es una única instancia de un objeto.

Para crear nuevas instancias a partir de un objeto literal, se puede utilizar `Object.create()`:

```javascript
var anotherApple = Object.create(apple);
console.log(anotherApple.getInfo()); // "red macintosh apple"
```

Sin embargo, no es recomendable usar objetos literales para crear múltiples instancias, ya que todas ellas serían instancias directas de `Object`.

## Singleton con una Función

Un singleton se puede crear utilizando una función anónima invocada con new:

```javascript
var apple = new function() {
    this.type = "macintosh";
    this.color = "red";
    this.getInfo = function() {
        return this.color + ' ' + this.type + ' apple';
    };
};
```

El uso de `new function()` hace dos cosas: define una función anónima y la invoca inmediatamente con `new`, creando así un singleton. Este enfoque garantiza que solo haya una instancia del objeto.

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/arraysobjetosclases.html#arrays>
- <https://developer.mozilla.org/es/docs/Web/JavaScript/Inheritance_and_the_prototype_chain>
- 

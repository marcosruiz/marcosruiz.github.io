---
title: "Objetos en JavaScript"
date: 2024-11-21 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/objetos-javascript/
---

## Introducción

JavaScript siempre ha soportado objetos, aunque no de la manera tradicional de las clases como en otros lenguajes orientados a objetos. Un objeto en JavaScript es similar a un array, pero en lugar de estar indexado por números, está indexado por nombres (similar a un array asociativo en PHP o un diccionario en Python). Los objetos permiten almacenar colecciones de datos y funcionalidades relacionadas.

Un objeto en JavaScript es realmente una colección de propiedades. Las propiedades pueden tener forma de datos, tipos, funciones (métodos) o incluso otros objetos. De hecho sería más fácil de entender un objeto como un array de valores, cada uno de los cuales está asociado a una propiedad (un tipo de datos, método u objeto).

<details class="card mb-2">
  <summary class="card-header question">En JavaScript, ¿un método puede ser una propiedad de un objeto?</summary>
  <div class="card-body" markdown="1">

Si.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Una función contenida en un objeto se conoce como un método. Los métodos no son diferentes de las funciones que has visto anteriormente, excepto que han sido diseñados para ser utilizados en el contexto de un objeto, y por lo tanto, tendrán acceso a las propiedades de ese objeto. Esta conexión entre propiedades y métodos es uno de los ejes centrales de la orientación a objetos.

## Acceso a los atributos de un objeto

Se puede acceder a los atributos de un objeto utilizando la notación de punto `.` o corchetes `[]`.

```javascript
let persona = {
    nombre: ['Bob', 'Smith'],
    edad: 32,
    genero: 'masculino',
    intereses: ['música', 'esquí'],
    bio: function () {
        alert(this.nombre[0] + ' ' + this.nombre[1] + ' tiene ' + this.edad + ' años. Le gusta ' + this.intereses[0] + ' y ' + this.intereses[1] + '.');
    }
};
```

En este ejemplo, `persona` es un objeto con varias propiedades: `nombre`, `edad`, `genero`, `intereses` y `bio`. La propiedad `bio` es una función (método) que puede acceder a otras propiedades del objeto usando `this`.

Se puede acceder a las propiedades de un objeto dentro de otro objeto encadenando los puntos o los corchetes:

```javascript
let descripcion = alumno.ciclo?.descripcion;
```

En el ejemplo hemos usado `?` para evitar el error al intentar acceder a un atributo dentro de uno que no existe. El resultado sería `undefined`.

## Iterar sobre las Propiedades de un Objeto

Para recorrer las propiedades de un objeto, se puede utilizar el bucle for...in.

```javascript
let user = {
    name: "John",
    age: 30,
    isAdmin: true
};

for (let key in user) {
    // keys
    alert(key);  // name, age, isAdmin
    // values for the keys
    alert(user[key]); // John, 30, true
}
```

En este ejemplo, el bucle `for...in` recorre todas las propiedades del objeto `user`, mostrando tanto las claves (`keys`) como los valores asociados a esas claves.

Además, se puede comprobar si una propiedad existe en un objeto utilizando el operador `in`.

```javascript
let user = { name: "John", age: 30 };
alert("age" in user); // true, user.age exists
alert("blabla" in user); // false, user.blabla doesn't exist
```

Además de for..in, podemos usar las funciones estáticas del objeto `Object` como `Object.values()`, `Object.keys()` o `Object.entries()` para convertirlo en un array e iterar con `for..of`, `.map()`, `.forEach()`…

## (Voluntario) Manipulación y Copia de Objetos

Lee el artículo [Manipulación y Copia de Objetos](https://xxjcaxx.github.io/libro_dwec/arraysobjetosclases.html#manipulacion-y-copia-de-objetos).

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/arraysobjetosclases.html#objetos-en-javascript>
- <https://xxjcaxx.github.io/libro_dwec/arraysobjetosclases.html#manipulacion-y-copia-de-objetos>

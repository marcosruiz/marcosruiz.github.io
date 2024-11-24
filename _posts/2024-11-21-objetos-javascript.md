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

Para recorrer las propiedades de un objeto, se puede utilizar el bucle `for...in`.

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

Además de `for..in`, podemos usar las funciones estáticas del objeto `Object` como `Object.values()`, `Object.keys()` o `Object.entries()` para convertirlo en un array e iterar con `for..of`, `.map()`, `.forEach()`…

## Copia de Objetos

En ES6, copiar objetos y arrays se puede realizar de manera sencilla utilizando el operador de propagación (spreading). Este operador permite crear copias superficiales de objetos y arrays.

### Copia Superficial con Spreading

```javascript
//Para copiar un objeto, se usa el siguiente formato:

const originalObject = { a: 1, b: 2 };
const copyOfObject = { ...originalObject };
console.log(copyOfObject); // { a: 1, b: 2 }

//Para copiar un array, se usa el mismo operador:

const originalArray = [1, 2, 3];
const copyOfArray = [...originalArray];
console.log(copyOfArray); // [1, 2, 3]
```

Salida:

```plaintext
{ a: 1, b: 2 }
[ 1, 2, 3 ]
```

### Uso del Operador Rest

El operador de propagación (`...`) también se puede utilizar como operador Rest, con la intención opuesta: recoger el resto de los elementos. Esto es útil tanto en objetos como en funciones.

```javascript
(()=>{
    const { a, ...rest } = { a: 1, b: 2, c: 3 };
    console.log(a); // 1
    console.log(rest); // { b: 2, c: 3 }
})()
```

Salida:

```plaintext
1
{ b: 2, c: 3 }
```

### Copia Superficial con Object.assign()

Otra manera de copiar objetos es utilizando `Object.assign()`, que también crea una copia superficial del objeto.

```javascript
const originalObject = { a: 1, b: 2 };
const copyOfObject = Object.assign({}, originalObject);
console.log(copyOfObject); // { a: 1, b: 2 }
```

Salida:

```plaintext
{ a: 1, b: 2 }
```

### Copia Profunda con structuredClone()

(Voluntario) Lee el artículo: <https://developer.mozilla.org/en-US/docs/Web/API/structuredClone>.

Para realizar una copia profunda, donde todas las referencias anidadas también se copian, se puede usar `structuredClone()`:

```javascript
const originalObject = { a: 1, b: { c: 2 } };
const copyOfObject = structuredClone(originalObject);
console.log(copyOfObject); // { a: 1, b: { c: 2 } }
```

Salida:

```plaintext
{ a: 1, b: { c: 2 } }
```

La copia profunda funciona para atributos y objetos normales, pero no para métodos y nodos del DOM. Tampoco mantiene la “prototype chain”.

## Object Literal enhacement

En ES6, se introdujo una sintaxis más concisa para definir objetos literales. Cuando el nombre de la variable y la propiedad son iguales, no es necesario repetirlos.

```javascript
(()=>{
const a = 'foo';
const b = 42;
const c = {};

const object1 = { a, b, c };
console.log(object1); // { a: "foo", b: 42, c: {} }
})()
```

Salida:

```plaintext
{ a: "foo", b: 42, c: {} }
```

En este ejemplo, `object1` se crea de manera más concisa, sin necesidad de escribir `a: a, b: b, c: c`.

## Borrar elementos de los objetos

Para eliminar una clave-valor de un objeto se puede usar `delete`:

```javascript
delete user.password
```

Esta operación muta el objeto, si queremos hacer una copia al mismo tiempo que eliminamos el dato del objeto resultante, se puede usar la desestructuración:

```javascript
(()=>{
const user = {
  name: 'user',
  level: 32,
  password: '1234'
};
const { password, ...userWithoutPassword } = user;
console.log('password' in userWithoutPassword); // false
})();
```

Salida:

```plaintext
false
```

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/arraysobjetosclases.html#objetos-en-javascript>
- <https://xxjcaxx.github.io/libro_dwec/arraysobjetosclases.html#manipulacion-y-copia-de-objetos>

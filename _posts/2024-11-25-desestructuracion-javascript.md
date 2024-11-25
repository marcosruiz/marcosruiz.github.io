---
title: "Desestructuración en JavaScript"
date: 2024-11-25 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/desestructuracion-javascript/
---

## Introducción

La desestructuración es una característica que permite extraer propiedades de objetos y asignarlas a variables.

(Voluntario) Lee el artículo [Desestructuración de objetos](https://lenguajejs.com/javascript/objetos/desestructuracion-objetos/).

## Desestructuración Básica de Objetos

```javascript
const o = { p: 42, q: true, a: { r: 20, s: 'abc' } };
const { p, q } = o;
console.log(p, q); // 42 true
```

Salida:

```plaintext
42 true
```

## Desestructuración con Nuevos Nombres

Se pueden asignar nuevos nombres a las variables extraídas:

```javascript
const { p: foo, q: bar } = o;
console.log(foo, bar); // 42 true
```

Salida:

```plaintext
42 true
```

## Desestructuración de Objetos Anidados

También se pueden desestructurar objetos anidados y cambiar el nombre de las variables:

```javascript
(()=>{
const { a } = o;
const { a: { r: R } } = o;
console.log(a, R); // { r: 20, s: 'abc' } 20
})()
```

Salida:

```plaintext
{ r: 20, s: "abc" } 20
```

## Desestructuración de Arrays

La desestructuración también se aplica a arrays, permitiendo extraer elementos en variables individuales:

```javascript
(()=>{
const foo = ['uno', 'dos', 'tres'];
const [rojo, amarillo, verde] = foo;
console.log(rojo); // "uno"
console.log(amarillo); // "dos"
console.log(verde); // "tres"
})()
```

Salida:

```plaintext
uno
dos
tres
```

## Desestructuración en Funciones

La desestructuración puede ser muy útil en funciones para extraer valores de objetos pasados como argumentos.

```javascript
const user = {
  id: 42,
  displayName: "jdoe",
  fullName: { firstName: "John", lastName: "Doe" }
};

function userId({ id }) {
  return id;
}

function whois({ displayName, fullName: { firstName: name } }) {
  return `${displayName} es ${name}`;
}

console.log(userId(user)); // 42
console.log(whois(user)); // "jdoe es John"
```

Salida:

```plaintext
42
jdoe es John
```

(Voluntario) Lee el artículo <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment#examples>.

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/arraysobjetosclases.html#objetos-en-javascript>
- <https://xxjcaxx.github.io/libro_dwec/arraysobjetosclases.html#manipulacion-y-copia-de-objetos>
- <https://lenguajejs.com/javascript/objetos/desestructuracion-objetos/>

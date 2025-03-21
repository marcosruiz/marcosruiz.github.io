---
title: "Tratamiento de datos en clientes web"
date: 2025-03-08 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/tratamiento-datos-clientes-web/
---

## Introducción

En las aplicaciones web modernas, es común recibir datos del servidor en formato JSON, que es un formato ligero para el intercambio de datos. JavaScript proporciona herramientas potentes para trabajar con JSON, permitiendo convertir objetos en JSON y viceversa. Además, también es importante poder almacenar datos en el lado del cliente para mejorar la experiencia del usuario. En este capítulo, exploraremos:

- Cómo convertir objetos a JSON, incluyendo:
  - Convertir objetos a JSON
  - Convertir JSON a objetos
  - Convertir ficheros binarios a Base64 para enviar en JSON
- Cómo trabajar con almacenamiento en el lado del cliente, incluyendo:
  - Cookies
  - LocalStorage
  - SessionStorage
  - IndexedDB

## Convertir objetos a JSON

{:.question}
¿Es lo mismo un objeto de JavaScript que un JSON?

JavaScript permite convertir objetos en cadenas JSON utilizando el método `JSON.stringify`. Este método es útil cuando necesitamos enviar datos al servidor o almacenarlos en el lado del cliente.

```javascript
(()=>{
class Apple {
  constructor(type){
     this.type = type;
     this.color = "red";
  }
}
let  apple1 = new Apple('Golden'); // Se crea una instancia
let appleJson = JSON.stringify(apple1);
console.log(appleJson);
})();
```

```json
{"type":"Golden","color":"red"}
```

En este ejemplo:

- Definimos una clase `Apple` que tiene un constructor que inicializa el tipo y el color de la manzana.
- Creamos una instancia de `Apple` con el tipo ‘Golden’.
- Convertimos la instancia en una cadena JSON usando `JSON.stringify`.
- Imprimimos la cadena JSON resultante en la consola.

El resultado en la consola será: `{"type":"Golden","color":"red"}`, que es la representación JSON del objeto `apple1`.

## Convertir JSON a objetos

Para convertir una cadena JSON en un objeto de JavaScript, utilizamos el método `JSON.parse`. Esto es útil cuando recibimos datos del servidor en formato JSON y necesitamos trabajar con ellos en nuestro código.

```javascript
(()=>{
class Hero {
  constructor(name, car){
     this.name = name;
     this.car = car;
  }
}
let heroJSON = '{"name":"Max","car":"V8"}';
let heroObject = JSON.parse(heroJSON);
let heroClass = Object.assign(new Hero, heroObject);
console.log(heroObject, heroClass);
})();
```

```json
{ name: "Max", car: "V8" } Hero { name: "Max", car: "V8" }
```

En este ejemplo:

- Definimos una clase `Hero` que tiene un constructor que inicializa el nombre y el coche del héroe.
- Creamos una cadena JSON que representa un héroe.
- Convertimos la cadena JSON en un objeto usando `JSON.parse`.
- Asignamos las propiedades del objeto JSON a una nueva instancia de `Hero` usando `Object.assign`.
- Imprimimos el objeto JSON y la instancia de `Hero` en la consola.

El resultado en la consola mostrará el objeto plano y la instancia de `Hero` con las propiedades correspondientes.

## Convertir ficheros binarios a Base64 para enviar en JSON

Si se necesita enviar un binario dentro de un mensaje JSON, podemos convertirlo a Base64:

> Esto ya se explicó en [Formularios en JavaScript](/posts/formularios-javascript/), pero no está de más repasarlo.
{:.prompt-info}

```javascript
document.getElementById('fileForm').addEventListener('submit', event => {
    event.preventDefault();
    const fileInput = document.getElementById('fileInput');
    const file = fileInput.files[0];
    const reader = new FileReader();

    reader.addEventListener('loadend', () => {
        const base64String = reader.result.replace('data:', '').replace(/^.+,/, '');
        const jsonData = {
            fileName: file.name,
            fileType: file.type,
            fileData: base64String
        };

        fetch('/upload-json', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(jsonData)
        })
        .then(response => response.json())
        .then(data => console.log(data))
        .catch(error => console.error('Error:', error));
    });

    reader.readAsDataURL(file);
});
```

{:.question}
¿Qué es Base64?

## Cookies

Leer artículo [Gestión de cookies en JavaScript](/posts/cookies/).

## LocalStorage

`LocalStorage` permite almacenar datos en el navegador de forma persistente. Los datos persisten incluso después de cerrar el navegador.

### Ejemplo

```javascript
// Guardar
localStorage.setItem("lastname", "Smith");
// Obtener
var lastname = localStorage.getItem("lastname");
// Borrar
localStorage.removeItem("lastname");
```

En este ejemplo:

- Guardamos un valor con la clave `lastname` en LocalStorage.
- Recuperamos el valor almacenado usando la clave `lastname`.
- Eliminamos el valor asociado a la clave `lastname`.

## SessionStorage

`sessionStorage` es una API de almacenamiento web en JavaScript que permite guardar datos de manera temporal en el navegador. La información almacenada en `sessionStorage` se mantiene mientras la pestaña o ventana del navegador esté abierta, pero se borra automáticamente cuando el usuario la cierra.

## IndexedDB

IndexedDB es una base de datos NoSQL integrada en los navegadores web que permite almacenar grandes cantidades de datos estructurados de forma persistente en el lado del cliente. Es más potente que `localStorage` y `sessionStorage`, ya que permite el almacenamiento de datos de manera indexada y consultas eficientes ya que permite crear índices para mejorar la búsqueda y recuperación de datos.

### Características de IndexedDB

- Hasta 50MB de almacenamiento.
- API asíncrona para operaciones de lectura y escritura.
- Transaccional para garantizar la integridad de los datos.
- Más compleja que LocalStorage.

### Ejemplo básico de IndexedDB

IndexedDB es más compleja de manejar que LocalStorage o cookies, pero ofrece muchas más capacidades. Aquí presentamos un ejemplo muy básico para ilustrar su uso:

```javascript
let request = indexedDB.open("myDatabase", 1);

request.onupgradeneeded = function(event) {
  let db = event.target.result;
  let objectStore = db.createObjectStore("customers", { keyPath: "id" });
  objectStore.createIndex("name", "name", { unique: false });
  objectStore.createIndex("email", "email", { unique: true });
};

request.onsuccess = function(event) {
  let db = event.target.result;
  let transaction = db.transaction(["customers"], "readwrite");
  let objectStore = transaction.objectStore("customers");
  let request = objectStore.add({ id: 1, name: "John Doe", email: "john.doe@example.com" });

  request.onsuccess = function(event) {
    console.log("Customer added to the database");
  };

  request.onerror = function(event) {
    console.log("Error adding customer: ", event.target.error);
  };
};
```

En este ejemplo:

- Abrimos una conexión a IndexedDB y, si es la primera vez, se crea o actualiza la base de datos.
- Definimos un `objectStore` para almacenar datos de clientes con un índice para `name` y `email`.
- Añadimos un cliente a la base de datos dentro de una transacción y manejamos los eventos de éxito y error.

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/ajax.html#almacenamiento-en-el-lado-del-cliente>

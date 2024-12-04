---
title: "Tarea obligatoria: Arrays, funciones y objetos en JavaScript"
date: 2024-11-11 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/tarea-arrays-funciones-objetos-javascript/
---

## Información sobre la tarea

La entrega será en formato PDF. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

La tarea se calificará con una nota de APTO (10) o NO APTO (0).

Duración actividades obligatorias: 6 horas.

RA4. Programa código para clientes web analizando y utilizando estructuras definidas por el usuario.

## Actividades

A continuación, se muestran las actividades a realizar.

{:.activity}
### Programación orientada a objetos en freeCodeCamp

Ir a la certificación Algoritmos de JavaScript y Estructuras de Datos y hacer el curso “Programación orientada a objetos”.

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil.
{:.prompt-info}

{:.activity}
### (Voluntaria) Programación funcional en freeCodeCamp

Ir a la certificación Algoritmos de JavaScript y Estructuras de Datos y hacer el curso “Programación funcional”.

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil.
{:.prompt-info}

{:.activity}
### (Voluntaria) Programación de algoritmos intermedios en freeCodeCamp

Ir a la certificación Algoritmos de JavaScript y Estructuras de Datos y hacer el curso “Programación de algoritmos intermedios”.

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil.
{:.prompt-info}

{:.activity}
### Algoritmos de JavaScript y proyectos de estructuras de datos en freeCodeCamp

Ir a la certificación Algoritmos de JavaScript y Estructuras de Datos y hacer el curso “Algoritmos de JavaScript y proyectos de estructuras de datos”.

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil.
{:.prompt-info}

{:.activity}
### (Voluntaria) Funciones con arrays

Sin modificar la array escribe y ejecuta las funciones que se piden:

```javascript
let array = [95, 95, 14, 83, 58, 33, 65, 52, 7, 72, 13, 46, 19, 31, 27, 36, 30, 86, 88, 88, 68, 16, 5, 14, 41, 56, 89, 11, 6, 29, 72, 11, 69, 36, 16, 11, 82, 84, 32, 84, 95, 98, 76, 99, 100, 12, 89, 1, 92, 27, 66, 48, 38, 49, 30, 40, 87, 19, 31, 37, 5, 32, 9, 33, 98, 94, 5, 15, 4, 88, 47, 34, 83, 8, 31, 4, 2, 72, 31, 39, 15, 10, 46, 78, 11, 21, 92, 22, 83, 3, 6, 71, 39, 54, 50, 77, 13, 85, 7, 36 ];

// Haz una función que retorne el array ordenado sin modificar el array original

// Haz una función que retorne los números impares y ordenados

// Haz una función que retorne los números impares de dos cifras

// Haz una función que retorne un array de 0 a 100 con la frecuencia de cada número en el array original

// Haz una función que indique si un número es mayor que otro según la longitud de su nombre en castellano o valenciano

// Haz una función para ordenar el array según el criterio de la función anterior

// Haz una función que acepte un número y retorne una función que acepte un array y retorne si el número está en el array.
```

{:.activity}
### Tablero de ajedrez

Crea una función que llene el tablero con las fichas del ajedrez (utiliza iconos UNICODE). Llámala en el momento adecuado y documenta el código que has escrito con comentarios.

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Tablero de ajedrez<</title>
    <link rel="stylesheet" href="tableroAjedrez.css" />
    
  </head>
  <body>
    <div id="board"></div>
    <script src="tableroAjedrez.js"></script>
  </body>
</html>
```
{: file="tableroAjedrez.html" }

```css
.chess {
  width: 100%;
  height: 100%;
  display: block;
  background: #eee;
  margin: 0;
  padding: 0;
  overflow: overlay;
}

.chess td {
  width: 20px;
  height: 20px;
  text-align: center;
}

.chess tr:nth-child(odd) td:nth-child(even),
.chess tr:nth-child(even) td:nth-child(odd) {
  background-color: #111;
  color: #fff;
}
```
{: file="tableroAjedrez.css" }

```javascript
**function createBoard(){
	let row = new Array(8).fill(null);
  return new Array(8).fill([...row]);
}

function createCell(cell){
	return `<td></td>`;
}

function createRow(row){
  return `<tr>${row.map(createCell).join(' ')}</tr>`;
}

function drawBoard(board){
	let tableBoard = document.createElement('table');
  tableBoard.classList.add('chess');
  tableBoard.innerHTML = board.map(createRow).join(' ');
  return tableBoard;
}

// Crea una funció que plene el tauler amb les fitxes unicode de l'escacs. Crida-la en el moment adequat

document.querySelector('#board').append(drawBoard(createBoard()))**
```
{: file="tableroAjedrez.js" }

{:.activity}
### (Voluntaria NO recomendada) Gestión de edificios

Queremos hacer una aplicación en JavaScript para gestionar edificios con la información de la situación del edificio y de los propietarios de cada piso. Para ello queremos almacenar la siguiente información de cada edificio:

- calle.
- número.
- código postal.
- plantas del edificio (dentro de cada planta tendremos un número de puertas y para cada puerta almacenaremos el nombre del propietario).

Se pide:

- Crear un objeto que nos permita instanciar edificios. Cada vez que instanciemos un edificio le pasaremos la calle, número y código postal como parámetros. Se pide además crear los siguientes métodos para el objeto Edificio:
  - `agregarPlantasYPuertas(numplantas, puertas)` // Se le pasa el número de plantas que queremos crear en el piso y el número de puertas por planta. Cada vez que se llame a este método, añadirá el número de plantas y puertas indicadas en los parámetros, a las que ya están creadas en el edificio.
  - `modificarNumero(numero)` // Se le pasa el nuevo número del edificio para que lo actualice.
  - `modificarCalle(calle)` // Se le pasa el nuevo nombre de la calle para que lo actualice.
  - `modificarCodigoPostal(codigo)` // Se le pasa el nuevo número de código postal del edificio.
  - `imprimeCalle` // Devuelve el nombre de la calle del edificio.
  - `imprimeNumero` // Devuelve el número del edificio.
  - `imprimeCodigoPostal` // Devuelve el código postal del edificio.
  - `agregarPropietario(nombre,planta,puerta)` // Se le pasa un nombre de propietario, un número de planta y un número de puerta y lo asignará como propietario de ese piso.
  - `imprimePlantas` // Recorrerá el edificio e imprimirá todos los propietarios de cada puerta.
- Cada vez que se crea un edificio que muestre automáticamente un mensaje del estilo:
  - `construido nuevo edificio en calle: <xxxxxx>, nº: <xx>, CP: <xxxxx>.`
- Cada vez que se añada un propietario a un piso de un edificio que muestre un mensaje del estilo:
  - `<xxxxxxxx> es ahora el propietario de la puerta <x> de la planta <x>.`

Aquí se muestra un ejemplo de lo que tendría que mostrar la aplicación:

Trabajando con objetos Javascript:

Instanciamos 3 objetos edificioA, edificioB y edificioC con estos datos:

- Construido nuevo edificio en calle: Garcia Prieto, nº: 58, CP: 15706.
- Construido nuevo edificio en calle: Camino Caneiro, nº: 29, CP: 32004.
- Construido nuevo edificio en calle: San Clemente, nº: s/n, CP: 15705.

- El código postal del edificio A es: 15706.
- La calle del edificio C es: San Clemente.
- El edificio B está situado en la calle Camino Caneiro número 29.

Agregamos 2 plantas y 3 puertas por planta al edificio A...

Agregamos 4 propietarios al edificio A...

- Jose Antonio Lopez es ahora el propietario de la puerta 1 de la planta 1.
- Luisa Martinez es ahora el propietario de la puerta 2 de la planta 1.
- Marta Castellón es ahora el propietario de la puerta 3 de la planta 1.
- Antonio Perea es ahora el propietario de la puerta 2 de la planta 2.

Listado de propietarios del edificio calle García Prieto número 58

- Propietario del piso 1 de la planta 1: Jose Antonio Lopez.
- Propietario del piso 2 de la planta 1: Luisa Martinez.
- Propietario del piso 3 de la planta 1: Marta Castellón.
- Propietario del piso 1 de la planta 2:
- Propietario del piso 2 de la planta 2: Antonio Perea.
- Propietario del piso 3 de la planta 2:

Agregamos 1 planta más al edificio A...

Agregamos 1 propietario más al edificio A planta 3, puerta 2...

- Pedro Mejide es ahora el propietario de la puerta 2 de la planta 3.

Listado de propietarios del edificio calle García Prieto número 58

- Propietario del piso 1 de la planta 1: Jose Antonio Lopez.
- Propietario del piso 2 de la planta 1: Luisa Martinez.
- Propietario del piso 3 de la planta 1: Marta Castellón.
- Propietario del piso 1 de la planta 2:
- Propietario del piso 2 de la planta 2:
- Propietario del piso 1 de la planta 3:
- Propietario del piso 2 de la planta 3: Pedro Mejide.

## Dame tu feedback...

<div class="strawpoll-embed" id="strawpoll_XmZRQDvN9gd" style="height: 644px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_XmZRQDvN9gd" src="https://strawpoll.com/embed/XmZRQDvN9gd" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

<div class="strawpoll-embed" id="strawpoll_7MZ0k765wgo" style="height: 3012px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_7MZ0k765wgo" src="https://strawpoll.com/embed/7MZ0k765wgo" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://jsfiddle.net/xxjcaxx/b6sc85wx/10/>
- <https://jsfiddle.net/xxjcaxx/3286hn4L/24/>
- 

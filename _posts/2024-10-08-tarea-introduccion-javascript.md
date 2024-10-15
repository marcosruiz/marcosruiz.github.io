---
title: "Tarea: Introducción a JavaScript"
date: 2024-10-03 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec, tarea, práctica]
img_path: /assets/img/tarea-entorno-desarrollo-javascript/
---

> Artículo en construcción.
{:.prompt-warning}

## Información sobre la tarea

La entrega será en formato PDF. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

La tarea se calificará con una nota de APTO (10) o NO APTO (0).

Duración actividades obligatorias: 9 horas.

RA 2. Escribe sentencias simples, aplicando la sintaxis del lenguaje y verificando su ejecución sobre navegadores Web.

## Actividades

Es muy importante leer los apuntes y realizar las actividades. Los actividades de esta unidad son base para la realización de actividades en las próximas unidades.

{:.activity}
### Tabla de multiplicar

Crea los ficheros del proyecto como se muestra a continuación:

![alt text](ficheros.png)

Una vez vista la estructura, pasemos a ver el formulario y la inclusión de nuestro fichero .js en el archivo index.html.

```html
<!DOCTYPE html>
<html lang="es-ES">
    <head>
        <meta charset="UTF-8">
        <title>Tabla de multiplicar</title>
        <script src="js/tablaMultiplicar.js"></script>
    </head>
    <body>
        <h1>
            Tabla de multiplicar
        </h1>
        <form onsubmit="mostrarTabla()">
            <label for="numero">Introduce el número:</label>
            <input id="numero" type="number" required/>
            <input type="submit" value="Mostrar tabla" />
        </form>
        <div id="tabla">
        </div>
    </body>
</html>
```
{: file="index.html" }

El fichero `index.html` contiene:

1. La inclusión del archivo `tablaMultiplicar.js`.
1. Un formulario para que el usuario introduzca el número del que quiere visualizar su tabla de multiplicar. Este formulario, cuando es enviado (aunque no es enviado a ningún lado, simplemente se valida en lado del cliente), mediante el evento onSubmit del mismo, simplemente llama a la función mostrarTabla() que está definida en nuestro archivo tablaMultiplicar.js.
1. Un bloque vacío cuyo `id` es `tabla` y en el que luego mostraremos los resultados.

```javascript
const mostrarTabla = () => {
    this.event.preventDefault();
    const numero = Number(document.getElementById('numero').value);
    if (numero >= 0 && numero <= 10) {
        let tabla = document.getElementById('tabla');
        let tablaMultiplicar = `<h2>Tabla de multiplicar del número ${numero}</h2>`;
        tablaMultiplicar += '<ul>';
        for (let i = 0; i <= 10; i++) {
            tablaMultiplicar += `<li>${numero} * ${i} = ${numero * i}</li>`;
        }
        tablaMultiplicar += '</ul>';
        tabla.innerHTML = tablaMultiplicar;
    } else {
        alert('El número introducido debe estar entre 0 y 10 (ambos inclusive');
        document.getElementById("numero").value = '';
    }
}
```
{: file="tablaMultiplicar.js" }

El fichero `tablaMultiplicar.js` tiene una función que realiza las siguientes acciones.

1. Primero de todo previene que el evento se propague. Todo eso lo entenderás mejor más adelante, pero si no lo hiciese, al terminar limpia los campos y no nos deja ver el resultado (te animo a que comentes dicha línea -línea número 2- para que veas lo que sucede).
1. Pasa el valor del campo de texto a número y luego comprueba mediante una sentencia condicional si está entre los valores aceptados o no.
   1. Si lo está, rellena lo que se quiere mostrar en el bloque cuyo id es tabla mediante un bucle.
   1. Si no lo está, alerta al usuario del error y elimina el contenido del campo de texto.

> 📸 Recuerda añadir tu **código de usuario** y hacer capturas del código funcionando.
{:.prompt-info}

{:.activity}
### Tabla de dividir

Haz lo mismo que en la primera actividad pero en lugar de la tabla de multiplicar haz que aparezca la tabla de dividir.

> 📸 Recuerda añadir tu **código de usuario** y hacer capturas del código funcionando.
{:.prompt-info}

{:.activity}
### JavaScript básico en freeCodeCamp

Ir a la certificación [Algoritmos de JavaScript y Estructuras de Datos](https://www.freecodecamp.org/espanol/learn/javascript-algorithms-and-data-structures/) y hacer el curso "JavaScript básico".

> 📷 Cuando termines los 113 pasos, haz una captura de tu perfil público y añade el enlace de tu perfil. En mi caso este es [mi perfil](https://www.freecodecamp.org/fccbc40f106-3a04-422a-afc3-e806f616be0b). Recuerda que tu perfil debe ser público y se te debe poder identificar de manera inequívoca.
{:.prompt-info}

{:.activity}
### ES6 en freeCodeCamp

Ir a la certificación [Algoritmos de JavaScript y Estructuras de Datos](https://www.freecodecamp.org/espanol/learn/javascript-algorithms-and-data-structures/) y hacer el curso "ES6".

> 📷 Cuando termines, haz una captura de tu perfil público.
{:.prompt-info}

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://github.com/sergarb1/ApuntesDWEC/blob/master/UD01/Gu%C3%ADa%20de%20estudio%20DWEC%20-%20UD%2001%20-%20Navegadores%20y%20entorno%20de%20trabajo.pdf>

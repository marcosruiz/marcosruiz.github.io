---
title: "Tarea: Entorno de desarrollo para JavaScript"
date: 2024-10-03 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec, tarea, práctica]
img_path: /assets/img/tarea-entorno-desarrollo-javascript/
---

## Información sobre la tarea

La entrega será en formato PDF. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

La tarea se calificará con una nota de APTO (0) o NO APTO (10).

Duración actividades obligatorias: 2 horas.

RA1. Selecciona las arquitecturas y tecnologías de programación sobre clientes web, identificando y analizando las capacidades y características de cada una

## Actividades

Es muy importante leer los apuntes y realizar las actividades. Los actividades de esta unidad son base para la realización de actividades en las próximas unidades.

{:.activity}
### Navegador

Instala el navegador web Firefox Developer Edition y Brave.

Accede a la herramienta de desarrollo de cada navegador (tecla F12) y ejecuta en la consola las siguientes líneas de código una a una:

```javascript
console.log("Soy <tu usuario> y prefiero la tortilla de patatas <con o sin> cebolla")
```

```javascript
alert("Soy <tu usuario> y mi genero musical preferido es <genero musical preferido>")
```

> Recuerda que debes sustituir todo lo que aparece entre "<" y ">"
{:.prompt-warning}

> 📸 Haz una o varias capturas para demostrar que ha realizado esta tarea. ¡Recuerda que las capturas de pantalla deben abarcar todo el escritorio para que se vea la fecha y hora de realización!
{:.prompt-warning}

{:.activity}
### Entorno de desarrollo

> Para esta actividad tienes el artículo [Trabajar con Visual Studio Code](https://marcosruiz.github.io/posts/trabajar-visual-studio-code/) como ayuda.
{:.prompt-info}

Instala el entrono de desarrollo de Visual Studio Code.

En Visual Studio, instala la extensión de Live Preview o Live Server.

En Visual Studio, crea un documento `<tu usuario>.html` con `Ctrl + N`.

En el nuevo documento escribe `html:5` y genera una estructura base para un documento HTML.

Añade en el `body`:

```html
<h1>Soy <tu usuario> y mi genero cinematográfico preferido es <genero></h1>
```

Haz click en "Show preview" para ver el resultado:

![alt text](showPreview.png)
_Icono para ver el resultado dentro de Visual Studio Code_

> 📸 Haz una o varias capturas para demostrar que ha realizado esta tarea.
{:.prompt-info}

{:.activity}
### Integración de código JavaScript

Añade las dos líneas de código de la primera actividad utilizando el elemento `script`.

{:.question}
¿Se ve el resultado del  `console.log()` y del `alert()` en Visual Studio Code? Si no es así, ¿cómo puedo comprobar que mi `console.log()` y mi `alert()` realmente funciona?

> 📸 Haz una o varias capturas para demostrar que ha realizado esta tarea.
{:.prompt-info}

{:.activity}
### Script externo

Crea el fichero `script.js` y mueve las dos líneas de código de la actividad anterior a este nuevo fichero haciendo que se ejecute de igual modo.

{:.question}
¿Se ve el resultado del  `console.log()` y del `alert()` en Visual Studio Code? Si no es así, ¿cómo puedo comprobar que mi `console.log()` y mi `alert()` realmente funciona?

{:.question}
¿En que parte del documento HTML deberíamos añadir el elemento `script`? ¿Y si usáramos los atributos `async` o `defer`?

> 📸 Haz una o varias capturas para demostrar que ha realizado esta tarea.
{:.prompt-info}

{:.activity}
### (Voluntaria) Atajos de teclado

Utiliza los atajos de teclado `Alt + ↑` y `Alt + ↓` para mover líneas de código.

{:.activity}
### (Voluntaria) GitHub

Crea una cuenta en GitHub si no la tienes.

Crea un repositorio para este módulo profesional.

Sube los ficheros que has utilizado esta práctica al repositorio.

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://github.com/sergarb1/ApuntesDWEC/blob/master/UD01/Gu%C3%ADa%20de%20estudio%20DWEC%20-%20UD%2001%20-%20Navegadores%20y%20entorno%20de%20trabajo.pdf>

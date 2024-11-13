---
title: "Tarea obligatoria: Objetos predefinidos de JavaScript"
date: 2024-10-23 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec, tarea, práctica]
img_path: /assets/img/tarea-dom/
---

## Información sobre la tarea

La entrega será en formato ZIP con un PDF. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

Ejemplo de entrega:

```plaintext
mruizg_t03.zip
├───mruizg_t03.pdf
├───mruizg_a01_atributo.html
├───mruizg_a02_enlacesExternosNaranjas.html
├───mruizg_a03_enlacesExternosNaranjasConClase.html
├───mruizg_a06_anagrama.html
├───mruizg_a07_codigoMorse.html
├───mruizg_a08_codigoMorseConMemoria.html
├───mruizg_a09_expresionesEquilibradas.html
├───mruizg_a10_palindromo.html
├───mruizg_a11_tablaPrimos.html
├───mruizg_a12_domVentanaPrincipal.html
└───mruizg_a13_domVentanaSecundaria.html
```

La tarea se calificará con una nota de APTO (10) o NO APTO (0).

Duración actividades obligatorias: 8 horas.

RA 2. Escribe sentencias simples, aplicando la sintaxis del lenguaje y verificando su ejecución sobre navegadores Web.

## Actividades

Es muy importante leer los apuntes y realizar las actividades. Los actividades de esta unidad son base para la realización de actividades en las próximas unidades.

{:.activity}
### (Voluntaria) Atributo

Escribe el código para obtener el atributo `data-widget-name` del documento y leer su valor.

```html
<!DOCTYPE html>
<html>
  <body>
    <div data-widget-name="menu">Elige el genero</div>

    <script>
      /* Tu código */
    </script>
  </body>
</html>
```

> 📷 Cuando termines, haz varias capturas para demostrar que has realizado la actividad de manera satisfactoria.
{:.prompt-info}

{:.activity}
### Enlaces externos naranjas

Haz todos los enlaces externos de color orange alterando su propiedad `style`.

Un link es externo si:

- Su `href` tiene `://`.
- Pero no comienza con `http://internal.com`.

Ejemplo:

```html
<a name="list">the list</a>
<ul>
  <li><a href="http://google.com">http://google.com</a></li>
  <li><a href="/tutorial">/tutorial.html</a></li>
  <li><a href="local/path">local/path</a></li>
  <li><a href="ftp://ftp.com/my.zip">ftp://ftp.com/my.zip</a></li>
  <li><a href="http://nodejs.org">http://nodejs.org</a></li>
  <li><a href="http://internal.com/test">http://internal.com/test</a></li>
</ul>

<script>
  // establecer un estilo para un enlace
  let link = document.querySelector('a');
  link.style.color = 'orange';
</script>
```

El resultado podría ser:

![alt text](enlacesNaranjas.png)

> 📷 Cuando termines, haz varias capturas para demostrar que has realizado la actividad de manera satisfactoria.
{:.prompt-info}

{:.activity}
### Enlaces externos naranjas con clase

Haz todos lo mismo que en la actividad anterior pero modificando la clase de los elementos.

> 📷 Cuando termines, haz varias capturas para demostrar que has realizado la actividad de manera satisfactoria.
{:.prompt-info}

{:.activity}
### Depuración en freeCodeCamp

Ir a la certificación [Algoritmos de JavaScript y Estructuras de Datos](https://www.freecodecamp.org/espanol/learn/javascript-algorithms-and-data-structures/) y hacer el curso "Depuración".

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil.
{:.prompt-info}

{:.activity}
### Programación de algoritmos básicos en freeCodeCamp

Ir a la certificación [Algoritmos de JavaScript y Estructuras de Datos](https://www.freecodecamp.org/espanol/learn/javascript-algorithms-and-data-structures/) y hacer el curso "Programación de algoritmos básicos".

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil.
{:.prompt-info}

{:.activity}
### (Voluntaria) Anagrama

Escribe una función que reciba dos palabras (`string`) y retorne verdadero o falso (`boolean`) según sean o no anagramas.

- Un Anagrama consiste en formar una palabra reordenando TODAS las letras de otra palabra inicial.
- NO hace falta comprobar que ambas palabras existan.
- Dos palabras exactamente iguales no son anagrama.

- Los datos deben ser recogido a través de `window.prompt()`.
- El resultado debe ser mostrado a través de `window.alert()`.

> 📷 Cuando termines todo, haz varias capturas para demostrar que has realizado la actividad de manera satisfactoria.
{:.prompt-info}

{:.activity}
### Código morse

Crea un programa que sea capaz de transformar texto natural a código morse y viceversa.

- Debe detectar automáticamente de qué tipo se trata y realizar la conversión.
- En morse se soporta raya "—", punto ".", un espacio " " entre letras o símbolos y dos espacios entre palabras "  ".
- El alfabeto morse soportado será el mostrado en <https://es.wikipedia.org/wiki/Código_morse>.

- Los datos deben ser recogidos a través de `window.prompt()`.
- El resultado debe ser mostrado en el `body`.

> 📷 Cuando termines todo, haz varias capturas para demostrar que has realizado la actividad de manera satisfactoria.
{:.prompt-info}

{:.activity}
### Código morse con memoria

Haz que aunque se actualice la web con F5 el último resultado generado no desaparezca.

> Deberás usar el objeto `window` para guardar esta información.
{:.prompt-info}

> 📷 Cuando termines todo, haz varias capturas para demostrar que has realizado la actividad de manera satisfactoria.
{:.prompt-info}

{:.activity}
### Expresiones equilibradas

Crea un programa que comprueba si los paréntesis, llaves y corchetes de una expresión están equilibrados.

- Equilibrado significa que estos delimitadores se abren y cierran en orden y de forma correcta.
- Paréntesis, llaves y corchetes son igual de prioritarios. No hay uno más importante que otro.
- Expresión balanceada: `{ [ a * ( c + d ) ] - 5 }`
- Expresión no balanceada: `{ a * ( c + d ) ] - 5 }`

- Los datos deben ser recogido a través de un `input`.
- El resultado debe ser mostrado en el `body` de la ventana actual.

> 📷 Cuando termines todo, haz varias capturas para demostrar que has realizado la actividad de manera satisfactoria.
{:.prompt-info}

{:.activity}
### (Voluntaria) ¿Es un palíndromo?

Escribe una función que reciba un texto y retorne verdadero o falso (`boolean`) según sean o no palíndromos.

Un Palíndromo es una palabra o expresión que es igual si se lee de izquierda a derecha que de derecha a izquierda.

NO se tienen en cuenta los espacios, signos de puntuación y tildes.

Ejemplo de palíndromo: Ana lleva al oso la avellana.

- Los datos deben ser recogido a través de un `input`.
- El resultado debe ser mostrado en el `body` de una ventana o pestaña diferente.

> 📷 Cuando termines todo, haz varias capturas para demostrar que has realizado la actividad de manera satisfactoria.
{:.prompt-info}

{:.activity}
### Tabla de primos

Escribe un programa que reciba un número \<X\> y muestre en el `body` los números primos entre 1 y \<X\> en forma de tabla.

- Los datos deben ser recogido a través de un `input`.
- El resultado debe ser mostrado en el `body` de una ventana o pestaña diferente.

> 📷 Cuando termines todo, haz varias capturas para demostrar que has realizado la actividad de manera satisfactoria.
{:.prompt-info}

{:.activity}
### DOM en ventana principal

Realizar una aplicación en HTML y JavaScript que realice lo siguiente:

Hacer y llamar a una función que:

- Escriba en la ventana principal `<h1>TAREA 03</h1>`
- Solicite: Introduzca su nombre de usuario.
- Solicite: Introduzca DIA de nacimiento.
- Solicite: Introduzca MES de nacimiento.
- Solicite: Introduzca AÑO de nacimiento.
- Una vez solicitados esos datos imprimirá en la ventana principal:
  - Buenos días \<XXXX\>
  - Tu nombre tiene \<XX\> caracteres, incluidos espacios.
  - La primera letra A de tu nombre está en la posición: \<X\>
  - La última letra A de tu nombre está en la posición: \<X\>
  - Tu nombre menos las 3 primeras letras es: \<XXXXXXXX\>
  - Tu nombre todo en mayúsculas es: \<XXXXXXXX\>
  - Tu edad es: \<XX\> años.
  - Naciste un feliz \<XXXX\> del año \<XXXX\>.
  - El coseno de 180 es: \<XXXXXXXX\>
  - El número mayor de (34,67,23,75,35,19) es: \<XX\>
  - Ejemplo de número al azar: \<XXXXXXXX\>

Donde aparecen las \<XXXX\> tendrá que aparecer el cálculo o texto que corresponda.

> 📷 Cuando termines todo, haz varias capturas para demostrar que has realizado la actividad de manera satisfactoria.
{:.prompt-info}

{:.activity}
### DOM en ventana secundaria

Realizar una aplicación en HTML y JavaScript que realice lo siguiente:

Hacer y llamar a una función que:

- Abra una nueva ventana no redimensionable.
- Escribir en la nueva ventana `<h3>Ejemplo de Ventana Nueva</h3>`
- URL Completa: \<XXXX\>
- Protocolo utilizado: \<XXXX\>
- Nombre en código del navegador: \<XXXX\>
- Que detecte si está JAVA disponible en esa ventana del navegador y si es así que escriba:
  - Java SI disponible en esta ventana, o bien.
  - Java NO disponible en esta ventana.
- Que abra un iframe con el contenido de <www.google.es> y de 800x600.

Donde aparecen las \<XXXX\> tendrá que aparecer el cálculo o texto que corresponda.

> 📷 Cuando termines todos los pasos, haz varias capturas para demostrar que has realizado la actividad de manera satisfactoria.
{:.prompt-info}

## Dame tu feedback

<div class="strawpoll-embed" id="strawpoll_LVyK2bMvbZ0" style="height: 644px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_LVyK2bMvbZ0" src="https://strawpoll.com/embed/LVyK2bMvbZ0" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

<div class="strawpoll-embed" id="strawpoll_XOgOV8L34n3" style="height: 3012px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_XOgOV8L34n3" src="https://strawpoll.com/embed/XOgOV8L34n3" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://github.com/sergarb1/ApuntesDWEC/blob/master/UD01/Gu%C3%ADa%20de%20estudio%20DWEC%20-%20UD%2001%20-%20Navegadores%20y%20entorno%20de%20trabajo.pdf>

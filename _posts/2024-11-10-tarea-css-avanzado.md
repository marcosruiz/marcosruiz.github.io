---
title: "Tarea obligatoria: CSS avanzado"
date: 2024-11-10 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/tarea-css-avanzado/
---

## Información sobre la tarea

La entrega será en formato PDF. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

La tarea se calificará con una nota de APTO (10) o NO APTO (0).

Duración actividades obligatorias: 7 horas.

RA2. Crea interfaces web homogéneos definiendo y aplicando estilos.

## Actividades

A continuación, se muestran las actividades a realizar.

{:.activity}
### (Voluntaria) None vs hidden

Imagina un ejemplo de página web en la que al hacerse algo invisible sea mejor usar `display:none` y otro ejemplo en el que sea mejor usar `visibility:hidden`.

{:.activity}
### Flexbox en freeCodeCamp

Hacer el apartado "Aprende CSS Flexbox construyendo una galería de fotos" del curso [Diseño Web Responsivo](https://www.freecodecamp.org/espanol/learn/2022/responsive-web-design/).

![Galería de fotos de gatos](galeriaGatos.png)
_Galería de fotos de gatos_

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil público y añade el enlace de tu perfil.
{:.prompt-info}

{:.activity}
### (Voluntaria) Flexbox froggy

Haz todas las actividades de [Flexbox Froggy](https://codepip.com/games/flexbox-froggy/).

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil público y añade el enlace de tu perfil público.
{:.prompt-info}

{:.activity}
### (Voluntaria NO recomendada) Tipografía en freeCodeCamp

Hacer el apartado "Aprende tipografía construyendo una etiqueta de nutrición" del curso [Diseño Web Responsivo](https://www.freecodecamp.org/espanol/learn/2022/responsive-web-design/).

![Etiqueta de nutrición](etiquetaNutricion.png)
_Etiqueta de nutrición_

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil público y añade el enlace de tu perfil.
{:.prompt-info}

{:.activity}
### (Voluntaria NO recomendada) Pseudoselectores en freeCodeCamp

Hacer el apartado "Aprende más sobre los selectores pseudo de CSS construyendo una hoja de balance" del curso [Diseño Web Responsivo](https://www.freecodecamp.org/espanol/learn/2022/responsive-web-design/).

![Balance](balance.png)
_Balance_

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil público y añade el enlace de tu perfil.
{:.prompt-info}

{:.activity}
### (Voluntaria NO recomendada) Gato en freeCodeCamp

Hacer el apartado "Aprende CSS Intermedio haciendo una pintura de gatos" del curso [Diseño Web Responsivo](https://www.freecodecamp.org/espanol/learn/2022/responsive-web-design/).

![Gato](gato.png)
_Gato_

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil público y añade el enlace de tu perfil.
{:.prompt-info}

{:.activity}
### Piano en freeCodeCamp

Hacer el apartado "Aprende diseño web adaptativo construyendo un piano" del curso [Diseño Web Responsivo](https://www.freecodecamp.org/espanol/learn/2022/responsive-web-design/).

![Piano](piano.png)
_Piano_

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil público y añade el enlace de tu perfil.
{:.prompt-info}

{:.activity}
### (Voluntaria) Horizonte en freeCodeCamp

Hacer el apartado "Aprende variables CSS construyendo un horizonte de la ciudad" del curso [Diseño Web Responsivo](https://www.freecodecamp.org/espanol/learn/2022/responsive-web-design/).

![Horizonte de ciudad](horizonteCuidad.png)
_Horizonte de ciudad_

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil público y añade el enlace de tu perfil.
{:.prompt-info}

{:.activity}
### Grid en freeCodeCamp

Hacer el apartado "Aprende la cuadrícula de CSS construyendo una revista" del curso [Diseño Web Responsivo](https://www.freecodecamp.org/espanol/learn/2022/responsive-web-design/).

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil público y añade el enlace de tu perfil.
{:.prompt-info}

{:.activity}
### (Voluntaria) Grid Garden

Haz todas las actividades de [Grid Garden](https://codepip.com/games/grid-garden/).

> 📷 Cuando termines todos los pasos, haz una captura de tu perfil público y añade el enlace de tu perfil.
{:.prompt-info}

{:.activity}
### Stylelint

Utilizando el tutorial [StyleLint: Linter CSS](https://lenguajecss.com/css/calidad-de-codigo/stylelint/) del todopoderoso MANZ instala y configura en un proyecto llamado `<tu usuario>_t02.2` y comprueba que StyleLint funciona perfectamente. Puedes combinarlo con Error Lens para que muestre los errores en la misma línea de código.

> 📷 Haz una captura de código CSS con errores.
{:.prompt-info}

{:.activity}
### SASS

Lee el artículo [Tutorial: Primeros pasos con SASS](/posts/tutorial-sass) y convierte los siguientes tres ficheros SCSS en CSS y **explica que transformaciones ocurren**.

```scss
$font-stack: Helvetica, sans-serif;
$primary-color: #333;

body {
  font: 100% $font-stack;
  color: $primary-color;
}
```
{: file="variables.scss" }

```scss
nav {
  ul {
    margin: 0;
    padding: 0;
    list-style: none;
  }

  li { display: inline-block; }

  a {
    display: block;
    padding: 6px 12px;
    text-decoration: none;
  }
}
```
{: file="nesting.scss" }

```scss
@mixin theme($theme: DarkGray) {
  background: $theme;
  box-shadow: 0 0 1px rgba($theme, .25);
  color: #fff;
}

.info {
  @include theme;
}
.alert {
  @include theme($theme: DarkRed);
}
.success {
  @include theme($theme: DarkGreen);
}
```
{: file="mixins.scss" }

> 📷 Haz una o varias capturas para demostrar que has ejecutado sass.
{:.prompt-info}

{:.activity}
### Bootstrap

Descarga los ejemplos de la siguiente página <https://getbootstrap.com/docs/5.3/examples/>.

Abre uno y modifícalo para que aparezca tu código de usuario en algún sitio.

> 📷 Haz una captura cuando termines la actividad.
{:.prompt-info}

Abre el ejemplo grid donde se ve el comportamiento del grid de Bootstrap y responde a las siguientes preguntas:

1. ¿De cuántas columnas consta el grid de bootstrap?
1. ¿Qué diferencia aprecias entre usar la clase `.col-4` y la clase `.col-md-4`?
1. Cuando cambiamos del tema claro al tema oscuro, ¿cambia algo en el documento HTML?

{:.activity}
### (Voluntaria) Tema claro y oscuro I

Dados los siguientes ficheros:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tema claro y oscuro</title>
  <link rel="stylesheet" href="claroOscuro.css">
</head>
<body>
  <header class="container">
    <div class="row">
      <div class="col text-center">
        <label id="switch">
          <input type="checkbox">
          <span class="slider round"></span>
        </label>
        <h1>Marcos Ruiz García</h1>
      </div>
    </div>
  </header>
  <main class="container">
    <section class="row justify-content-center">
      <div class="col-md-8 text-center">
        <h2>Mruizg</h2>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure doloremque minima, nisi aspernatur, enim dolorum maiores error quis, veritatis incidunt vitae voluptatum reprehenderit aut distinctio officiis corrupti voluptates qui nostrum.
        </p>
        <a href="https://marcosruiz.github.io/" target="_blank">Visita mi web</a>
      </div>
    </section>
  </main>
  <script src="claroOscuro.js"></script>
</body>
</html>
```
{: file="claroOscuro.html" }

```css
:root {
  --color-fuente: #2b2b2b;
  --color-fondo: #fff;
}

[class="dark"] {
  --color-fuente: #fff;
  --color-fondo: #2b2b2b;
}

body {
  background-color: var(--color-fondo);
  color: var(--color-fuente);
  transition: background-color 1s ease;
}

header {
  margin-top: 3rem;
  margin-bottom: 3rem;
}

h1 {
  font-size: 3rem;
  text-transform: uppercase;
  margin-top: 2rem;
  font-family: 'Cinzel', serif;
}

h2 {
  font-size: 1.8rem;
  font-family: 'Cinzel', serif;
}

p {
  margin-top: 1.4rem;
  margin-bottom: 4rem;
  font-family: 'Raleway', sans-serif;
  font-size: 1.4rem;
}

a {
  background-color: var(--color-fuente);
  color: var(--color-fondo);
  text-decoration: none;
  text-transform: uppercase;
  padding-top: 1rem;
  padding-bottom: 1rem;
  padding-left: .75rem;
  padding-right: .75rem;
  border-style: solid;
  border-width: .2rem;
  border-color: var(--color-fuente);
  border-radius: 2rem;

}

a:hover {
  background-color: var(--color-fondo);
  color: var(--color-fuente);
  text-decoration: none;
}

/*Botón de cambio de tema*/

#switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

#switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: var(--color-fuente);
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: var(--color-fondo);
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked+.slider {
  background-color: var(--color-fuente);
}

input:focus+.slider {
  box-shadow: 0 0 1px var(--color-fuente);
}

input:checked+.slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
```
{: file="claroOscuro.css" }

```javascript
const colorSwitch = document.querySelector('#switch input[type="checkbox"]');
function cambiaTema(ev) {
  if (ev.target.checked) {
    document.documentElement.setAttribute("class", "dark");
  } else {
    document.documentElement.removeAttribute("class");
  }
}
colorSwitch.addEventListener("change", cambiaTema);
```
{: file="claroOscuro.js" }

Ejecútalos, analiza y contesta a las siguientes preguntas:

1. ¿A qué hace referencia el selector o pseudoselector `:root`?
1. ¿Qué es `--color-fuente`?
1. ¿Qué hace la propiedad `transition: background-color 1s ease;`?

> 📷 Pon tu nombre y tu código de usuario en el HTML y haz una captura de pantalla.
{:.prompt-info}

{:.activity}
### Tema claro y oscuro II

Haz lo mismo que en el ejercicio anterior pero esta vez utilizando dos hojas de estilo diferentes. Para ello deberás enlazar dos hojas de estilo como ves a continuación:

```html
  <!-- Tema claro (predeterminado) -->
  <link id="tema-claro" rel="stylesheet" href="claro.css" title="Tema claro">
  
  <!-- Tema oscuro (alternativo) -->
  <link id="tema-oscuro" rel="stylesheet" href="oscuro.css" title="Tema oscuro">
```
{: file="claroOscuro2.html" }

Y deberás ejecutar la siguiente función para cambiar entre una hoja de estilos y otra:

```javascript
function cambiaTema(ev) {
  // Obtén las hojas de estilo
  const claro = document.getElementById("tema-claro");
  const oscuro = document.getElementById("tema-oscuro");

  // Alterna entre los estilos
  if (claro.disabled) {
    claro.disabled = false; // Activa el tema claro
    oscuro.disabled = true; // Desactiva el tema oscuro
  } else {
    claro.disabled = true; // Desactiva el tema claro
    oscuro.disabled = false; // Activa el tema oscuro
  }
}

document.getElementById("tema-oscuro").disabled = true;
```
{: file="claroOscuro2.js" }

Y responde a las siguientes preguntas:

1. ¿Qué solución te parece mejor para cambiar de tema? ¿Por qué?
1. ¿En alguno de los dos casos me puedo ahorrar el uso de variables?

## Dame tu feedback

<div class="strawpoll-embed" id="strawpoll_7rnzV84lDnO" style="height: 644px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_7rnzV84lDnO" src="https://strawpoll.com/embed/7rnzV84lDnO" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

<div class="strawpoll-embed" id="strawpoll_40Zm41ErRga" style="height: 3012px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_40Zm41ErRga" src="https://strawpoll.com/embed/40Zm41ErRga" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

## Bibliografía

- <https://logongas.es/doku.php?id=clase:daw:diw:1eval:tema01>
- <https://lenguajecss.com/css/calidad-de-codigo/stylelint/>
- <https://getbootstrap.com/docs/5.3/examples/>

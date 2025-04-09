---
title: "Diseño web responsivo"
date: 2025-03-12 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/diseno-web-responsivo/
---

{:.section}
## Introducción

El diseño responsivo (o responsive design) es un enfoque de diseño web que busca que las páginas se adapten automáticamente al tamaño y las características del dispositivo desde el que se visualizan (computadoras, tablets, smartphones, etc.).

{:.section}
## Responsivo vs Adaptativo

Hacer un diseño responsivo es que la misma página se adapte a distintos tamaños de pantalla. Hacer un diseño adaptativo es hacer páginas distintas según el tamaño de la pantalla.

![Diseño adaptativo vs diseño responsivo](adaptativeVsResponsive.png)
_Diseño adaptativo vs diseño responsivo_

Ejemplo de diseño adaptativo es la página de AliExpress.

![Versión móvil de AliExpress](aliexpressMobile.png)
_Versión móvil de AliExpress_

![Versión de escritorio de AliExpress](aliexpressEscritorio.png)
_Versión de escritorio de AliExpress_

La ventaja de las webs adaptativas es que en la versión móvil solo se cargan las cosas que se necesitan para el móvil además de que está hecha pensando en móvil. El inconveniente es que hay que desarrollar dos páginas.

{:.question}
¿Qué diferencia hay entre diseño responsivo y adaptativo?

{:.section}
## Viewport

Dentro del `head` del documento HTML podemos añadir la siguiente línea:

```html
<meta name="viewport" content="width=device-width, initial-scale=1">
```

Con esto se consigue que la página tenga el tamaño del dispositivo, ya que sino se pone , el dispositivo podría hacer que la página se haga mas grande y crear barras de desplazamiento.

{:.section}
## Unidades

Existen diferentes tipos de unidades en CSS. En este caso vamos a centrarnos en las siguientes:

- viewport
- rem
- em

{:.subsection}
### viewport

Podemos hacer ciertos tamaños que sean en función del tamaño de la pantalla. Para ello se usan las unidades como `vw` o `vh` que hacen referencia al tamaño de la pantalla.

- `vh` Es la altura de la ventana. Un valor de 1vh es igual al 1% del alto.
- `vw` Es el ancho de la ventana. Un valor de 1vw es igual al 1% del ancho.
- `vmin` Mínimo entre el ancho y el alto. Es la dimensión más pequeña de la ventana. Si el alto de la ventana gráfica es menor que el ancho, el valor de 1vmin será igual al 1% de la altura. De manera similar, si el ancho es menor que la altura, el valor de 1vmin será igual al 1% del ancho.
- `vmax` Máximo entre el ancho y el alto. Es la dimensión más grande de la ventana. Si el alto de la ventana gráfica es mayor que el ancho, el valor de 1vmin será igual al 1% de la altura. De manera similar, si el ancho es mayor que la altura, el valor de 1vmin será igual al 1% del ancho.

Primer ejemplo:

```css
.c-titulo {
    font-size: 10vw;
}
```

```html
<p class="c-titulo">Hola mundo</p>
```

En el ejemplo anterior, el tamaño de la fuente se hace mas grande a medida que se hace mas ancha la ventana.

Podemos pensar que `100vw` es similar a `100%`, pero hay dos diferencias:

- `100%` hace referencia al tamaño de donde está el elemento donde estamos, no al tamaño de la ventana.
- `100%` no incluye el tamaño de las barras de desplazamiento, mientras que `100vw` si que lo hace.

{:.question}
¿Es lo mismo un ancho de 100% que un ancho de 100vw?

Para ésto último a veces se hace lo siguiente:

```css
ejemplo {
   width: 100vw;
   height: 100vw;
   max-width: 100%;
}
```

También se pueden usar decimales con `vw` o `vh`

```css
.c-titulo {
    font-size: 3.14vw;
}
```

{:.subsection}
### rem

La unidad `rem` hace referencia al tamaño de fuente del elemento `html`. El tamaño en píxeles se obtiene de multiplicar el valor de `rem` por el tamaño de la fuente de la página.

```css
html {
   font-size:12px;
}
```

Otra forma de cambiar el `font-size` por defecto es configurar el tamaño de `1rem` en el propio navegador. Lo suele hacer gente con diversidad visual. En Google Chrome es en "Configuración → Aspecto → Personalizar fuentes"

Veamos ahora como se usa `rem` en Bootstrap para los botones:

| Tamaño botón     | Tamaño de fuente | Padding horizontal | Padding vertical |
| ---------------- | ---------------- | ------------------ | ---------------- |
| Normal           | `1rem`           | `0.75rem`          | `0.375rem`       |
| Grande `btn-lg`  | `1.25rem`        | `1rem`             | `0.5rem`         |
| Pequeño `btn-sm` | `0.875rem`       | `0.5rem`           | `0.25rem`        |

Vamos ahora los mismo datos pero en px suponiendo que el tamaño de fuente es `16px`:

| Tamaño botón     | Tamaño de fuente | Padding horizontal | Padding vertical |
| ---------------- | ---------------- | ------------------ | ---------------- |
| Normal           | `16px`           | `12px`             | `6px`            |
| Grande `btn-lg`  | `20px`           | `16px`             | `8px`            |
| Pequeño `btn-sm` | `14px`           | `8px`              | `4px`            |

Y por último veamos la relación que hay entre el padding y el tamaño de fuente en `%`:

| Tamaño botón     | Padding horizontal respecto del tamaño de fuente | Padding vertical respecto del tamaño de fuente |
| ---------------- | ------------------------------------------------ | ---------------------------------------------- |
| Normal           | `75%`                                            | `37,5%`                                        |
| Grande `btn-lg`  | `80%`                                            | `40%`                                          |
| Pequeño `btn-sm` | `57,142%`                                        | `28,571%`                                      |

Resulta que no hay una relación constante entre el tamaño de la fuente y el tamaño del padding... y esto ¿por qué?

Lo más probable es que el motivo sea que cuando queremos un botón pequeño queremos que el texto se siga pudiendo leer, por lo tanto el padding se reducirá mas que el tamaño de letra.

<details class="card mb-2">
  <summary class="card-header question">¿No sería mejor hacer constante el tamaño del padding respecto del tamaño de fuente? De este modo aumentando el tamaño de fuente en la raíz los paddings no aumentarían proporcionalmente.</summary>
  <div class="card-body" markdown="1">

Pues yo creo que si. Supongo que tener el tamaño de los paddings en píxeles generará otro tipo de problemas...

Una solución más responsiva podría incluir funciones que realizan cálculos como `min()`, `max()`, `clamp()` o `clac()`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### em

La unidad `em` hace referencia al tamaño de fuente del elemento donde está. El tamaño en píxeles se obtiene de multiplicar el valor de `em` por el tamaño de la fuente de ese elemento.

{:.section}
## Cálculos en CSS

Podemos usar funciones en CSS para calcular valores:

- `min()`
- `max()`
- `calc()`
- `clamp()`

{:.subsection}
### min()

Retorna el mínimo de los dos valores:

```css
.c-titulo {
  font-size: min(100px,10vw);
}
```

```html
<p class="c-titulo">Hola mundo</p>
```

En el ejemplo el tamaño máximo de la fuente nunca será mayor que `100px` por mucho que se haga grande la ventana.

{:.subsection}
### max()

Retorna el máximo de los dos valores:

```css
.c-titulo {
  font-size: max(40px,10vw);
}
```

```html
<p class="c-titulo">Hola mundo</p>
```

En el ejemplo el tamaño mínimo de la fuente nunca será menor que `40px` por mucho que se haga pequeña la ventana.

{:.subsection}
### calc()

Permite hacer cálculos en CSS:

```css
.c-titulo {
  font-size: calc(10vw - 10px);
}
```

```css
.c-titulo {
  font-size: calc( ( 1 / 3 ) * 100vw);
}
```

```css
.c-titulo {
  font-size: clamp(40px, 10vw - 10px, 100px);
}
```

Es obligatorio separar siempre las operaciones de suma y resta con espacios en blanco de sus operandos.

Por ejemplo, la siguiente expresión NO es correcta:

```css
calc(50%-8px)
```

Debiéndose corregir y quedando así:

```css
calc(50% - 8px).
```

Aunque los operadores `*` y `/` no necesitan espacio en blanco, se recomienda agregarlos por razones de consistencia.

```html
<p class="c-titulo">Hola mundo</p>
```

{:.subsection}
### clamp()

Retorna un valor pero sin ser menos que un mínimo ni mayor que un máximo:

```css
.c-titulo {
    font-size: clamp(40px, 10vw, 100px);
}
```

```html
<p class="c-titulo">Hola mundo</p>
```

En el ejemplo el tamaño mínimo de la fuente nunca será menos que `40px` por mucho que se haga pequeña la ventana ni será mayor que `100px` por mucho que se haga grande la ventana.

Dentro de `clamp` se pueden hacer cálculos directamente sin necesidad de usar `calc`.

{:.section}
## Media queries

Permiten tener un CSS distinto según el tamaño de la pantalla:

```css
.c-titulo {
  font-size: 40px;
}

@media (min-width: 576px) {
  .c-titulo {
    font-size: 50px;
  }
}

@media (min-width: 768px) {
  .c-titulo {
    font-size: 55px;
  }
}

@media (min-width: 992px) {
  .c-titulo {
    font-size: 70px;
  }
}
```

```html
<p class="c-titulo">Hola mundo</p>
```

Como vemos para cada resolución se usa un CSS distinto y por lo tanto el tamaño es distinto según la resolución.

> Véase como el CSS por defecto es para tamaños menores de `576px`. Es lo que se llama Mobile First Design. Es decir que por defecto el CSS es para móviles y luego ya se añade CSS para otros tamaños. En el ejemplo siguen casi los mismos tamaños que se usan en el sistema de Grid de Bootstrap como se puede ver en [este enlace](https://getbootstrap.com/docs/4.0/layout/grid/#grid-options).
{:.prompt-info}

{:.question}
¿Qué significa Mobile First en el campo del diseño?

<details class="card mb-2">
  <summary class="card-header question">¿Es Bootstrap mobile first?</summary>
  <div class="card-body" markdown="1">

Si. Si te fijas, cuando hacemos `col-3` estamos indicando que el elemento ocupa 3 columnas (de las 12) en mobile. Por esto mismo, si diseñamos pensando en una pantalla de escritorio hay que usar `col-md-3`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Es Tailwind mobile first?</summary>
  <div class="card-body" markdown="1">

Si.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Qué son las media queries y para qué se usan?

{:.section}
## Tamaño de fuente responsive

{:.subsection}
### Ejemplo 1

Pasemos ahora a ver como poder hacer las cosas responsivas con una simple arquitectura:

```html
<p class="g--font-size-1  g--font-size-2@fulldesktop">Hola mundo</p>
```

```css
.g--font-size-1 {
  font-size: 40px;
}

.g--font-size-2 {
  font-size: 60px;
}

@media (min-width: 576px) {
  .g--font-size-1\@tablet {
    font-size: 40px;
  }

  .g--font-size-2\@tablet {
    font-size: 60px;
  }
}

@media (min-width: 768px) {
  .g--font-size-1\@desktop {
    font-size: 40px;
  }

  .g--font-size-2\@desktop {
    font-size: 60px;
  }
}

@media (min-width: 992px) {
  .g--font-size-1\@fulldesktop {
    font-size: 40px;
  }

  .g--font-size-2\@fulldesktop {
    font-size: 60px;
  }
}
```

En el ejemplo por defecto el tamaño de la fuente será de `40px` pero en resoluciones mayores de `992px` será de `55px`.

Lo que hacemos es crear todas los modificadores globales o modificadores de bloques para las distintas resoluciones pero añadiendo el sufijo `@tablet` , `@desktop` o `@fulldesktop`. E indicando en el HTML que tamaño usar según la resolución de la pantalla.

{:.subsection}
### (Voluntario) Ejemplo 2

Personalmente, el ejemplo anterior me resulta muy engorroso por lo que se me ocurre que sea la clase `g--font-size-1` desde CSS la que cambie de tamaño.

```html
<p class="g--font-size-1">Hola mundo</p>
```

```css
.g--font-size-1 {
  font-size: 40px;
}

@media (min-width: 576px) {
  .g--font-size-1 {
    font-size: 50px;
  }
}

@media (min-width: 768px) {
  .g--font-size-1 {
    font-size: 60px;
  }
}

@media (min-width: 992px) {
  .g--font-size-1 {
    font-size: 70px;
  }
}
```

{:.subsection}
### (Voluntario) Ejemplo 3

Ahora que lo pienso, ¿por qué no hago directamente que el tamaño de letra esté en función del ancho de la pantalla?

```html
<p class="g--font-size-1">Hola mundo</p>
<p class="g--font-size-2">Hola mundo</p>
```

```css
html{
  font-size: 10vw;
}

.g--font-size-1 {
  font-size: 1rem;
}

.g--font-size-2 {
  font-size: 1.15rem;
}
```

{:.section}
## Grid responsive

{:.subsection}
### Ejemplo 1: Grid con elementos responsive

En este caso vamos a crear un grid similar al de Bootstrap. El grid tendrá siempre 12 columnas y serán los elementos los que ocuparán más o menos columnas en función del ancho de pantalla. En este caso solo se han creado clases para elementos que ocupen 6 (`col-6`) y 12 (`col-12`) columnas pero lo lógico sería crear clases para elementos que ocupen 1, 2, 3 ... y 12 columnas.

```html
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="styles.css">
</head>

<body>

  <div class="grid-12">
    <div class="col-6">Columna 6</div>
    <div class="col-6">Columna 6</div>
  </div>

</body>

</html>
```

```css
.grid-12 {
  display: grid;
  grid-template-columns: repeat(12, 1fr); /* 12 columnas iguales */
  gap: 1rem; /* Espacio entre columnas */
}

/* Pongo estilos a cualquier clase que empiece por "col" para que se vea bien */
[class^="col-"] {
  background-color: yellow;
  border: solid black 1px;
  padding: 10px;
}

/* En movil */
.col-12 {
  grid-column: span 12;
}

/* En móvil ocupa todo el ancho */
.col-6 {
  grid-column: span 12;
}

/* En tablet o desktop */
@media (min-width: 768px) {
  .col-6 {
    grid-column: span 6; /* Ocupa 6 columnas */
  }
}
```

![Ejemplo de grid con elementos responsive](gridConElementosResponsive.gif)
_Ejemplo de grid con elementos responsive_

{:.subsection}
### Ejemplo 2: Grid responsive

Otra alternativa es que sea el mismo grid el que cambie su número de columnas para que los elementos (clase `item`) cambien su tamaño.

```html
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="styles.css">
</head>

<body>

  <h1>Grid Responsive con <code>auto-fit</code> y <code>minmax()</code></h1>

  <div class="grid-container">
    <div class="item">Elemento 1</div>
    <div class="item">Elemento 2</div>
    <div class="item">Elemento 3</div>
    <div class="item">Elemento 4</div>
    <div class="item">Elemento 5</div>
    <div class="item">Elemento 6</div>

    <div class="item-2">Elemento 7</div>
    <div class="item-2">Elemento 8</div>
    <div class="item-2">Elemento 9</div>
  </div>

</body>

</html>
```

```css
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  padding: 2rem;
  font-family: sans-serif;
  background-color: #f5f5f5;
}

.grid-container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 1rem;
}

[class^="item"] {
  background-color: #4f46e5;
    color: white;
    padding: 1.5rem;
    text-align: center;
    border-radius: 8px;
    font-weight: bold;
    font-size: 1.2rem;
    box-shadow: 0 4px 6px rgba(0 0 0 0.1);
}

/* item-2 ocupa el doble que item */
.item-2 {
  grid-column: span 2;
}
```

![Ejemplo de grid responsive](gridResponsive.gif)
_Ejemplo de grid responsive_

{:.section}
## Breakpoints

Al crear la arquitectura responsiva es necesario indicar los pixeles de cada pantalla así como los tamaños. En las siguientes secciones se indica cuales se usan en diversos frameworks CSS para que los tengas como referencia.

{:.subsection}
### Bootstrap

| Nombre | Descripción                           | Ancho Mínimo |
| ------ | ------------------------------------- | ------------ |
| -      | Extra small devices (portrait phones) | `0px`        |
| `sm`   | Small devices (landscape phones)      | `576px`      |
| `md`   | Medium devices (tablet)               | `768px`      |
| `lg`   | Large devices (desktops)              | `992px`      |
| `xl`   | Extra large devices (large desktops)  | `1200px`     |

{:.subsection}
### Tailwind

| Nombre | Ancho Mínimo |
| ------ | ------------ |
| `sm`   | `640px`      |
| `md`   | `768px`      |
| `lg`   | `1024px`     |
| `xl`   | `1280px`     |

{:.section}
## Menú responsivo

```html
<div class="main-menu">
  <ul class="main-menu__items main-menu__items--movil-hide">
    <li class="main-menu__item"><a href="#home">Home</a></li>
    <li class="main-menu__item"><a href="#news">News</a></li>
    <li class="main-menu__item"><a href="#contact">Contact</a></li>
    <li class="main-menu__item"><a href="#about">About</a></li>
  </ul>
  <a href="javascript:void(0);" class="main-menu__hamburger" onclick="toggleVisibilityMenu()">☰</a>
</div>
<h1 style="text-align: center">Mi empresa</h1>
<p style="height: 1200px;width: 500px;"></p>
```

```css
/* Quito estilos por defecto */

body {
  margin: 0;
}

ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

/* Empiezo con el menu */

.main-menu {
  display: flex;
  flex-direction: row;
}

@media (max-width: 499px) {
  .main-menu {
    position: fixed;
    top: 0;
    left: 0;
  }
}

.main-menu__hamburger {
  display: none;
}

@media (max-width: 499px) {
  .main-menu__hamburger {
    display: block;
  }
}

.main-menu__items {
  display: flex;
  flex-direction: row;
}

@media (max-width: 499px) {
  .main-menu__items {
    flex-direction: column;
  }
}

.main-menu__item {
  padding: 10px;
  color: #ffffff;
  background-color: #c0c0c0;
}

@media (max-width: 499px) {
  .main-menu__item {
    padding-left: 2px;
    background-color: #00ff00;
  }
}

@media (max-width: 499px) {
  .main-menu__items--movil-visible {
    display: block;
  }

  .main-menu__items--movil-hide {
    display: none;
  }
}
```

```javascript
function toggleVisibilityMenu() {
  var itemsElements = document.getElementsByClassName("main-menu__items");
  var hamburgerElements = document.getElementsByClassName("main-menu__hamburger");

  if (itemsElements[0].className.indexOf("main-menu__items--movil-visible") >= 0) {
    itemsElements[0].className = " main-menu__items main-menu__items--movil-hide";
    hamburgerElements[0].innerHTML = "☰";
  } else {
    itemsElements[0].className = "main-menu__items main-menu__items--movil-visible";
    hamburgerElements[0].innerHTML = "Cerrar";
  }
}
```

<details class="card mb-2">
  <summary class="card-header question">¿Por qué en el ejemplo anterior nombro las clases de esta manera tan extraña (`main-menu__items`)?</summary>
  <div class="card-body" markdown="1">

Existe un sistema para nombrar clases CSS que busca mejorar la organización, mantenibilidad y escalabilidad del código. Es la llamada metodología BEM (Block, Element, Modifier):

| Concepto     | Significado                                                            | Ejemplo de clase                   |
| ------------ | ---------------------------------------------------------------------- | ---------------------------------- |
| **Block**    | Componente independiente que tiene significado propio.                 | `menu`, `card`, `form`             |
| **Element**  | Parte del bloque que no tiene sentido por sí sola. Se separa con `__`. | `menu__item`, `card__title`        |
| **Modifier** | Variación del bloque o elemento. Se separa con `--`.                   | `menu__item--active`, `card--dark` |

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Técnicas responsivas

Hemos visto varias formas de hacer las cosas responsivas. Veamos ahora una tabla en la que se explican las 4 formas posibles:

|            | Interno                                                                                                  | Externo                                                                                                      |
| ---------- | -------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------ |
| Fluido     | El propio componente decide como se hace responsivo y lo hace de forma fluida al tamaño del dispositivo. | El que usa el componente decide como se hace responsivo y lo hace de forma fluida al tamaño del dispositivo. |
| Escalonado | El propio componente decide como se hace responsivo y lo hace solo para diversos tamaños de pantalla     | El que usa el componente decide como se hace responsivo y lo hace solo para diversos tamaños de pantalla     |

El tipo Externo/Escalonado es el mas normal y es el que usan frameworks como Tailwind o Bootstrap.

{:.subsection}
### Interno/Fluido

Las tablas

```html
<h1 class="c-titulo">Hola mundo</h1>
```

```css
.c-titulo {
  font-size: 10vw
}
```

{:.subsection}
### Interno/Escalonado

Se usa en un menú responsivo con hamburguesa.

```html
<h1 class="c-titulo">Hola mundo</h1>
```

```css
.c-titulo {
    font-size: 40px;
}

@media (min-width: 768px) {
    .c-titulo {
        font-size: 55px;
    }
}
```

{:.subsection}
### Externo/Fluido

No lo vemos.

{:.subsection}
### Externo/Escalonado

Es el que usamos con `@tablet` o `@desktop` , etc.

```html
<p class="g--font-size-1  g--font-size-3@tablet">Hola mundo</p>
```

## Bibliografía

- <https://logongas.es/doku.php?id=clase:daw:diw:2eval:tema06>
- <https://kinsta.com/es/blog/diseno-de-paginas-web-sensibles/>
- <https://web.archive.org/web/20200415000746/https://developer.mozilla.org/es/docs/M%C3%B3vil/Viewport_meta_tag>
- <https://web.dev/articles/responsive-web-design-basics?hl=es#set-the-viewport>
- <https://github.com/alvaroadlf/HEAD/blob/master/README.md>
- <https://mamutlove.com/blog/funciones-min-max-clamp-en-css/>
- <https://nowecreative.com/nowezone/funcion-calc-css/>

En inglés:

- <https://css-tricks.com/snippets/html/responsive-meta-tag/>
- <https://www.sitepoint.com/css-viewport-units-quick-start/>
- <https://stackoverflow.com/questions/25225682/difference-between-width100-and-width100vw>
- <https://adrianroselli.com/2020/11/under-engineered-responsive-tables.html>
- <https://codepen.io/aardrian/pen/MWeRJWd>
- <https://dev.to/polypane/css-breakpoints-used-by-popular-css-frameworks-hl9>
- <https://gist.github.com/paultibbetts/7b726ae20914c11eb953fdfdf3ee34ed>
- <https://css-tricks.com/linearly-scale-font-size-with-css-clamp-based-on-the-viewport/>
- <https://www.webstoemp.com/blog/notes-on-using-css-grid-in-production/>
- <https://getbootstrap.com/docs/5.0/utilities/api/>

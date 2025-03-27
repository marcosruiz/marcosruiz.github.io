---
title: "Diseño web responsivo"
date: 2025-03-12 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/diseno-web-responsivo/
---

> Artículo en construcción.
{:.prompt-warning}

## Introducción

El diseño responsivo (o responsive design) es un enfoque de diseño web que busca que las páginas se adapten automáticamente al tamaño y las características del dispositivo desde el que se visualizan (computadoras, tablets, smartphones, etc.).

## Responsivo vs Adaptativo

Hacer un diseño responsivo es que la misma página se adapte a distintos tamaños de pantalla. Hacer un diseño adaptativo es hacer páginas distintas según el tamaño de la pantalla.

![Diseño adaptativo vs diseño responsivo](adaptativeVsResponsive.png)
_Diseño adaptativo vs diseño responsivo_

Ejemplo de diseño adaptativo es la página de AliExpress.

![Versión movil de AliExpress](aliexpressMobile.png)
_Versión movil de AliExpress_

![Versión de escritorio de AliExpress](aliexpressEscritorio.png)
_Versión de escritorio de AliExpress_

La ventaja de las webs adaptativas es que en la versión móvil solo se cargan las cosas que se necesitan para el movil además de que está hecha pensando en móvil. El inconveniente es que hay que desarrollar dos páginas.

## Viewport

Dentro del `head` del documento HTML podemos añadir la siguiente línea:

```html
<meta name="viewport" content="width=device-width, initial-scale=1">
```

Con esto se consigue que la página tenga el tamaño del dispositivo, ya que sino se pone , el dispositivo podría hacer que la página se haga mas grande y crear barras de desplazamiento.

## Unidades

### viewport

Podemos hacer ciertos tamaños que sean en función del tamaño de la pantalla. Para ello se usan las unidades como vw o vh que hacen referencia al tamaño de la pantalla.

- `vh` Es la altura de la ventana. Un valor de 1vh es igual al 1% del alto.
- `vw` Es el ancho de la ventana. Un valor de 1vw es igual al 1% del ancho.
- `vmin` Mínimo entre el ancho y el alto. Es la dimensión más pequeña de la ventana. Si el alto de la ventana gráfica es menor que el ancho, el valor de 1vmin será igual al 1% de la altura. De manera similar, si el ancho es menor que la altura, el valor de 1vmin será igual al 1% del ancho.
- `vmax` Máximo entre el ancho y el alto. Es la dimensión más grande de la ventana. Si el alto de la ventana gráfica es mayor que el ancho, el valor de 1vmin será igual al 1% de la altura. De manera similar, si el ancho es mayor que la altura, el valor de 1vmin será igual al 1% del ancho.

```css
.c-titulo {
    font-size: 10vw;
}
```

```html
<p class="c-titulo">Hola mundo</p> 
```

En el ejemplo anterior, el tamaño de la fuente se hace mas grande a medida que se hace mas ancha la ventana.

Podemos pensar que 100vw es similar a 100%, pero hay dos diferencias

- 100% hace referencia al tamaño de donde está el elemento donde estamos , no al tamaño de la ventana.
- 100% no incluye el tamaño de las barras de desplazamiento , mientras que 100vw si que lo hace.

Para ésto último a veces se hace lo siguiente:

```css
ejemplo {
   width: 100vw;
   height: 100vw;
   max-width: 100%;
}
```

También se pueden usar decimales con vw o vh

```css
.c-titulo {
    font-size: 3.14vw;
}
```

### rem

La unidad rem hace referencia al tamaño de fuente del HTML. El tamaño en píxeles se obtiene de multiplicar el valor de rem por el tamaño de la fuente de la página

```css
html {
   font-size:12px;
}
```

Otra forma de cambiar el font-size por defecto es configurar el tamaño de 1rem en el propio navegador. Lo suele hacer gente con diversidad visual. En chrome es en "Configuración --> Aspecto --> Personalizar fuentes"

Veamos ahora como se usa rem en bootstrap para los botones:

| Tamaño botón   | Tamaño de fuente | Padding horizontal | Padding vertical |
| -------------- | ---------------- | ------------------ | ---------------- |
| Normal         | 1rem             | 0.75rem            | 0.375rem         |
| Grande btn-lg  | 1.25rem          | 1rem               | 0.5rem           |
| Pequeño btn-sm | 0.875rem         | 0.5rem             | 0.25rem          |

Vamos ahora los mismo datos pero en px suponiendo que el tamaño de fuente es 16px.

| Tamaño botón   | Tamaño de fuente | Padding horizontal | Padding vertical |
| -------------- | ---------------- | ------------------ | ---------------- |
| Normal         | 16px             | 12px               | 6px              |
| Grande btn-lg  | 20px             | 16px               | 8px              |
| Pequeño btn-sm | 14px             | 8px                | 4px              |

Y por último veamos la relación que hay entre en padding y el tamaño de fuente en %

| Tamaño botón   | Padding horizontal respecto del tamaño de fuente | Padding vertical respecto del tamaño de fuente |
| -------------- | ------------------------------------------------ | ---------------------------------------------- |
| Normal         | 75%                                              | 37,5%                                          |
| Grande btn-lg  | 80%                                              | 40%                                            |
| Pequeño btn-sm | 57,142%                                          | 28,571%                                        |

Resulta que no hay una relación constante entre el tamaño de la fuente y el tamaño del padding.

Es decir para un tamaño normal el padding horizontal es el 75% del tamaño de la fuente pero en un botón grande (que el tamaño de fuente es más grande) el padding horizontal es el 80% del tamaño de la fuente y para terminar en un botón pequeño el padding horizontal es el 57% del tamaño de la fuente. ¿No debería ser constante el tamaño del padding respecto del tamaño de fuente? Por lo tanto si aumentamos el tamaño de fuente en el navegador , los padding no deberían aumentar proporcionalmente sino como vemos que lo hace bootstrap.

### em

La unidad em hace referencia al tamaño de fuente del elemento donde está. El tamaño en píxeles se obtiene de multiplicar el valor de em por el tamaño de la fuente de ese elemento.

## Cálculos en CSS

Podemos usar funciones en CSS para calcular valores.

### min()

Retorna el mínimo de los dos valores.

```css
.c-titulo {
    font-size: min(100px,10vw);
}
```

```html
<p class="c-titulo">Hola mundo</p> 
```

En el ejemplo el tamaño máximo de la fuente nunca será mayor que 100px por mucho que se haga grande la ventana.

### max()

Retorna el máximo de los dos valores.

```css
.c-titulo {
    font-size: max(40px,10vw);
}
```

```html
<p class="c-titulo">Hola mundo</p> 
```

En el ejemplo el tamaño mínimo de la fuente nunca será menor que 40px por mucho que se haga pequeña la ventana.

### clamp()

Retorna un valor pero sin ser menos que un mínimo ni mayor que un máximo

```css
.c-titulo {
    font-size: clamp(40px,10vw,100px);
}
```

```html
<p class="c-titulo">Hola mundo</p> 
```

En el ejemplo el tamaño mínimo de la fuente nunca será menos que 40px por mucho que se haga pequeña la ventana ni será mayor que 100px por mucho que se haga grande la ventana.

### calc()

Permite hacer cálculos en CSS

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
    font-size: clamp(40px,10vw - 10px,100px);
}
```

Dentro de `clamp` se pueden hacer cálculos directamente sin necesidad de usar `calc`.

Es obligatorio separar siempre las operaciones de suma y resta con espacios en blanco de sus operandos.

Por ejemplo, la siguiente expresión no es correcta:

```css
calc(50%-8px)
```

debiéndose corregir y quedando así:

```css
calc(50% - 8px).
```

Aunque los operadores * y / no necesitan espacio en blanco, se sugiere agregarlos por razones de consistencia.

```html
<p class="c-titulo">Hola mundo</p> 
```

## Media queries

Permiten tener un CSS distinto según el tamaño de la pantalla

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

> Véase como el CSS por defecto es para tamaños menores de 576px. Es lo que se llama Mobile First Design. Es decir que por defecto el CSS es para móviles y luego ya se añade CSS para otros tamaños. En el ejemplo siguen casi los tamaños que se usan en El sistema de Grid de Bootstrap.
{:.prompt-info}

## Arquitectura responsiva

Pasemos ahora a ver como poder hacer las cosas responsivas con una simple arquitectura.

```html
<p class="g--font-size-1  g--font-size-3@fulldesktop">Hola mundo</p>     
```

```css
.g--font-size-1 {
    font-size: 40px;
}
.g--font-size-2 {
    font-size: 50px;
}
.g--font-size-3 {
    font-size: 55px;
}
.g--font-size-4 {
    font-size: 70px;
}
  
@media (min-width: 576px) {
    .g--font-size-1\@tablet {
        font-size: 40px;
    }
    .g--font-size-2\@tablet {
        font-size: 50px;
    }
    .g--font-size-3\@tablet {
        font-size: 55px;
    }
    .g--font-size-4\@tablet {
        font-size: 70px;
    }
}
  
@media (min-width: 768px) {
    .g--font-size-1\@desktop {
        font-size: 40px;
    }
    .g--font-size-2\@desktop {
        font-size: 50px;
    }
    .g--font-size-3\@desktop {
        font-size: 55px;
    }
    .g--font-size-4\@desktop {
        font-size: 70px;
    }
}
  
@media (min-width: 992px) {
    .g--font-size-1\@fulldesktop {
        font-size: 40px;
    }
    .g--font-size-2\@fulldesktop {
        font-size: 50px;
    }
    .g--font-size-3\@fulldesktop {
        font-size: 55px;
    }
    .g--font-size-4\@fulldesktop {
        font-size: 70px;
    }
}
```

En el ejemplo por defecto el tamaño de la fuente será de `40px` pero en resoluciones mayores de `992px` será de `55px`.

Lo que hacemos es crear todas los modificadores globales o modificadores de bloques para las distintas resoluciones pero añadiendo el sufijo `@tablet` , `@desktop` o `@fulldesktop`. E indicando en el HTML que tamaño usar según la resolución de la pantalla.

## Breakpoints

Al crear la arquitectura responsiva es necesario indicar los pixeles de cada pantalla así como los tamaños. En los siguientes artículos se indica cuales se usan en diversos frameworks css.

### Bootstrap

| Nombre | Descripcion                                      | Ancho Mínimo |
| ------ | ------------------------------------------------ | ------------ |
| --     | Extra small devices (portrait phones)            | none         |
| sm     | Small devices (landscape phones)                 | 576px        |
| md     | Medium devices (tablet)                          | 768px        |
| lg     | Large devices (desktops)                         | 992px        |
| xl     | Extra large devices (large desktops)             | 1200px       |
| xxl    | Extra Extra large devices (extra large desktops) | 1400px       |

### Tailwind

| Nombre | Ancho Mínimo |
| ------ | ------------ |
| sm     | 640px        |
| md     | 768px        |
| lg     | 1024px       |
| xl     | 1280px       |

## Menu responsivo

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

## Conclusión

Hemos visto varias formas de hacer las cosas responsivas. Veamos ahora una tabla en la que se explican las 4 formas posibles:

TABLA

El tipo Externo/Escalonado es el mas normal y es el que usan frameworks como Tailwind o Bootstrap.

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

### Externo/Fluido

Se usa muy poco.

```html
<thead>
  <tr>
    <th class="c-table__head c-table__head--min-width-2 c-table__head--max-width-3">Author</th>
    <th class="c-table__head c-table__head--min-width-2 c-table__head--max-width-3 ">Title</th>
    <th class="c-table__head c-table__head--min-width-1 c-table__head--max-width-2">Year</th>
    <th class="c-table__head c-table__head--min-width-1 c-table__head--max-width-2">ISBN-13</th>
    <th class="c-table__head c-table__head--min-width-1 c-table__head--max-width-2">ISBN-10</th>
  </tr>
</thead>
```

### Externo/Escalonado

Es el que usamos con @tablet o @desktop , etc.

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
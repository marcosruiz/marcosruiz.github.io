---
title: "Tarea: Usabilidad y responsividad en la web"
date: 2025-04-01 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/tarea/
---

## Información sobre la tarea

La entrega será en formato ZIP con un PDF y un GIF o vídeo en MP4 por cada actividad que lo requiera. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

> 🔥 Te recomiendo que grabes los GIF o MP4 con la herramienta [Peek Screen Recorder](https://apps.microsoft.com/detail/xp8cd3d3q50ms2?hl=es-ES&gl=ES).
{:.prompt-info}

Ejemplo de entrega si mi usuario es `mruizg`:

```plaintext
mruizg_t07.zip
├───mruizg_a04.gif
├───mruizg_a05.gif
├───mruizg_a06.gif
├───mruizg_a07.gif
├───mruizg_a08.gif
├───mruizg_a09.gif
├───mruizg_a10.gif
├───mruizg_a11.gif
└───mruizg_t07.pdf
```

La tarea se calificará con una nota de APTO (10) o NO APTO (0).

Duración actividades obligatorias: 5 horas.

RA6. Desarrolla interfaces web amigables analizando y aplicando las pautas de usabilidad establecidas.

## Actividades

A continuación, se muestran las actividades a realizar.

{:.activity}
### Análisis heurístico

Encuentra 3 fallos de usabilidad distintos en 3 sitios web diferentes. Por cada fallo indica:

- La URL de la web.
- El principio de Jakob Nielsen o Ben Shneiderman que se está incumpliendo.
- Una descripción del problema.
- Plataformas donde ocurre el problema. Al menos probar con un navegador web y un navegador móvil.
- Una recomendación para solucionar el problema.
- Capturas del problema.

> Recuerda que puedes usar los diferentes checklist que hay en el artículo [Usabilidad en la Web](/posts/usabilidad-web).
{:.prompt-info}

{:.activity}
### Test A/B

Además de los métodos para analizar la usabilidad que hemos visto en el artículo [Usabilidad en la Web](/posts/usabilidad-web) existen otros. Investiga y explica **brevemente** en que consiste el Test A/B. Encuentra un **ejemplo real** de un Test A/B e incluye capturas.

{:.activity}
### Investiga sobre el SEO

Responde a las siguientes preguntas:

1. Explica una breve guía de que hay que tener en cuenta para obtener un buen SEO.
1. ¿Qué es el SEO black hat?
1. ¿Qué impacto tiene el uso adecuado de estándares en la optimización para motores de búsqueda (SEO)?

{:.activity}
### Viewport

Crea una página HTML con lo siguiente:

- 1 `div` cuadrado azul de tamaño `200px`
- 1 `div` cuadrado verde de tamaño `200px`
- 1 `div` cuadrado azul de tamaño `400px`
- 1 `div` cuadrado verde de tamaño `400px`
- Dentro cada cuadrado azul , añade otro `div` de color rojo con tamaño `20%`
- Dentro cada cuadrado verde , añade otro `div` de color rojo con tamaño `20vw`

Responde a las siguientes preguntas:

- ¿Qué diferencia hay entre usar `20%` y `20vw`?
- Cambia el ancho de la página y mira como de modifica el tamaño de los cuadrados. ¿Qué cuadrados han cambiado de tamaño? ¿Por qué?

> Incluye un vídeo en formato GIF o MP4 donde se vea la fecha y hora.
{:.prompt-info}

{:.activity}
### px, rem, em

Crea una página HTML con 3 divs cuadrados de 200 pixeles de lado cada uno, de colores:

- Rojo
- Verde
- Azul (Que tenga Tamaño de fuente `20px`)

De forma que:

- El cuadrado Rojo se indique su tamaño usando `px`.
- El cuadrado Verde se indique su tamaño usando `rem`.
- El cuadrado Azul se indique su tamaño usando `em`.

Añade ahora el siguiente CSS:

```css
html {
  font-size:24px;
}
```

Responde a las siguientes preguntas:

- ¿Qué cuadrado ha cambiado de tamaño tras cambiar el `font-size`?

> Incluye un vídeo en formato GIF o MP4 donde se vea la fecha y hora.
{:.prompt-info}

{:.activity}
### (Voluntaria) Cuadrados de colores

Crea una página HTML con lo siguiente:

- Un `div` cuadrado de color rojo de forma que como mínimo tenga `100px` pero a medida que el ancho de la pantalla se hace más grande, se haga también más grande el cuadrado.
- Un `div` cuadrado de color verde de forma que como máximo tenga `800px` pero a medida que el ancho de la pantalla se hace más pequeña, se haga también más pequeño el cuadrado.
- Un `div` cuadrado de color azul de forma que como máximo tenga `800px`, de tamaño mínimo tenga `100px`, pero a medida que el ancho de la pantalla se hace más pequeña, se hagan también más pequeño el cuadrado y si se hace más grande el ancho de la pantalla, también se haga más grande el cuadrado.
- Un `div` cuadrado de color rosa de forma que su tamaño siempre sea la mitad de la pantalla más `20px`.
- Un `div` cuadrado de color amarillo de forma que su tamaño siempre sea la mitad de la pantalla más `20px` pero no pueda ser menor que `100px` ni mayor que `600px`.

> Incluye un vídeo en formato GIF o MP4.
{:.prompt-info}

{:.activity}
### Imágenes

Haz una página HTML de forma que se cargue una imagen distinta según el siguiente ancho de la pantalla:

- menos de `500px`
- entre `500px` y `1000px`
- más de `1000px`

> Incluye un vídeo en formato GIF o MP4 donde se vea la fecha y hora.
{:.prompt-info}

{:.activity}
### Menu lateral oculto

Dado el típico layout de cabecera, menú lateral, cuerpo y pie. Haz una página HTML pero de forma que si el tamaño de la pantalla es menor que `500px` no se vea el menú lateral.

> Incluye un vídeo en formato GIF o MP4.
{:.prompt-info}

{:.activity}
### (Voluntaria) Color de fondo responsivo

Crea una clase css llamada `.g--color-fondo-responsivo` de forma que cambia el color de fondo si el ancho del dispositivo (o ventana) tiene:

- Menos de `576px` sea de color rojo.
- Entre `576px` y `768px` sea de color verde.
- Entre `768px` y `992px` sea de color azul.
- Más de `992px` sea de color naranja.

> Incluye un vídeo en formato GIF o MP4 donde se vea la fecha y hora.
{:.prompt-info}

{:.activity}
### (Voluntaria) Color de fondo responsivo II

Crea las siguientes clases css:

```css
.g--bg-color-red {
  background-color:#FF0000;
}
.g--bg-color-green {
  background-color:#00FF00;
}
.g--bg-color-blue {
  background-color:#0000FF;
}
.g--bg-color-orange {
  background-color:#FFA500;
}
```

Y modifícalas con el sufijo `@tablet`, `@desktop` y `@fulldesktop` y repite el ejercicio anterior pero en vez de usar la clase `.g--color-fondo-responsivo` uses las clases que acabas de crear.

> Incluye un vídeo en formato GIF o MP4 donde se vea la fecha y hora.
{:.prompt-info}

{:.activity}
### 20 cards

Dado el siguiente código de una `card`:

```html
<div class="card">
  <img src="https://placehold.co/200x100" alt="Imagen de ejemplo" class="card__image">
  <div class="card__content">
    <h2 class="card__title">Título de la tarjeta</h2>
    <p class="card__description">Esta es una breve descripción de la tarjeta. Puedes añadir más texto según lo
      necesites.</p>
    <div class="card__actions">
      <button class="card__button card__button--primary">Comprar</button>
    </div>
  </div>
</div>
```

```css
.card {
  width: 100%;
  max-width: 300px;
  background-color: #fff;
  border-radius: 12px;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
  overflow: hidden;
  font-family: sans-serif;
  margin: 20px auto;
}

.card__image {
  width: 100%;
  height: auto;
  display: block;
}

.card__content {
  padding: 16px;
}

.card__title {
  font-size: 1.5rem;
  margin: 0 0 8px;
}

.card__description {
  font-size: 1rem;
  color: #555;
  margin-bottom: 16px;
}

.card__actions {
  display: flex;
  gap: 10px;
  justify-content: flex-end;
}

.card__button {
  padding: 8px 16px;
  border: none;
  border-radius: 6px;
  cursor: pointer;
  font-weight: bold;
}

.card__button--primary {
  background-color: #2e6930;
  color: white;
}

.card__button:hover {
  opacity: 0.9;
}
```

Haz que haya una lista responsive de 20 cards.

> Puedes utilizar la técnica que quieras pero solo se permite usar HTML y CSS puro.
{:.prompt-info}

> Incluye un vídeo en formato GIF o MP4 donde se vea la fecha y hora.
{:.prompt-info}

## Dame tu feedback...

<div class="strawpoll-embed" id="strawpoll_eNg6vX3J3gA" style="height: 644px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_eNg6vX3J3gA" src="https://strawpoll.com/embed/eNg6vX3J3gA" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

<div class="strawpoll-embed" id="strawpoll_61gD9Ro5vZw" style="height: 3012px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_61gD9Ro5vZw" src="https://strawpoll.com/embed/61gD9Ro5vZw" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

## Bibliografía

- <https://logongas.es/doku.php?id=clase:daw:diw:1eval:tema01>

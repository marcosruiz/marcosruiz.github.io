---
title: "Animaciones en la web"
date: 2025-02-14 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/animaciones-web/
---

{:.section}
## Introducción

En el artículo de [Imágenes en la web](/posts/imagenes-web/) vimos que el formato GIF era un formato empleado en las imágenes que tienen entre 2 y 256 colores y que uno de sus usos principales seguía siendo el mostrar imágenes animadas en las páginas Web aunque se solía emplear en la creación de los iconos que acompañan a los enlaces y los logotipos y, en general, en aquellas imágenes con grandes áreas de color sólido.

Tenemos varias formas de añadir animación a la Web:

- **Formatos de archivo**: que permiten añadir animaciones. Las dos principales son:
  - GIF (Graphics Interchange Format): es una secuencia de imágenes (frames) reproducidas en bucle.
  - SVG (Scalable Vector Graphics): del tipo gráfico vectorial.
- **Transiciones y animaciones de CSS**: Ideal para animaciones leves y efectos de UI, como transiciones de botones, menús desplegables y efectos de desplazamiento. Utilizado generalmente para simular la animación de los botones, enlaces, elementos de formulario, etcétera.
- **APIs nativas de HTML5** integradas en el navegador como:
  - **Canvas API**: permite dibujar píxeles manualmente. Es una API nativa de HTML5 or lo que es una funcionalidad integrada en los navegadores.
  - **WebGL**: API basada en OpenGL ES 2.0 que permite renderizar gráficos 3D y 2D. Es una funcionalidad nativa del navegador.
- **Librerías de JavaScript** como:
  - **GSAP (GreenSock)**, **Anime.js** y **Three.js** para animaciones avanzadas.
  - **LottieFiles** permite importar animaciones exportadas en formato JSON de Adobe After Effects.

Lee el artículo [¿Qué son las animaciones?](https://lenguajecss.com/animaciones/bases/que-son-animaciones/).

{:.section}
## Tipos de animación

En general, existen dos tipos de animaciones:

- La animación **fotograma a fotograma** está pensada para realizar animaciones en las que cada fotograma tiene una ligera variación respecto al fotograma anterior. Este es el caso de los dibujos animados o cuando representamos el movimiento de un personaje.
- La animación por **interpolación de fotogramas** está pensada para la realización de animaciones sencillas: un balón girando, un objeto desplazándose, un cambio de forma en un objeto, un cambio de color. Este tipo de animación se caracteriza por necesitar solamente dos fotogramas clave distintos, uno inicial y otro final, separados entre sí por una serie de fotograma intermedios. La interpolación es la que se va a encargar de crear todos los fotogramas intermedios que haya entre los dos fotogramas clave.
  - **Interpolación de forma**: Es aquella que nos permite transformar un objeto en otro (un cuadrado en un círculo, o algo más complejo).
  - **Interpolación de movimiento**: Es aquella que nos permite cambiar un objeto de posición, de tamaño y/o rotarlo.

Lee el artículo [Tipos de animaciones](https://lenguajecss.com/animaciones/bases/tipos-animaciones/).

{:.section}
## Elementos de una animación

Cuando hablamos de animaciones podemos mencionar 3 elementos:

- **Transformaciones**: permiten modificar la apariencia de un elemento aplicando efectos como moverlo, rotarlo, escalarlo (agrandarlo o reducirlo) o distorsionarlo.
- **Transiciones**:
  - Permiten suavizar los cambios de estado (color, tamaño, posición, etc.).
  - Requieren un evento.
  - Solo permite cambiar entre dos estados (inicio → fin).
- **Animaciones**:
  - Permiten animaciones más complejas sin necesidad de interacción.
  - Se pueden iniciar automáticamente.
  - Puede incluir varios estados intermedios.
  - Se pueden repetir infinitamente.

<details class="card mb-2">
  <summary class="card-header question">¿Qué diferencia hay entre transiciones y animaciones?</summary>
  <div class="card-body" markdown="1">

Lee el artículo [Transiciones vs. Animaciones](https://cssanimation.rocks/es/transition-vs-animation/).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Veamos algunos ejemplos de animaciones usando solo CSS:

- <https://codepen.io/YusukeNakaya/full/YLPVER>
- <https://codepen.io/Wujek_Greg/pen/KRXYpg>
- <https://codepen.io/YusukeNakaya/pen/rJxevm>
- <https://codepen.io/miocene/pen/WJRXVg>
- <https://codepen.io/miocene/pen/NWRWQpX>

<details class="card mb-2">
  <summary class="card-header question">¿Cuándo hay que usar animaciones?</summary>
  <div class="card-body" markdown="1">

Lo mas importante de las animaciones es usarlas cuando tengan sentido y no solo como una moda o capricho. Es decir hay que usarlas cuando aportan algo al usuario.

(Voluntario) Lee el artículo [Ground Rules for Web Animations](https://css-tricks.com/ground-rules-for-web-animations/) si quieres saber más.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Transiciones vs animaciones

<iframe width="560" height="315" src="https://www.youtube.com/embed/sX5hzEMMQAI?si=NPLwISRM1XV-WJnJ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Para qué se de una transición CSS es necesario un trigger?
1. ¿Qué cuatro propiedades podemos definir en las transiciones CSS?
1. ¿Qué palabra clave se usa para crear animaciones en CSS?
1. ¿Para qué se de una animación CSS es necesario un trigger?
1. ¿Qué web usa para ejecutar pruebas de diseño?
1. ¿Se puede ejecutar una animación de manera infinita?
1. ¿Podemos añadir varias animaciones al mismo tiempo utilizando una sola propiedad de CSS?
1. Nombra un consejo de accesibilidad de la WCAG.
1. ¿Qué web nombra con la que puedes calcular la luminancia de un color?
1. ¿Qué son las timing-functions?
1. ¿Qué opciones hay en las timing-functions?
1. ¿Se pueden crear timing-functions personalizadas?
1. ¿El truco para hacer una animación perfecta es ensayo y error?
1. Según Noe Medina, ¿es recomendable que se muevan elementos de una web sin que haya una razón?
1. Desde la consola de desarrollo de Google Chrome, ¿podemos los tiempos de las animaciones de manera gráfica?
1. Según Noe Medina, ¿qué es más recomendable para animar una web? ¿CSS o JS?

<details class="card mb-2">
  <summary class="card-header question">¿Qué es la luminancia relativa?</summary>
  <div class="card-body" markdown="1">

La luminancia relativa del color es una medida de cuán brillante parece un color en comparación con un blanco de referencia, tomando en cuenta la forma en que el ojo humano percibe la luz. Se basa en la definición fotométrica de luminancia, pero con valores normalizados entre 0 (negro absoluto) y 1 o 100 (blanco absoluto).

Se calcula ponderando la cantidad de luz emitida o reflejada por un color según la función de luminosidad de la CIE (Comisión Internacional de Iluminación), que refleja la sensibilidad del ojo humano a diferentes longitudes de onda.

En la siguiente web <https://contrastchecker.online/color-relative-luminance-calculator> puedes obtener este valor de cualquier color.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Transformaciones

Las transformaciones es simplemente usar una nueva propiedad de CSS llamada `transform`. Esta propiedad es como cualquier otra de CSS y no tiene nada que ver con las animaciones.

Esta propiedad CSS permite hacer lo siguiente sobre un elemento:

- Moverlo
- Escalarlo (Hacerlo mas grande o mas pequeño)
- Rotarlo
- Distorsionarlo: Es como torce el elemento tanto en el eje X como en el eje Y.

El listado de opciones es el siguiente:

- `translate(x,y)`
- `translateX(n)`
- `translateY(n)`
- `scale(x,y)`
- `scaleX(n)`
- `scaleY(n)`
- `rotate(angle)`
- `skew(x-angle,y-angle)`
- `skewX(angle)`
- `skewY(angle)`

{:.subsection}
### Ejemplos de transformaciones

Mover el elemento 50px en el eje X y 100px en el eje Y

```css
div {
  transform: translate(50px, 100px);
}
```

Rotar el elemento 20 grados

```css
div {
  transform: rotate(20deg);
}
```

Hacer el doble de grande el elemento en el eje X y el tripe en el eje Y.

```css
div {
  transform: scale(2, 3);
}
```

Hacer la mitad de grande el elemento tanto eje X como en el eje Y.

```css
div {
  transform: scale(0.5, 0.5);
}
```

Distorsiona el elemento 20 grados en el eje X y 10 grados en el eje Y.

```css
div {
  transform: skew(20deg, 10deg);
}
```

También se pueden aplicar varias transformaciones a la vez:

```css
div {
  transform: translate(50px, 100px) rotate(20deg);
}
```

Las transformaciones que hemos visto con en 2 dimensiones. CSS también permite transformaciones en 3D.

El listado de opciones es el siguiente:

- `translate3d(x,y,z)`
- `translateX(x)`
- `translateY(y)`
- `translateZ(z)`
- `scale3d(x,y,z)`
- `scaleX(x)`
- `scaleY(y)`
- `scaleZ(z)`
- `rotate3d(x,y,z,angle)`
- `rotateX(angle)`
- `rotateY(angle)`
- `rotateZ(angle)`
- `perspective(n)`

> (Voluntario) Recuerda que tienes en W3Schools el artículo [CSS 2D Transforms](https://www.w3schools.com/css/css3_2dtransforms.asp) y [CSS 3D Transforms](https://www.w3schools.com/css/css3_3dtransforms.asp) a tu disposición en un inglés fácil de entender. También tienes el artículo de [mdn web docs sobre la propiedad transform](https://developer.mozilla.org/es/docs/Web/CSS/transform).
{:.prompt-info}

{:.subsection}
### Origen de la transformación

Existe la propiedad transform-origin que permite especificar el punto desde el que se ejecuta la transformación. Por defecto es el centro del elemento.

Esto es muy útil por ejemplo para rotaciones para que no rote respecto al centro de la imagen.

Rotar respecto al centro de la imagen (por defecto):

```css
.cuadrado--rotate-centro {
  transform: rotate(360deg);
  transform-origin: 50% 50%;
}
Rotar respecto a la esquina superior izquierda:


.cuadrado--rotate-esquina-superior-izquierda {
  transform: rotate(360deg);
  transform-origin: 0 0;
}
```

Ejemplo completo con transiciones:

```html
<!DOCTYPE html>
<html>

<head>
  <title>transform-origin</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <style>

  </style>

  <style>
    .l-center {
      display: grid;
      place-items: center;
      width: 100%;
      height: 50vw;
    }

    .c-cuadrado {
      border: 1px solid red;
      background: lightpink;
      width: 200px;
      height: 200px;
      transition: transform 4s;
      transform-origin: 0 0;
    }

    .c-cuadrado:hover {
      transform: rotate(360deg);
    }
  </style>
</head>

<body>
  <div class="l-center">
    <div class="c-cuadrado">Hola mundo</div>
  </div>
</body>

</html>
```

{:.section}
## Transiciones

Las transiciones se usan sobre todo para hacer cambios en los eventos de `:hover`, `:focus`, etc.

Lee el artículo [¿Qué son las transiciones?](https://lenguajecss.com/animaciones/transiciones/que-son/), el artículo [Transiciones CSS](https://lenguajecss.com/animaciones/transiciones/transition/) y el artículo [La regla @starting-style](https://lenguajecss.com/animaciones/transiciones/starting-style/).

Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/jdGpehoFoWA?si=Kp3OBZF-eQz1pOjp" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. ¿Qué hace la propiedad `transition-property`?
1. ¿Qué hace la propiedad `transition-duration`?
1. ¿Podemos utilizar cualquier unidad de tiempo en `transition-duration`?
1. ¿Cuál es su valor por defecto de `transition-duration`?
1. ¿Existe la propiedad `transition-delay`?
1. ¿Cuál es la propiedad de atajo para definir una transición?
1. ¿Es recomendable usar la propiedad de atajo para las transiciones a la hora de escribir código?
1. ¿Se pueden hacer transiciones múltiples únicamente usando una propiedad `transition`?
1. ¿Podemos hacer que la transición de entrada a diferente tiempo que la transición de salida?
1. ¿La propiedad del color es transicionable/animable?
1. ¿Es un gradiente transicionable/animable?
1. ¿Para qué es útil usar un delay en el caso de las transiciones?

> (Voluntario) Mas información en [W3Schools CSS3 Transitions](https://www.w3schools.com/css/css3_transitions.asp).
{:.prompt-info}

Veamos un ejemplo con `:hover` y después le vamos a añadir la transición para mejorarlo visualmente.

```html
<!DOCTYPE html>
<html>
    <head>
      <style>
        .c-button {
          padding: 10px 20px 10px 20px;
          background-color: #ffffff;
          border: 1px solid #bbd4f7;
          border-radius: 4px;
          cursor: pointer;
        }

        .c-button:hover {
          background-color: #deebfc;
          box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        }
      </style>
    </head>
    <body>
      <button class="c-button">Aceptar</button>
    </body>
</html>
```

En el ejemplo que acabo de poner, al pasar el cursor sobre el botón se añade una sombra y cambia el color de fondo.

Sin embargo el efecto queda mal ya que es muy brusco pasar de:

- `background-color: #ffffff;` → `background-color: #deebfc;`
- `box-shadow: none;` → `box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);`

Para evitar ésto, usamos en CSS la transición de la siguiente forma:

```plaintext
transition: background-color 1s, box-shadow 1s;
```

Con la línea anterior se hace que el cambio del color y añadir la sombra se haga con un transición que durará 1 segundo. Ahora el ejemplo quedaría así:

```html
<!DOCTYPE html>
<html>

<head>
  <style>
    .c-button {
      padding: 10px 20px 10px 20px;
      background-color: #ffffff;
      border: 1px solid #bbd4f7;
      border-radius: 4px;
      cursor: pointer;
      transition: background-color 1s, box-shadow 1s;
    }

    .c-button:hover {
      background-color: #deebfc;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    }
  </style>
</head>

<body>
  <button class="c-button">Aceptar</button>
</body>

</html>
```

Podemos aplicar las transiciones a cualquier propiedad CSS que tenga un rango de valores, como al color, a la sombra o como podíais imaginar a las transiciones.

Por lo tanto, siempre que usemos `:hover`, `:focus`... lo normal es añadir una `transition` con las propiedades que hemos incluido en el `:hover` , `:focus`, etc.

La forma concreta de la propiedad `transition` es:

```plaintext
transition: <propiedadCSS> <duración> <timing-function> <retardo>
```

- `<propiedadCSS>`: La propiedad CSS a la que se le aplica la transición.
- `<duración>`: Duración en segundos de la transición
- `<timing-function>`: La velocidad de la transición. Sus valores son:
  - `linear`: Velocidad constante.
  - `ease`
  - `ease-in`: Aceleración constante.
  - `ease-out`
  - `ease-in-out`
  - `steps(pasos)`
  - `cubic-bezier(n,n,n,n)`
- `<retardo>`: Cuanto tiempo en segundos tarda en empezar la transición. Por ejemplo en hover, lo correcto es hacer que no empiece la animación enseguida ya pasando rápido el curso se empieza a hacer y queda feo si no nos detenemos. Por eso hay que poner un retardo de al menos 0.3s

> (Voluntario) Más información de la timing-function en [W3Schools CSS transition-timing-function Property](https://www.w3schools.com/cssref/css3_pr_transition-timing-function.php) y en [mdn web docs transition-timing-function](https://developer.mozilla.org/en-US/docs/Web/CSS/transition-timing-function).
{:.prompt-info}

Por ejemplo:

```css
transition: width 3s ease-in-out 2s
```

Se cambiará el ancho. Durará 3 segundos. Empezará y terminará mas lentamente. Empezará con 2 segundos de retardo.

Como pasa mucho en las propiedades CSS se puede poner también como varias propiedades independientes:

```css
transition-property: width;
transition-duration: 3s;
transition-timing-function: ease-in-out;
transition-delay: 2s;
```

Lee el artículo [¿Qué son las funciones de tiempo?](https://lenguajecss.com/animaciones/timing-functions/que-son/).

Preguntas:

1. ¿Existe la propiedad `transition-timing-function`?
1. ¿Cuál es la timing-function que tiene un ritmo lento al principio, rápido al final?
1. ¿Cuál es la timing-function que se usa por defecto por el navegador?

Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/hiRIjRf2QD8?si=0itxR4Uv9w6bzvIk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Preguntas:

1. ¿Podemos hacer una transición de tiempo personalizada?
1. ¿Para que sirve la función `cubic-bezier()` de CSS?
1. ¿Podemos dar valores fuera del rango de [0,1] en la función `cubic-bezier()`?
1. ¿Para qué sirven las funciones de salto?
1. ¿Se pueden hacer GIFS con animaciones CSS?

{:.section}
## Animaciones

Las animaciones son similares a las transiciones pero más potentes además que suelen usarse desde JavaScript.

Lee el artículo [¿Qué son las animaciones?](https://lenguajecss.com/animaciones/animaciones/que-son/), [Animaciones CSS](https://lenguajecss.com/animaciones/animaciones/animaciones/).

Preguntas sobre los artículos anteriores:

1. ¿Qué dos cosas son necesarias definir para crear una animación?
1. ¿Para qué es útil usar un delay en el caso de las transiciones?
1. ¿Deberíamos usar el tipo de nombrado camelCase para definir el nombre de una animación en CSS?
1. Si escribimos `change-color 4 normal forwards running;`, ¿`4` hace referencia a la propiedad `animation-iteration-count`, `animation-duration` o `animation-delay`?

Lee el artículo [La regla @keyframes](https://lenguajecss.com/animaciones/animaciones/keyframes/).

Preguntas:

1. ¿Para qué sirve la regla `@keyframes`?
1. ¿Qué es un fotograma clave cuando hablamos de animaciones CSS?
1. En un `@keyframe`, ¿es equivalente usar `to` a `100%` como time-selector?
1. ¿Basta únicamente con definir la animación mediante `@keyframes` para que funcione una animación?
1. ¿Se puede obviar el `from` de un `@keyframe` en algún caso?
1. ¿Cuántos fotogramas clave hay en el siguiente código? ¿Y cuantos fotogramas?

```css
@keyframes change-color {
  0% { background: red; }
  50% {
    background: yellow;
    width: 400px;
  }
  100% { background: green; }
}

.element {
  background: grey;
  width: 150px;
  height: 150px;
  animation: change-color 2s 0s infinite;
}
```

Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/8Jh2K3tq5n0?si=9c1t6LLK7qai5d0p" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Preguntas sobre el vídeo:

1. Dentro de un `@keyframe`, ¿es lo mismo usar `from` que `0%`?
1. ¿Es necesario poner un `from` dentro de un `@keyframe` si tengo definido el color en el elemento?
1. ¿Para qué sirve la propiedad `animation-fill-mode: forwards`?
1. ¿Qué hace la propiedad `animation-iteration-count: infinite`?
1. ¿Qué hace la propiedad `animation-direction: alternate-reverse`?
1. ¿Cuándo es interesante usar la propiedad `animation-play-state`?
1. ¿Cuál es la propiedad de atajo para definir una animación?
1. ¿Cuándo es útil usar un `animation-delay` > 0 según Manz?
1. ¿Podemos definir varias animaciones con una única propiedad `animation`?

> (Voluntario) Recuerda que tienes a tu disposición la web de W3Schools con el artículo [CSS3 Animations](https://www.w3schools.com/css/css3_animations.asp) para consulta.
{:.prompt-info}

Las animaciones constan de dos apartados distintos:

- La definición de la propia animación con `@keyframes`.
- Los parámetros de la animación con la propiedad `animation`.

Veamos un ejemplo:

```html
<!DOCTYPE html>
<html>

<head>
  <style>
    .c-cuadrado {
      width: 100px;
      height: 100px;
      background-color: #bbd4f7;
      border-radius: 4px;
    }

    .c-cuadrado--girar {
      animation-name: animacion-girar;
      animation-duration: 3s;
    }


    @keyframes animacion-girar {
      0% {
        transform: rotate(0deg);
        background-color: #bbd4f7;
      }

      50% {
        transform: rotate(360deg);
        background-color: #1C4673;
      }

      100% {
        transform: rotate(0deg);
        background-color: #bbd4f7;
      }

    }
  </style>
</head>

<body>
  <div style="padding:200px">
    <div id="cuadrado1" class="c-cuadrado c-cuadrado--girar">Hola</div>
  </div>
</body>

</html>
```

Dentro de `@keyframes` definimos cada uno de los "fotogramas" que queremos que tenga la animación.

Luego dentro de la clase `c-cuadrado--girar` indicamos que animación aplicar y sus parámetros. Las propiedades que hay son:

- `animation-name`: Nombre de la animación a realizar. Es el nombre del @keyframes.
- `animation-duration`: Duración en segundos.
- `animation-timing-function`: La velocidad
- `linear`: Velocidad constante.
- `ease`
- `ease-in`: Aceleración constante.
- `ease-out`
- `ease-in-out`
- `steps(pasos)`
- `cubic-bezier(n,n,n,n)`: Para generar los valores se puede usar la siguiente página: cubic-bezier
- `animation-delay`: Retraso en segundos en empezar la animación
- `animation-iteration-count`: Nº de repeticiones de la animación. Se puede usar infinite para que nunca acabe.
- `animation-direction`: Si va desde el principio al final o al revés, etc.
- `normal`: Empieza en el 0% y avanza hacía el 100%
- `reverse`: Empieza en el 100% y avanza hacía el 0%
- `alternate`: Empieza en el 0% y avanza hacía el 100% y la 2º vez lo hace del 100% al 0% y así sucesivamente.
- `alternate-reverse`: Empieza en el 100% y avanza hacía el 0% y la 2º vez lo hace del 0% al 100% y así sucesivamente.
- `animation-fill-mode`: Que CSS se aplica cuando acaba.
- `none`: La animación antes de empezar o despues de acabar no tiene ningún estilo definido en la animación.
- `forwards`: Al acabar la animación se queda como en el último Frame.
- `backwards`: Antes de empezar la animación (por si hay un delay), ya está como en el primer Frame.
- `both`: Es unir forwards y backwards.
- `animation-play-state`: Como empieza la animación. Mas información en How to Play and Pause CSS Animations with CSS Custom Properties
- `running`: Empieza ejecutándose
- `paused`: Empieza pausada
- `animation`: La unión de todas las anteriores

{:.subsection}
### Animaciones con JavaScript

Para volver a ejecutar la animación desde JavaScript se hace de la siguiente forma:

```javascript
function animar() {
  var cuadradoElement=document.getElementById("cuadrado1");
  cuadradoElement.classList.remove("c-cuadrado--girar");
  setTimeout(function() {
    cuadradoElement.classList.add("c-cuadrado--girar");
  },10);
}
```

```html
<button onclick="animar()">Animar</button>
```

Es decir que hay que quitar la clase CSS que tiene la animación y volver a ponerla. El problema es que si la quitas y la vuelves a poner, el navegador no se entera. Así que hay que hacer el truco de quitarla, esperar 10 ms con un timeout y añadir la clase.

> (Voluntario) Tienes el artículo [Window setTimeout() de W3Schools](https://www.w3schools.com/jsref/met_win_settimeout.asp) a tu disposición para consulta.
{:.prompt-info}

{:.subsubsection}
#### Movimiento de una campana

En este apartado podéis ver el movimiento real que haría una campana. Para hacer el movimiento real se han usado las fórmulas físicas que describen el movimiento de dicha campana. Está con rozamiento y sin él.

- [campana.html](/assets/img/animaciones-web/campana.html): Ejemplo de movimiento de la campana
- [calculos_movimiento_campana.xlsx](/assets/img/animaciones-web/calculos_movimiento_campana.xlsx): Excel con el cálculo de los movimiento siguiendo la fórmula física

{:.question}
¿Se puede integrar audio sincronizado con, por ejemplo, la animación de una campana? ¿Cómo?

{:.question}
¿Se puede añadir una animación a un video con CSS?

{:.question}
¿Se puede parar una animación?

{:.section}
## Animaciones simétricas

La animación que hemos visto, vuelve al mismo sitio. Si queremos una animación que haga eso, no es necesario definir la ida y la vuelta. Es tan sencillo como solo definir la ida y decir que vuelva.

Eso se consigue de la siguiente forma:

```css
.c-cuadrado--girar {
  animation-name: animacion-girar;
  animation-duration: 1.5s;
  animation-iteration-count: 2;
  animation-direction: alternate;
}

@keyframes animacion-girar {
  0% {
    transform: rotate(0deg);
    background-color: #bbd4f7;
  }

  100% {
    transform: rotate(360deg);
    background-color: #1C4673;
  }

}
```

Los cambios que hemos hecho son los siguientes:

- Hacemos que la animación dure la mitad: `animation-duration: 1.5s;`.
- Pero hacemos que la haga 2 veces: `animation-iteration-count: 2;`.
- Por último hacemos que la segunda vez la haga al revés: `animation-direction: alternate;`.

Y con éste truco siempre tenemos una animación de ida y vuelta.

{:.question}
¿Qué es una animación simétrica?

{:.section}
## (Voluntario) Juegos CSS

- [CSS Battle](https://cssbattle.dev/)
- [100 DAYS CSS CHALLENGE](https://100dayscss.com/)

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://logongas.es/doku.php?id=clase:daw:diw:2eval:tema08>
- <https://css-tricks.com/ground-rules-for-web-animations/>
- <https://uxdesign.cc/the-ultimate-guide-to-proper-use-of-animation-in-ux-10bd98614fa9>
- <https://www.youtube.com/watch?v=MXMlTOnZSvo>
- <https://www.smashingmagazine.com/2011/09/the-guide-to-css-animation-principles-and-examples/>
- <https://www.kirupa.com/html5/css3_animations_vs_transitions.htm>
- <https://contrastchecker.online/color-relative-luminance-calculator>
- <https://lenguajecss.com/animaciones/>

animation-timing-function:

- <https://easingwizard.com/>
- <https://cubic-bezier.com/>
- <https://tympanus.net/codrops/css_reference/timing-function_value/>
- <https://matthewlein.com/tools/ceaser>
- <https://easings.net/>

Animaciones CSS:

- <https://css-tricks.com/css-animation-libraries/>
- <https://animxyz.com/>
- <https://animate.style/>

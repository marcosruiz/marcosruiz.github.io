---
title: "Animaciones en la web"
date: 2024-11-18 9:00:00 +0100
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

## Transiciones vs animaciones

<iframe width="560" height="315" src="https://www.youtube.com/embed/sX5hzEMMQAI?si=NPLwISRM1XV-WJnJ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Lee el artículo [Transiciones vs. Animaciones](https://cssanimation.rocks/es/transition-vs-animation/).

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
            width:200px;
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
        <div class="l-center" >
          <div class="c-cuadrado">Hola mundo</div>
        </div>
  </body>
</html>
```

## Transiciones

Las transiciones se usan sobre todo para hacer cambios en los eventos de :

- `:hover`
- `:focus`
- `Etc.`

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

En el ejemplo que acabo de poner, al pasar el cursos sobre el botón se añade una sombra y cambia el color de fondo.

Sin embargo el efecto queda mal ya que es muy brusco pasar de:

- `background-color: #ffffff;` ⇒ `background-color: #deebfc;`
- `box-shadow: none;` ⇒ `box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);`

Para evitar ésto, usamos en CSS la transición de la siguiente forma:

```css
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

Podemos aplicar las transiciones a cualquier propiedad CSS que tenga un rango de valores , como al color, a la sombra o como podíais imaginar a las transiciones.

Por lo tanto , siempre que usemos `:hover` , `:focus` , etc, lo normal es añadir una `transition:` con las propiedades que hemos incluido en el `:hover` , `:focus`, etc.

La forma concreta de la propiedad `transition` es:

```plaintext
transition: propiedadCSS duracion timing-function retardo
```

- Propiedad CSS: La propiedad CSS a la que se le aplica la transición.
- Duración: Duración en segundos de la transición
- Timing-function: La velocidad de la transición. Sus valores son:
  - `linear`: Velocidad constante.
  - `ease`
  - `ease-in`: Aceleración constante.
  - `ease-out`
  - `ease-in-out`
  - `steps(pasos)`
  - `cubic-bezier(n,n,n,n)`
- Retardo: Cuanto tiempo en segundos tarda en empezar la transición. Por ejemplo en hover, lo correcto es hacer que no empiece la animación enseguida ya pasando rápido el curso se empieza a hacer y queda feo si no nos detenemos. Por eso hay que poner un retardo de al menos 0.3s

> (Voluntario) Más información de la timing-function en [W3Schools CSS transition-timing-function Property](https://www.w3schools.com/cssref/css3_pr_transition-timing-function.php) y en [mdn web docs transition-timing-function](https://developer.mozilla.org/en-US/docs/Web/CSS/transition-timing-function).
{:.prompt-info}

Por ejemplo:

```css
transition: width 3s ease-in-out 2s
```

Se cambiará el ancho . Durará 3 segundos. Empezará y terminará mas lentamente . Empezará con 2 segundos de retardo.

Como pasa mucho en las propiedades CSS se puede poner también como varias propiedades independientes:

```css
transition-property:width;
transition-duration:3s;
transition-timing-function:ease-in-out;
transition-delay:2s;
```

## Animaciones

Las animaciones son similares a las transiciones pero mas potentes además que suelen usarse desde JavaScript.

(Voluntario) Recuerda que tienes a tu disposición la web de W3Schools con el artículo [CSS3 Animations](https://www.w3schools.com/css/css3_animations.asp) para consulta.

Las animaciones constan de dos apartados distintos.

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

### JavaScript

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

Es decir que hay que quitar la clase CSS que tiene la animación y volver a ponerla. El problema es que si la quitas y la vuelves a poner , el navegador no se entera. Así que hay que hacer el truco de quitarla , esperar 10 ms con un timeout y añadir la clase.

> (Voluntario) Tienes el artículo [Window setTimeout() de W3Schools](https://www.w3schools.com/jsref/met_win_settimeout.asp) a tu disposición para consulta.
{:.prompt-info}

#### Movimiento de una campana

En este apartado podéis ver el movimiento real que haría una campana. Para hacer el movimiento real se han usado las fórmulas físicas que describen el movimiento de dicha campana. Está con rozamiento y sin él.

- [campana.html](/assets/img/animaciones-web/campana.html): Ejemplo de movimiento de la campana
- [calculos_movimiento_campana.xlsx](/assets/img/animaciones-web/calculos_movimiento_campana.xlsx): Excel con el cálculo de los movimiento siguiendo la fórmula física

## Animaciones simétricas

La animación que hemos visto , vuelve al mismo sitio. Si queremos una animación que haga eso , no es necesario definir la ida y la vuelta. Es tan sencillo como solo definir la ida y decir que vuelva.

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

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://logongas.es/doku.php?id=clase:daw:diw:2eval:tema08>
- <https://css-tricks.com/ground-rules-for-web-animations/>
- <https://uxdesign.cc/the-ultimate-guide-to-proper-use-of-animation-in-ux-10bd98614fa9>
- <https://www.youtube.com/watch?v=MXMlTOnZSvo>
- <https://www.smashingmagazine.com/2011/09/the-guide-to-css-animation-principles-and-examples/>
- <https://www.kirupa.com/html5/css3_animations_vs_transitions.htm>

animation-timing-function:

- <https://tympanus.net/codrops/css_reference/timing-function_value/>
- <https://cubic-bezier.com/#.17,.67,.83,.67>
- <https://matthewlein.com/tools/ceaser>
- <https://easings.net/>

Animaciones CSS:

- <https://css-tricks.com/css-animation-libraries/>
- <https://animxyz.com/>
- <https://animate.style/>
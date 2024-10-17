---
title: "Hojas de estilo CSS"
date: 2024-09-05 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/hojas-estilo-css/
---

## Introducción

Las hojas de estilo en cascada (CSS, Cascading Style Sheets) son un estándar W3C que define la presentación de los documentos Web, es decir, el modo en el que se muestra un documento en pantalla o se suministra al usuario, ya sea por el monitor, en la pantalla del teléfono móvil o leído por un lector de pantalla. Lo más importante es que con CSS se mantienen las instrucciones de presentación separadas del contenido del documento HTML.

(Voluntario) Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/3yM5uXp-T_0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Ventajas de usar CSS

- Mayor control en el diseño de las páginas: Se puede llegar a diseños fuera del alcance de HTML.
- Menos trabajo: Se puede cambiar el estilo de todo un sitio con la modificación de un único archivo.
- Documentos más pequeños: Las etiquetas `<font>` y la gran cantidad de tablas empleadas para dar una buena apariencia a los sitios web desaparecen ahora, por lo que se ahorra código en la configuración de la presentación del sitio.
- Documentos mucho más estructurados: Los documentos bien estructurados son accesibles a más dispositivos y usuarios.
- El HTML de presentación está en vías de desaparecer: Todos los elementos y atributos de presentación de las especificaciones HTML fueron declarados obsoletos por el W3C.
- Tiene buen soporte: En este momento, casi todos los navegadores soportan casi toda la especificación CSS1, CSS2 y CSS3.

## ¿Cómo funciona CSS?

1. Hay que comenzar con un documento HTML. En teoría, el documento tendrá una estructura lógica y un significado semántico a través de los elementos HTML adecuados. Con HTML se crea la estructura de la página web.
1. Luego hay que escribir las reglas de estilo para definir el aspecto ideal de todos los elementos. Las reglas seleccionan el elemento en cuestión por su nombre y, a continuación, listan las propiedades (fuente, color, etc.) y los valores que se le van a aplicar.
1. Por último, hay que vincular los estilos al documento. Las reglas de estilo pueden reunirse en un documento independiente y aplicarse a todo el sitio, o pueden aparecer en la cabecera y aplicarse solo a ese documento.

<details class="card mb-2">
  <summary class="card-header question" markdown="1">

¿Qué crees que hace el siguiente código?

```css
body {
  background-color: lightblue;
}

h1 {
  color: white;
  text-align: center;
}

p {
  font-family: verdana;
  font-size: 20px;
}
```

  </summary>
  <div class="card-body" markdown="1">

`color: white;` pondrá el texto en blanco.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Estructura de las reglas CSS

Todas las **reglas** CSS siguen misma estructura:

```plaintext
<selector> {
  <propiedad> : <valor>;
  <propiedad> : <valor>;
  <propiedad> : <valor>;
  ...
}
```

El conjunto de `<propiedad> : <valor>;` también se llama **declaración**.

Hay que destacar que cuando a una propiedad como `font-family` se le asignan dos posibles valores estos van separados por comas (`,`) y a la hora de establecer uno de ellos intentará siempre hacerlo de izquierda a derecha.

## TRES maneras de añadir estilos CSS a un HTML

Existen TRES maneras de añadir CSS al HTML:

- Como atributo
- Usando la etiqueta style
- Usando un fichero .css externo

### Como atributo (estilo en línea)

Se puede añadir información de estilo a un elemento concreto empleando el atributo style en la etiqueta del elemento. Por ejemplo:

```html
<body style="background-color:lightblue;">
```

Aunque este es un uso perfectamente válido de la información de estilo, los estilos en línea contaminan el documento con información de presentación.

Debe emplearse con moderación, solo ocasionalmente, para ignorar reglas de nivel más alto.

### Usando la etiqueta style (estilos incrustados)

Un método más compacto para añadir hojas de estilo es incrustar un bloque de estilo en la parte superior (en la cabecera o `head`) del documento HTML empleando el elemento `style`. Por ejemplo:

```html
<style>
body {
  background-color: lightblue;
}
</style>
```

### Usando un fichero .css externo (estilos importados o externos)

Es el modo más potente de utilizar CSS.

Se reúnen todas las reglas de estilo en un documento de texto independiente y se crean vínculos a ese documento desde todas las páginas de un sitio.

De este modo, se pueden hacer cambios en el estilo de un modo homogéneo en todo el sitio editando la información del estilo en un único documento.

Para hacerlo se emplea con el elemento link en el documento HTML. Por ejemplo:

```html
<head>
  <link rel="stylesheet" href="mystyle.css">
</head>
```
{: file="index.html" }

```css
body {
  background-color: lightblue;
}
```
{: file="mystyle.css" }

<details class="card mb-2">
  <summary class="card-header question">NO uses @import</summary>
  <div class="card-body" markdown="1">

Se puede importar una hoja de estilo con la sentencia `@import` de CSS pero es más recomendable utilizar la etiqueta `link`. Esta sentencia puede usarse en un archivo CSS o dentro del elemento style. Un ejemplo de este último método sería:

```html
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN">
<html>
<head>
    <style type=“text/css” media=“screen”>
        @import url("dirección web o local del archivo css"); 
        /* aquí podrían ir otros @import u otras reglas de estilo */
    </style>
    <title>Mi primera página web con estilo</title>
</head>
/* Aquí iría el body */
</html>
```

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Cómo se escribe un comentario en CSS?</summary>
  <div class="card-body" markdown="1">

Así:

```css
/* Este es un comentario */
```

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## La cascada de CSS

La "cascada", de las hojas de estilo en cascada, se refiere a lo que ocurre si varias fuentes de información de estilo quieren dar formato al mismo elemento de una página. Cuando un navegador encuentra un elemento para el cual hay varias declaraciones de estilo, las ordena de acuerdo al origen de la hoja de estilo, la especificidad de los selectores y el orden de la regla para poder determinar cuál aplicar.

Los navegadores otorgan un peso distinto a las hojas de estilo que, ordenadas de menor a mayor peso, son:

1. Hojas de estilo del navegador: Son los que tiene el navegador por defecto.
1. Hojas de estilo del usuario: Son las que se pueden aplicar desde una extensión de navegador como Stylus.
1. Hojas de estilo del desarrollador.
1. Hojas de estilo del usuario con el uso de `!important`.

Además de este orden, existe otra jerarquía de pesos que se aplican a las hojas de estilo creadas por la persona que ha diseñado la página web. Es importante entender esta jerarquía y tener en cuenta que las reglas de estilo que están al final de la lista sobreescribiran a las primeras. La siguiente lista, que como la anterior está ordenada de menor a mayor peso, muestra esta otra jerarquía:

1. Hojas de estilo externas vinculadas (empleando el elemento link en la cabecera del documento).
1. Hojas de estilo externas importadas (empleando el elemento `@import` dentro del elemento `style` en la cabecera del documento).
1. Hojas de estilo incrustadas (empleando el elemento `style` en la cabecera del documento).
1. Estilos en línea (empleando el atributo `style` en la etiqueta del elemento).
1. Declaraciones de estilo marcadas como `!important`.

Hasta ahora se tuvieron en cuenta las distintas fuentes de la información del estilo. Pero aún puede existir algún conflicto a nivel de reglas. Por esa razón, "la cascada" continúa a nivel de reglas. Lo verás mejor con el el siguiente ejemplo, que podría estar en una hoja de estilo externa o incrustada. En él se muestran dos reglas que hacen referencia al elemento `strong`. Por ejemplo:

```css
strong {color: red;} 
h1 strong {color: blue;}
```

En el ejemplo anterior, todo el texto del documento HTML marcado con la etiqueta `strong` aparecerá en color rojo. Sin embargo, si el texto marcado con la etiqueta `strong` aparece dentro de una cabecera de primer nivel (`h1`), su color será azul. Esto ocurre porque un elemento en un contexto determinado es más específico que en un contexto general y, por lo tanto, tiene más peso. Debes tener en claro que, cuanto más específico sea el selector se le dará más peso para ignorar las declaraciones en conflicto.

Cuando una hoja de estilo contiene varias reglas en conflicto de igual peso, sólo se tendrá en cuenta la que está en último lugar. En el siguiente ejemplo, todas las cabeceras de primer nivel del documento serían rojas porque se impone siempre la última regla. Por ejemplo:

```css
h1 {color: green;} 
h1 {color: blue;} 
h1 {color: red;}
```

<details class="card mb-2">
  <summary class="card-header question">¿Qué ocurrirá si añadimos varios estilos al mismo elemento?</summary>
  <div class="card-body" markdown="1">

Se irán procesando en cascada sobreescribiendose unos a otros. De manera muy simplificada ordenamos de mayor prioridad a menor prioridad de la siguiente manera:

1. Importancia: Usando la palabra clave `!important`.
1. Origen: Visto anteriormente.
1. Especificidad:
   1. Estilos en linea.
   1. Seleccionando por ID.
   1. Seleccionando por clase.
   1. Seleccionando por elemento (o pseudo elementos).
   1. Seleccionando con el selector universal.
1. Orden de aparición: El último prevalece.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Tipos de elementos: Bloque y en línea

En CSS, la noción de "elemento de bloque" y "en línea" es puramente de presentación. Un elemento de bloque de CSS siempre genera saltos de línea, antes y después de él, mientras que los elementos en línea de CSS no lo hacen, aparecen en el flujo de la línea y sólo pasarán a otra línea si no tienen espacio.

En HTML, los párrafos (`p`), cabeceras (como `h1`), listas (`ol`, `ul`, `dl`) y contenedores (`div`) son los elementos de bloque más comunes, mientras que, el texto enfatizado (`em`), las anclas (`a`) y los elementos span son los elementos en línea más comunes.

Con CSS podrás indicarle al navegador cómo quieres que se vea en el documento empleando para ello los atributos block e inline de la propiedad display, independientemente de que un elemento sea de bloque o en línea.

(Voluntario) Lee el artículo [La propiedad display](https://lenguajecss.com/css/maquetacion-y-colocacion/propiedad-display/).

<details class="card mb-2">
  <summary class="card-header question" markdown="1">
  
¿Qué diferencia hay entre los elementos `block` y los elementos `inline`?
  
  </summary>
  <div class="card-body" markdown="1">

Por defecto, cada elemento HTML tiene un tipo de representación concreto. Como norma general, los elementos que se utilizan dentro de un párrafo, son de tipo `inline`, mientras que los que se utilizan para agrupar, son de tipo `block`. La propiedad`display` de CSS permite modificar el comportamiento de un elemento HTML.

- `block`: Se apila en vertical. Ocupa todo el ancho disponible de su etiqueta contenedora.
- `inline`: Se coloca en horizontal. Se adapta al ancho de su contenido. Ignora width o height.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿De qué tipo es el elemento `p`? ¿Bloque o en línea?

{:.question}
¿De qué tipo es el elemento `em`? ¿Bloque o en línea?

## Modelo de cajas

Lee el artículo [Modelo de cajas CSS](/posts/modelo-cajas-css).

## Selectores

Lee el artículo [Selectores en CSS](/posts/selectores-css).

## Unidades de medida en CSS

| Código |   Unidad    |                                      Descripción                                       | Uso en la Web |     |     |
| :----: | :---------: | :------------------------------------------------------------------------------------: | :-----------: | --- | --- |
|   mm   | Milímetros  |                                   Medidad métricas.                                    |      NO       |     |     |
|   cm   | Centímetros |                                                                                        |      NO       |     |     |
|   in   |  Pulgadas   |                                                                                        |      NO       |     |     |
|   pt   |    Punto    |               Unidad tradicional de medida equivalente a 1/72 pulgadas.                |      NO       |     |     |
|   pc   |    Pica     |         Unidad tradicional de medida equivalente a 12 puntos (o 1/6 pulgadas).         |      NO       |     |     |
|   px   |    Pixel    |            Las unidades de píxel son relativas a la resolución del monitor.            |      SI       |     |     |
|   em   |     Em      | Medida relativa respecto al tamaño de la letra que por defecto mostraría el navegador. |      SI       |     |     |
|   ex   |     Ex      |         Unidad de medida relativa que es la altura de la letra minúscula "x".          |      SI       |     |     |
|   %    | Porcentaje  |     El valor porcentual se refiere al tamaño por defecto aplicado en el navegador.     |      SI       |     |     |

La mejor solución de trabajo es configurar un tamaño por defecto en forma de porcentaje, y para cada elemento de la página configurar el tamaño con la unidad `em`.

Con:

```css
body { font-size: 15px; }
```

El tamaño del texto variará según la resolución del monitor.

Con:

```css
body { font-size: 200%; }
```

Se configura el tamaño del texto con respecto al tamaño configurado en el navegador. Si un navegador visualiza, por defecto, fuentes de 14 píxeles, un valor del 200% corresponde a 28 píxeles.

Con:

```css
h1 { font-size: 2.5em; }
```

Establece el tamaño del texto de las cabeceras de primer nivel en un tamaño dos veces y medio mayor que el tamaño de la fuente mostrada por defecto en el navegador.

(Voluntario) Lee [Unidades CSS](https://lenguajecss.com/css/modelo-de-cajas/unidades-css/).

## Posicionamiento

Lee el artículo [Posicionamiento en CSS](/posts/posicionamiento-css).

## CSS con tablas y listas

Lee el artículo [CSS con tablas y listas](/posts/css-tablas-listas)

## Webs de referencia

- <https://lenguajecss.com/css/>
- <https://www.w3schools.com/css/default.asp>
- <https://cssreference.io/>
- <https://developer.mozilla.org/es/docs/Learn/CSS>

## Chuletas CSS

- CSS en español (2 caras): <https://i.emezeta.com/weblog/css3-cheatsheet/css3-cheatsheet-emezeta.pdf>
- Grid y Flex en español (2 caras): <https://www.paradigmadigital.com/assets/cms/cheat_sheet_flexbox_6fb013edd1.pdf>
- CSS en inglés (6 caras): <https://i.emezeta.com/weblog/css3-cheatsheet/css3-cheatsheet-2017-emezeta.pdf>
- CSS en inglés (10 caras): <https://learnxinyminutes.com/docs/css/>
- CSS en inglés (2 caras): <https://cheatography.com/davechild/cheat-sheets/css2/>

## (Voluntario) Juegos CSS

- [CSS Battle](https://cssbattle.dev/)
- [100 DAYS CSS CHALLENGE](https://100dayscss.com/)

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://lenguajecss.com/css/>
- <https://www.maestrosdelweb.com/cssintaxis/>
- <https://www.w3.org/wiki/CSS_/_Selectores_CSS>
- <https://uniwebsidad.com/libros/css/capitulo-13/recomendaciones-generales-sobre-css?from=librosweb>

---
title: "Selectores en CSS"
date: 2024-10-12 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/hojas-estilo-css/
---

{:.section}
## Introducción

Existen tres maneras básicas de referenciar elementos HTML desde CSS:

- Por etiqueta o elemento
- Por clase
- Por identificador

Aunque hay otras maneras más avanzadas de referenciar elementos HTML:

- Mediante combinators
- Por atributo
- Mediante pseudoselectores. Existen dos:
  - Pseudoclases
  - Pseudoelementos

{:.section}
## Selector de etiqueta o elemento

Son aquellos que se aplican a un elemento (etiqueta) del lenguaje HTML. Por ejemplo:

```css
p {
  font-family: verdana;
  font-size: 20px;
}
```

```html
<p>Esto es un párrafo con estilo</p>
```

O:

```css
h1 {color: blue;}
h2 {color: blue;}
p {color: blue;}
```

Si te fijas en los ejemplos, verás que se está definiendo la misma propiedad (color) en todos los elementos e incluso se está asignando el mismo valor (blue). El ejemplo siguiente muestra como se puede escribir una única regla aplicada a varios selectores a la vez:

```css
h1, h2, p {color: blue;}
```

Existe un selector de elementos "universal" representado por el asterisco (*). El ejemplo siguiente muestra una regla que pondrá en gris todos los elementos del documento que no tengan especificado otro color.

```css
* {color: grey;}
```

{:.section}
## Selector de clase

En HTML se emplea el atributo `class` para identificar distintos elementos como parte de un grupo conceptual. Así, los elementos de una clase pueden modificarse con una única regla de estilo.

En el siguiente ejemplo se muestra como dos elementos distintos se clasifican de la misma forma mediante la asignación del valor "especial" al atributo `class`.

```css
.bienvenida {
  color: white;
  text-align: center;
}
```

```html
<p class="bienvenida">Bienvenida con estilo</p>
```

También se puede hacer que un elemento pertenezca a más de una clase separando sus nombres de clase con espacios. En el siguiente ejemplo el párrafo pertenece a dos clases: "textocabecera" y "especial".

```css
<p class="textocabecera especial">Hoy tenemos grandes rebajas.</p>
```

```html
<h1 class="especial">¡Atención!</h1>
<p class="especial">Hoy tenemos grandes rebajas.</p>
```

Para escribir una regla de estilo que se aplique a todos los elementos de una determinada clase hay que escribir un punto seguido del nombre de la clase. Por ejemplo: .especial {color: green;}

El siguiente ejemplo muestra la forma de lograr que todos los elementos de la clase "especial" tengan un color verde a excepción de las cabeceras de primer nivel que tienen que ser rojas.

```css
.especial {color: green;}
h1.especial{color: red;}
```

<details class="card mb-2">
  <summary class="card-header question">¿Qué hago si quiero añadir dos clases al mismo elemento?</summary>
  <div class="card-body" markdown="1">

Los separo con un espacio.

<!-- Comentario para que no se descuajeringue la cosa -->

</div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué hago si quiero añadir el mismo estilo a varios elementos?</summary>
  <div class="card-body" markdown="1">

Puedo usar la coma.

<!-- Comentario para que no se descuajeringue la cosa -->

</div>
</details>

{:.section}
## Selector de identificador

Los elementos HTML disponen de un atributo llamado identificador (id), que tiene como finalidad identificar al de manera excluyente. De este modo, CSS u otro lenguaje podrá hacer referencia a él y distinguirlo del resto de los elementos del documento.

Se recomienda que el valor del `id` sea un nombre que caracterice o clarifique, de forma breve y esquemática al elemento y que, además, sea fácilmente reconocible por el programador. Se utilizan con frecuencia para identificar las secciones principales de las páginas: contenido, cabecera, pie, etcétera.

Para escribir una regla de estilo que se aplique a un determinado identificador hay que escribir el símbolo de la almohadilla (`#`) seguido del nombre del identificador. El ejemplo siguiente muestra algunas formas de establecer el tamaño de la fuente en 14 píxeles al elemento p identificado como "textocabecera" del ejemplo anterior:

```css
#bienvenida {
  color: black;
  text-align: center;
}
```

```html
<p id="bienvenida">Bienvenida con estilo</p>
```

Otro ejemplo:

```css
p#textocabecera {font-size: 14px;}
#textocabecera {font-size: 14px;}
```

```html
<p id="textocabecera">Texto de cabecera</p>
```

Con el primera regla indicamos que se aplique el estilo a un párrafo cuyo identificador sea "textocabacera" pero, como el id es único en cada documento, realmente basta con la segunda forma para decir lo mismo, porque no va a haber otro elemento `<p>` o diferente de `<p>` que tenga ese mismo identificador.

<details class="card mb-2">
  <summary class="card-header question">¿Pueden dos etiquetas HTML tener el mismo id?</summary>
  <div class="card-body" markdown="1">

Los identificadores deben ser únicos para identificar de manera unequívoca el elemento. Si tenemos varios elementos que necesitan un tratamiento similar, emplearemos el atributo `class`.

<!-- Comentario para que no se descuajeringue la cosa -->

</div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué tipos de selectores hay?</summary>
  <div class="card-body" markdown="1">

Los básicos son los de:

- Etiqueta
- Clase
- Identificador

Pero hay más, ya que podemos usar los combinators, las pseudoclases, los pseudoelementos y selectores por atributo.

<!-- Comentario para que no se descuajeringue la cosa -->

</div>
</details>

{:.section}
## (Voluntario) Selector de atributo

<details class="card mb-2">
  <summary class="card-header question">¿Puedo seleccionar diferentes elementos que compartan un atributo?</summary>
  <div class="card-body" markdown="1">

Si. Es el llamado selector por atributo que está explicado en el artículo [Atributos CSS](https://lenguajecss.com/css/selectores/atributos/).

<!-- Comentario para que no se descuajeringue la cosa -->

</div>
</details>

<details class="card mb-2">
  <summary class="card-header question" markdown="1">

¿Qué diferencia hay entre el selector de atributo `[attribute~="value"]` y el  selector `[attribute*="value"]`?

</summary>
  <div class="card-body" markdown="1">

- `[attribute*="value"]` indica que el atributo `atribute` contiene el texto `value`.
- `[attribute~="value"]` nos permitiría seleccionar los elementos HTML que tengan un atributo con una lista de palabras separadas por espacios, donde una de ellas es el texto que hemos escrito a continuación. Se trata de una versión más restrictiva del comparador `*=`.

Lee el artículo [Atributos CSS](https://lenguajecss.com/css/selectores/atributos/) si quieres saber más.

<!-- Comentario para que no se descuajeringue la cosa -->

</div>
</details>

{:.section}
## Combinators

Al margen de la selección "básica" de elementos a través de CSS, que suele realizarse mediante clases e IDs, existe un amplio abanico de métodos para seleccionar elementos dependiendo de la estructura del documento HTML denominados combinadores CSS:

| Nombre                     | Símbolo | Ejemplo           | Significado                                        |
| -------------------------- | ------- | ----------------- | -------------------------------------------------- |
| Agrupación de selectores   | `,`     | `p, a, div { }`   | Se aplican estilos a varios elementos.             |
| Selector descendiente      | Espacio | `#page div { }`   | Se aplican estilos a elementos dentro de otros.    |
| Selector hijo              | `>`     | `#page > div { }` | Se aplican estilos a elementos hijos directos.     |
| Selector hermano adyacente | `+`     | `div + div { }`   | Se aplican estilos a elementos que siguen a otros. |
| Selector hermano general   | `~`     | `div ~ div { }`   | Se aplican estilos a elementos al mismo nivel.     |
| Selector universal         | `*`     | `#page * { }`     | Se aplican estilos a todos los elementos.          |

{:.section}
## Pseudoselectores

Si queremos aplicar reglas de estilo a elementos especiales como: los vínculos visitados, la primera línea de un párrafo o su primera letra, emplearemos los pseudoselectores.

Hay dos tipos de pseudoelectores: pseudoclases y pseudoelementos.

{:.subsection}
### Pseudoclases

Clasifican a los elementos basándose en características que van más allá de su nombre, atributos o contenido. La mayoría de las pseudoclases afectan a los elementos ancla (`a`), pudiendo definir un estilo diferente en función del comportamiento del enlace: si todavía no ha sido visitado (`:link`), si ya lo ha sido (`:visited`), mientras el ratón pasa por encima (`:hover`) o justo cuando se pulsa el ratón sobre él (`:active`).

Para emplear una pseudoclase se escribe la misma a continuación del selector separándola de éste por el símbolo de dos puntos (`:`). El siguiente ejemplo muestra cómo se distinguirían los cuatro estados posibles de un enlace mediante colores diferentes:

```css
a:link {color: red;}
a:visited {color: blue;}
a:hover {color: fuchsia;}
a:active {color: maroon;}
```

Con el empleo de estas pseudoclases podemos quitar el subrayado de los hiperenlaces y hacer que aparezca sólo cuando pasamos el puntero por encima. Por ejemplo siguiente muestra el empleo de la propiedad text-decoration para conseguir dicho objetivo:

```css
a:link {color: red; text-decoration: none;}
a:visited {color: blue; text-decoration: none;}
a:hover {color: red; text-decoration: underline;}
```

Debes tener en cuenta que las pseudoclases ancla deben aparecer siempre en un determinado orden. Este orden es: `:link`, `:visited`, `:hover` y `:active`.

Existen otras pseudoclases, que se emplean menos:

`:focus` hace referencia a los elementos que tienen el foco, como ocurre, por ejemplo, en los elementos de un formulario. Un ejemplo sería:

```css
input:focus {background-color: yellow;}
```

`:first-child` hace referencia el primer hijo de un elemento padre. En el siguiente ejemplo se aplica el estilo al primer elemento de una lista desordenada:

```css
ul li:first-child {font-weight: bold;}
```

`:lang` (idioma) hace referencia al idioma en el que está un determinado elemento. En el siguiente ejemplo se aplica el estilo a cualquier párrafo que esté escrito en inglés:

```css
p:lang(en) {color:red}
```

(Voluntario) Lee el artículo [Pseudoclases CSS](https://lenguajecss.com/css/selectores/pseudoclases/).

{:.subsection}
### Pseudoelementos

Estos pseudoelementos suelen ser partes de un elemento ya existente, como puede ser su primera línea (`:first-line`) o su primera letra (`:first-letter`), aunque también nos permite hacer referencia a elementos sin concretar en la estructura del documento porque dependen de la estructura del documento (`:before` y `:after`). Por ejemplo:

```css
p:first-line {letter-spacing: 6pt;} /* añadimos espacio extra a la primera línea del texto de cada párrafo */
p.definicion:first-letter {font-size: 300%; color: red;} /* modificamos el estilo (tamaño y color) de la primera letra de los párrafos pertenecientes a la clase "definicion" */
p.incompleto:after { content: " continuará ..."; } /* añadimos el texto " continuará ..." al final de cada párrafo perteneciente a la clase "incompleto" */
```

> La única manera de aprender a programar e programando por lo que te recomiendo que pruebes todos los tipos de selectores en un proyecto propio.
> {:.prompt-info}

(Voluntario) Lee el artículo [Pseudoelementos CSS](https://lenguajecss.com/css/selectores/pseudoelementos/)

{:.question}
¿Qué diferencia hay entre una pseudoclase y un pseudoelemento?

{:.section}
## La palabra clave !important

`!important` se utiliza para dar prioridad a ciertas reglas. Cualquier definición de estilo que vaya acompañada de un !important tendrá prioridad sobre cualquier otra.

Como ya sabes, cuando tenemos una propiedad aplicada dos veces, el navegador hará caso a la última. En el ejemplo que se muestra a continuación está claro que se le asignarán 1200 píxeles al ancho del elemento identificado con el `id="principal"`.

```css
#principal {
  width: 800 px;
  width: 1200px; 
}
```

Sin embargo, en el siguiente ejemplo se muestra como dando prioridad a la primera declaración con la palabra !important, podemos tener ese elemento con un ancho de 800 píxeles.

```css
#principal {
  width: 800px !important;
  width: 1200px;  
}
```

Con esto de los selectores descendentes, hijos y adyacentes, se puede dar el caso de que, sin querer, estemos aplicando un estilo que no queremos a un elemento porque se ve indirectamente afectado por alguna de las reglas y no sabemos cuál. Por ejemplo: sale un párrafo en color rojo y no nos acordamos dónde lo configuramos porque realmente no tenemos ninguna regla que diga `p {color:red}`. En ese caso, y para no descerebrarnos buscando dónde está el fallo, si sabemos que los párrafos de texto emplean la letra de color negro, crearíamos la regla `p { color: green !important; }` ¡y solucionado!

> El uso de `!important` en CSS es algo que debe hacerse con cuidado, ya que aunque puede ser útil en ciertos casos, también puede generar problemas a largo plazo ya que rompe la cascada de CSS y hace más complicado el mantenimiento del código CSS.
{:.prompt-warning}

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://lenguajecss.com/css/>

---
title: "Hojas de estilo CSS"
date: 2024-09-05 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/hojas-estilo-css/
---

> Artículo en construcción.
{:.prompt-warning}

## Introducción

Las hojas de estilo en cascada (CSS, Cascading Style Sheets) son un estándar W3C que define la presentación de los documentos Web, es decir, el modo en el que se muestra un documento en pantalla o se suministra al usuario, ya sea por el monitor, en la pantalla del teléfono móvil o leído por un lector de pantalla. Lo más importante es que con CSS se mantienen las instrucciones de presentación separadas del contenido del documento HTML.

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

¿Qué creés que hace el siguiente código?

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

Todas las reglas CSS siguen misma estructura:

```plaintext
<selector> {
  <propiedad> : <valor>;
  <propiedad> : <valor>;
  <propiedad> : <valor>;
  ...
}
```

El conjunto de `<propiedad> : <valor>;` también se llama declaración.

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

1. Hojas de estilo del navegador.
1. Hojas de estilo del lector.
1. Hojas de estilo de la persona que ha diseñado la página web.
1. Declaraciones de estilo `!important` del lector.

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
1. Origen: No es necesario conocerlo este curso.
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

## Modelo de cajas CSS

El modelo de cajas es un concepto fundamental para comprender el funcionamiento de las hojas de estilo. Aquí podrás ver una introducción básica a este modelo. De acuerdo con este modelo, todos los elementos de una página web generan una caja rectangular alrededor llamada "caja del elemento".

En estas cajas se pueden configurar propiedades como bordes, márgenes y fondos (entre otras). Las cajas también se pueden emplear para posicionar los elementos y diseñar la página.

Las cajas de elementos, tal y como muestra la imagen, están hechas de cuatro componentes principales:

![alt text](modelo-de-cajas-1.png)
_Modelo de cajas CSS_

- **Contenido** (`content`), en azul, es la parte interior del elemento, excluyendo el relleno.
- **Relleno** (`padding`), en verde, es el espacio que rodea al contenido.
- **Margen** (`margin`), en naranja, es el espacio que rodea al borde, la parte más externa del elemento.
- **Borde** (`border`), en negro, es el límite que separa el interior del exterior del elemento.

Hay algunas características fundamentales del modelo de cajas que vale la pena destacar:

- El relleno, los bordes y los márgenes son opcionales, por lo que, si ajustas a cero sus valores se eliminarán de la caja.
- Cualquier color o imagen que apliques de fondo al elemento se extenderá por el relleno.
- Los bordes se generan con propiedades de estilo que especifican su estilo (por ejemplo: sólido), grosor y color. Cuando el borde tiene huecos, el color o imagen de fondo aparecerá a través de esos huecos.
- Los márgenes siempre son transparentes (el color del elemento padre se verá a través de ellos).
- Cuando definas el largo de un elemento estás definiendo el largo del área de contenido (los largos de relleno, de borde y de márgenes se sumarían a esta cantidad).
- Puedes cambiar el estilo de los lados superior, derecho, inferior e izquierdo de una caja de un elemento por separado.

Lee [Modelo de cajas](https://lenguajecss.com/css/modelo-de-cajas/que-es/)

### Contenido

Podemos definir el tamaño del contenido de la siguiente manera:

```css
div {width:100px; height:200px; }
```

```css

```

### Relleno

Podemos definir el relleno. El orden de los valores son top (arriba), right (derecha), bottom (debajo) e left (izquierda), siempre en el sentido de las agujas del reloj y comenzando en las 12. Es fácil de recordar.

Establece un relleno para todos los elementos `div`:

```css
div {padding: 3px 20px 3px 20px;} 
```

Al omitir un valor, asume que el valor del relleno a la izquierda es el mismo que el de la derecha:

```css
div {padding: 3px 20px 3px; }
```

Al omitir dos valores, asume que el primer valor corresponde al relleno por encima y por debajo del área de contenido y, el segundo valor corresponde al relleno a la derecha y a la izquierda:

```css
div {padding: 3px 20px; }
```

Al omitir tres valores, asume que ese valor es el mismo para todos.

```css
div {padding: 3px; }
```

Otras características interesantes del relleno son:

- El valor del relleno se sumará al de width ya definido en el elemento.
- Su color es el mismo al del área de contenido.
- El relleno nunca se "colapsa". Esto lo entenderás cuando veas los márgenes que sí se colapsan.

{:.question}
¿El `background` afecta al padding?

### Margen

Los márgenes top y bottom de dos elementos que van seguidos se "colapsan". Es decir, se asume como margen entre ambos elementos el mayor de ellos. El siguiente ejemplo muestra lo que que ocurre cuando tenemos dos elementos un h1 y un h2 colocados uno a continuación del otro.

```css
h1 {margin: 10px 20px 10px 20px; }
h2 {margin: 20px; }
```

En el primer caso el margen superior e inferior es de 10px. En el segundo caso es de 20px. El espacio resultante entre los dos elementos será de 20px.

Por el contrario, si fuesen dos elementos colocados "uno al lado del otro" (como dos elementos `span`), deberíamos tener en cuenta que los márgenes `right` y `left` no se colapsan, sino que se suman.

{:.question}
¿Qué diferencia hay entre un margin y un padding?

### Borde

Los bordes funcionan, a la hora de establecer su valores, de la misma manera que el relleno visto anteriormente, siguiendo un orden: superior, derecho, inferior, izquierdo.

Podemos configurar el estilo del borde, su grosor y su color.

Ejemplo de la propiedad `border-style` con la que configuramos el estilo del borde:

```css
div {border-style: solid dashed dotted double; } 
div {border-style: solid dashed dotted double; }
```

La propiedad `border-style` puede tener los valores: none, hidden, dotted, dashed, solid, double, groove, ridge, inset, outset e inherit. En el siguiente ejemplo configuramos cada uno de los lados de la caja con un borde distinto.

Ejemplo de la propiedad `border-width` con la que configuramos el grosor del borde:

```css
div {
  border-style: solid; 
  border-width: thin medium thick 12px; 
}
```

Los valores que puede tomar esta propiedad son: `thin`, `medium`, `thick`, `inherit` o un valor concreto en píxeles. Si no se especifica esta propiedad tomará medium como valor por defecto. En el siguiente ejemplo configuramos un grosor distinto en cada uno de los lados del borde.

Ejemplo de la propiedad `border-color` con la que configuramos el color del borde:

```css
div {
  border-style: solid; 
  border-width: 4px; 
  border-color: #333 #red rgb(0,0,255) #0044AC; 
}
```

La propiedad `border` une todas las propiedades "border" vistas hasta ahora. En esta propiedad, a diferencia de las anteriores, no hay que colocar los valores en ningún orden concreto. La propiedad `border` se emplea cuando se quieren configurar los cuatro lados por igual. Aunque también tenemos las propiedades: border-top, border-right, border-bottom y border-left. Por ejemplo:

```css
h1 {border: .5em solid blue; }
h2 {border-left: solid blue .5em; }
h3 {border-right: solid .5em; }
```

## TRES tipos de selectores

Existen tres maneras de referenciar elementos HTML desde CSS:

1. Por etiqueta o elemento
1. Por clase
1. Por identificador

### Selector de etiqueta o elemento

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

### Selector de clase

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

### Selector de identificador

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

### Combinators

### Pseudoselectores

Si queremos aplicar reglas de estilo a elementos especiales como: los vínculos visitados, la primera línea de un párrafo o su primera letra, emplearemos los pseudoselectores.

Hay dos tipos de pseudoelectores: pseudoclases y pseudoelementos.

#### Pseudoclases

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

#### Pseudoelementos

Estos pseudoelementos suelen ser partes de un elemento ya existente, como puede ser su primera línea (`:first-line`) o su primera letra (`:first-letter`), aunque también nos permite hacer referencia a elementos sin concretar en la estructura del documento porque dependen de la estructura del documento (`:before` y `:after`). Por ejemplo:

```css
p:first-line {letter-spacing: 6pt;} /* añadimos espacio extra a la primera línea del texto de cada párrafo */
p.definicion:first-letter {font-size: 300%; color: red;} /* modificamos el estilo (tamaño y color) de la primera letra de los párrafos pertenecientes a la clase "definicion" */
p.incompleto:after { content: " continuará ..."; } /* añadimos el texto " continuará ..." al final de cada párrafo perteneciente a la clase "incompleto" */
```

> La única manera de aprender a programar e programando por lo que te recomiendo que pruebes todos los tipos de selectores en un proyecto propio.
{:.prompt-info}


### La palabra clave !important

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

## Propiedades para establecer la fuente

Las propiedades de las fuentes en CSS son usadas para configurar la apariencia deseada para el texto de un documento. Las más empleadas son:

### font-family

Nos permite especificar un nombre de fuente en concreto o bien una familia genérica de fuentes. Se puede especificar una lista de fuentes separadas por comas teniendo en cuenta que si el nombre de la fuente o familia tiene algún espacio en blanco intercalado habrá que encerrarlo entre comillas. 

Hay que darse cuenta de que el tipo de letra elegido debe estar instalado en el equipo cliente. Por lo que, si escogemos un tipo de letra "poco habitual", corremos el riesgo de que el usuario no vea la página tal y como la hemos diseñado.

### font-size

Nos permite configurar el tamaño del texto. Mientras que el HTML estándar prevé sólo 7 niveles predefinidos para el tamaño del texto, las hojas de estilo CSS permiten un control mucho más preciso y elástico sin, prácticamente, limitaciones.

### font-weight

Nos permite establecer el espesor o intensidad de las fuentes, como `<b>` para el HTML clásico.

### font-style

Nos permite configurar el "estilo" de la fuente. Hay tres valores posibles:

- `normal` que no configura ningún estilo en particular sino que toma el definido por defecto en el navegador.
- `italic` que equivale al elemento del HTML clásico (`<i>`) que coloca el testo en cursiva.
- `oblique` que funciona, aparentemente, como "italic".

### font-variant

Permite dos posibilidades: `normal` y `small-caps`. Con `normal`, el texto no cambia de apariencia y con `small-caps` el texto pasa a mostrarse en mayúsculas de un tamaño inferior.

### font

Esta propiedad engloba las propiedades anteriores y más, pero debe ser escrita siguiendo el siguiente patrón:

```plaintext
font: (<font-style> | <font-variant> | <font-weight>)? <font-size>(/<line-height>)? <font-family>
```

Siendo `<font-style>` realmente el valor de la propiedad `<valor de la propiedad font-style>` y lo mismo con todas las demás propiedades.

> Si no sabes como interpretar una expresión regular puedes leer el artículo [Expresiones regulares](https://marcosruiz.github.io/posts/expresiones-regulares/)
{:.prompt-info}

Intenta entender los siguientes ejemplos:

```css
p { font: 12px arial; }
p { font: italic small-caps bold 12px arial; }
p { font: oblique small-caps 900 12px/14px arial; }
p { font: 80% sans-serif; }
p { font: x-large/110% "new century schoolbook", serif; }
p { font: bold italic large Palatino, serif; }
p { font: normal small-caps 120%/120% fantasy; }
```

## Propiedades para establecer el texto

Las propiedades de texto permiten aplicar estilos a los textos espaciando sus palabras o sus letras, decorándolo, alineándolo, transformándolo, etcétera. Algunas de estas propiedades son:

Las propiedades de texto permiten aplicar estilos a los textos espaciando sus palabras o sus letras, decorándolo, alineándolo, transformándolo, etcétera. Algunas de estas propiedades son:

### text-decoration

Permite decorar el texto con subrayados y otros efectos. Los valores que puede tener son: none (ninguno), underline (subrayado), overline (con una línea por encima), line-through (tachado), blink (parpadeante) e inherit (heredado) .

### text-transform

Controla la apariencia de las letras en un elemento. Los valores que puede tener son: none (texto normal, con mayúsculas y minúsculas), capitalize (cada palabra comienza con mayúsculas), uppercase (todo el texto aparece en mayúsculas) y lowercase (todo el texto aparece en minúsculas).

### line-height

Establece el espacio que hay entre dos líneas consecutivas.

Ejemplos:

```css
p { line-height: 1.4; } /* Se establece un factor de multiplicación respecto al tamaño font-size */
p { line-height: 14pt; } /* Establece una distancia fija entre las líneas de 14 puntos */
p { line-height: 140%; } /* Establece una distancia proporcional (%) respecto a font-size */
```

### text-indent

Sangra la primera línea de texto de un párrafo.

Ejemplos:

```css
p { text-indent: 20px; } /* Define un sangrado positivo. El valor por defecto es 0. */
p { text-indent: -12px; } /* Éste es negativo (hacia la izquierda). */
p { text-indent: 10%; } /* Aquí está como un porcentaje respecto al ancho del elemento padre. */
```

### letter-spacing

Configura sobre el espacio que hay entre los caracteres. Este valor puede aumentar o disminuir ya que, al igual que text-indent y otras propiedades, admite valores positivos y negativos.

Ejemplos:

```css
p { letter-spacing: 12px; } /* Expande los caracteres. Los separa */
p { letter-spacing: -0.5px; } /* Contrae los caracteres. Los junta */
```

### white-space

Permite establecer cómo se gestionan los espacios en blanco en un elemento. Los valores que puede tener son:

- `normal`: Los espacios en blanco adicionales son ignorados por el navegador.
- `pre`: Los espacios en blanco adicionales son utilizados como cuando se emplea la etiqueta pre en HTML.
- `nowrap`: No se produce el ajuste de línea automático por lo que el texto permanecerá en la misma línea hasta que encuentre una etiqueta `<br/>`.

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

Leer 

## Para todo lo demás...

- <https://lenguajecss.com/css/>
- <https://www.w3schools.com/css/default.asp>
- <https://cssreference.io/>
- <https://developer.mozilla.org/es/docs/Learn/CSS>

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://lenguajecss.com/css/>
- <https://www.maestrosdelweb.com/cssintaxis/>
- <https://www.w3.org/wiki/CSS_/_Selectores_CSS>
- <https://uniwebsidad.com/libros/css/capitulo-13/recomendaciones-generales-sobre-css?from=librosweb>


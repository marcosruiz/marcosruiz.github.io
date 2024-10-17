---
title: "Posicionamiento en CSS"
date: 2024-10-11 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/posicionamiento-css/
---

{:.section}
## Introducción

CSS utiliza el flotado y el posicionamiento para tener el máximo control sobre el lugar que ocupa cada elemento en una página web, sus condiciones de visibilidad y "flotabilidad", así como controlar el manejo de capas.

En los siguientes apartados veremos algunas propiedades de CSS que se utilizan para controlar el posicionamiento de los elementos. Estas son:

- `display`
- `float`
- `clear`
- `position`
- `visibility`
- `z-index`
- `overflow`
- `clip-path`

Un término que aparecerá a menudo es “flujo normal”. Cuando hablamos de que los objetos de una página siguen el flujo normal del documento, queremos indicar que la forma en la que se disponen en la ventana del navegador coincide con el lugar que ocupan en el documento escrito (en el código HTML), donde el orden de lectura es de arriba a abajo y de izquierda a derecha.

Flotando y posicionando con CSS conseguimos que los elementos abandonen su flujo normal. De esta forma un elemento que este en el documento escrito más abajo que otro en el documento puede verse en el navegador por encima de él.

{:.section}
## display

La propiedad `display` permite al documento interpretar de otra forma los elementos de tipo bloque y los elementos de tipo línea. Para ello basta con que asignes a esta propiedad el valor `block` si quieres que un elemento "en línea" se comporte como un elemento de tipo bloque y `none`, si quieres que un elemento de bloque no genere caja, no muestre su contenido y no ocupe espacio en la página.

Lee el artículo [La propiedad display](https://lenguajecss.com/css/layout/display-css/)

{:.question}
¿Qué diferencia hay entre `inline` e `inline-block`?

{:.subsection}
### flex

Leer [Guía de Introducción a Flex](https://lenguajecss.com/css/flex/que-es-flex/)

{:.subsection}
### grid

Leer [Guía de Introducción a Grid](https://lenguajecss.com/css/grid/que-es-grid/)

{:.section}
## float

La propiedad `float` sirve para mover una caja a la izquierda o a la derecha hasta que su borde exterior toque el borde de la caja que lo contiene o toque otra caja flotante.

Para que un elemento pueda flotar debe tener definido implícita o explícitamente su tamaño.

Las cajas flotantes no se encuentran en el "flujo normal" del documento por lo que las cajas que sí siguen el flujo normal se comportan como si las flotantes no estuviesen ahí. Es decir, no dejan el hueco de donde debería estar la caja flotante en un flujo normal, pero si se adaptan cuando se encuentran un elemento flotante.

La propiedad `float` puede tener los siguientes valores:

- `none` hará que el objeto no sea flotante.
- `left` hace que el elemento flote izquierda.
- `right` hace que el elemento flote a la derecha.
- `inherit` hará que el elemento tome el valor de esta propiedad de su elemento padre.

{:.subsection}
### Primer ejemplo con float

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <ul>
    <li>Primer elemento</li>
    <li class="float">Segundo elemento</li>
    <li class="float">Tercer elemento</li>
    <li class="float">Cuarto elemento</li>
    <li>Quinto elemento</li>
    <li>Sexto elemento</li>
    <li>Séptimo elemento</li>
  </ul>
</body>
</html>
```

```css
ul {
  background-color: grey;
  padding: 0;
}

li{
  list-style-type: none;
    background: blue;
    width: 100px;
    padding: 8px;
    margin: 8px;
    color: white;
}

.float{
  float: right;
}
```

![alt text](floatRigth.png)
_Resultado con `float:right`_

Y si cambiamos `float:right` por `float:left`:

![alt text](floatLeft.png)
_Resultado con `float:left`_

{:.subsection}
### Segundo ejemplo con float

{:.subsubsection}
#### Flotar contenedores

Para comprender la técnica de flotar cajas vamos a hacer este ejemplo. Se trata de tres contenedores (div) de distintos colores y tamaños, los tres están metidos en el interior de otro contenedor llamado “contenido” que lo que hace es conseguir que el conjunto se encuentre centrado en el navegador.

```html
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link rel="stylesheet" type="text/css" href="estilos.css" />
        <title>Flotar</title>
    </head>
    <body>
        <div id="contenido">
            <div id="caja1"> Caja 1 </div>
            <div id="caja2"> Caja 2 </div>
            <div id="caja3"> Caja 3 </div>
        </div>
    </body>
</html>
```

```css
body { font-weight: bold; color: white; }

#contenido {
    /* Ancho de 700px y centrado en el navegador */
    width: 700px; margin: auto;
    /* Borde sólido y fondo gris claro */
    border: solid 1px black; background-color: #CCCCCC; }

#caja1 {
    width: 100px; height: 100px; background-color:#FF0000;
    border: solid 1px black; margin: 10px; }

#caja2 {
    width: 130px; height: 130px; background-color:#00FF00;
    border: solid 1px black; margin: 10px; }

#caja3 {
    width: 160px; height: 160px; background-color:#0000FF;
    border: solid 1px black; margin: 10px; }
```

La página sin aplicarle los estilos CSS:

![alt text](image.png)

La página con los estilos CSS:

![alt text](image-1.png)

Como se trata de tres elementos de bloque cada uno de ellos comienza debajo del anterior.

Ahora flotamos la Caja1 a la derecha, así que tenemos que modificar el selector #caja1 del archivo estilos.css. El resto lo dejamos igual:

```css
#caja1 {
    width: 100px; height: 100px;
    background-color:#FF0000;
    border: solid 1px black;
    margin: 10px;
    /*Flotar a la derecha */
    float: right;
}
```

Como se muestra en la siguiente imagen, cuando se flota la Caja1 a la derecha, se saca del flujo normal del documento y se mueve a la derecha hasta que su borde toca el borde derecho del bloque que lo contiene.

![alt text](image-2.png)

Recordar que la Caja 1 no llega a "pegar de todo" en el borde del contenedor pues en el estilo aplicado se configura, para las tres cajas, un margen de 10px en todos los lados.

{:.subsubsection}
#### Flotar una caja a la izquierda

Ahora vamos a flotar la Caja 1 a la izquierda, por lo que se saca otra vez del flujo del documento y se mueve a la izquierda hasta que el borde izquierdo del bloque toca el borde izquierdo del bloque que lo contiene.

Tenemos que modificar el selector #caja1 del archivo estilos.css. El resto lo dejamos igual:

```css
#caja1 {
    width: 100px; height: 100px;
    background-color:#FF0000;
    border: solid 1px black;
    margin: 10px;
    /*Flotar a la izquierda */
    float: left;
}
```

La Caja 1 flotada a la izquierda quedaría así:

![alt text](image-3.png)

Puesto que la Caja ya no se encuentra en el flujo del documento, no ocupa espacio y se sitúa sobre la Caja 2, ocultando así parte de ella.

{:.subsubsection}
#### Flotar la Caja 1 y la Caja 2 a la izquierda

Ahora vamos a hacer que flote también la Caja 2. Para conseguir esto, tenemos que configurar el selector `#caja2` del archivo estilos.css tal y como se hizo en el apartado anterior para la Caja 1.

```css
#caja2 {
    width: 130px; height: 130px;
    background-color: #00FF00;
    border: solid 1px black;
    margin: 10px;
    /*Flotar a la izquierda*/
    float: left;
}
```

Flotando las Cajas 1 y 2 a la izquierda la web quedaría así:

![alt text](image-4.png)

Al flotar ahora también la Caja 2, ésta se mueve hasta que toca su borde izquierdo con el borde derecho de la Caja 1. Esto es así porque la Caja 1 también está flotada y ambas fueron sacadas del flujo normal del documento.

La Caja 3, junto con el Contenedor, es la única que queda en el flujo normal del documento.

Debemos fijarnos que el tamaño del Contenedor se adapta al de los elementos que siguen en el flujo normal.

{:.subsubsection}
#### Flotar todas las cajas a la izquierda

Al flotar las tres cajas a la izquierda:

- La Caja 1 se mueve a la izquierda hasta que toca el borde izquierdo del contenedor que lo contiene.
- La Caja 2 se mueve también a la izquierda hasta que toca la Caja 1.
- La Caja 3 también se mueve a la izquierda hasta que toca con la Caja 2.

Esto es así porque todas las Cajas salen del flujo normal del documento y se ven entre sí.

Para conseguir esto, tenemos que modificar los selectores #caja1, #caja2 y #caja3 del archivo estilos.css tal y como se hizo en los apartados anteriores.

```css
#caja3 {
    width: 160px; height: 160px;
    background-color:#0000FF;
    border: solid 1px black;
    margin: 10px; 
    /*Flotar a la izquierda*/
    float: left;
}
```

![alt text](image-5.png)

Tal y como se ve la imagen, el div “Contenido" tiene ahora una altura de 0px, ya que todo lo que tiene en su interior está fuera del flujo del documento. Es decir, como no tiene nada “dentro” no necesita tener una altura determinada.

Los divs de las cajas de colores siguen estando “en el interior” del div “contenido” y eso se nota en que no salen del ancho marcado por éste y que su alineamiento es con respecto a él.

Para que se vuelva a ver el “Contenido” tenemos varias opciones:

- Se le puede aplicar una altura configurando en el selector #contenido la propiedad `height` con una altura mayor que el alto de la caja más grande.
- Se puede flotar a la izquierda la caja con id #contenido. De esta forma volvería a aparecer pero flotada a la izquierda de su contendedor (body).
- Añadir, dentro del div "contenido" y a continuación de las tres cajas flotadas, un div totalmente vacío. Este div lo configuramos estableciendo la propiedad clear con el valor both (aunque en este caso también serviría left, pues todas las cajas flotadas anteriormente lo están a la izquierda). Esta es la solución más utilizada y la que emplearemos.

Veamos cómo quedan los códigos de los archivos HTML y CSS después de realizar la última operación explicada en la diapositiva anterior de modo que todas las cajas flotan a la izquierda y se ve igualmente el “contenido”.

```html
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" type="text/css" href="estilos.css" />
    <title>Flotar</title>
</head>

<body>
    <div id="contenido">
        <div id="caja1"> Caja 1 </div>
        <div id="caja2"> Caja 2 </div>
        <div id="caja3"> Caja 3 </div>
        <!-- Caja vacía para limpiar flotados -->
        <div class="clearboth"></div>
    </div>
</body>

</html>
```

```css
body { font-weight: bold; color: white; }

#contenido {
    /* Ancho de 700px y centrado en el navegador */
    width: 700px; margin: auto;
    /* Borde sólido y fondo gris claro */
    border: solid 1px black; background-color: #CCCCCC;}

#caja1 {
    width: 100px; height: 100px; background-color:#FF0000;
    border: solid 1px black; margin: 10px;
    /*Flotar a la izquierda */
    float: left; }
	
#caja2 {
    width: 130px; height: 130px; background-color:#00FF00;
    border: solid 1px black; margin: 10px; 
    /*Flotar a la izquierda */	
    float:left; }
	
#caja3 {
    width: 160px; height: 160px; background-color:#0000FF;
    border: solid 1px black; margin: 10px; 
    /*Flotar a la izquierda */
    float: left; }
    
    /*Limpiar flotados a izquierda y derecha*/
    .clearboth {clear: both; }
```

La web con todas las cajas flotadas a la izquierda, y con un nuevo div que sirve para resetear los elementos flotados hasta este punto (donde se añade el div), quedaría del siguiente modo:

![alt text](image-6.png)

{:.subsubsection}
#### Bloque contenedor demasiado estrecho

El caso a tratar es cuando nuestro div "contenido" es demasiado estrecho como para que los elementos flotados quepan horizontalmente. Si es así, el que no quepa se desplazará hacia abajo.

Podemos forzar esta situación configurando el ancho del div "contenido" con un valor de 350px (recordar que la suma de los anchos de las tres cajas, más sus márgenes, es mayor de 350px).

```css
body { font-weight: bold; color: white; }

#contenido {
    /* Ancho de 350px y centrado en el navegador */
    width: 350px; margin: auto;
    /* Borde sólido y fondo gris claro */
    border: solid 1px black; background-color: #CCCCCC;}
```

La web con un bloque contenedor con un ancho de 350px, todas las cajas flotadas a la izquierda, y con el div que resetea los flotados hasta el punto donde se añade éste, se vería del siguiente modo:

![alt text](image-7.png)

El orden de las cajas en el documento HTML es Caja 1 – Caja 2 – Caja 3 pero, ¿cómo quedaría la web si cambiamos el orden de las cajas a Caja 3 – Caja 2 – Caja 1?

La web con el bloque contenedor de 350px, todas las cajas flotadas a la izquierda, y con el div que resetea los flotados hasta el punto donde se añade éste, pero con las cajas en el orden Caja 3 – Caja 2 – Caja 1, se vería del siguiente modo:

![alt text](image-8.png)

Podemos ver que el resultado cambia mucho. El motivo por el que no se pega la Caja 1 al borde del div “contenido” es por que la Caja1 sigue tropezando con la Caja 3 al intentar ser flotada a la izquierda.

{:.section}
## clear

La propiedad clear se encarga de impedir elementos flotantes en la zona indicada, a la izquierda del elemento (`left`), a la derecha (`right`) o en ambos lados (`both`).

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <ul>
    <li>Primer elemento</li>
    <li class="float">Segundo elemento</li>
    <li class="float">Tercer elemento</li>
    <li class="float fix">Cuarto elemento</li>
    <li class="float">Quinto elemento</li>
    <li class="float">Sexto elemento</li>
    <li>Séptimo elemento</li>
  </ul>
</body>
</html>
```

```css
ul {
  background-color: grey;
  padding: 0;
}

li{
  list-style-type: none;
    background: blue;
    width: 100px;
    padding: 8px;
    margin: 8px;
    color: white;
}

.float{
  float: left;
}

.fix {
  clear: both;
}
```

![alt text](clear.png)
_Resultado con `clear`_

La propiedad `clear` puede tener los siguientes valores:

- `left` indica que el elemento comienza por debajo de cualquier otro elemento del bloque al que pertenece que estuviese flotando a la izquierda.
- `right` funciona como el left pero en este caso el elemento deberá estar flotando a la derecha.
- `both` mueve hacia abajo el elemento hasta que esté limpio de elementos flotantes a ambos lados.
- `none` permite elementos flotantes a ambos lados. Es el valor por defecto.
- `inherit` indica, al igual que en float, que heredará el valor de la propiedad clear de su elemento padre.

{:.section}
## position

Aunque la mayoría de problemas pueden y deben ser solucionados con un modo u otro de la propiedad `display`, existen mecanismos alternativos y complementarios de posicionamiento que se utilizan para realizar acciones y casos muy concretos. Mediante la propiedad `position` podemos modificar la posición en donde aparecen los diferentes elementos y su contenido, al margen de utilizar sistemas como flex o grid.

La propiedad `position` se puede utilizar para modificar la posición donde aparecerá un elemento. Esta propiedad admite cinco valores:

1. `static`
1. `relative`
1. `absolute`
1. `fixed`
1. `sticky`

Si utilizamos un modo de posicionamiento diferente al estático (`absolute`, `fixed`, `sticky` o `relative`), podemos utilizar una serie de propiedades para modificar la posición de un elemento. Es importante tener en cuenta que dichas propiedades solo tendrán efecto si NO tenemos la propiedad position establecida a `static`.

<iframe width="560" height="315" src="https://www.youtube.com/embed/_e0ddNlc0Y8?si=pOfSizf5pKSrqzxV" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Estas propiedades son las siguientes:

- `top`: Empuja el elemento una distancia desde la parte superior hacia el inferior.
- `bottom`: Empuja el elemento una distancia desde la parte inferior hacia la superior.
- `left`: Empuja el elemento una distancia desde la parte izquierda hacia la derecha.
- `right`: Empuja el elemento una distancia desde la parte derecha hacia la izquierda.
- `inset`: Propiedad de atajo para utilizar todas las anteriores.

Estas propiedades, lo único que hacen es colocar o fijar el elemento en el punto concreto indicado, de modo que si indicas `left: 0` significa que quieres que el elemento esté colocado 0 píxeles desde la izquierda. Puede contener valores negativos, invirtiendo la dirección.

(Voluntario) Lee el artículo [La propiedad position](https://lenguajecss.com/css/posicionamiento/position/).

{:.subsection}
### static

`static` permite colocar los elementos según el flujo normal. Es el valor que asumirá por defecto en todos los elementos HTML.

{:.subsection}
### relative

`relative` permite dejar el elemento exactamente donde está. Un elemento posicionado de esta forma se puede cambiar desde su punto de partida estableciendo para ello una distancia vertical y/o horizontal. En el siguiente ejemplo se desplaza la "caja2" 50px del extremo izquierdo y 50 px del extremo superior de su posición relativa.

```css
#caja2 {width: 130px; height: 130px;
        background-color:#00FF00;
        border: solid 1px black;
        margin: 10px;
        /* Posicionamento relativo */
        position: relative;
        left: 50px; top: 50px; }
```

(Voluntario) Lee el artículo [Posicionamiento relativo](https://lenguajecss.com/css/posicionamiento/position-relative/)

{:.question}
¿Hacia donde se mueve el elemento con ID `caja2` del código anterior?

{:.subsection}
### absolute

`absolute` permite abandonar el flujo normal del haciendo que el elemento no ocupe ningún espacio de forma que el resto de elementos del flujo normal actuarán como si el elemento no estuviese allí. El modo de determinar el origen de coordenadas de nuestro elemento será el siguiente:

- Si el elemento posicionado de modo absoluto no está contenido dentro de ningún otro, su origen de coordenadas se mide respecto a la esquina superior izquierda del `body` (contenedor principal).
- Si el elemento posicionado de modo absoluto está contenido dentro de otro elemento, el origen de coordenadas del elemento se calculan con respecto a la posición de la esquina superior izquierda del elemento que lo contiene.

Lee la sección "La propiedad position: absolute" del artículo [Posicionamiento absoluto](https://lenguajecss.com/css/posicionamiento/position-absolute/#la-propiedad-position-absolute).

{:.subsection}
### fixed

`fixed` funciona de forma parecida al posicionamiento absoluto pero posiciona con respecto a la ventana del navegador apareciendo en la misma posición aunque el usuario se desplace por la página con las barras de desplazamiento.

(Voluntario) Lee el artículo [Posicionamiento fijo](https://lenguajecss.com/css/posicionamiento/position-fixed/).

{:.subsection}
### sticky

(Voluntario) Lee el artículo [Posicionamiento sticky](https://lenguajecss.com/css/posicionamiento/position-sticky/).

{:.question}
¿Qué diferencias hay entre las posiciones `static`, `relative`, `fixed`, `absolute`, `sticky`?

{:.section}
## visibility

Esta propiedad controla si el elemento será visualizado según le asignes el valor `visible` o `hidden`. Debes tener en cuenta que, aunque un elemento no sea visible, éste continúa ocupando su espacio en el flujo normal del documento al contrario de lo que ocurría con la propiedad `display` cuando se le asignaba el valor `none`.

{:.question}
¿Qué diferencia hay entre `visibility:hidden` y `display:none`?

{:.section}
## z-index

Permite controlar el orden en el que se presentan los elementos que quedan solapados por efecto de otras propiedades. Si cuando definimos algún elemento con posición absoluta, éste tiene que visualizarse en el mismo lugar ocupado por otro elemento, se producirá una superposición de elementos visualizándose, en la parte coincidente, sólo el que está ocupando la "posición superior". La propiedad `z-index` permite especificar el orden en el eje z de los elementos, esto es, el orden de apilamiento en capas del documento.

Por defecto, los elementos se apilan en el orden en que aparecen: el elemento situado más abajo en el flujo normal del documento quedará encima. Si quieres que esta posición no sea tenida en cuenta, debes saber que los elementos con un valor mayor de la propiedad `z-index` son colocados encima de los que tienen un valor menor `z-index`, quedando estos últimos tapados por los primeros.

![alt text](zIndex.png)

También debes saber que esta propiedad sólo se aplica a elementos que tengan la propiedad `position` en `absolute` o en `relative`.

{:.question}
¿Qué es el `z-index`?

{:.question}
¿Qué ocurre si pongo un `z-index: 99999` a un elemento cualquiera?

{:.question}
¿Se puede un `z-index` negativo?

{:.section}
## overflow

La propiedad `overflow` define cómo se maneja el contenido que excede el tamaño del contenedor.

La propiedad `overflow` (desbordamiento en español) establece el comportamiento de desbordamiento. Es similar al menú de Google Sheets que se ve en la siguiente Figura.

![Overflow o desbordamiento en Google Sheet](overflow.png)
_Overflow o desbordamiento en Google Sheet_

Se puede definir tanto el overflow tanto en el eje X como en el eje Y con las propiedades `overflow-x` y `overflow-y` respectivamente.

{:.question}
¿Se puede definir un overflow horizontal y vertical por separado?

(Voluntario) Lee el artículo [Desbordamiento (Overflow)](https://lenguajecss.com/css/modelo-de-cajas/overflow/).

{:.section}
## clip-path

Hace algún tiempo, existió una propiedad CSS llamada clip, cuya intención era permitir recortes con ciertas formas como rectángulos. Sin embargo, hoy en día ha sido marcada como obsoleta, en favor de una nueva propiedad llamada clip-path.

(Voluntario) Lee el artículo [La propiedad clip-path](https://lenguajecss.com/css/mascaras-y-recortes/clip-path/).

<details class="card mb-2">
  <summary class="card-header question">Pero... ¿cómo se centra un div?</summary>
  <div class="card-body" markdown="1">

<blockquote class="instagram-media" data-instgrm-permalink="https://www.instagram.com/reel/CmElS8mj5A3/?utm_source=ig_embed&amp;utm_campaign=loading" data-instgrm-version="14" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:540px; min-width:326px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:16px;"> <a href="https://www.instagram.com/reel/CmElS8mj5A3/?utm_source=ig_embed&amp;utm_campaign=loading" style=" background:#FFFFFF; line-height:0; padding:0 0; text-align:center; text-decoration:none; width:100%;" target="_blank"> <div style=" display: flex; flex-direction: row; align-items: center;"> <div style="background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 40px; margin-right: 14px; width: 40px;"></div> <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center;"> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 100px;"></div> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 60px;"></div></div></div><div style="padding: 19% 0;"></div> <div style="display:block; height:50px; margin:0 auto 12px; width:50px;"><svg width="50px" height="50px" viewBox="0 0 60 60" version="1.1" xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(-511.000000, -20.000000)" fill="#000000"><g><path d="M556.869,30.41 C554.814,30.41 553.148,32.076 553.148,34.131 C553.148,36.186 554.814,37.852 556.869,37.852 C558.924,37.852 560.59,36.186 560.59,34.131 C560.59,32.076 558.924,30.41 556.869,30.41 M541,60.657 C535.114,60.657 530.342,55.887 530.342,50 C530.342,44.114 535.114,39.342 541,39.342 C546.887,39.342 551.658,44.114 551.658,50 C551.658,55.887 546.887,60.657 541,60.657 M541,33.886 C532.1,33.886 524.886,41.1 524.886,50 C524.886,58.899 532.1,66.113 541,66.113 C549.9,66.113 557.115,58.899 557.115,50 C557.115,41.1 549.9,33.886 541,33.886 M565.378,62.101 C565.244,65.022 564.756,66.606 564.346,67.663 C563.803,69.06 563.154,70.057 562.106,71.106 C561.058,72.155 560.06,72.803 558.662,73.347 C557.607,73.757 556.021,74.244 553.102,74.378 C549.944,74.521 548.997,74.552 541,74.552 C533.003,74.552 532.056,74.521 528.898,74.378 C525.979,74.244 524.393,73.757 523.338,73.347 C521.94,72.803 520.942,72.155 519.894,71.106 C518.846,70.057 518.197,69.06 517.654,67.663 C517.244,66.606 516.755,65.022 516.623,62.101 C516.479,58.943 516.448,57.996 516.448,50 C516.448,42.003 516.479,41.056 516.623,37.899 C516.755,34.978 517.244,33.391 517.654,32.338 C518.197,30.938 518.846,29.942 519.894,28.894 C520.942,27.846 521.94,27.196 523.338,26.654 C524.393,26.244 525.979,25.756 528.898,25.623 C532.057,25.479 533.004,25.448 541,25.448 C548.997,25.448 549.943,25.479 553.102,25.623 C556.021,25.756 557.607,26.244 558.662,26.654 C560.06,27.196 561.058,27.846 562.106,28.894 C563.154,29.942 563.803,30.938 564.346,32.338 C564.756,33.391 565.244,34.978 565.378,37.899 C565.522,41.056 565.552,42.003 565.552,50 C565.552,57.996 565.522,58.943 565.378,62.101 M570.82,37.631 C570.674,34.438 570.167,32.258 569.425,30.349 C568.659,28.377 567.633,26.702 565.965,25.035 C564.297,23.368 562.623,22.342 560.652,21.575 C558.743,20.834 556.562,20.326 553.369,20.18 C550.169,20.033 549.148,20 541,20 C532.853,20 531.831,20.033 528.631,20.18 C525.438,20.326 523.257,20.834 521.349,21.575 C519.376,22.342 517.703,23.368 516.035,25.035 C514.368,26.702 513.342,28.377 512.574,30.349 C511.834,32.258 511.326,34.438 511.181,37.631 C511.035,40.831 511,41.851 511,50 C511,58.147 511.035,59.17 511.181,62.369 C511.326,65.562 511.834,67.743 512.574,69.651 C513.342,71.625 514.368,73.296 516.035,74.965 C517.703,76.634 519.376,77.658 521.349,78.425 C523.257,79.167 525.438,79.673 528.631,79.82 C531.831,79.965 532.853,80.001 541,80.001 C549.148,80.001 550.169,79.965 553.369,79.82 C556.562,79.673 558.743,79.167 560.652,78.425 C562.623,77.658 564.297,76.634 565.965,74.965 C567.633,73.296 568.659,71.625 569.425,69.651 C570.167,67.743 570.674,65.562 570.82,62.369 C570.966,59.17 571,58.147 571,50 C571,41.851 570.966,40.831 570.82,37.631"></path></g></g></g></svg></div><div style="padding-top: 8px;"> <div style=" color:#3897f0; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:550; line-height:18px;">Ver esta publicación en Instagram</div></div><div style="padding: 12.5% 0;"></div> <div style="display: flex; flex-direction: row; margin-bottom: 14px; align-items: center;"><div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(0px) translateY(7px);"></div> <div style="background-color: #F4F4F4; height: 12.5px; transform: rotate(-45deg) translateX(3px) translateY(1px); width: 12.5px; flex-grow: 0; margin-right: 14px; margin-left: 2px;"></div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(9px) translateY(-18px);"></div></div><div style="margin-left: 8px;"> <div style=" background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 20px; width: 20px;"></div> <div style=" width: 0; height: 0; border-top: 2px solid transparent; border-left: 6px solid #f4f4f4; border-bottom: 2px solid transparent; transform: translateX(16px) translateY(-4px) rotate(30deg)"></div></div><div style="margin-left: auto;"> <div style=" width: 0px; border-top: 8px solid #F4F4F4; border-right: 8px solid transparent; transform: translateY(16px);"></div> <div style=" background-color: #F4F4F4; flex-grow: 0; height: 12px; width: 16px; transform: translateY(-4px);"></div> <div style=" width: 0; height: 0; border-top: 8px solid #F4F4F4; border-left: 8px solid transparent; transform: translateY(-4px) translateX(8px);"></div></div></div> <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center; margin-bottom: 24px;"> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 224px;"></div> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 144px;"></div></div></a><p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;"><a href="https://www.instagram.com/reel/CmElS8mj5A3/?utm_source=ig_embed&amp;utm_campaign=loading" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none;" target="_blank">Una publicación compartida de midudev • Programación y Desarrollo JavaScript (@midu.dev)</a></p></div></blockquote> <script async src="//www.instagram.com/embed.js"></script>

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://lenguajecss.com/css/>

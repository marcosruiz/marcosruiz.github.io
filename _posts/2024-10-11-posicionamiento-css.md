---
title: "Posicionamiento en CSS"
date: 2024-10-09 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/posicionamiento-css/
---

CSS utiliza el flotado y el posicionamiento para tener el máximo control sobre el lugar que ocupa cada elemento en una página web, sus condiciones de visibilidad y "flotabilidad", así como controlar el manejo de capas.

En los siguientes apartados veremos algunas propiedades de CSS que se utilizan para controlar el posicionamiento de los elementos. Estas son:

- `float`
- `clear`
- `position`
- `bottom`
- `top`
- `left`
- `right`
- `overflow`
- `clip`
- `visibility`
- `z-index`

Un término que aparecerá a menudo es “flujo normal”. Cuando hablamos de que los objetos de una página siguen el flujo normal del documento, queremos indicar que la forma en la que se disponen en la ventana del navegador coincide con el lugar que ocupan en el documento escrito (en el código HTML), donde el orden de lectura es de arriba a abajo y de izquierda a derecha.

Flotando y posicionando con CSS conseguimos que los elementos abandonen su flujo normal. De esta forma un elemento que este en el documento escrito más abajo que otro en el documento puede verse en el navegador por encima de él.

## Elementos flotantes

Flotar sirve para mover una caja a la izquierda o a la derecha hasta que su borde exterior toque el borde de la caja que lo contiene o toque otra caja flotante.

Para que un elemento pueda flotar debe tener definido implícita o explícitamente su tamaño.

Las cajas flotantes no se encuentran en el "flujo normal" del documento por lo que las cajas que sí siguen el flujo normal se comportan como si las flotantes no estuviesen ahí. Es decir, no dejan el hueco de donde debería estar la caja flotante en un flujo normal, pero si se adaptan cuando se encuentran un elemento flotante.

### float

La propiedad `float` puede tener los siguientes valores:

- `none` hará que el objeto no sea flotante.
- `left` hace que el elemento flote izquierda.
- `right` hace que el elemento flote a la derecha.
- `inherit` hará que el elemento tome el valor de esta propiedad de su elemento padre.

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

### Segundo ejemplo con float

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

### clear

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


## Posicionamiento

Una vez te has familiarizado ya con el modelo de cajas y con el modo de flotarlas, se hace necesario estudiar los modelos de posicionamiento y del formato visual para poder tener una visión completa de cómo se organizan los elementos en una página. Para ello vamos a ver algunas de las propiedades que nos permiten organizar los elementos:

### position

### bottom

### top

### left

### right

### overflow

### clip

### visibility

### z-index

## Flex

Leer [Flex CSS: Introducción](https://lenguajecss.com/css/maquetacion-y-colocacion/flex/)

## Grid

Leer [Grid CSS: Introducción](https://lenguajecss.com/css/maquetacion-y-colocacion/grid-css/)






```css

```

```css

```

```css

```

```css

```

```css

```

```css

```

```css

```

```css

```

## Bibliografía


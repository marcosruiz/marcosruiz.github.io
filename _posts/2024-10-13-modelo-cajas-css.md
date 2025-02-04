---
title: "Modelo de cajas CSS"
date: 2024-10-13 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/modelo-cajas-css/
---

{:.section}
## Introducción

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

{:.section}
## Contenido

Podemos definir el tamaño del contenido de la siguiente manera:

```css
div {width:100px; height:200px; }
```

{:.section}
## Relleno

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

{:.section}
## Borde

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

{:.section}
## Margen

Los márgenes top y bottom de dos elementos que van seguidos se "colapsan". Es decir, se asume como margen entre ambos elementos el mayor de ellos. El siguiente ejemplo muestra lo que que ocurre cuando tenemos dos elementos un h1 y un h2 colocados uno a continuación del otro.

```css
h1 {margin: 10px 20px 10px 20px; }
h2 {margin: 20px; }
```

En el primer caso el margen superior e inferior es de 10px. En el segundo caso es de 20px. El espacio resultante entre los dos elementos será de 20px.

Por el contrario, si fuesen dos elementos colocados "uno al lado del otro" (como dos elementos `span`), deberíamos tener en cuenta que los márgenes `right` y `left` no se colapsan, sino que se suman.

{:.question}
¿Qué diferencia hay entre un margin y un padding?

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://lenguajecss.com/css/>

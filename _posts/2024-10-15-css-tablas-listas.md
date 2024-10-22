---
title: "CSS con tablas y listas"
date: 2024-10-14 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/hojas-estilo-css/
---

{:.section}
## Cambiar apariencia de tablas

Para controlar la presentación de las tablas tenemos las propiedades:

- `caption-side`
- `table-layout`
- `border-collapse`
- `border-spacing`
- `empty-cells`
- `display`

{:.subsection}
### caption-side

Esta propiedad sirve para indicar dónde se pone el título de la tabla. Puede tener los valores: `top`, `bottom`, `left` y `right`.

{:.subsection}
### table-layout

Permite definir el modo en el que el navegador dibujará la tabla ya que puede hacerse de dos formas. Los valores que admite son:

- `fixed` dibuja la tabla basándose en las medidas establecidas en el código fuente. Con este valor se consigue que el sistema trabaje más rápido.
- `auto` dibuja la tablas basándose en el contenido de sus celdas. Es el valor por defecto.

{:.subsection}
### border-collapse

Permite establecer el modo en el que se dibujan los bordes de las tablas: `separate` (separados), `collapse` (juntos) e `inherit`.

- En el modo `separate`, cada celda está rodeada por su borde haciendo el efecto de un borde con una línea doble.
- En el modo `collapse` las celdas contiguas comparten sus bordes.

{:.subsection}
### border-spacing

Permite establecer la separación entre celdas contiguas. Para hacerlos se indica el valor del espaciado horizontal seguido del valor del espaciado vertical. Si se escribe un único valor, la separación horizontal y vertical serán iguales.

{:.subsection}
### empty-cells

Esta propiedad soluciona la carencia que, al no dibujar las celdas que estaban vacías, obligaba a poner un espacio en blanco usando el carácter `&nbsp`. Los valores que admite son:

- `show` que permite mostrar los bordes y fondos como en las celdas con contenido.
- `hide` que permite ocultar los bordes y fondos de las celdas vacías.
- `inherit` que permite heredar el valor de empty-cells que tenga su elemento padre.

Ejemplos:

```css
table{  
  border:#000 solid thin;  /* Para que los bordes aparezcan */
  border-collapse: separate; /* Bordes separados */ 
  border-spacing: 0.5em 1em; /* Separación de los bordes */
  empty-cells: show;  /* Las celdas vacías se muestran */ 
}

table caption { 
  caption-side: bottom;  /* El título de la tabla aparece debajo */ 
}
```

{:.section}
## Cambiar apariencia de listas

Las listas son un elemento muy utilizado en las páginas web. Hoy en día, su empleo no está limitado a la simple enumeración de elementos en el contenido, también se utilizan para crear barras de navegación verticales y horizontales.

Para dar formato a las listas tenemos, entre otras, las propiedades: 

- `list-style-type`
- `list-style-image`
- `list-style-position`
- `list-style`

{:.subsection}
### list-style-type

Permite elegir el marcador visual de la lista asignando a la propiedad uno de los siguientes valores: 

- `none` (eliminar el marcador)
- `square` (cuadrado)
- `disc` (círculo)
- `circle` (circunferencia)
- `lower-roman` (números romanos en minúscula)
- `lower-alpha` (letras en minúscula)
- `upper-alpha` (letras en mayúscula)
- etcétera.

{:.subsection}
### list-style-image

Permite especificar una imagen como marcador. Para ello deberemos indicar la dirección o URL donde se encuentra la imagen.

Cuando se usa esta propiedad conviene declarar también la propiedad `list-style-type` en prevención de un fallo en la localización de la imagen.

Esto lo podríamos realizar, también empleando la propiedad `background` del elemento `li`. En este caso, mostrado en el ejemplo siguiente, debemos seguir los siguientes pasos:

1. Eliminar previamente el marcador visual estableciendo none como valor de la propiedad `list-style-type`.
1. Añadimos relleno a la izquierda de cada uno de los elementos de la lista.
1. Colocamos de nuevo el marcador visual, declarando la propiedad `background` a la que asignaremos la URL de una imagen.
1. Si cada elemento de la lista ocupa una sola línea, el marcador deberá centrarse verticalmente estableciendo su posición vertical al 50%.

Ejemplo:

```css
ul {
  margin: 0;
  padding: 0;
  list-style-type: none;
}
li {
  background: url(boliche.gif) no-repeat 0 50%;
  padding-left: 20px;
}
```

{:.subsection}
### list-style-position

Establece la posición del marcador de los elementos de la lista. Se puede colocar el marcador dentro del área de contenido con lo que todas las líneas de este elemento estarán alineadas por la izquierda (incluida la que lleva el marcador) o, se puede colocar fuera del área de contenido (como en una sangría francesa). Los valores que permiten posicionar el marcador son: `inside` (dentro) y `outside` (fuera).

<details class="card mb-2">
  <summary class="card-header question">¿Qué es la sangría francesa?</summary>
  <div class="card-body" markdown="1">

Estilo de sangría de párrafo en el que la primera línea sobresale por la izquierda algo más que el resto, que van algo más sangradas.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### list-style

Al igual que ocurría con otras propiedades que se vieron anteriormente, esta propiedad permite configurar las listas estableciendo, de forma abreviada y en cualquier orden, el valor de una o más de las propiedades individuales vistas en este apartado.

En el siguiente ejemplo se muestra el uso de las propiedades vistas hasta ahora.

Ejemplo:

```css
ul {
  list-style-image: url(boliche.gif);
  list-style-type: disc;
  list-style-position: outside; 
}

ul.especial {
  list-style: outside circle url("imagenes/balon.png"); 
}
```

Un efecto muy utilizado para convertir una lista en una barra de menú de navegación es colocar sus elementos dispuestos horizontalmente en la misma línea. El ejemplo siguiente muestra cómo hacerlo.

Ejemplo:

```css
ul {
  list-style-type: none;  
  padding: 0;  
  border: 1px solid #000;  
}  

li {
  display: inline;  
  border: 1px solid #00f; 
}
```

Si nos interesa eliminar los bordes simplemente debemos poner la propiedad `border` a 0.

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://lenguajecss.com/css/>

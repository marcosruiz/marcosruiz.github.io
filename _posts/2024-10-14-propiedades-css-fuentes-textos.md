---
title: "Propiedades CSS para fuentes y textos"
date: 2024-10-14 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/hojas-estilo-css/
---

{:.section}
## Propiedades para establecer la fuente

Las propiedades de las fuentes en CSS son usadas para configurar la apariencia deseada para el texto de un documento. Las más empleadas son:

{:.subsection}
### font-family

Nos permite especificar un nombre de fuente en concreto o bien una familia genérica de fuentes. Se puede especificar una lista de fuentes separadas por comas teniendo en cuenta que si el nombre de la fuente o familia tiene algún espacio en blanco intercalado habrá que encerrarlo entre comillas.

Hay que darse cuenta de que el tipo de letra elegido debe estar instalado en el equipo cliente. Por lo que, si escogemos un tipo de letra "poco habitual", corremos el riesgo de que el usuario no vea la página tal y como la hemos diseñado.

{:.subsection}
### font-size

Nos permite configurar el tamaño del texto. Mientras que el HTML estándar prevé sólo 7 niveles predefinidos para el tamaño del texto, las hojas de estilo CSS permiten un control mucho más preciso y elástico sin, prácticamente, limitaciones.

{:.subsection}
### font-weight

Nos permite establecer el espesor o intensidad de las fuentes, como `<b>` para el HTML clásico.

{:.subsection}
### font-style

Nos permite configurar el "estilo" de la fuente. Hay tres valores posibles:

- `normal` que no configura ningún estilo en particular sino que toma el definido por defecto en el navegador.
- `italic` que equivale al elemento del HTML clásico (`<i>`) que coloca el testo en cursiva.
- `oblique` que funciona, aparentemente, como "italic".

{:.subsection}
### font-variant

Permite dos posibilidades: `normal` y `small-caps`. Con `normal`, el texto no cambia de apariencia y con `small-caps` el texto pasa a mostrarse en mayúsculas de un tamaño inferior.

<details class="card mb-2">
  <summary class="card-header question" markdown="1">

¿Qué es `font-variant: small-caps`?

  </summary>
  <div class="card-body" markdown="1">

Puedes verlo en [aquí](https://www.w3schools.com/cssref/tryit.php?filename=trycss_font-variant).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
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

{:.section}
## Propiedades para establecer el texto

Las propiedades de texto permiten aplicar estilos a los textos espaciando sus palabras o sus letras, decorándolo, alineándolo, transformándolo, etcétera. Algunas de estas propiedades son:

Las propiedades de texto permiten aplicar estilos a los textos espaciando sus palabras o sus letras, decorándolo, alineándolo, transformándolo, etcétera. Algunas de estas propiedades son:

{:.subsection}
### text-decoration

Permite decorar el texto con subrayados y otros efectos. Los valores que puede tener son:

- `none` (ninguno)
- `underline` (subrayado)
- `overline` (con una línea por encima)
- `line-through` (tachado), blink (parpadeante)
- `inherit` (heredado)

{:.subsection}
### text-transform

Controla la apariencia de las letras en un elemento. Los valores que puede tener son:

- `none` (texto normal, con mayúsculas y minúsculas)
- `capitalize` (cada palabra comienza con mayúsculas)
- `uppercase` (todo el texto aparece en mayúsculas)
- `lowercase` (todo el texto aparece en minúsculas)

<details class="card mb-2">
  <summary class="card-header question" markdown="1">

¿Qué diferencia hay entre `text-transform: uppercase` y `text-transform: capitalize` de la propiedad ?

  </summary>
  <div class="card-body" markdown="1">

- `uppercase` para convertir textos a mayúsculas.
- `lowercase` para convertir textos a minúsculas.
- `capitalize` poner sólo la primera letra en mayúscula.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### line-height

Establece el espacio que hay entre dos líneas consecutivas.

Ejemplos:

```css
p { line-height: 1.4; } /* Se establece un factor de multiplicación respecto al tamaño font-size */
p { line-height: 14pt; } /* Establece una distancia fija entre las líneas de 14 puntos */
p { line-height: 140%; } /* Establece una distancia proporcional (%) respecto a font-size */
```

{:.subsection}
### text-indent

Sangra la primera línea de texto de un párrafo.

Ejemplos:

```css
p { text-indent: 20px; } /* Define un sangrado positivo. El valor por defecto es 0. */
p { text-indent: -12px; } /* Éste es negativo (hacia la izquierda). */
p { text-indent: 10%; } /* Aquí está como un porcentaje respecto al ancho del elemento padre. */
```

{:.subsection}
### letter-spacing

Configura sobre el espacio que hay entre los caracteres. Este valor puede aumentar o disminuir ya que, al igual que text-indent y otras propiedades, admite valores positivos y negativos.

Ejemplos:

```css
p { letter-spacing: 12px; } /* Expande los caracteres. Los separa */
p { letter-spacing: -0.5px; } /* Contrae los caracteres. Los junta */
```

{:.subsection}
### white-space

Permite establecer cómo se gestionan los espacios en blanco en un elemento. Los valores que puede tener son:

- `normal`: Los espacios en blanco adicionales son ignorados por el navegador.
- `pre`: Los espacios en blanco adicionales son utilizados como cuando se emplea la etiqueta pre en HTML.
- `nowrap`: No se produce el ajuste de línea automático por lo que el texto permanecerá en la misma línea hasta que encuentre una etiqueta `<br/>`.

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://lenguajecss.com/css/>

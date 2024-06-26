---
title: "Expresiones regulares"
date: 2024-06-23 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [desarrollo de aplicaciones web, daw, desarrollo web en entorno cliente, dwec, teoria]
img_path: /assets/img/variable-entorno-path/
---

## ¿Qué es una expresión regular?

Lee el artículo [¿Qué es una expresión regular?](https://lenguajejs.com/javascript/regexp/expresiones-regulares/).

> "Usar expresiones regulares para resolver un problema genera ahora dos problemas"
> Jamie Zawinski

<details class="card mb-2">
  <summary class="card-header question">¿Qué es una expresión regular en pocas palabras?</summary>
  <div class="card-body" markdown="1">

Son patrones para buscar, capturar o reemplazar texto.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">Por regla general, ¿es recomendable usar expresiones regulares siempre que podamos?</summary>
  <div class="card-body" markdown="1">

No. Solo hay que usarlas cuando nos proporcionen una ventaja muy clara.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Es necesario escribir expresiones regulares entre dobles comillas en JavaScript?</summary>
  <div class="card-body" markdown="1">

No. También podemos utilizar la notación literal.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué significa la `i` de la expresión regular `/.a.o/i` (notación literal)?</summary>
  <div class="card-body" markdown="1">

El flag `i` significa que no diferencia mayúsculas de minúsculas.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Qué significa la `g` de la expresión regular `/M.+s/g`?

{:.question}
¿Es lo mismo `/M.+s/i` que `/[Mm].+[Ss]/`?

## (Voluntario) Para saber más...

Lee el artículo [Propiedades y flags](https://lenguajejs.com/javascript/regexp/flags/)

Lee el artículo [Buscar y capturar textos](https://lenguajejs.com/javascript/regexp/buscar-capturar/)

Lee el artículo [Crear expresiones regulares](https://lenguajejs.com/javascript/regexp/crear-expresiones-regulares/)

## Expresión regular para validar un email

Mira el vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/tcYCaRnJlVw?si=XNy_pwx1WEJV0eQ_" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Preguntas a responder tras la visualización del vídeo:

1. ¿Cuál es la expresión regular para validar o encontrar cualquier email?
1. Si tenemos un email por línea, ¿cómo podríamos hacer que no encuentre líneas que no tengan la forma de un email válido?

## Patrones

La potencia de las expresiones regulares es que podemos usar patrones para construir la expresión. Los más comunes son:

- `[..]` (corchetes): dentro se ponen varios caracteres o un rango y permiten comprobar si el carácter de esa posición de la cadena coincide con alguno de ellos. Ejemplos:
  - `[abc]`: cualquier carácter de los indicados ('a' o 'b' o 'c')
  - `[^abc]`: cualquiera excepto los indicados
  - `[a-z]`: cualquier minúscula (el carácter '-' indica el rango entre 'a' y 'z', incluidas)
  - `[a-zA-Z]`: cualquier letra
- `( | )` (pipe): debe coincidir con una de las opciones indocadas:
  - `(x|y)`: la letra x o la y (sería equivalente a `[xy]`)
  - `(http|https)`: cualquiera de las 2 palabras
- **Metacaracteres**:
  - `.` (punto): un único carácter, sea el que sea
  - `\d`: un dígito (`\D`: cualquier cosa menos dígito)
  - `\s`: espacio en blanco (`\S`: lo opuesto)
  - `\w`: una palabra o carácter alfanumérico (`\W` lo contrario)
  - `\b`: delimitador de palabra (espacio, ppio, fin)
  - `\n`: nueva línea
- **Cuantificadores**:
  - `+:` al menos 1 vez (ej. `[0-9]+ al menos un dígito`)
  - `*:` 0 o más veces
  - `?:` 0 o 1 vez
  - `{n}`: n caracteres (ej. `[0-9]{5} = 5 dígitos`)
  - `{n,}`: n o más caracteres
  - `{n,m}`: entre n y m caracteres
  - `^:` al ppio de la cadena (ej.: `^[a-zA-Z]` = empieza por letra)
  - `$:` al final de la cadena (ej.: `[0-9]$` = que acabe en dígito)
- **Modificadores**:
  - `/i`: que no distinga entre mayúsculas y minúsculas (Ej. `/html/i` = buscará html, Html, HTML, …)
  - `/g`: búsqueda global, busca todas las coincidencias y no sólo la primera
  - `/m`: busca en más de 1 línea (para cadenas con saltos de línea)

## Bibliografía

- <https://alf.nu/RegexGolf?world=regex&level=r00>
- <https://regexcrossword.com/>
- <https://www.w3schools.com/jsref/jsref_obj_regexp.asp>

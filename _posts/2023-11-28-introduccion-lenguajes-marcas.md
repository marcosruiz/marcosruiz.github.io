---
title: "Introducción a los lenguajes de marcas"
date: 2023-11-28 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Multiplataforma, Lenguajes de Marcas y Sistemas de Gestión de Información]
tags: [desarrollo de aplicaciones multiplataforma, lenguajes de marcas y sistemas de gestión de información, administración de sistemas informáticos de red, desarrollo de aplicaciones web, dam, daw, asir, lmsgi, xml, teoría]
img_path: /assets/img/introduccion-lenguajes-marcas/
---

{:.section}
## Introducción

Los principales lenguajes de marcas son:

- GML
- SGML
- TeX/LaTeX
- RTF
- PostScript
- HTML
- XML
- Markdown
- JSON

{:.subsection}
### GML

En GML (Geography Markup Language, Lenguaje de Marcado Geográfico) los metadatos comienzan con dos puntos (:) seguidos del nombre de la etiqueta:

```plaintext
:h0.El reino de los animales
```

`h0` indica el título principal.

Ejemplo:

```gml
:h0.El reino de los animales
:h1.Mamíferos
:p.Los mamíferos (:hp1.Mammalia:ehp1.) son una clase de
vertebrados :hp2.amniotas homeotermos:ehp2. que poseen
glándulas mamarias productoras de leche con las que
alimentan a las crías
:h1.Aves
:p.Las aves son animales vertebrados, de sangre
caliente, que caminan, saltan o se mantienen solo sobre
las extremidades posteriores
```

El código anterior se podría convertir en:

![imgDescription](ejemploGml.png)
_Resultado ejemplo GML_

{:.subsection}
### SGML

Se trata de la estandarización del lenguaje GML que hizo la agencia ISO. Es muy importante por inventar las reglas en las que se basan los lenguajes HTMl y XML. XML es un subconjunto de SGML con reglas más estrictas. Los elementos de SGML se crean a voluntad.

Ejemplo:

```sgml
<articulo>
   <titulo>El reino de los animales</titulo>
   <normal>Los mamíferos (<negrita>Mammalia</negrita>) son una clase...</normal>
</articulo>
```

{:.subsection}
### TeX/LaTeX

TeX es una mezcla entre procesador de textos y lenguaje de programación usado fundamentalmente para escribir documentos de contenido científico y gran calidad de impresión. Fue desarrollado por Donald E. Knuth y actualmente hay implementaciones para todo tipo de ordenadores.

LaTeX es un lenguaje aún más potente y fácil de usar; está basado en TeX.

Ejemplo:

```latex
\documentclass{article}

% Language setting
% Replace `english' with e.g. `spanish' to change the document language
\usepackage[spanish]{babel}

% Set page size and margins
% Replace `letterpaper' with `a4paper' for UK/EU standard size
\usepackage[letterpaper,top=2cm,bottom=2cm,left=3cm,right=3cm,marginparwidth=1.75cm]{geometry}

% Useful packages
\usepackage{amsmath}
\usepackage{graphicx}
\usepackage[colorlinks=true, allcolors=blue]{hyperref}

\title{Your Paper}
\author{You}

\begin{document}
\maketitle

\begin{abstract}
Your abstract.
\end{abstract}

\section{Introduction}

Please visit our \href{https://www.overleaf.com/learn}{help library}, or head to our plans page to \href{https://www.overleaf.com/user/subscription/plans}{choose your plan}.

\LaTeX{} is great at typesetting mathematics. Let $X_1, X_2, \ldots, X_n$ be a sequence of independent and identically distributed random variables with $\text{E}[X_i] = \mu$ and $\text{Var}[X_i] = \sigma^2 < \infty$, and let
\[S_n = \frac{X_1 + X_2 + \cdots + X_n}{n}
      = \frac{1}{n}\sum_{i}^{n} X_i\]
denote their mean. Then as $n$ approaches infinity, the random variables $\sqrt{n}(S_n - \mu)$ converge in distribution to a normal $\mathcal{N}(0, \sigma^2)$.

\section{Some examples to get started}

\subsection{How to create Sections and Subsections}

Simply use the section and subsection commands, as in this example document! With Overleaf, all the formatting and numbering is handled automatically according to the template you've chosen.

\subsection{How to include Figures}

See the code for Figure \ref{fig:frog} in this section for an example.

Note that your figure will automatically be placed in the most appropriate place for it, given the surrounding text and taking into account other figures or tables that may be close by. You can find out more about adding images to your documents in this help article on \href{https://www.overleaf.com/learn/how-to/Including_images_on_Overleaf}{including images on Overleaf}.

\begin{figure}
\centering
\includegraphics[width=0.25\linewidth]{frog.jpg}
\caption{\label{fig:frog}This frog was uploaded via the file-tree menu.}
\end{figure}

\end{document}
```

El código anterior se podría convertir en:

![imgDescription](ejemploLatex.png)
_Ejemplo de LaTeX en <https://es.overleaf.com/>_

{:.subsection}
### RTF

- Formato de texto enriquecido, creado por Microsoft.
- Es un formato casi estándar para procesadores de texto.
- Guarda como metadatos, el formato de los documentos.
- La mayoría de los procesadores de texto pueden leer y escribir documentos RTF.

{:.question}
¿Qué es un metadato?

Ejemplo:

```rtf
{\rtf1\ansi{\fonttbl\f0\fswiss Helvetica;}\f0\pard
Esto es un texto en {\b negrita}.\par
}
```

{:.subsection}
### PostScript

- Es un lenguaje de descripción de páginas.
- Realmente es un lenguaje de programación que marca acciones a realizar.

Ejemplo:

```ps
%!PS
/Courier           % Elige el tipo de letra
20 selectfont      % Establece el tamaño de la letra y
                   % la toma como el tipo de letra en uso
72 500 moveto      % Coloca el cursor en las coordenadas
                   % 72, 500 (contando los píxeles desde
                   % la esquina izquierda de la página)
(Hola mundo!) show % Escribe el texto entre paréntesis,
showpage           % Imprime el resultado
```

![imgDescription](ejemploPs.png)
_Resultado PostScript generado con <https://online2pdf.com/convert-ps-to-pdf>_

{:.subsection}
### XML

- Lenguaje ideado como mejora de SGML
- Usa reglas más estrictas (es más formal)
- Se usa mucho para bases de datos y para exportación e información
- Como SGML, es un lenguaje para definir otros lenguajes

> Si quieres saber más puedes ir al artículo [XML](/posts/xml/).
{:.prompt-info}

{:.subsection}
### HTML

- Es un lenguaje definido mediante SGML.
- Creado por Tim Bernes Lee para crear documentos transportables por Internet.
- Se basa en el hipertexto (enlaces a otros documentos).
- Es el lenguaje de marcas más popular.
- Es el lenguaje de las páginas web.

Ejemplo:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <h1>Hola mundo!</h1>
  <p>Hola mundo!</p>
</body>
</html>
```

![imgDescription](ejemploHtml.png)
_Resultado HTML_

> Si quieres saber más puedes ir al artículo [HTML](/posts/html/).
{:.prompt-info}

{:.subsection}
### Markdown

- Es una simplificación de HTML.
- Es muy exitoso al haber sido adoptado por sitios web muy populares entre los programadores (como GitHub o StackExchange).

Ejemplo:

```markdown
# EI reino de los animales

## Mamíferos

Los mamíferos son una clase de vertebrados *amniotas homeotermos* . que poseen glándulas mamarias productoras de leche con las que alimentan a las crías

## Aves

Las aves son que caminan, extremidades animales vertebrados, de sangre caliente, saltan o se mantienen solo sobre las posteriores
```

![imgDescription](ejemploGml.png)
_Resultado ejemplo Markdown_

{:.subsection}
### JSON

- JavaScript Object Notation.
- Es una notación para almacenar objetos, creada para el lenguaje JavaScript.
- Es muy versátil y coherente con los lenguajes de programación.
- Está siendo el lenguaje de etiquetas más utilizado para almacenar datos.

Ejemplo:

```json
{
  "squadName": "Super hero squad",
  "homeTown": "Metro City",
  "formed": 2016,
  "secretBase": "Super tower",
  "active": true,
  "members": [
    {
      "name": "Molecule Man",
      "age": 29,
      "secretIdentity": "Dan Jukes",
      "powers": ["Radiation resistance", "Turning tiny", "Radiation blast"]
    },
    {
      "name": "Madame Uppercut",
      "age": 39,
      "secretIdentity": "Jane Wilson",
      "powers": [
        "Million tonne punch",
        "Damage resistance",
        "Superhuman reflexes"
      ]
    },
    {
      "name": "Eternal Flame",
      "age": 1000000,
      "secretIdentity": "Unknown",
      "powers": [
        "Immortality",
        "Heat Immunity",
        "Inferno",
        "Teleportation",
        "Interdimensional travel"
      ]
    }
  ]
}
```

## Bibliografía

- <https://jorgesanchez.net/>

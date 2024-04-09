---
title: "Introducción a los lenguajes de marcas"
date: 2023-11-28 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Multiplataforma, Lenguajes de Marcas y Sistemas de Gestión de Información]
tags: [desarrollo de aplicaciones multiplataforma, lenguajes de marcas y sistemas de gestión de información, administración de sistemas informáticos de red, desarrollo de aplicaciones web, dam, daw, asir, lmsgi, xml, teoría]
img_path: /assets/img/introduccion-lenguajes-marcas/
---

{:.section}
## Un poco de historia...

Como se ha comentado en el artículo [Representación de la información](/posts/representacion-informacion/), el problema de la exportación de datos ha puesto en entredicho a los archivos binarios como fuente para exportar e importar información.

En su lugar, parece que los archivos de texto poseen menos problemas. Por ello, se ha intentado que los archivos de texto plano (archivos que solo contienen texto y no otros datos binarios) pudieran servir para almacenar otros datos como por ejemplo detalles sobre el formato del propio texto u otras indicaciones.

Los procesadores de texto fueron el primer software en encontrarse con este dilema. Puesto que son programas que sirven para escribir texto parecía que lo lógico era que sus datos se almacenaran como tal. Pero necesitan guardar datos referidos al formato del texto, tamaño de la página, color, tipografía, márgenes, etc. La solución clásica ha sido guardar la información de forma binaria, lo que provoca los ya comentados problemas.

Algunos procesadores de texto optaron por guardar toda la información como texto, haciendo que las indicaciones de formato no se almacenen de forma binaria sino textual. Dichas indicaciones son caracteres marcados de manera especial para que así un programa adecuado pueda traducir dichos caracteres no como texto sino como operaciones que finalmente producirán mostrar el texto del documento de forma adecuada.

La idea del marcado procede del inglés marking up término con el que se referían a la técnica de marcar manuscritos con lápiz de color para hacer anotaciones como por ejemplo la tipografía a emplear en las imprentas. Este mismo término se ha utilizado para los documentos de texto que contienen comandos u anotaciones.

Las posibles anotaciones o indicaciones incluidos en los documentos de texto han dado lugar a lenguajes (entendiendo que en realidad son formatos de documento y no lenguajes en el sentido de los lenguajes de programación de aplicaciones) llamados lenguajes de marcas, lenguajes de marcado o lenguajes de etiquetas.

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

Se considera a Charles Goldfarb como al padre de los lenguajes de marcas. La razón para esta consideración es, precisamente, su ayuda en la creación del lenguaje GML (Generalized Markup Language).

Golfarb era un investigador de IBM que propuso ideas para que los documentos de texto que incluyeran la posibilidad de marcar el formato del mismo. Al final ayudó a realizar el lenguaje GML de IBM el cual puso los cimientos del futuro SGML (padre de HTML y XML) ideado por el propio Goldfarb y padre de la mayoría de lenguajes de marcas actuales.

```plaintext
:h0.El reino de los animales
```

`h0` indica el título principal.

Ejemplo de código GML:

```gml
:h0.El reino de los animales
:h1.Mamíferos
:p.Los mamíferos (:hp1.Mammalia:ehp1.) son una clase de vertebrados :hp2.amniotas homeotermos:ehp2. que poseen glándulas mamarias productoras de leche con las que alimentan a las crías
:h1.Aves
:p.Las aves son animales vertebrados, de sangre caliente, que caminan, saltan o se mantienen solo sobre las extremidades posteriores
```

El código anterior se podría convertir en:

![imgDescription](ejemploGml.png)
_Resultado ejemplo GML_

La idea es que los elementos arcados con símbolos “:" y “." delimiten marcas de formato. Así :h1. significa título principal y :p. significa párrafo.

{:.subsection}
### SGML

Se trata de una mejora muy notable del lenguaje de GML que estandarizaba el lenguaje de marcado y que fue definida finalmente por ISO como estándar mundial en documentos de texto con etiquetas de marcado. Su responsable fue Charles Goldfarb.

Su importancia radica en que es el padre del lenguaje XML y la base sobre la que se sostiene el lenguaje HTML, dos de los lenguajes de marcas más populares de la historia.

En SGML los elementos que contienen indicaciones para el texto se colocan entre símbolos < y >. Las etiquetas se cierran con el signo /. Es decir las reglas fundamentales de los lenguajes de etiquetas actuales ya las había definido SGML.

En realidad (como XML) no es un lenguaje con unas etiquetas concretas, sino que se trata de un lenguaje que sirve para definir lenguajes. Entre los lenguajes definidos mediante SGML, sin duda HTML es el más popular.

Ejemplo de SGML:

```sgml
<articulo>
  <titulo1>El reino de los animales</titulo1>
  <titulo2>Mamíferos</titulo2>
  <normal>Los mamíferos (<negrita>Mammalia</negrita>) son una clase de vertebrados <cursiva>amniotas homeotermos</cursiva>. que poseen glándulas mamarias productoras de leche con las que alimentan a las crías</normal>
  <titulo2>Aves</titulo2>
  <normal>Las aves son animales vertebrados, de sangre caliente, que caminan, saltan o se mantienen solo sobre las extremidades posteriores</normal>
</articulo>
```

Como veremos más adelante, este documento es muy parecido a un documento realizado en XML, de hecho XML es un subconjunto de SGML más restrictivo (es un lenguaje que tiene normas más estrictas).

SGML necesitará definir cómo se debe mostrar los elementos titulo1, titulo2, etc. Ya que son nombres de elementos que habrá que definir. Esa es la prueba de que es un lenguaje para definir tipos de documento.

SGML aportó las etiquetas tal cual las conocemos actualmente gracias al éxito de HTML.

{:.subsection}
### TeX y LaTeX

En la década de los 70 Donald Knuth (uno de los ingenieros informáticos más importantes de la historia, padre del análisis de algoritmos y premio Turing 1974) creó el lenguaje TeX para producir documentos científicos utilizando una tipografía y capacidades que fueran iguales en cualquier computadora, asegurando además una gran calidad en los resultados.

Para ello apoyó a TeX con tipografía especial (fuentes Modern Computer) y un lenguaje de definición de tipos (METAFONT). TeX ha tenido cierto éxito en la comunidad científica gracias a sus 300 comandos que permiten crear documentos con tipos de gran calidad. Requiere de software capaz de convertir el archivo TeX a un formato de impresión.

El éxito de TeX produjo numerosos derivados de los cuales el más popular es LaTeX. LaTeX fue definido en 1984 por Leslie Lamport (premio Turing 2003), aunque después ha sido numerosas veces revisado. Al utilizar comandos de TeX y toda su estructura tipográfica, adquirió rápidamente notoriedad y sigue siendo utilizado para producir documentos con expresiones científicas, de gran calidad. La idea es que los científicos se centren en el contenido y no en la presentación.

Ejemplo de código LaTeX:

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

{:.question}
¿Se sigue usando LaTeX a dia de hoy?

{:.subsection}
### RTF

RTF es el acrónimo de Rich Text Format (Formato de Texto Enriquecido) un lenguaje ideado por Richard Brodie, Charles Simonyi y David Luebbert (miembros del equipo de desarrollo de Microsoft Word) en 1987 para producir documentos de texto que incluyan anotaciones del formato. Es un formato propiedad de Microsoft, pero reconocido por la mayoría de aplicaciones de proceso de texto.

Actualmente se trata de un formato aceptado para documentos de texto que contengan información sobre el estilo del texto. Se usa mucho como formato de intercambio entre distintos procesadores por su potencia. El procesador de texto Word Pad incorporado dentro del sistema operativo Windows lo utiliza como formato nativo.

Codifica el texto usando 8 bits, para caracteres fuera del ASCII requiere de secuencias de escape lo que, prácticamente, le hace inviable como formato legible de texto en la mayoría de lenguas del planeta. En las últimas versiones de RTF ya sí se ofrece un mayor soporte a Unicode.

Su éxito procede de que las indicaciones de formato son potentes y son más legibles por las personas que el formato nativo de los procesadores de textos, aunque es, como lenguaje de marcado, uno de los más crípticos.

Ejemplo de RTF:

```plaintext
{\rtf\ansicpg1252\deff0\deflang3082
{\fonttbl
{\f0\fcharset0\froman Times New Roman}
{\f1\fcharset0\fswiss Arial Black}
}
{\pard \f1\fs48
El reino de los animales
\par}
{\pard \f1\fs40
Mamíferos
\par}
{\pard \f0\fs25
Los mamíferos ({\b Mammalia}) son una clase de 
vertebrados {\i amniotas homeotermos} que poseen 
glándulas mamarias productoras de leche con las que 
alimentan a las crías
\par}
{\pard \f1\fs40
Aves
\par}
{\pard \f0\fs25
Las aves son animales vertebrados, de sangre caliente, 
que caminan, saltan o se mantienen solo sobre las 
extremidades posteriores
\par}
}
```

![Resultado de ejemplo de RTF](rtf.png)
_Resultado de ejemplo de RTF_

{:.question}
¿Qué es un metadato?

{:.question}
¿Qué procesador de texto usa por defecto el formato RTF?

{:.subsection}
### PostScript

Se trata de un lenguaje de descripción de páginas. De hecho es el más popular para ese fin, siendo el lenguaje más utilizado por los sistemas de impresión de alta gama.

Permite crear documentos en los que se dan indicaciones potentísimas sobre como mostrar información en el dispositivo final. Se inició su desarrollo en 1976 por John Warnock y dos años más tarde se continuo con la empresa Xerox, hasta que en 1985 el propio Warnock funda Adobe Systems y desde esa empresa se continua su desarrollo.

Es en realidad todo un lenguaje de programación que indica la forma en que se debe mostrar la información que puede incluir texto y el tipo de letra del mismo, píxeles individuales y formas vectoriales (líneas, curvas). Sus posibilidades son muy amplias.

Ejemplo de PostScript:

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

Se trata de un subconjunto de SGML ideado para mejorar el propio SGML y con él definir lenguajes de marcado con sintaxis más estricta, pero más entendible.

Ha sido enormemente popular desde finales de los 90 y ha conseguido incorporar numerosos lenguajes a su alrededor para conseguir documentos muy dinámicos y con gran capacidad de formato. Es uno de los formatos de documentos más populares para exportación e importación de datos.

Actualmente está siendo sustituido en la mayoría de sus usos por JSON.

Ejemplo de XML:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<nombre>Jorge</nombre>
<apellido1>Sánchez</apellido1>
<dirección>
  <calle>C/ Falsa número 0</calle>
  <localidad>Palencia</localidad>
  <código_Postal>34001</código_Postal>
  <pais>España</pais>
</direccion>
<teléfonos>
  <teléfono tipo="fijo">999 999 999</teléfono>
  <teléfono tipo="móvil">666 666 666</teléfono>
</telefono>
```

> Si quieres saber más puedes ir al artículo [XML](/posts/xml/).
{:.prompt-info}

{:.subsection}
### HTML

Tim Bernes Lee utilizó SGML para definir un nuevo lenguaje de etiquetas que llamó Hypertext Markup Language (lenguaje de marcado de hipertexto) para crear documentos transportables a través de Internet en los que fuera posible el hipertexto; es decir la posibilidad que determinadas palabras marcadas de forma especial permitieran abrir un documento relacionado con ellas.

A pesar de tardar en ser aceptado, HTML fue un éxito rotundo y la causa indudable del éxito de Internet. Hoy en día casi todo en Internet se ve a través de documentos HTML, que popularmente se denominan páginas web.

Inicialmente estos documentos se veían con ayuda de intérpretes de texto (como por ejemplo el Lynx de Unix) que simplemente coloreaban el texto y remarcaban el hipertexto. Después el software se mejoró y aparecieron navegadores con capacidad más gráfica para mostrar formatos más avanzados y visuales.

Ejemplo de HTML:

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

{:.question}
¿HTML está definico mediante SGML?

{:.question}
¿Qué significa hipertexto?

> Si quieres saber más puedes ir al artículo [HTML](/posts/html/).
{:.prompt-info}

{:.subsection}
### Markdown

Se trata de un formato de marcado simple que permite crear documentos sencillos y convertirles en documentos HTML.

Fue creado por John Gruber con la ayuda de Aaron Shwartz. La pretensión de este lenguaje es definir unas normas muy sencillas para crear documentos semejantes a los que se crean mediante el lenguaje HTML.

Ha tenido un éxito muy notable, especialmente desde que fue adoptado por sitios tan populares como GitHub, Reddit o StackExchange para que los usuarios publicaran contenido con formato.

Ejemplo de texto con formato Markdown:

```markdown
# EI reino de los animales
## Mamíferos
Los mamíferos (**Mammalia**) son una clase de vertebrados *amniotas homeotermos* que poseen glándulas mamarias productoras de leche con las que alimentan a las crías
## Aves
Las aves son que caminan, extremidades animales vertebrados, de sangre caliente, saltan o se mantienen solo sobre las posteriores
```

![imgDescription](ejemploGml.png)
_Resultado ejemplo Markdown_

{:.subsection}
### JSON

Abreviatura de JavaScript Object Notation, Se trata de una notación de datos procedente del lenguaje JavaScript estándar (concretamente en la versión ECMAScript de 1999). En el año 2002 se le daba soporte desde muchos de los navegadores y su fama ha sido tal que ahora se ha convertido en una notación independiente de JavaScript que compite claramente con XML en funcionalidad.

Las razones de su éxito se deben a su versatilidad, ya que permiten definir datos complejos, como arrays o código de funciones, elementos pertenecientes al mundo de la programación de aplicaciones. El éxito de JavaScript junto a la versatilidad comentada, le han convertido en el lenguaje de marcado más popular para almacenar datos.

En JSON, el texto se divide en datos y metadatos. De modo que el símbolo de los dos puntos separa el metadato del dato. Por otro lado, los símbolos de llave y corchete permiten agrupar de diversas formas los datos.

Ejemplo de código JSON:

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

{:.section}
## Tipos de lenguajes de marcas

- **Orientados a la presentación**. En ellos los metadatos permiten indicar el formato en el que se debe presentar el texto. Es el caso de RTF, en el que sus etiquetas especifican tipos de letra, tamaños de página, colores, etc. Las primeras versiones de HTML también se consideran así, ya que incluían etiquetas como font mediante la cual se especificaba el formato de fuente.
- **Orientados a la descripción**. En ellos las marcas especiales permiten dar significado al texto pero no indican cómo se debe presentar en pantalla el mismo. Sería el caso de XML (o de SGML), JSON, Markdown y de las versiones actuales de HTML. En estos lenguajes simplemente se indica el significado del contenido: si el texto es un título, un párrafo normal, un pie de ilustración, una dirección postal etc.
- **Orientados a procedimientos**. Se trata de documentos en los que el texto marcado, se interpreta como órdenes a seguir, y así el archivo en realidad contiene instrucciones a realizar con el texto (girarle, convertirle en una fórmula, realizar una suma, etc.). Es el caso de LaTeX o PostScript.

## Bibliografía

- <https://jorgesanchez.net/>

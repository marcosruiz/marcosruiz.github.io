---
title: "Imágenes en la web"
date: 2024-10-26 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
mermaid: true
img_path: /assets/img/imagenes-web/
---

{:.section}
## Introducción

Los recursos gráficos se emplean mucho en la Web y si se utilizan adecuadamente pueden mejorar el aprendizaje del usuario y añadir valor a nuestro sitio, pero si se utilizan inadecuadamente, producen el efecto contrario.

A la hora de emplear imágenes en la web, debemos tener en cuenta que las imágenes son archivos que tienen un tamaño y, que para poder visualizarse correctamente deben descargarse previamente. Por esta razón, sólo usaremos aquellas imágenes que complementen nuestro sitio web y trataremos de evitar aquellas cuya única finalidad sea adornar nuestro sitio.

Desde el punto de la accesibilidad web, los usuarios con discapacidad visual deben tener acceso a la información transmitida por las imágenes proporcionando una alternativa textual que transmita dicha información.

{:.question}
¿Qué es el alt text?

En este artículo, estudiaremos las imágenes, sus características, cómo se crean y cómo se gestionan para un mejor aprovechamiento de los recursos de la web.

{:.section}
## ¿Qué es una imagen digital?

Una imagen digital es aquella en la que se emplean los unos y los ceros para almacenar toda la información relativa a los colores y luminosidad de una imagen.

En la siguiente imagen puedes ver un paisaje donde se han enmarcado con diferentes colores y se han etiquetado con números las montañas en función de su profundidad. En amarillo y con el número 1, están las montañas más cercanas. En rojo y con el número 2, está la montaña que se encuentra un poco más lejos que las anteriores. Por último, en blanco, con puntos y rayas negras y con el número 3, están las montañas más lejanas de la fotografía. Si te fijas, verás que el contraste de los colores y la nitidez de las montañas es mayor cuanto más cerca están.

![Paisaje con zonas marcadas](paisaje.png)
_Paisaje con zonas marcadas_

Una imagen digital es, en definitiva, el resultado visual final de una imagen capturada inicialmente por un dispositivo que almacena la información digitalmente y que puede ser transformada, posteriormente, usando los medios informáticos.

{:.section}
## Tipos de imágenes

Las imágenes digitales pueden ser de dos tipos:

- **De mapas de bits** (también llamadas imágenes rasterizadas, imágenes matriciales o bitmap)
  - Se construyen con píxeles.
  - Pierden calidad al hacer un zoom sobre la imagen para aumentar su tamaño porque el número de píxeles sigue siendo el mismo.
  - El tamaño o peso del archivo es proporcional al tamaño de la imagen.
  - Se usa para representar imágenes realistas o complejas: fotografías, ilustraciones.
- **Vectoriales**
  - Se construyen a partir de funciones matemáticas que representan objetos geométricos (polígonos, segmentos, arcos, etcétera).
  - No pierden calidad cuando se hace un zoom para aumentar mucho el tamaño.
  - El tamaño de la imagen es independiente del tamaño del archivo. Normalmente ocupará menos que los mapas de bits.
  - Se usa para representar dibujos, esquemas, planos.

Como ves, estos tipos de imágenes tienen diferentes características y aplicaciones.

En la siguiente figura puedes observar la diferencia que existe al ampliar un trozo de una imagen de mapa de bits (en la parte izquierda de la imagen) y al ampliar un trozo de una imagen vectorial (en la parte derecha de la imagen). Puedes comprobar que en el primer caso los bordes de las figuras se deforman (se ven como si fueran los dientes de una sierra), mientras en el segundo caso los bordes están formados por líneas y se siguen viendo perfectamente.

![Imagen de mapa de bits vs vectorial](mapaDeBitsVsVectorial.png)
_Imagen de mapa de bits vs vectorial_

<details class="card mb-2">
  <summary class="card-header question">¿Son las imágenes de tipo vectorial las más apropiadas para almacenar una fotografía de un cumpleaños?
</summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Formatos de imagen

Cualquier información almacenada en un soporte electrónico lo está en un determinado formato de archivo que le va a indicar al ordenador el tipo de archivo con el que se está trabajando. Las imágenes, al igual que cualquier documento, hoja de cálculo, presentación, etcétera, tienen un formato de almacenamiento.

Tanto las cámaras de fotos, el escáner o los programas empleados para crear o modificar imágenes digitales tienen un formato de almacenamiento preestablecido, aunque nos permitirán almacenar en distintos formatos.

Hay muchos formatos para almacenar imágenes. En la siguiente tabla daremos, simplemente, una relación por orden alfabético de los más conocidos:

| Siglas del formato | Significado de las siglas (en inglés)     | Programas que lo usan              | Tipo          |
| ------------------ | ----------------------------------------- | ---------------------------------- | ------------- |
| AI.                | Adobe Illustrator Artwork.                | Adobe Illustrator.                 | Vectorial     |
| BMP.               | Bit Map                                   | Microsoft Windows.                 | Mapa de bits. |
| CDR.               | CorelDraw.                                | CorelDraw                          | Vectorial.    |
| CPT.               | Corel Photo-paint                         | Corel Photo-paint                  | Mapa de bits. |
| DXF.               | Drawing eXchange (or interchange) Format. | Autodesk.                          | Vectorial.    |
| EPS.               | Encapsulated PostScript.                  | Adobe Photoshop.                   | Ambos.        |
| FH*.               | Macromedia Freehand Document.             | Macromedia Freehand.               | Vectoriales.  |
| FLA                | Macromedia Flash                          | Adobe Flash.                       | Vectorial.    |
| GIF.               | Graphics Interchange Format.              |                                    | Mapa de bits. |
| JPG, JPEG.         | Joint Photographic Experts Group.         | Paint Shop Pro, Photoshop, GIMP, … | Mapa de bits. |
| ODG.               | Open Document Graphic.                    | OpenOffice.org Draw.               | Vectorial     |
| PCX.               | Picture eXchange.                         | Paintbrush                         | Mapa de bits. |
| PIC, PCT.          | Picture.                                  | PC Paint.                          | Ambos         |
| PNG.               | Portable Network Graphics.                | Navegadores web.                   | Mapa de bits. |
| PSD                | PhotoShop Document.                       | Adobe Photoshop.                   | Mapa de bits. |
| PSP                | PaintShop Pro.                            | PaintShop Pro.                     | Mapa de bits. |
| SVG.               | Scalable Vector Graphics.                 |                                    |               |
| TIF, TIFF.         | Tagged Image File Format.                 | Gráficos de imprenta y escáner.    | Mapa de bits. |
| WMF.               | Windows Metafile.                         | Aplicaciones Microsoft.            | Vectorial     |

A la hora de incorporar una imagen a una web, tendremos que utilizar uno de los tres formatos siguientes: GIF, JPG o PNG.

> Aunque almacenes la imagen en un formato para la web, guarda siempre una copia de la imagen digital en su versión original. Nunca se sabe cuando volverás a necesitarla para hacerle una modificación.
{:.prompt-tip}

<details class="card mb-2">
  <summary class="card-header question">¿Cuál crees que es el motivo de que las personas que han desarrollado los navegadores hayan escogido estos formatos y no otros?
</summary>
  <div class="card-body" markdown="1">

Una de las razones principales es el espacio que ocupan las imágenes y el tiempo que tardan en descargarse. Cuando visitamos por primera vez una página Web se tiene que descargar el código fuente de la página y todas las imágenes que figuran en su página inicial.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

- El **formato GIF** fue el primero en aparecer en Internet, creado por Compuserve en 1987, es un formato empleado en imágenes que tienen entre 2 y 256 colores. Su principal uso sigue siendo el mostrar imágenes animadas en las páginas web o en la creación de los iconos que acompañan a los enlaces y los logotipos. En general, resulta apropiado para todas las imágenes que tengan grandes áreas de color sólido.
- El **formato JPG** se emplea en fotografía digital y para imágenes con más de 256 colores, logrando almacenar imágenes fotográficas de gran tamaño en poco espacio. No es conveniente utilizar este formato en las imágenes con colores sólidos, siendo muy recomendable cuando la imagen tiene gran variedad de colores distintos o de colores monocromáticos.
- El **formato PNG** es el último de los tres en aparecer. Este formato se ha convertido en la alternativa del formato GIF, permitiendo el uso de más de 256 colores, lo que supone una gran ventaja.

<details class="card mb-2">
  <summary class="card-header question">¿Qué tipo de imagen son los formatos GIF, ODG, SVG y JPG?</summary>
  <div class="card-body" markdown="1">

GIF y JPG son formatos de tipo mapas de bits, mientras que ODG y SVG son formatos de tipo vectorial.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Cuál es el formato WEBP?</summary>
  <div class="card-body" markdown="1">

WebP (Formato de Imagen Web) fue desarrollado por Google como un reemplazo para los formatos GIF, JPEG y PNG. Ofrece compresión con y sin pérdida de calidad, además de soporte para animaciones, y se presenta como una solución integral en el ámbito de los formatos de archivo de imagen. Este formato presume tamaños de archivo más pequeños en comparación con sus predecesores.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Resolución, tamaño, profundidad de color

las imágenes de mapas de bits están formadas por píxeles y cuando hacemos suficiente zoom en una de estas imágenes podemos apreciar los píxeles que la forman. Coloquialmente también se les llaman dientes de sierra.

Teniendo en cuenta que cada píxel es uno de esos cuadrados, el número de cuadrados que tenga una imagen determinará el tamaño de la misma. Así, por ejemplo, una imagen que tenga 60 cuadrados o píxeles de ancho y 60 cuadrados o píxeles de alto tendrá un tamaño de 360 píxeles.

<details class="card mb-2">
  <summary class="card-header question">¿Nos basta esta información para saber cuánto ocupará una imagen en nuestro espacio de almacenamiento?</summary>
  <div class="card-body" markdown="1">

No. Necesitamos conocer también el concepto de profundidad de color.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Nos basta esta información para saber cuánto espacio ocupará en nuestro papel al imprimirla?</summary>
  <div class="card-body" markdown="1">

No. Necesitamos conocer también el concepto de profundidad de color.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Profundidad de color

La profundidad de color es una característica de las imágenes que nos indica el número de bits de información que se almacenan en disco por cada píxel, el cual está relacionado con el número de colores que se puedan representar en cada píxel. Teniendo esto en cuenta, si en la imagen anterior de 360 píxeles:

- **Supuesto A**: cada uno de estos píxeles puede tener un máximo de 256 colores distintos, la imagen necesitará 3600 bytes de espacio en disco para su almacenamiento.
- **Supuesto B**: En cambio, si cada píxel puede ser de 16777216 colores diferentes necesitará 10800 bytes.

El espacio que ocupa cada imagen se calcula con la siguiente fórmula:

$Espacio = \frac{Ancho * Alto * Profundidad en bits}{8} Bytes$

Siendo la Profundidad el número de bits que necesito para representar N colores.

- **Supuesto A**: Necesito 8 bits para representar 256 ($2^{8}$)colores.
- **Supuesto B**: Necesito 24 bits para representar 256 ($2^{24}$)colores.

{:.section}
## Compresión de imágenes

<details class="card mb-2">
  <summary class="card-header question">Si has leído con detenimiento las presentaciones del apartado anterior podrás comprobar fácilmente que una fotografía en color realizada con una cámara de fotos de 12 megapíxeles, o lo que es lo mismo, una imagen de 4000 píxeles de ancho por 3000 píxeles de alto, tendría que ocupar en disco un poco más de 34 MB. ¿Realmente ocupa tanto?
</summary>
  <div class="card-body" markdown="1">

Si la fotografía ocupase los 34 MB en la memoria de la cámara nos cabrían sólo 120 fotos. Pero en la realidad caben muchas más.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

En la web es muy importante que las imágenes ocupen lo menos posible. Cuanto menos peso tengan las imágenes, más rápido podrán descargarse.

Para lograr que las imágenes ocupen el menor tamaño posible se utilizan las técnicas de compresión. Estas técnicas consisten en reducir el número de bits necesarios para representar la imagen eliminando la información redundante.

<details class="card mb-2">
  <summary class="card-header question">¿Cómo es posible que dos fotografías distintas pero que tienen el mismo número de píxeles de ancho y de alto ocupen distinto espacio en el dispositivo de almacenamiento?</summary>
  <div class="card-body" markdown="1">

Si te fijas en la siguiente imagen verás que las dos fotografías tienen las mismas dimensiones en número de píxeles (2048x1536); sin embargo, la fotografía de la parte superior ocupa en disco 1,31 MB, mientras que la de la parte inferior ocupa tan sólo 378 KB. La razón es la técnica de compresión realizada unida a las características de la fotografía.

![Mismas dimensiones en dos imágenes con distinto tamaño](mismaDimensionDistintoTamanio.png)
_Mismas dimensiones en dos imágenes con distinto tamaño_

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿En qué consiste la compresión?</summary>
  <div class="card-body" markdown="1">

La compresión consiste en eliminar la información redundante.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Existen varios métodos de compresión empleados por los diferentes formatos de almacenamiento de imágenes, pero se clasifican en dos tipos:

- **Métodos de compresión sin pérdida de información (lossless)**: estos métodos se basan en eliminar la redundancia de datos. Uno de ellos es el método de compresión LZW usado por el formato GIF, muy eficaz comprimiendo secuencias de píxeles del mismo color. Su funcionamiento es sencillo: si una imagen de 600 píxeles de ancho tiene en su primera fila 40 píxeles negros este método de compresión crea un código que ocupa poco, que significa "40 píxeles negros". La próxima vez que se encuentre con la misma secuencia lo sustituirá por ese mismo código. Es por esta razón que es un método ideal para el formato GIF cuyas imágenes están formadas en su mayor parte por colores uniformes.
- **Métodos de compresión con pérdida de información (lossy)** entre los que podemos destacar el algoritmo JPEG utilizado por el formato de imagen que lleva el mismo nombre. La tasa de compresión es mayor pero a costa de perder calidad, aunque esta pérdida no es perceptible para el ojo humano ya que este sistema se basa en la eliminación de la información visual redundante.

<details class="card mb-2">
  <summary class="card-header question">Si una imagen en JPEG está comprimida ¿por qué no es necesario descomprimirla?</summary>
  <div class="card-body" markdown="1">

Realmente el procesador la descomprime sin que nos demos cuenta. Es por esto que cuando abrimos una carpeta con muchas imágenes en formato JPEG estas tardan en visualizarse en la miniatura.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### Ejemplos

En los dos siguientes artículos puedes ver la misma imagen en diferentes formatos de compresión. Resulta sorprendente como podemos bajar el tamaño de una imagen de 486 kB a 17.7 kB sin que el usuario apenas lo note.

- <https://www.sitepoint.com/gif-png-jpg-which-one-to-use/>
- <https://jakearchibald.com/2020/avif-has-landed/>

<details class="card mb-2">
  <summary class="card-header question">¿Qué es el formato AVIF?</summary>
  <div class="card-body" markdown="1">

AVIF (AV1 Image File Format) es un formato de imagen diseñado para ofrecer una alta calidad de imagen con tasas de compresión eficientes, lo que resulta en archivos de menor tamaño sin sacrificar calidad visual.

Algunas de sus características principales incluyen:

- AVIF ofrece una compresión más avanzada que formatos como JPEG y PNG, y en muchos casos también supera a WebP
- Al igual que WebP, permite tanto compresión sin pérdida (para conservar el 100% de la calidad de la imagen) como con pérdida (para reducir significativamente el tamaño del archivo).
- AVIF soporta profundidades de color superiores a 8 bits y tiene capacidad para contenido HDR (alto rango dinámico)
- Al igual que PNG y WebP, el formato AVIF soporta canales alfa, lo que permite crear imágenes con transparencia.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Qué es el canal alfa?

{:.question}
¿Qué formatos de imagen soportan transparencias?

{:.question}
¿Qué es el HDR?

{:.section}
## Logos, iconos, banners e imágenes

Los recursos gráficos se emplean mucho en la web. Si se utilizan adecuadamente, pueden mejorar el aprendizaje del usuario y añadir valor a nuestro sitio. Ahora bien, si se utilizan inadecuadamente, producen el efecto contrario.

Los iconos se suelen emplear para complementar los textos de los enlaces y que debían contener la menor cantidad de detalle posible sin perder significado.

Los logotipos son un complemento de una página para ayudar al usuario a volver, mediante un enlace, a la página principal de un sitio.

Normalmente se suele emplear el formato GIF para los banners porque suelen incluir animaciones, el formato GIF o PNG para los logos e iconos, porque suelen tener pocos colores y áreas de color sólido, y el formato JPG para las imágenes o fotografías.

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un banner?</summary>
  <div class="card-body" markdown="1">

Un banner es un elemento gráfico publicitario o informativo que aparece en una página web, aplicación o en medios digitales. Su propósito principal suele ser atraer la atención del usuario para promocionar un producto, servicio, evento o información relevante.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

En resumen:

- Cuando realices un recurso gráfico que requiera animación deberás emplear el formato GIF.
- Cuando realices un recurso gráfico que requiera de pocos colores o colores uniformes sin animación deberás emplear el formato PNG.
- Cuando realices un recurso gráfico que requiera de muchos colores no uniformes deberás emplear el formato JPG.

{:.subsection}
### Estilos de ilustraciones

<iframe width="560" height="315" src="https://www.youtube.com/embed/5G7gTgcmvyk?si=AkMdlNr-oftlnjZN" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

{:.section}
## Software de edición de imágenes

Si nos interesa es trabajar con imágenes de alta calidad y que pesen poco, esta última condición necesaria en la web, sería conveniente emplear nuestro tiempo en aprender a manejar alguna herramienta que tenga una función de optimización de imágenes para su uso en la web.

El Photoshop es una herramienta profesional que tiene una función de optimización para la web que, entre otras, cosas permite:

- Preestablecer un tipo de ajuste según el formato de imagen. Por ejemplo se puede seleccionar un ajuste JPEG media que lleva asociado el establecimiento de una calidad del 30 % y el marcado de la casilla optimizado.
- Establecer un nuevo tamaño en píxeles o como porcentaje del tamaño original. Por ejemplo, un 25 % del original.
- Elegir el tipo de módem para el cual se quiere realizar la optimización. Por ejemplo se puede usar un módem RDSI de 56 Kbps.

Con esta selección de opciones la imagen generada tiene un tamaño de 1000x750 píxeles, ocupa tan sólo 24,59KB en disco y se descarga más rápido que yo después de haber bebido agua del grifo en la India.

La finalidad de la optimización es reducir el tamaño de las imágenes con la menor pérdida de calidad posible y reducir el tiempo de descarga de las imágenes.

Para finalizar este apartado, daremos una serie de consejos que están relacionados con la optimización:

1. Si escaneas imágenes para la web, hazlo a 72ppp. La web no necesita mayor resolución.
1. Si escaneas imágenes para retocar y usar en la web, almacénalas en formato TIFF. El formato JPEG sufre pérdidas inicialmente. Recuerda guardar siempre la imagen original.
1. Ten en cuenta el tamaño en píxeles de las imágenes a la hora de maquetar tu página. Si no necesitas tantos píxeles redimensiónala con un programa editor y optimízala de nuevo para la web. Esta operación la tendrás que realizar, siempre, partiendo de la imagen original.
1. Si son imágenes que deben verse con un grado de detalle muy grande, crea una miniatura de la imagen para tu página principal con un enlace a la imagen original. De esta forma, la página principal no pesará demasiado y los usuarios interesados en ver la imagen con detalle podrán hacerlo igualmente con sólo pulsar el enlace.
1. Si realizas tus propios diseños, dale prioridad a las líneas de color horizontales sobre las verticales ya que las primeras se comprimen mejor.
1. Trata de reducir la calidad al máximo sin que se perciba la pérdida. No todas las imágenes resultan afectadas de la misma manera cuando se reduce la calidad.

<details class="card mb-2">
  <summary class="card-header question">¿Cuál es el programa más famoso para la edición de imágenes bitmap?</summary>
  <div class="card-body" markdown="1">

- Software libre: GIMP.
- Software propietario: Adobe Photoshop, Corel PaintShop Pro, Photopea (gratis).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Cuál es el programa más famoso para la edición de imágenes vecotriales?</summary>
  <div class="card-body" markdown="1">

- Software libre: Inkscape.
- Software propietario: Adobe Illustrator o CorelDRAW.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Webs para la descarga de imágenes

- <https://unsplash.com/>
- <https://deepdreamgenerator.com/>
- http://freepik.es/
- http://pixabay.com/
- http://vecteezy.com/

{:.section}
## Webs para cambiar el formato de imágenes

- <http://tinypng.com/>
- <http://convertio.co/>

{:.section}
## Ley de la propiedad intelectual

Lee el artículo [Ley de propiedad intelectual](/posts/propiedad-intelectual).

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://lenguajecss.com/css/>
- <https://www.sitepoint.com/gif-png-jpg-which-one-to-use/>
- <https://jakearchibald.com/2020/avif-has-landed/>
- <https://logongas.es/doku.php?id=clase:daw:diw:2eval:tema09>

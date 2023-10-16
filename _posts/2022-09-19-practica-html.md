---
title: "Tarea: Introducción a HTML"
date: 2023-10-15 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, práctica, tarea, lmsgi, dam, daw, asir]
img_path: /assets/img/practica-html/
---

## Entrega y presentación

La entrega será en formato ZIP. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

## Calificación

La tarea se calificará como apto o no apto.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

> Si tienes alguna duda de cómo se usa una etiqueta puedes consultar el manual [HTML Tutorial](https://www.w3schools.com/html/default.asp) en inglés o el manual [HTML: Lenguaje de etiquetas de hipertexto](https://developer.mozilla.org/es/docs/Web/HTML) en español.
{:.prompt-info}

{:.activity}
### Corrige los errores de estructura

A continuación se te presenta un documento web con algunos errores de sintaxis y a nivel de estructura del documento web. Corrígelos.

```html
<DOCTYPE html>
<html>
    <head>
        </meta charset="utf-8">
        <meta name="description" content="Ejercicio HTML - Corrige los errores">
    <body>
    </head>
        <title>Corrige los errores que encuentres en el documento</title>
        
    <h1>Aprender HTML es muy divertido</h1>
    
    <p>Lorem fistrum veniam qui qui jarl. Pecador laboris tiene musho peligro caballo blanco caballo negroorl.
   
    <p>Lorem fistrum veniam qui qui jarl. Pecador laboris tiene musho peligro caballo blanco caballo negroorl.</p>
      
   
    </body>
    <p>Lorem fistrum veniam qui qui jarl. Pecador laboris tiene musho peligro caballo blanco caballo negroorl.</p>
<html>
```

{:.activity}
### Etiquetas de texto básicas

En este ejercicio vamos a practicar con las etiquetas de texto más comunes.

Las etiquetas seleccionadas para este ejercicio son:

```text
<p>, <strong>, <i>, <em>, <b>, <blockquote>
<hr/>, <br/>, <h1>,<h2>,<h3>
```

A partir del siguiente texto:

```text
Berners-Lee trabajó en el CERN desde junio hasta diciembre de 1980. Durante ese tiempo, propuso un proyecto basado en el hipertexto para facilitar la forma de compartir y la puesta al día de la información entre investigadores. En este periodo también construyó un programa llamado ENQUIRE que no llegó a ver la luz.1​ Después de dejar el CERN, en 1980, se fue a trabajar a la empresa de John Poole Image Computer Systems Ltd., pero regresó al CERN otra vez en 1984. En 1989, el CERN era el nodo de Internet más grande de Europa y Berners-Lee vio la oportunidad de unir Internet y el hipertexto (HTTP y HTML), de lo que surgiría la World Wide Web. Desarrolló su primera propuesta de la Web el 12 de marzo de 1989,2​ pero no tuvo mucho eco, por lo que en 1990 y con la ayuda de Robert Cailliau, hicieron una revisión que fue aceptada por su gerente, Mike Sendall. Usó ideas similares a las que había usado en el sistema Enquire, para crear la World Wide Web, para esto diseñó y construyó el primer navegador (llamado WorldWideWeb y desarrollado con NEXTSTEP) y el primer servidor Web al que llamó httpd (HyperText Transfer Protocol daemon). El primer servidor Web se encontraba en el CERN y fue puesto en línea el 6 de agosto de 1991. Esto proporcionó una explicación sobre lo que era el World Wide Web, cómo uno podría tener un navegador y cómo establecer un servidor Web. Este fue también el primer directorio Web del mundo, ya que Berners-Lee mantuvo una lista de otros sitios Web aparte del suyo. Debido a que tanto el software del servidor como del cliente fue liberado de forma gratuita desde el CERN, el corazón de Internet Europeo en esa época, su difusión fue muy rápida. El número de servidores Web pasó de veintiséis en 1992 a doscientos en octubre de 1995 lo que refleja cual fue la velocidad de la difusión de internet. En 1994 entró en el Laboratorio de Ciencias de la Computación e Inteligencia Artificial del Massachusetts Institute of Technology. Se trasladó a EE.UU. y puso en marcha el W3C, que dirige actualmente. El W3C es un organismo internacional de estandarización de tecnologías Web dirigido conjuntamente por el Instituto Tecnológico de Massachusetts, el ERCIM francés y la Universidad de Keiō en Japón. Este organismo decidió que todos sus estándares fuesen libres, es decir, que los pudiese utilizar todo el mundo libremente sin coste alguno, lo que sin lugar a dudas fue una de las grandes razones para que la Web haya llegado a tener la importancia que tiene hoy en día. En su libro Tejiendo la red, publicado en 1999, Berners-Lee explica por qué la tecnología web es libre y gratis. Se considera al mismo tiempo el inventor y el protector de la web. 
```

Haz que tenga un formato según la siguiente imagen:

![Biografía de Tim Berners-Lee en HTML](biografia-tim-berners-lee.png)
_Biografía de Tim Berners-Lee en HTML_

{:.activity}
### Etiquetas de texto menos comunes

En este ejercicio vamos a practicar con las etiquetas de texto menos comunes.

Las etiquetas seleccionadas para este ejercicio son:

```text
<p>, <strong>, <i>, <em>, <b>, <blockquote>, <hr/>, <br/>, <h1>, <h2>, <h3>
<abbr>, <cite>, <u>, <del>, <ins>, <code>, <pre>, <q>, <s>
```

A partir del siguiente texto:

```text
Biografía de Vinton Cerf Cuando solo tenía 25 años trabajó en el motor de cohete F-1 que sirvió para propulsar el cohete Saturno V que viajó a la luna, y a principios de los años 70 comenzó a desarrollar con Robert Khan un conjunto de protocolos de comunicaciones para la red militar, financiado por la agencia gubernamental DARPA. El objetivo era crear una "red de redes" que permitiera interconectar las distintas redes del Departamento de Defensa de los Estados Unidos, todas ellas de diferentes tipos y que funcionaban con diversos sistemas operativos, con independencia del tipo de conexión: radioenlaces, satélites y líneas telefónicas. Las investigaciones, lideradas por Vinton Cerf, primero desde la Universidad de California (1967-1972) y posteriormente desde la Universidad de Stanford (1972-1976), llevaron al diseño del conjunto de protocolos que hoy son conocidos como TCP/IP (Transmission Control Protocol/Internet Protocol), que fue presentado por Vinton Cerf y Robert Khan en 1972. Entre 1976 y 1982, trabajando en DARPA, fue pionero en el desarrollo de la transmisión por radio y satélite de paquetes, responsable del proyecto Internet y del programa de investigación de seguridad en la red. Siempre preocupado por los problemas de conexión de redes, Cerf estableció en 1979 la Internet Configuration Control Board (que posteriormente se denominó Internet Activities Board), y fue su primer presidente. Entre 1982 y 1986, Cerf diseñó el MCI MAIL, primer servicio comercial de correo electrónico que se conectaría a Internet. En 1992 fue uno de los fundadores de la Internet Society y su primer presidente. Actualmente Vinton Cerf es el vicepresidente mundial y Chief Internet Evangelist de Google. Es miembro del Consejo Asesor Internacional del Centro Cultural Internacional Oscar Niemeyer de Avilés, Asturias. 
```

Haz que tenga un formato según la siguiente imagen:

![Biografía de Vinton Cerf en HTML](solucion-ejercicio-vinton-cerf.jpg)
_Biografía de Vinton Cerf en HTML_

{:.activity}
### Encabezados

A continuación se te presenta un documento de texto plano para el que se te pide darle formato a los encabezados mediante un procesador de textos.

```text
Título principal que resume la idea general del escrito
<Ir a https://www.chiquitoipsum.com/ y copiar un párrafo del lorem fistrum.>
Primera idea principal a desarrollar en el escrito.
<Ir a https://www.chiquitoipsum.com/ y copiar un párrafo del lorem fistrum.>
Primer subtema a desarrollar de la primera idea principal.
<Ir a https://www.chiquitoipsum.com/ y copiar un párrafo del lorem fistrum.>
Segundo subtema a desarrollar de la primera idea principal.
<Ir a https://www.chiquitoipsum.com/ y copiar un párrafo del lorem fistrum.>
Segunda idea principal a desarrollar en el escrito.
<Ir a https://www.chiquitoipsum.com/ y copiar un párrafo del lorem fistrum.>
Primer subtema a desarrollar de la segunda idea principal.
<Ir a https://www.chiquitoipsum.com/ y copiar otro párrafo del lorem fistrum.
Segundo subtema a desarrollar de la primera idea principal.
<Ir a https://www.chiquitoipsum.com/ y copiar un párrafo del lorem fistrum.>
Conclusiones 
<Ir a https://www.chiquitoipsum.com/ y copiar un párrafo del lorem fistrum.>
<Ir a https://www.chiquitoipsum.com/ y copiar un párrafo del lorem fistrum.>
```

El resultado deberá ser algo parecido a esto:

![Portada con tabla de contenidos](portada.png)
_Portada con tabla de contenidos_

![Primera página](pagina1.png)
_Primera página_

{:.activity}
### Códigos y nombres HTML

Dados los siguientes caracteres a continuación escribe su equivalente mediante el nombre HTML en un documento HTML válido.

En caso de no existir un nombre HTML usa el número HTML.

```text
; < >  &  ' "  backslash   /  copyright, nonbreaking space, $
```

Existen 2 formas de codificar los caracteres.

- La primera y más fácil de recordar es mediante el nombre HTML: `&nombre`;
- Si no hay más remedio entonces usamos el código HTML: `&#numero`;

> Podéis usar el recurso [www.ascii.cl](https://www.ascii.cl/htmlcodes.htm)
{: .prompt-info }

{:.activity}
### Caracteres escapados

Escribe en un documento web el siguiente texto teniendo en cuenta que se usan los encabezados h1 a h6.

![Encabezados con carácteres escapados](enunciado-ejercicio-html-caracteres-escapados.jpg)
_Encabezados con carácteres escapados_

{:.activity}
### Espacios en blanco y encabezados

Escribe el html necesario para hacer posible que se visualize el resultado de la imagen.

Observaciones:

- El ejercicio está resuelto sin el uso de CSS.
- Todas las líneas están resueltas mediante un título `<h3>`.

![Encabezados con espacios](ejemplo-uso-nombres-html.jpg)
_Encabezados con espacios_

{:.activity}
### Listas de definiciones

Crea una lista de definiciones para los siguientes términos relacionadas con la teoría explicada en clase. Puedes buscar la información en google.

- HTTP
- HTML
- URL
- Web semántica
- TCP/IP
- Internet
- W3C

{:.activity}
### Listas ordenadas y no ordenadas

Escribe con html las listas según las siguientes imágenes.

![Listas ordenadas](ejercicio-html-listas-ordenadas.jpg)
_Listas ordenadas_

![Listas NO ordenadas](ejercicio-html-listas-NO-ordenadas.jpg)
_Listas NO ordenadas_

{:.activity}
### Listas anidadas

Transcribe la siguiente imagen en lenguaje html.

![Lista anidada 1](ejercicio-listas-anidadas-01.jpg)
_Lista anidada 1_

Transcribe la siguiente imagen en lenguaje html.

![Lista anidada 2](ejercicio-listas-anidadas-02.jpg)
_Lista anidada 2_

Transcribe la siguiente imagen en lenguaje html.

![Lista anidada 3](ejercicio-listas-anidadas-03.jpg)
_Lista anidada 3_

{:.activity}
### Listas correctamente anidadas

Anida correctamente la lista no ordenada que se muestra en la imagen.

![Lista html anidada con un subnivel y un subsubnivel](ejemplo-listas-anidadas.jpg)
_Lista html anidada con un subnivel y un subsubnivel_

{:.activity}
### URLs relativas (nuevo)

A continuación se te presenta un directorio de carpetas y documentos html según la imagen.

Consta de:

- Una carpeta server de la que cuelgan las carpetas fitxers, prova, subdir y en la que hay un documento de nombre arrel.html
- Dentro de la carpeta fitxers hay el documento carta.html
- Dentro de la carpeta prova hay el documento prova.html
- La carpeta subdir contiene una carpeta de nombre direct y 3 archivos html de nombres docu.html, llista.html, index.html
- La carpeta direct contiene un documento web de nombre textual.html

![Carpetas y archivos html de un proyecto web](url-relativas-html.jpg)
_Carpetas y archivos html de un proyecto web_

Dentro de cada documento HTML especificado a continuación debes poder navegar a los siguientes sitios:

- Desde arrel.html debe haber un enlace a textual.html
- Desde docu.html debe haber un enlace a llista.html
- Desde docu.html debe haber un enlace a llista.html
- Desde carta.html debe haber un enlace a prova.html
- Desde carta.html debe haber un enlace a docu.html
- Desde textual.html debe haber un enlace a arrel.html
- Desde textual.html debe haber un enlace a subdir (carpeta)
- Desde textual.html debe haber un enlace a prova (carpeta)
- Desde textual.html debe haber un enlace a prova.html

{:.activity}
### Libro digital navegable (nuevo)

Crea un libro digital que conste de 4 capítulos y un índice desde el que se puede acceder a:

- Cada uno de los capítulos del libro.
- Cada una de las secciones definidas dentro de cada capítulo.

Cada capítulo se divide de las secciones:

- Descripción del problema (2 párrafos de tipo lorem ipsum)
- Argumentación (Como mínimo 10 párrafos de tipo lorem ipsum)
- Conclusión (2 párrafos lorem ipsum)

En el pié de página de cada uno de los capítulos debe aparecer 2 enlaces que ocupen 2 líneas diferenciadas que nos permitan:

- Ir al índice del libro digital.
- Situarse de nuevo en la parte superior del documento capítulo.

Una vez finalizado el libro digital configura la cabecera de todos los capítulos para indicar que capítulo es el primero, cual viene después, cual es el anterior y cuál es el último. Utiliza para ello la etiqueta `<link>`.

A continuación se adjuntan a modo de guía una captura de pantalla de la solución final para el índice y uno de los capítulos.

![Resultado final índice de capítulos libro digital con html](indice-libro-digital.jpg)
_Resultado final índice de capítulos libro digital con html_

![Muestra del resultado final de un capítulo del libro digital navegable.](capitulo1-libro-digital.jpg)
_Muestra del resultado final de un capítulo del libro digital navegable._

{:.activity}
### Corrige errores (nuevo)

El siguiente documento html está plagado de errores.

¿Puedes encontrarlos todos?

```html
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf8">
 <title>Corrige los errores</title>
</head>
<body>

 <h1><strong>Corrige los errores</strong></h1>
 
 <h2>Índice de contenidos</h2>
 <ul>
  <li><a href="ancla">Enlace 1</a></li>
   <ul>
    <li><a href="#">Enlace 2</a></li>
    <li><a href="">Enlace 3</a></li>
   </ul>
  <li><a href=""></a>Enlace 4</li>
 </ul>

 <h2><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem at nostrum iure vitae veritatis officiis officia nam aperiam consequatur, dolor in unde beatae labore quibusdam, nihil assumenda eligendi sint!<br><br>
 Maiores.</p></h2>

 <p id="#ancla">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex mollitia quia, corporis dicta, eaque itaque.</p>

</body>
</html>
```

{:.activity}
### Mapas de imágenes I

A partir de la imagen que podrás descargar a continuación genera un mapa de imagen según las siguientes especificaciones:

- El área magenta púrpura está delimitada por los puntos 105,95 y 125,207. Cuando se pulsa envía al usuario a <https://marcosruiz.github.io/posts/atajos-de-teclado/>.
- El área verde oscuro está delimitada por los puntos 126,95 y 215,117. Cuando se pulsa envía al usuario a <https://marcosruiz.github.io/posts/comandos-basicos-gnu-linux/>.
- El área verde azul claro está delimitada por los puntos 128,140 y 215,161. Cuando se pulsa envía al usuario a <https://marcosruiz.github.io/posts/manual-java/>.

![Letra F](letra-f.jpg)
_Letra F_

{:.activity}
### Mapas de imágenes II

A partir de la imagen que podrás descargar a continuación genera un mapa de imagen según las siguientes especificaciones:

- El área negro delimitado por los puntos 95,44 y 128,257 envía al usuario a <https://marcosruiz.github.io/posts/atajos-de-teclado/> cuando se pulsa. En su interior tiene un área definido por los puntos 104,56 y 117,244 que es inerte cuando es pulsado, generando un hueco.
- El área negro delimitado por los puntos 128,44 y 235,74 envía al usuario a <https://marcosruiz.github.io/posts/comandos-basicos-gnu-linux/> cuando se pulsa. En su interior tiene un área definido por los puntos 128,56 y 226,65 que es inerte cuando es pulsado, generando un hueco.
- El área negro delimitado por los puntos 128,138 y 220,165 envía al usuario a <https://marcosruiz.github.io/posts/manual-java/> cuando se pulsa. En su interior tiene un área definido por los puntos 128,144 y 211,156 que es inerte cuando es pulsado, generando un hueco.

![Letra F](letra-F-ejercicio-avanzado.jpg)
_Letra F_

{:.activity}
### Audio y vídeo

Escribe un código html que muestre por pantalla dos reproductores de audio.

En el primero debes reproducir un audio alojado en tu ordenador/hosting.

En el segundo debes reproducir el audio directamente desde la fuente original.

Puedes encontrar archivos de audio mp3 en [Audio Archive](https://archive.org/details/audio).

A continuación reproduce exactamente el mismo ejercicio pero en este caso reproductores de vídeo.

Puedes encontrar archivos de vídeo mp4 en [Moving Image Archive](https://archive.org/details/movies).

> Para encontrar audios y vídeos cortos podéis buscar la palabra "sample"
{:.prompt-info}

{:.activity}
### Frameset (nuevo)

Mediante el uso adecuado de la etiqueta `<frameset>` de html y siguiendo la imagen a continuación haz que cada sección muestre las páginas web especificadas.

- verde, ancho del 100% y muestra wikipedia.org
- rosa, ancho del 25% y muestra fcb.com
- carne, ancho del 75% y muestra archive.org
- azul, ancho del 50% y muestra lycos.com
- marrón, ancho del 25% y muestra creativecommons.org

![Framesets](ejercicio-framesets.jpg)
_Framesets_

{:.activity}
### Creación de tablas I

Dado el siguiente documento html se desea conseguir el resultado de la imagen adjunta.

```html
<!DOCTYPE html>
<html>
<head>
 <title>Ejercicio tablas html</title>
 <meta charset="utf-8"/>
 <style>
  table{
   border-collapse:collapse;
   caption-side: bottom;
  }
  caption{
   font-weight:bold;
   margin-top:16px;
  }
  th,td{padding:5px 10px;}
  td,th{border:1px solid #1c1c1c;text-align:center;}
 </style>
</head>
<body>

<!-- puedes copiar y pegar todo el código en vscode para resolver el ejercicio -->

</body>
</html>
```

![Tabla fácil](ejercicio-tablas.jpg)
_Tabla fácil_

{:.activity}
### Creación de tablas II

Crea un documento html mediante el cuál se visualize una tabla como la de la imagen.

Para que se vea bonita la tabla añade dentro del `<head>` del documento html este código.

```html
<style>
    table{
        border-collapse: collapse;
    }
    
    td{
        border:1px solid #000;
        padding:25px;
        background-color:#ccc;
    }
</style>
```

![Tabla con colspan y rowspan](enunciado-tabla-html.jpg)
_Tabla con `colspan` y `rowspan`_

{:.activity}
### Corrige los errores (nuevo)

Corrige los siguientes ejercicios están plagados de errores de sintaxis html.

```html
<head>
  <meta author=""/>
  <meta description=""/>
<head>
```

```html
<html>
  <header>
    <title></title>
  </header>
  <body>
  </body>
</html>
```

```html
<table>
<td>
  <tr></tr>
  <tr></tr>
</td>
<td>
  <tr></tr>
  <tr></tr>
</td>
</table>
```

```html
<p>
Un texto legendario </br>
sucede en un gran escenario </br>
¿ves el <em><b>error</em></b>?
</p>
```

{:.activity}
### Iniciación a las capas (nuevo)

En la pizarra (imagen adjunta) se presenta una propuesta de página web.

Tradúcela a lenguaje de marcado siguiendo las indicaciones del dibujo.

Incluye también una ancla al final del documento que permita llevar al visitante web a la cabecera del documento.

Atención: Todavía no usemos etiquetas html5, lo haremos en un ejercicio posterior que consistirá en actualizar este actual a las nuevas etiquetas.

(Por ejemplo en lugar de la etiqueta `<header>` usaremos `<div id="head">`)

![Pizarra con documento web dibujado y estructurado](enunciado-pizarra-ejercicio-html-capas.jpg)
_Pizarra con documento web dibujado y estructurado_

Para mayor claridad, si lo deseas,  añade dentro del `<head>` el siguiente código que entenderás mejor cuando se de CSS.

```html
<style>
  div{
   border:1px solid #000000;
   padding:5px 10px;
  }
</style>
```

{:.activity}
### Estructura de un documento web (nuevo)

Se adjunto un mockup de propuesta de página web.

Tradúcela a lenguaje de marcado agrupando y estructurando las etiquetas en grupos de información según criterio.

Si en el mockup consideras que falta alguna etiqueta o información muy importante añádela en la solución.

Importante: La solución no es única.

Atención: Todavía no usemos etiquetas html5, lo haremos en un ejercicio posterior que consistirá en actualizar este actual a las nuevas etiquetas.

(Por ejemplo en lugar de la etiqueta `<header>` usaremos`<div id="head">`)

![Croquis realizado mediante Balsamiq Mockup 3](mockup-capas-web.jpg)
_Croquis realizado mediante Balsamiq Mockup 3_

Para mayor claridad, si lo deseas,  añade dentro del `<head>` el siguiente código.

```html
<style>
  div{
   border:1px solid #000000;
   padding:5px 10px;
  }
</style>
```

{:.activity}
### De XHTML a HTML5 I (nuevo)

Traduce el siguiente código a HTML5:

```html
<!DOCTYPE html>
<html>
<head>
 <title>Capas web</title>
 <meta charset="utf-8"/>
 <meta name="description" content="Ejemplo de documento html con capas como paso intermedio a transformar <div> en etiquetas de html5"/>
 <meta name="author" content="Francesc Ricart"/>

 <style>
  div{
   border:1px solid #000000;
   padding:5px 10px;
  }
 </style>

</head>
<body>
<div id="wrapper">
 <!-- cabecera -->
 <div id="header">
  <img src="" alt="logotipo"/>
  <a href="tel:977207030" title="Llámenos">977207030</a>
  <!-- Menú de navegación -->
  <div id="nav">
   <ul>
    <li><a href="">Servicios</a></li>
    <li><a href="">Blog</a></li>
    <li><a href="">Contacto</a></li>   
   </ul>
  </div>
 </div>

 <!-- cuerpo principal del documento -->
 <div id="container">
  <div id="main">
   <div  id="section1">
    <h1>Un título muy representativo</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
   </div>
   
   <div  id="section2">   
    <video controls src=""></video>
    <!-- contenido -->
    <div id="article1">
     <h2>Un título 2</h2>
     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
     <a href="" title="ir a...">Saber más</a>
    </div>
   </div>
   
   <div  id="section3">
    <!-- contenido -->
    <div id="article2">
     <h2>Un título 2</h2>
     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
     <a href="" title="ir a...">Saber más</a>
    </div>
    <audio controls src=""></audio>
   </div>     
  </div>
 </div>

 <!-- pie de página -->
 <div id="footer">
  <div id="section4">
   <h3>Sobre mí</h3>
   <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
   tempor incididunt.</p>
  </div>
  <div id="section5">
   <h3>Horarios</h3>
   <p>Mañanas:9.00-13.00<br/>Tardes:16.00-19.00<br/>Domingo cerrado.</p>
  </div>
  <div id="section6">
   <img src="" alt="ISO9001"/>
   <img src="" alt="ISO14001"/>
  </div>
 </div>

 <!-- ancla -->
 <a href="#header">Subir</a>
</div>

</body>

</html>
```

{:.activity}
### De XHTML a HTML5 II (nuevo)

Traduce el siguiente código a HTML5:

```html
<!DOCTYPE html>
<html>
<head>
 <title>Capas web</title>
 <meta charset="utf-8"/>
 <meta name="description" content="Ejemplo de documento html con capas como paso intermedio a transformar <div> en etiquetas de html5"/>
 <meta name="author" content="Francesc Ricart"/>

 <style>
  div{
   border:1px solid #000000;
   padding:5px 10px;
  }
 </style>

</head>
<body>
<div id="wrapper">
 <!-- cabecera -->
 <div id="header">
  <img src="" alt="logotipo"/>
  <a href="tel:977207030" title="Llámenos">977207030</a>
  <!-- Menú de navegación -->
  <div id="nav">
   <ul>
    <li><a href="">Servicios</a></li>
    <li><a href="">Blog</a></li>
    <li><a href="">Contacto</a></li>   
   </ul>
  </div>
 </div>

 <!-- cuerpo principal del documento -->
 <div id="container">
  <div id="main">
   <div  id="section1">
    <h1>Un título muy representativo</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
   </div>
   
   <div  id="section2">   
    <video controls src=""></video>
    <!-- contenido -->
    <div id="article1">
     <h2>Un título 2</h2>
     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
     <a href="" title="ir a...">Saber más</a>
    </div>
   </div>
   
   <div  id="section3">
    <!-- contenido -->
    <div id="article2">
     <h2>Un título 2</h2>
     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
     <a href="" title="ir a...">Saber más</a>
    </div>
    <audio controls src=""></audio>
   </div>     
  </div>
 </div>

 <!-- pie de página -->
 <div id="footer">
  <div id="section4">
   <h3>Sobre mí</h3>
   <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
   tempor incididunt.</p>
  </div>
  <div id="section5">
   <h3>Horarios</h3>
   <p>Mañanas:9.00-13.00<br/>Tardes:16.00-19.00<br/>Domingo cerrado.</p>
  </div>
  <div id="section6">
   <img src="" alt="ISO9001"/>
   <img src="" alt="ISO14001"/>
  </div>
 </div>

 <!-- ancla -->
 <a href="#header">Subir</a>
</div>

</body>

</html>
```

{:.activity}
### Creación de formularios

Escribe el html de un formulario web según las especificaciones descritas a continuación:

> En este ejercicio no se te pide que escribas css
{:.prompt-warning}

- Nombre. El campo debe aceptar un máximo de 30 caracteres.
- Apellidos. El campo debe aceptar un máximo de 30 caracteres.
- Email. Campo de relleno obligado.
- Asunto a elegir una opción entre pedir presupuesto, solicitar cita previa, otros. Deben mostrarse las 3 opciones en un cajetín según la imagen (usa el atributo `size`).
- Cómo nos a escogido a elegir una o más opciones entre un amigo, googleando, buzoneo, otros.
- Un mensaje. Debe tener una longitud máxima de 300 caracteres.
- Aceptación de cláusula RGPD. De obligada selección antes de enviar el currículum.
- Botón de envío.

![Resultado final del formulario](resultadoFinalFormulario.png)
_Resultado final del formulario_

{:.question}
Con el inspector de código del navegador (F12) puedes llegar a observar qué datos se estarían enviando al servidor. Intenta averiguar como.

## Bibliografía (no usar)

- [EJERCICIOS HTML](https://francescricart.com/tutorial-html/ejercicios-html/)

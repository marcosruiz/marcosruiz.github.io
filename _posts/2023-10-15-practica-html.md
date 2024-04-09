---
title: "Tarea: Introducción a HTML"
date: 2023-10-15 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [desarrollo de aplicaciones multiplataforma, lenguajes de marcas y sistemas de gestión de información, administración de sistemas informáticos de red, desarrollo de aplicaciones web, dam, daw, asir, lmsgi, práctica, tarea, sistemas microinformáticos y redes]
img_path: /assets/img/practica-html/
---

## Entrega y presentación

La entrega será en formato ZIP. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

## Calificación

La tarea se calificará con una nota de 0 a 10.

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

```plaintext
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

A continuación se te presenta un documento de texto plano para el que se te pide darle formato a los encabezados mediante un procesador de textos (se recomienda usar WPS Office).

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

> Esta actividad se entrega en formato .pdf
{:.prompt-info}

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

Escribe el HTML necesario para hacer posible que se visualize el resultado de la imagen.

Observaciones:

- El ejercicio está resuelto sin el uso de CSS.
- Todas las líneas están resueltas mediante un título `<h3>`.

![Encabezados con espacios](ejemplo-uso-nombres-html.jpg)
_Encabezados con espacios_

{:.activity}
### Listas de definiciones

Crea una lista de definiciones para los siguientes términos relacionadas con la teoría explicada en clase. Deberás buscar la definición de estos términos en Internet.

- XML
- HTML
- W3C
- RFC

{:.activity}
### Listas ordenadas y no ordenadas

Escribe con HTML las listas según las siguientes imágenes.

![Listas ordenadas](ejercicio-html-listas-ordenadas.jpg)
_Listas ordenadas_

![Listas NO ordenadas](ejercicio-html-listas-NO-ordenadas.jpg)
_Listas NO ordenadas_

{:.activity}
### Listas anidadas

Transcribe la siguiente imagen en lenguaje HTML.

![Lista anidada 1](ejercicio-listas-anidadas-01.jpg)
_Lista anidada 1_

Transcribe la siguiente imagen en lenguaje HTML.

![Lista anidada 2](ejercicio-listas-anidadas-02.jpg)
_Lista anidada 2_

Transcribe la siguiente imagen en lenguaje HTML.

![Lista anidada 3](ejercicio-listas-anidadas-03.jpg)
_Lista anidada 3_

{:.activity}
### Listas correctamente anidadas

Anida correctamente la lista no ordenada que se muestra en la imagen.

![Lista HTML anidada con un subnivel y un subsubnivel](ejemplo-listas-anidadas.jpg)
_Lista HTML anidada con un subnivel y un subsubnivel_

{:.activity}
### URLs relativas

A continuación se te presenta un directorio de carpetas y documentos HTML según la imagen.

Consta de:

- Una carpeta server de la que cuelgan las carpetas ficheros, prueba, subdir y en la que hay un documento de nombre raiz.html.
- Dentro de la carpeta ficheros hay el documento carta.html.
- Dentro de la carpeta prueba hay el documento prueba.html.
- La carpeta subdir contiene una carpeta de nombre direct y 3 archivos HTML de nombres docu.html, lista.html, index.html.
- La carpeta direct contiene un documento web de nombre textual.html.

![Carpetas y archivos HTML de un proyecto web](url-relativas-html.jpg)
_Carpetas y archivos HTML de un proyecto web_

Dentro de cada documento HTML especificado a continuación debes poder navegar a los siguientes sitios:

- Desde raiz.html debe haber un enlace relativo a textual.html
- Desde docu.html debe haber un enlace relativo a lista.html
- Desde carta.html debe haber un enlace relativo a prueba.html
- Desde carta.html debe haber un enlace relativo a docu.html
- Desde textual.html debe haber un enlace relativo a raiz.html
- Desde textual.html debe haber un enlace relativo a subdir (carpeta)
- Desde textual.html debe haber un enlace relativo a prueba (carpeta)
- Desde textual.html debe haber un enlace relativo a prueba.html

> Recuerda que las rutas relativas deberían funcionar en cualquier PC.
{:.prompt-info}

{:.activity}
### Libro digital navegable

Crea un libro digital que conste de 4 capítulos y un índice desde el que se puede acceder a:

- Cada uno de los capítulos del libro.
- Cada una de las secciones definidas dentro de cada capítulo.

Cada capítulo se divide de las secciones:

- Introducción (2 párrafos de tipo chiquito ipsum)
- Nudo (Como mínimo 10 párrafos de tipo chiquito ipsum)
- Desenlace (2 párrafos chiquito ipsum)

En el pié de página de cada uno de los capítulos deben aparecer 2 enlaces que ocupen 2 líneas diferenciadas que nos permitan:

- Ir al índice del libro digital.
- Situarse de nuevo en la parte superior del documento capítulo.

Una vez finalizado el libro digital configura la cabecera de todos los capítulos para indicar que capítulo es el primero, cual viene después, cual es el anterior y cuál es el último. Utiliza para ello la etiqueta `<link>`.

A continuación se muestran a modo de guía una captura de pantalla de la solución final para el índice y uno de los capítulos.

![Resultado final índice de capítulos libro digital con HTML](indice-libro-digital.jpg)
_Resultado final índice de capítulos libro digital con HTML_

![Muestra del resultado final de un capítulo del libro digital navegable.](capitulo1-libro-digital.jpg)
_Muestra del resultado final de un capítulo del libro digital navegable._

{:.activity}
### Corrige los errores I

El siguiente documento HTML está plagado de errores. ¿Puedes encontrarlos todos?

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf8" />
    <title>Corrige los errores</title>
  </head>

  <body>
    <h1><strong>Corrige los errores</strong></h1>

    <h2>Índice de contenidos</h2>
    <ul>
      <li>
        <a href="ancla">Enlace 1</a>
        <ul>
          <li><a href="#">Enlace 2</a></li>
          <li><a href="">Enlace 3</a></li>
        </ul>
      </li>
      <li><a href=""></a>Enlace 4</li>
    </ul>

    <h2>
      <p>Lorem fistrum</p>
    </h2>

    <br />

    <p>
      Lorem fistrum te voy a borrar el cerito ese que llega pecador a peich al
      ataquerl pecador mamaar a wan. No puedor me cago en tus muelas fistro
      jarl. Llevame al sircoo mamaar torpedo quietooor. A gramenawer al ataquerl
      te voy a borrar el cerito quietooor no te digo trigo por no llamarte
      Rodrigor. Benemeritaar torpedo te va a hasé pupitaa amatomaa benemeritaar
      por la gloria de mi madre a gramenawer a peich papaar papaar llevame al
      sircoo. Qué dise usteer de la pradera jarl ese hombree te va a hasé
      pupitaa pecador quietooor está la cosa muy malar. Va usté muy cargadoo
      amatomaa de la pradera por la gloria de mi madre quietooor.
    </p>

    <br />

    <p id="#ancla">
      Lorem fistrum te voy a borrar el cerito ese que llega pecador a peich al
      ataquerl pecador mamaar a wan. No puedor me cago en tus muelas fistro
      jarl. Llevame al sircoo mamaar torpedo quietooor. A gramenawer al ataquerl
      te voy a borrar el cerito quietooor no te digo trigo por no llamarte
      Rodrigor. Benemeritaar torpedo te va a hasé pupitaa amatomaa benemeritaar
      por la gloria de mi madre a gramenawer a peich papaar papaar llevame al
      sircoo. Qué dise usteer de la pradera jarl ese hombree te va a hasé
      pupitaa pecador quietooor está la cosa muy malar. Va usté muy cargadoo
      amatomaa de la pradera por la gloria de mi madre quietooor.
    </p>
  </body>
</html>
```

{:.activity}
### Mapas de imágenes I

A partir de la imagen que podrás descargar a continuación genera un mapa de imagen según las siguientes especificaciones:

- El área magenta púrpura está delimitada por los puntos 105,95 y 125,207. Cuando se pulsa envía al usuario a <https://marcosruiz.github.io/posts/atajos-de-teclado/>.
- El área verde oscuro está delimitada por los puntos 126,95 y 215,117. Cuando se pulsa envía al usuario a <https://olgacarreras.blogspot.com/>.
- El área verde azul claro está delimitada por los puntos 128,140 y 215,161. Cuando se pulsa envía al usuario a <https://marcosruiz.github.io/posts/trabajar-visual-studio-code/>.

![Letra F](letra-f.jpg)
_Letra F_

{:.activity}
### Mapas de imágenes II

A partir de la imagen que podrás descargar a continuación genera un mapa de imagen según las siguientes especificaciones:

- El área negro delimitado por los puntos 95,44 y 128,257 envía al usuario a <https://marcosruiz.github.io/posts/atajos-de-teclado/> cuando se pulsa. En su interior tiene un área definido por los puntos 104,56 y 117,244 que es inerte cuando es pulsado, generando un hueco.
- El área negro delimitado por los puntos 128,44 y 235,74 envía al usuario a <https://olgacarreras.blogspot.com/> cuando se pulsa. En su interior tiene un área definido por los puntos 128,56 y 226,65 que es inerte cuando es pulsado, generando un hueco.
- El área negro delimitado por los puntos 128,138 y 220,165 envía al usuario a <https://marcosruiz.github.io/posts/trabajar-visual-studio-code/> cuando se pulsa. En su interior tiene un área definido por los puntos 128,144 y 211,156 que es inerte cuando es pulsado, generando un hueco.

![Letra F](letra-F-ejercicio-avanzado.jpg)
_Letra F_

> Si algo no funciona como esperas prueba a jugar con el orden de los elementos.
{:.prompt-info}

{:.activity}
### Audio y vídeo

Escribe un código HTML que muestre por pantalla dos reproductores de audio.

En el primero debes reproducir un audio alojado en tu ordenador/hosting.

En el segundo debes reproducir el audio directamente desde la fuente original.

Puedes encontrar archivos de audio mp3 en [Audio Archive](https://archive.org/details/audio).

A continuación reproduce exactamente el mismo ejercicio pero en este caso reproductores de vídeo.

Puedes encontrar archivos de vídeo mp4 en [Moving Image Archive](https://archive.org/details/movies).

> Usa audios y vídeos lo más cortos posible. Para encontrar audios y vídeos cortos podéis buscar la palabra "sample". Recuerda que el número de megas en las entregas está limitado.
{:.prompt-info}

{:.activity}
### Frameset

La etiqueta `<frameset>` de HTML ha sido eliminada de los estándares web, sin embargo es interesante conocerla. Mediante el uso adecuado de la etiqueta `<frameset>` de HTML y siguiendo la imagen a continuación haz que cada sección muestre las páginas web especificadas.

- verde, ancho del 100% y muestra <https://marcosruiz.github.io/posts/atajos-de-teclado/>.
- rosa, ancho del 25% y muestra <https://olgacarreras.blogspot.com/>
- amarillo, ancho del 75% y muestra <https://marcosruiz.github.io/posts/trabajar-visual-studio-code/>
- gris, ancho del 50% y muestra <https://en.wikipedia.org/wiki/Tim_Berners-Lee>
- marrón, ancho del 25% y muestra <https://es.wikipedia.org/wiki/ARPANET>.

![Framesets](ejercicio-framesets.jpg)
_Framesets_

{:.activity}
### Creación de tablas I

Dado el siguiente documento HTML se desea conseguir el resultado de la siguiente imagen.

```html
<!DOCTYPE html>
<html>
<head>
 <title>Ejercicio tablas HTML</title>
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

Crea un documento HTML mediante el cuál se visualize una tabla como la de la imagen.

Para que se vea bonita la tabla añade dentro del `<head>` del documento HTML este código.

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
### Corrige los errores II

Corrige los siguientes ejercicios están plagados de errores de sintaxis HTML.

#### a)

```html
<head>
  <meta author=""/>
  <meta description=""/>
<head>
```

#### b)

```html
<html>
  <header>
    <title></title>
  </header>
  <body>
  </body>
</html>
```

#### c)

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

#### d)

```html
<p>
Las cosas con como son </br>
hasta que dejan de serlas </br>
¿ves el <em><b>error</em></b>?
</p>
```

> Esta actividad se entrega en formato .md o .txt
{:.prompt-info}

{:.activity}
### Iniciación a las capas

En la siguiente imagen se presenta una propuesta de página web.

Tradúcela a lenguaje de marcado siguiendo las indicaciones del dibujo.

Incluye también una ancla al final del documento que permita llevar al visitante web a la cabecera del documento.

> Todavía no usemos etiquetas HTML5, lo haremos en un ejercicio posterior que consistirá en actualizar este actual a las nuevas etiquetas. Por ejemplo en lugar de la etiqueta `<header>` usaremos `<div id="head">`.
{:.prompt-warning}

![Enunciado ejercicio capas HTML](enunciado-ejercicio-html-capas.jpg)
_Enunciado ejercicio capas HTML_

Para mayor claridad, si lo deseas,  añade dentro del `<head>` el siguiente código que entenderás mejor cuando se de CSS.

```html
<style>
  div{
   border:1px solid #000000;
   padding:5px 10px;
  }
</style>
```

El resultado final será parecido a la siguiente imagen:

![Resultado final capas HTML](resultado-final-capas-html.png)
_Resultado final capas HTML_

{:.activity}
### Estructura de un documento web

Se muestra un mockup de propuesta de página web.

{:.question}
Investiga que es un mockup.

Tradúcela a lenguaje de marcado agrupando y estructurando las etiquetas en grupos de información según criterio.

Si en el mockup consideras que falta alguna etiqueta o información muy importante añádela en la solución.

> OJO! La solución no es única.
{:.prompt-info}

> Todavía no usemos etiquetas HTML5, lo haremos en un ejercicio posterior que consistirá en actualizar este actual a las nuevas etiquetas. Por ejemplo en lugar de la etiqueta `<header>` usaremos `<div id="head">`.
{:.prompt-warning}

![Croquis realizado mediante Balsamiq](mockup-capas-web.png)
_Croquis realizado mediante Balsamiq_

Para mayor claridad, si lo deseas, añade dentro del `<head>` el siguiente código.

```html
<style>
  div{
   border:1px solid #000000;
   padding:5px 10px;
  }
</style>
```

{:.question}
¿Se podría poner el elemento `<style>` en otra parte? ¿Por qué se indica añadirlo en el `<head>`?

{:.activity}
### De XHTML a HTML5 I

Traduce el siguiente código a HTML5:

```html
<!DOCTYPE html>
<html>
<head>
 <title>Capas web</title>
 <meta charset="utf-8"/>
 <meta name="description" content="Ejemplo de documento HTML con capas como paso intermedio a transformar <div> en etiquetas de HTML5"/>

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
    <p>Lorem fistrum ese que llega está la cosa muy malar te va a hasé pupitaa hasta luego Lucas a peich a wan.</p>

    <p>Lorem fistrum ese que llega está la cosa muy malar te va a hasé pupitaa hasta luego Lucas a peich a wan.</p>
   </div>
   
   <div  id="section2">   
    <video controls src=""></video>
    <!-- contenido -->
    <div id="article1">
     <h2>Un título 2</h2>
     <p>Lorem fistrum ese que llega está la cosa muy malar te va a hasé pupitaa hasta luego Lucas a peich a wan.</p>
     <a href="" title="ir a...">Saber más</a>
    </div>
   </div>
   
   <div  id="section3">
    <!-- contenido -->
    <div id="article2">
     <h2>Un título 2</h2>
     <p>Lorem fistrum ese que llega está la cosa muy malar te va a hasé pupitaa hasta luego Lucas a peich a wan.</p>
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
   <p>Lorem fistrum ese que llega está la cosa muy malar te va a hasé pupitaa hasta luego Lucas a peich a wan.</p>
  </div>
  <div id="section5">
   <h3>Horarios</h3>
   <p>Mañanas:9.00-14.00<br/>Tardes:16.00-19.00<br/>Domingo cerrado.</p>
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

{:.question}
¿Por qué es importante usar las etiquetas semánticas de HTML5?

{:.question}
¿Qué es el SEO y que tiene que ver con las etiquetas semánticas?

{:.activity}
### Creación de formularios

Escribe el HTML de un formulario web según las especificaciones descritas a continuación:

> En este ejercicio no se te pide que escribas css
{:.prompt-warning}

- Nombre. El campo debe aceptar un máximo de 30 caracteres.
- Apellidos. El campo debe aceptar un máximo de 30 caracteres.
- Email. Campo de relleno obligado.
- Asunto a elegir una opción entre pedir presupuesto, solicitar cita previa, otros. Deben mostrarse las 3 opciones en un cajetín según la imagen (usa el atributo `size`).
- Cómo nos a escogido a elegir una o más opciones entre un amigo, googleando, spam, otros.
- Un mensaje. Debe tener una longitud máxima de 300 caracteres.
- Aceptación de cláusula RGPD. De obligada selección antes de enviar el currículum.
- Botón de envío.

![Resultado final del formulario](resultadoFinalFormulario.png)
_Resultado final del formulario_

<details class="card mb-2">
  <summary class="card-header question">Con el inspector de código del navegador (F12) puedes llegar a observar qué datos se estarían enviando al servidor. Intenta averiguar como.</summary>
  <div class="card-body" markdown="1">

  <iframe width="560" height="315" src="https://www.youtube.com/embed/tqLJoWfdqIc?si=hG6qH7mK2BgUM_3w" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Bibliografía (NO USAR)

- [EJERCICIOS HTML](https://francescricart.com/tutorial-html/ejercicios-html/)

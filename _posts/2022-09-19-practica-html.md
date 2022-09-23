---
title: "Práctica: HTML"
date: 2022-09-21 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, práctica]
---

## Introducción

El objetivo de esta práctica es aprender a utilizar las etiquetas HTML.

Duración: - horas.

## Entrega

La entrega de esta práctica debe ser un fichero ZIP con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_P\<NúmeroDeLaPráctica\>.zip". Por ejemplo, en mi caso el nombre del fichero ZIP sería "RuizGarcía_Marcos_P01.zip".

En la raíz del fichero ZIP deben encontrarse las actividades HTML en formato HTML con el nombre "actividad_\<NúmeroDeActividad\>.html" o "actividad_\<NúmeroDeActividad\>.pdf".

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
        <title>Corrige los errores que encuenres en el documento</title>
        
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

```
<p>, <strong>, <i>, <em>, <b>, <blockquote>
<hr/>, <br/>, <h1>,<h2>,<h3>
```

A partir del siguiente texto:

```
Berners-Lee trabajó en el CERN desde junio hasta diciembre de 1980. Durante ese tiempo, propuso un proyecto basado en el hipertexto para facilitar la forma de compartir y la puesta al día de la información entre investigadores. En este periodo también construyó un programa llamado ENQUIRE que no llegó a ver la luz.1​ Después de dejar el CERN, en 1980, se fue a trabajar a la empresa de John Poole Image Computer Systems Ltd., pero regresó al CERN otra vez en 1984. En 1989, el CERN era el nodo de Internet más grande de Europa y Berners-Lee vio la oportunidad de unir Internet y el hipertexto (HTTP y HTML), de lo que surgiría la World Wide Web. Desarrolló su primera propuesta de la Web el 12 de marzo de 1989,2​ pero no tuvo mucho eco, por lo que en 1990 y con la ayuda de Robert Cailliau, hicieron una revisión que fue aceptada por su gerente, Mike Sendall. Usó ideas similares a las que había usado en el sistema Enquire, para crear la World Wide Web, para esto diseñó y construyó el primer navegador (llamado WorldWideWeb y desarrollado con NEXTSTEP) y el primer servidor Web al que llamó httpd (HyperText Transfer Protocol daemon). El primer servidor Web se encontraba en el CERN y fue puesto en línea el 6 de agosto de 1991. Esto proporcionó una explicación sobre lo que era el World Wide Web, cómo uno podría tener un navegador y cómo establecer un servidor Web. Este fue también el primer directorio Web del mundo, ya que Berners-Lee mantuvo una lista de otros sitios Web aparte del suyo. Debido a que tanto el software del servidor como del cliente fue liberado de forma gratuita desde el CERN, el corazón de Internet Europeo en esa época, su difusión fue muy rápida. El número de servidores Web pasó de veintiséis en 1992 a doscientos en octubre de 1995 lo que refleja cual fue la velocidad de la difusión de internet. En 1994 entró en el Laboratorio de Ciencias de la Computación e Inteligencia Artificial del Massachusetts Institute of Technology. Se trasladó a EE.UU. y puso en marcha el W3C, que dirige actualmente. El W3C es un organismo internacional de estandarización de tecnologías Web dirigido conjuntamente por el Instituto Tecnológico de Massachusetts, el ERCIM francés y la Universidad de Keiō en Japón. Este organismo decidió que todos sus estándares fuesen libres, es decir, que los pudiese utilizar todo el mundo libremente sin coste alguno, lo que sin lugar a dudas fue una de las grandes razones para que la Web haya llegado a tener la importancia que tiene hoy en día. En su libro Tejiendo la red, publicado en 1999, Berners-Lee explica por qué la tecnología web es libre y gratis. Se considera al mismo tiempo el inventor y el protector de la web. 
```

Haz que tenga un formato según la siguiente imagen:

![img-description](/assets/img/practica-html/biografia-tim-berners-lee.jpg)
_Biografía de Tim Berners-Lee en HTML_


{:.activity}
### Etiquetas de texto menos comunes

En este ejercicio vamos a practicar con las etiquetas de texto menos comunes.

Las etiquetas seleccionadas para este ejercicio son:

```
<p>, <strong>, <i>, <em>, <b>, <blockquote>, <hr/>, <br/>, <h1>, <h2>, <h3>
<abbr>, <cite>, <u>, <del>, <ins>, <code>, <pre>, <q>, <s>
```

A partir del siguiente texto:

```
Biografía de Vinton Cerf Cuando solo tenía 25 años trabajó en el motor de cohete F-1 que sirvió para propulsar el cohete Saturno V que viajó a la luna, y a principios de los años 70 comenzó a desarrollar con Robert Khan un conjunto de protocolos de comunicaciones para la red militar, financiado por la agencia gubernamental DARPA. El objetivo era crear una "red de redes" que permitiera interconectar las distintas redes del Departamento de Defensa de los Estados Unidos, todas ellas de diferentes tipos y que funcionaban con diversos sistemas operativos, con independencia del tipo de conexión: radioenlaces, satélites y líneas telefónicas. Las investigaciones, lideradas por Vinton Cerf, primero desde la Universidad de California (1967-1972) y posteriormente desde la Universidad de Stanford (1972-1976), llevaron al diseño del conjunto de protocolos que hoy son conocidos como TCP/IP (Transmission Control Protocol/Internet Protocol), que fue presentado por Vinton Cerf y Robert Khan en 1972. Entre 1976 y 1982, trabajando en DARPA, fue pionero en el desarrollo de la transmisión por radio y satélite de paquetes, responsable del proyecto Internet y del programa de investigación de seguridad en la red. Siempre preocupado por los problemas de conexión de redes, Cerf estableció en 1979 la Internet Configuration Control Board (que posteriormente se denominó Internet Activities Board), y fue su primer presidente. Entre 1982 y 1986, Cerf diseñó el MCI MAIL, primer servicio comercial de correo electrónico que se conectaría a Internet. En 1992 fue uno de los fundadores de la Internet Society y su primer presidente. Actualmente Vinton Cerf es el vicepresidente mundial y Chief Internet Evangelist de Google. Es miembro del Consejo Asesor Internacional del Centro Cultural Internacional Oscar Niemeyer de Avilés, Asturias. 
```

Haz que tenga un formato según la siguiente imagen:

![img-description](/assets/img/practica-html/solucion-ejercicio-vinton-cerf.jpg)
_Biografía de Vinton Cerf en HTML_

{:.activity}
### Encabezados

A continuación se te presenta un documento de texto plano para el que se te pide darle formato a los encabezados mediante un procesador de textos.

```
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

{:.activity}
### Códigos y nombres HTML

Dados los siguientes caracteres a continuación escribe su equivalente mediante el nombre HTML en un documento HTML válido.

En caso de no existir un nombre HTML usa el número HTML.

```
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

![img-description](/assets/img/practica-html/enunciado-ejercicio-html-caracteres-escapados.jpg)
_Encabezados con carácteres escapados_


{:.activity}
### Espacios en blanco y encabezados

Escribe el html necesario para hacer posible que se visualize el resultado de la imagen.

Observaciones:

- El ejercicio está resuelto sin el uso de CSS.
- Todas las líneas están resueltas mediante un título `<h3>`.

![img-description](/assets/img/practica-html/ejemplo-uso-nombres-html.jpg)
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

![img-description](/assets/img/practica-html/ejercicio-html-listas-ordenadas.jpg)
_Listas ordenadas_

![img-description](/assets/img/practica-html/ejercicio-html-listas-NO-ordenadas.jpg)
_Listas NO ordenadas_

{:.activity}
### Listas anidadas

Transcribe la siguiente imagen en lenguaje html.

![img-description](/assets/img/practica-html/ejercicio-listas-anidadas-01.jpg)
_Lista anidada 1_

Transcribe la siguiente imagen en lenguaje html.

![img-description](/assets/img/practica-html/ejercicio-listas-anidadas-02.jpg)
_Lista anidada 2_

Transcribe la siguiente imagen en lenguaje html.

![img-description](/assets/img/practica-html/ejercicio-listas-anidadas-03.jpg)
_Lista anidada 3_

{:.activity}
### Listas correctamente anidadas

Anida correctamente la lista no ordenada que se muestra en la imagen.

![img-description](/assets/img/practica-html/ejemplo-listas-anidadas.jpg)
_Lista html anidada con un subnivel y un subsubnivel_


{:.activity}
### Mapas de imágenes I

A partir de la imagen que podrás descargar a continuación genera un mapa de imagen según las siguientes especificaciones:

- El área magenta púrpura está delimitada por los puntos 105,95 y 125,207. Cuando se pulsa envía al usuario a https://marcosruiz.github.io/posts/atajos-de-teclado/.
- El área verde oscuro está delimitada por los puntos 126,95 y 215,117. Cuando se pulsa envía al usuario a https://marcosruiz.github.io/posts/comandos-basicos-gnu-linux/.
- El área verde azul claro está delimitada por los puntos 128,140 y 215,161. Cuando se pulsa envía al usuario a https://marcosruiz.github.io/posts/manual-java/.

![img-description](/assets/img/practica-html/letra-f.jpg)
_Letra F_

{:.activity}
### Mapas de imágenes II

A partir de la imagen que podrás descargar a continuación genera un mapa de imagen según las siguientes especificaciones:

- El área negro delimitado por los puntos 95,44 y 128,257 envía al usuario a https://marcosruiz.github.io/posts/atajos-de-teclado/ cuando se pulsa. En su interior tiene un área definido por los puntos 104,56 y 117,244 que es inerte cuando es pulsado, generando un hueco.
- El área negro delimitado por los puntos 128,44 y 235,74 envía al usuario a https://marcosruiz.github.io/posts/comandos-basicos-gnu-linux/ cuando se pulsa. En su interior tiene un área definido por los puntos 128,56 y 226,65 que es inerte cuando es pulsado, generando un hueco.
- El área negro delimitado por los puntos 128,144 y 211,156 envía al usuario a https://marcosruiz.github.io/posts/manual-java/ cuando se pulsa. En su interior tiene un área definido por los puntos 128,144 y 211,156 que es inerte cuando es pulsado, generando un hueco.

![img-description](/assets/img/practica-html/letra-F-ejercicio-avanzado.jpg)
_Letra F_

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

![img-description](/assets/img/practica-html/ejercicio-tablas.jpg)
_Tabla fácil_

{:.activity}
### Creación de tablas II

Crea un documento html mediante el cuál se visualize una tabla como la de la imagen.

Para que se vea bonita la tabla añade dentro del <head> del documento html este código.

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

![img-description](/assets/img/practica-html/enunciado-tabla-html.jpg)
_Tabla con `colspan` y `rowspan`_


{:.activity}
### Creación de formularios

Escribe el html de un formulario web según las especificaciones descritas a continuación:

> En este ejercicio no se te pide que escribas css
{:.prompt-warning}

- Nombre. El campo debe aceptar un máximo de 30 caracteres.
- Apellidos. El campo debe aceptar un máximo de 30 caracteres.
- Email. Campo de relleno obligado.
- Asunto a elegir una opción entre pedir presupuesto, solicitar cita previa, otros. Deben mostrarse las 3 opciones en un cajetín según la imagen (usa el atributo size).
- Cómo nos a escogido a elegir una o más opciones entre un amigo, googleando, buzoneo, otros. Siendo la elección simple o múltiple.
- Un mensaje. Debe tener una longitud máxima de 300 caracteres
- Aceptación de cláusula rgpd. De obligada selección antes de enviar el currículum.


{:.activity}
### Audio y vídeo

Escribe un código html que muestre por pantalla dos reproductores de audio.

En el primero debes reproducir un audio alojado en tu ordenador/hosting.

En el segundo debes reproducir el audio directamente desde la fuente original.

Puedes encontrar archivos de audio mp3 en [Audio Archive](https://archive.org/details/audio).

A continuación reproduce exactamente el mismo ejercicio pero en este caso reproductores de vídeo.

Puedes encontrar archivos de vídeo mp4 en [Moving Image Archive](https://archive.org/details/movies).

## Bibliografía

- [EJERCICIOS HTML](https://francescricart.com/tutorial-html/ejercicios-html/)

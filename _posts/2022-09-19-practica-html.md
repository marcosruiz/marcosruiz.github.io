---
title: "Práctica 01: HTML"
date: 2022-09-21 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, práctica]
---

## Introducción

El objetivo de esta práctica es aprender a utilizar las etiquetas HTML.

Duración: - horas.

## Entrega

La entrega de esta práctica debe ser un fichero ZIP con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_P\<NúmeroDeLaPráctica\>.zip". Por ejemplo, en mi caso el nombre del fichero ZIP sería "RuizGarcía_Marcos_P01.zip".

En la raíz del fichero ZIP deben encontrarse las actividades HTML en formato HTML con el nombre "actividad_\<NúmeroDeActividad\>.html".

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

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
<Ir a https://www.chiquitoipsum.com/ y copiar otro párrafo del lorem fistrum.>
Primer subtema a desarrollar de la primera idea principal.
<Ir a https://www.chiquitoipsum.com/ y copiar otro párrafo del lorem fistrum.>
Segundo subtema a desarrollar de la primera idea principal.
<Ir a https://www.chiquitoipsum.com/ y copiar otro párrafo del lorem fistrum.>
Segunda idea principal a desarrollar en el escrito.
<Ir a https://www.chiquitoipsum.com/ y copiar otro párrafo del lorem fistrum.>
Primer subtema a desarrollar de la segunda idea principal.
<Ir a https://www.chiquitoipsum.com/ y copiar otro párrafo del lorem fistrum.
Segundo subtema a desarrollar de la primera idea principal.
<Ir a https://www.chiquitoipsum.com/ y copiar otro párrafo del lorem fistrum.>
Conclusiones 
<Ir a https://www.chiquitoipsum.com/ y copiar otro párrafo del lorem fistrum.>
<Ir a https://www.chiquitoipsum.com/ y copiar otro párrafo del lorem fistrum.>
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

Podéis usar el recurso [https://www.ascii.cl/htmlcodes.htm](www.ascii.cl)
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

{:.activity}
### Listas ordenadas y no ordenadas

{:.activity}
### Listas anidadas

{:.activity}
### Listas correctamente anidadas

{:.activity}
### Mapas de imágenes I

{:.activity}
### Mapas de imágenes II

{:.activity}
### Creación de tablas I

{:.activity}
### Creación de tablas II

{:.activity}
### Audio y vídeo
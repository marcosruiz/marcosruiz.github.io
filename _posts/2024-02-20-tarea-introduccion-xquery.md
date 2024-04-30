---
title: "Tarea: Introducción a XQuery"
date: 2024-02-20 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Multiplataforma, Lenguajes de Marcas y Sistemas de Gestión de Información]
tags: [desarrollo de aplicaciones multiplataforma, lenguajes de marcas y sistemas de gestión de información, administración de sistemas informáticos de red, práctica, tarea, dam, daw, asir]
img_path: /assets/img/tarea-introduccion-xquery/
---

> Artículo en construcción.
{:.prompt-warning}

## Entrega y presentación

La entrega será en formato PDF. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

## Calificación y duración

La tarea se calificará como apto o no apto.

<details class="card mb-2">
  <summary class="card-header">Duración</summary>
  <div class="card-body" markdown="1">

<div class="strawpoll-embed" id="strawpoll_NoZr3Ek1Gy3" style="max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_NoZr3Ek1Gy3" src="https://strawpoll.com/embed/NoZr3Ek1Gy3" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Actividades

Realiza las siguientes actividades.

> Para poder probar las actividades de esta tarea hace falta un programa que pueda ejecutar XQuery. Una de las alternativas es [BaseX](https://basex.org/).
{:.prompt-info}

{:.activity}
### Bailes

Sobre los datos del fichero `bailes.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!--<!DOCTYPE bailes SYSTEM "BDbailes.dtd">-->
<!--<!DOCTYPE bailes [
<!ELEMENT bailes (baile+)>
<!ELEMENT baile (nombre,precio,plazas,comienzo,fin,profesor,sala)>
<!ATTLIST baile id CDATA #REQUIRED>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT precio (#PCDATA)>
<!ATTLIST precio 
  cuota CDATA #REQUIRED
  moneda CDATA #REQUIRED
  >
  <!ELEMENT plazas (#PCDATA)>
  <!ELEMENT comienzo (#PCDATA)>
  <!ELEMENT fin (#PCDATA)>
  <!ELEMENT profesor (#PCDATA)>
  <!ELEMENT sala (#PCDATA)>
]>-->

<bailes
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:noNamespaceSchemaLocation="BDbaile.xsd">

  <baile id="1">
    <nombre>Tango </nombre>
    <precio cuota="mensual" moneda="euro">27</precio>
    <plazas>20</plazas>
    <comienzo>1/01/2012</comienzo>
    <fin>1/12/2012</fin>
    <profesor>Roberto Garcia</profesor>
    <sala>1</sala>
  </baile>

  <baile id="2">
    <nombre>Cha-cha-cha </nombre>
    <precio cuota="trimestral" moneda="euro">80</precio>
    <plazas>18</plazas>
    <comienzo>1/07/2012</comienzo>
    <fin>1/10/2012</fin>
    <profesor>Miriam Gutiérreza</profesor>
    <sala>1</sala>
  </baile>

  <baile id="3">
    <nombre>Rock </nombre>
    <precio cuota="mensual" moneda="euro">30</precio>
    <plazas>15</plazas>
    <comienzo>1/01/2012</comienzo>
    <fin>1/12/2012</fin>
    <profesor>Laura Mendiola</profesor>
    <sala>1</sala>
  </baile>

  <baile id="4">
    <nombre>Merengue </nombre>
    <precio cuota="trimestral" moneda="dolares">75</precio>
    <plazas>12</plazas>
    <comienzo>1/01/2012</comienzo>
    <fin>1/12/2012</fin>
    <profesor>Jesús Lozano</profesor>
    <sala>2</sala>
  </baile>

  <baile id="5">
    <nombre>Salsa </nombre>
    <precio cuota="mensual" moneda="dolares">32</precio>
    <plazas>10</plazas>
    <comienzo>1/01/2012</comienzo>
    <fin>1/12/2012</fin>
    <profesor>Jesús Lozano</profesor>
    <sala>2</sala>
  </baile>

  <baile id="6">
    <nombre>Pasodoble </nombre>
    <precio cuota="anual" moneda="euro">3200</precio>
    <plazas>8</plazas>
    <comienzo>1/01/2012</comienzo>
    <fin>1/12/2012</fin>
    <profesor>Miriam Gutierrez</profesor>
    <sala>2</sala>
  </baile>

</bailes>
```
{: file="bailes.xml" }

1. Muestra el nombre de todos los bailes.
2. Muestra el nombre y precio de todos los bailes.
3. Muestra el nombre y precio de todos los bailes donde su precio es mayor que 40.
4. Mostrar los bailes ordenados por nombre.
5. Mostrar los nombres de los bailes que contienen una a.
6. Mostrar el nombre de los bailes donde el apellido del profesor sea Lozano.
7. Mostrar todos los bailes, excepto el 3 y 5.
8. Mostrar profesores que den clases de bailes por una cuota mensual.
9. Mostrar el nombre de los bailes de la sala 1, que se pague con euros y el precio sea menor a 35.
10. Obtener el precio del baile con el precio más caro.
11. Obtener el precio y el nombre del baile con el precio más caro.
12. Obtener el precio del baile con el precio más barato.
13. Obtener el precio y el nombre del baile con el precio más barato.
14. Obtener la suma del precio de todas las clases.
15. Obtener la suma del precio de todas las clases, teniendo en cuenta la moneda usada.
16. Obtener el dia, mes y año de los bailes mensuales, tanto del comienzo como del final.
17. Obtener los bailes que tengan mas de 100 dias de diferencia.
18. Obtener la diferencia de dias del comienzo del baile con la fecha actual.

{:.activity}
### Tienda de libros

Sobre los datos del fichero `bookstore.xml`{: .filepath}:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<bookstore>
  <book category="COOKING">
    <title>Everyday Italian</title>
    <author>Giada De Laurentiis</author>
    <year>2005</year>
    <price>49.99</price>
  </book>
  <book category="WEB" soldout="true">
    <title lang="en">XQuery Kick Start</title>
    <author>James McGovern</author>
    <year>2001</year>
    <price>30.00</price>
  </book>
  <book category="COOKING" soldout="true">
    <title lang="en">Learning Cake</title>
    <author>Erik T. Ray</author>
    <year>2003</year>
    <price>39.95</price>
    <ebook format="epub" />
  </book>
  <sale ident="v00001">
    <refbook>Learning Cake</refbook>
    <date>2021-11-30</date>
  </sale>
  <sale ident="v00002">
    <refbook>XQuery Kick Start</refbook>
    <date>2020-12-05</date>
  </sale>
</bookstore>
```
{: file="bookstore.xml" }

Realizar las siguientes consultas XQuery:

1. Obtener el título de aquellos los libros que hayan tenido alguna venta el 2020 o 2021.
2. Obtener el autor, año y precio de cada libro perteneciente a la categoría WEB.
3. Mostrar en una tabla de HTML la cantidad total de libros y precio medio entre todos los libros.
4. Obtener cuántos libros hay que no disponen de formato digital almacenados en el XML.
5. Obtener todos los libros con un precio entre 20 y 40, ambos no incluidos, ordenados por el año de forma descendente.

{:.activity}
### (Voluntaria) Artistas

Sobre los datos del fichero `artistas.xml`{: .filepath}:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<artistas>
  <artista cod="a101">
    <nombreCompleto>Diego Velázquez</nombreCompleto>
    <nacimiento>1599</nacimiento>
    <fallecimiento>1660</fallecimiento>
    <pais>España</pais>
    <fichaCompleta>https://es.wikipedia.org/wiki/Diego_Vel%C3%A1zquez</fichaCompleta>
  </artista>
  <artista cod="a102">
    <nombreCompleto>Michelangelo Caravaggio</nombreCompleto>
    <nacimiento>1571</nacimiento>
    <pais>Italia</pais>
    <fichaCompleta>https://es.wikipedia.org/wiki/Caravaggio</fichaCompleta>
  </artista>
  <artista cod="a103">
    <nombreCompleto>Herrada de Landsberg</nombreCompleto>
    <nacimiento>1125</nacimiento>
    <fallecimiento>1195</fallecimiento>
    <pais>Alsacia</pais>
    <fichaCompleta>  https://es.wikipedia.org/wiki/Herrada_de_Landsberg</fichaCompleta>
  </artista>
  <artista cod="a104">
    <nombreCompleto>Francisco de Goya</nombreCompleto>
    <nacimiento>1746</nacimiento>
    <fallecimiento>1828</fallecimiento>
    <pais>España</pais>
    <fichaCompleta>https://es.wikipedia.org/wiki/Francisco_de_Goya</fichaCompleta>
  </artista>
</artistas>

```
{: file="artistas.xml" }

Realizar las siguientes consultas XQuery:

1. Nombre y país de todos los artistas.
1. El nombre (sin etiquetas) de los artistas que nacieron antes de 1500.
1. Nombre de los artistas para los que no hay año de fallecimiento.
1. Una lista HTML con el nombre de los artistas nacidos en España.
1. El número de artistas nacidos antes de 1600.

{:.activity}
### (Voluntaria) Impresoras

Sobre los datos del fichero `impresoras.xml`{: .filepath}:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<impresoras xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <impresora numSerie="i245" tipo="láser" compra="2010">
    <marca>Epson</marca>
    <modelo>EPL300</modelo>
    <peso>4.52</peso>
    <tamaño>A4</tamaño>
    <tamaño>A5</tamaño>
    <cartucho>C-123BV</cartucho>
    <enred/>
  </impresora>
  <impresora numSerie="i246" tipo="matricial">
    <marca>HP</marca>
    <modelo>LaserJet 2410</modelo>
    <peso>3.2</peso>
    <tamaño>A4</tamaño>
    <cartucho>C-456P</cartucho>
  </impresora>
  <impresora numSerie="i247" tipo="matricial">
    <marca>HP</marca>
    <modelo>LaserJet 2420</modelo>
    <peso>3.2</peso>
    <tamaño>A4</tamaño>
    <tamaño>A3</tamaño>
    <cartucho>C-456P</cartucho>
  </impresora>
  <impresora numSerie="i248" tipo="matricial">
    <marca>HP</marca>
    <modelo>LaserJet 2430</modelo>
    <peso>3.2</peso>
    <tamaño>A3</tamaño>
    <cartucho>C-456P</cartucho>
  </impresora>
</impresoras>
```
{: file="impresoras.xml" }

Realizar las siguientes consultas XQuery:

1. Modelo de las impresoras de tipo "láser".
1. Marca y modelo de las impresoras con más de un tamaño .
1. Marca y modelo de las impresoras con tamaño A3 (pueden tener otros).
1. Marca y modelo de las impresoras con tamaño A3 como único tamaño .
1. Modelo de las impresoras en red.

## Bibliografía

- <https://www.youtube.com/watch?v=lnVLbrTrXpo>
- <https://github.com/DiscoDurodeRoer/ejercicios-xquery-discoduroderoer/tree/master>

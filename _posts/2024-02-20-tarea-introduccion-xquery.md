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

## Calificación

La tarea se calificará como apto o no apto.

Duración: - h

## Actividades

Realiza las siguientes actividades.

{:.activity}
### Bailes

Sobre lso datos del fichero ``:

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

## Bibliografía

- <https://www.youtube.com/watch?v=lnVLbrTrXpo>
- <https://github.com/DiscoDurodeRoer/ejercicios-xquery-discoduroderoer/tree/master>

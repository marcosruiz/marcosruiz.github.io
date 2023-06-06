---
title: "Práctica: Introducción a Odoo"
date: 2022-05-15 12:20:00 +0100
categories: [Desarrollo de Aplicaciones Multiplataforma, Desarrollo de Interfaces]
tags: [dam, práctica]
img_path: /assets/img/practica-introduccion-odoo/
---

## Introducción y objetivo

El objetivo de esta práctica es entender cómo crear un módulo en el ERP Odoo.

## Entrega y presentación

La entrega será en formato ZIP. La práctica puede ser realizada **por parejas**. Leer [Entrega y presentación de prácticas](/posts/entrega-presentacion-practicas/).

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

Toda la documentación de Odoo está [aquí](https://www.odoo.com/documentation/15.0/es/developer.html).

{:.activity}
### Inicia el servicio de Odoo

En la raíz del proyecto escribiremos el siguiente comando para iniciar el servicio:

```console
$python3 odoo-bin -c --config=odoo_serverrc
```

En el navegador deberás escribir `http://localhost:8069` para acceder la interfaz web.

{:.activity}
### Crear objeto

Iniciar el módulo con los archivos `__init__.py`{: .filepath} y `__odoo__.py`{: .filepath} y crear un objeto que tenga los siguientes campos:

- Nombre de la película, campo requerido
- Descripción
- Sinopsis
- Fecha de lanzamiento
- Fecha de adquisición
- Duración
- Imagen
- Precio de alquiler, campo requerido
- Precio de compra
- Código
- Número de copias

Tras esto deberás comprobar que se ha creado el objeto en base de datos a través de PgAdmin.

> 📷 Haz una o varias capturas del escritorio al completo para demostrar que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}

{:.activity}
### Crear interfaz

Crear un el archivo xml que muestre los campos que hemos creados en el objeto película  (movie) junto con su menú de acceso.

{:.activity}
### Añadir campos

Crear los campos relacionados en la película:

- Nombre del director, utilizará la base de datos de contactos
- Actores, utilizará la base de datos de contactos
- Genero, será un nuevo modelo con varias selecciones

{:.activity}
### Añadir restricciones

Añadir restricciones al campo de numero de copias, no puede ser cero.

Añadir valores por defecto de fecha compra para que sea en el momento que se crea la película. Añadir permisos, para el visionado a cualquier usuario.

Añadir dominios para que solo muestre los que son director o los que son actores, según sea el  campo.

Añadir el campo producto a la película, y hacer depender la película de un producto. Cuando se  ponga el producto debe cambiar el precio de alquiler por el precio de venta de ese producto.

Relacionar las películas que tiene un director, y a la inversa en la película indicar que más películas  tienen el mismo director.

{:.activity}
### Añadir vistas avanzadas

Añadir vistas avanzadas a la películas:

- Vista de búsqueda para indicar los campos que se quiere buscar
- Vistas Kanban para que se vean las películas con su imagen

{:.activity}
### Añadir clase alquiler

Este ejercicio ya es un conjunto de varias cosas que hemos visto.
Crear una clase alquiler que tenga los siguientes campos:

- Nombre, por defecto “/”, para que cambie cuando se confirma el alquiler
- Película a alquilar
- Cliente al que se le alquila
- Fecha de alquiler, no la puede modificar el usuario, se rellena al confirmar el alquiler
- Fecha de devolución, no la puede modificar el usuario, se rellena al confirmar el alquiler
- Precio de alquiler, campo relacionado, muestra el precio al que se alquila por dia
- Precio total, será los días alquilados por el precio de alquiler
- Estado. El alquiler puede tener tres estados: “Borrador”, “Alquilado” y “Devuelto”.

Añadir a la clase película los siguientes campos:

- N.º de copias disponibles, será el número de copias que hay menos las que están alquiladas

Controles:

- Debe comprobase si hay copias disponibles cuando se indica la película.
- No permitir el cambio de datos si la película esta devuelta

Botones:

- Botón que confirme el alquiler y establezca la fecha de inicio de alquiler con el día del momento que se confirma. Debe comprobar si hay copias disponibles, por si se ha registrado otro alquiler en ese momento. Cambiar el estado a alquilado.
- Al confirmar se debe asignar un valor consecutivo de forma automática.
- Botón que devuelva la película. Establecer la fecha de devolución y calcular el precio total. Cambiar el estado a devuelto.
- Botón que devuelva el estado del alquiler a borrador, por si el usuario se ha equivocado. Aunque los anteriores botones establecen la fecha de nuevo se recomienda que las fechas vuelvan a vacío. Igual que el precio a cero.

Crear vistas para el alquiler:

- Vista árbol-lista resumen
- Vista formulario. Los botones deben visualizarse según su estado. Si esta en borrador solo se puede iniciar el alquiler, si esta alquilado solo se puede devolver o cambiar a borrador. Si esta devuelto no se puede utilizar botones.
- Vista búsqueda
- Vista pivote que muestre una tabla con las películas y la medida del precio total
- Vista Calendario que utilice las fechas de inicio y final del alquiler

Modificaciones de las clases actuales:

- Añadir en clientes cuantos alquileres tiene y un enlace a los alquileres que ha realizado un cliente. Su historial
- Añadir a las películas cuantas veces se ha alquilado y un enlace (historial) a sus alquileres.

{:.activity}
### Crear asistente

Crear un asistente que nos permita indicar la fecha de devolución y el precio manualmente y no automático como lo tiene el botón de devolver.

Crear una acción que nos permita devolver varias películas a la vez.

Creación de dos informes:

- Informe del alquiler
- Ficha de la película

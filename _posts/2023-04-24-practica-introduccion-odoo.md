---
title: "Práctica: Introducción a Odoo"
date: 2022-05-15 12:20:00 +0100
categories: [Desarrollo de Aplicaciones Multiplataforma, Redes Locales]
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
- Descripción - Sinopsis
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
### 

{:.activity}
### 

{:.activity}
### 

{:.activity}

###

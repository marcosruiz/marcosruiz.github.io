---
title: "Entrega y presentación de tareas"
date: 2023-10-05 9:00:00 +0100
categories: [General]
tags: [práctica]
img_path: /assets/img/entrega-presentacion-tareas/
---

En todas las tareas se debe seguir el siguiente formato:

## Entrega y presentación en formato PDF

Si la entrega de la práctica debe ser un documento PDF, el nombre tendrá el siguiente formato:

`<tu usuario>_t<número de la tarea con dos dígitos>.pdf`{: .filepath}

Asegúrate que el nombre no contenga la letra ñ, tildes ni caracteres especiales extraños. Así por ejemplo el alumno Marcos Ruiz García para la primera tarea, tendría el siguiente nombre:

`mruizg_t01.pdf`{: .filepath}

1. Debe contener una portada, número de la tarea, título de la tarea, nombre del módulo profesional, nombre del ciclo formativo, autor(es) y fecha de realización.
1. Debe tener un índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
1. Debe tener cada página numerada.
1. Las actividades deberán estar numeradas y ordenadas correctamente. Por ejemplo: `1. Actividad`, `Actividad 1`, `1. <Título de la actividad>` o `Actividad 1: <Título de la actividad>` en la entrega del alumno.
1. Cada actividad debe tener **el enunciado en negrita** y la respuesta en texto normal.
1. Cada imagen debe tener un texto que la presente o un pie de foto con el siguiente formato: `Figura <número>: <Breve descripción de la figura>`.
1. Los comandos, documentos de configuración y código fuente deben quedar reflejados en el PDF de la entrega en texto plano para permitir copiar y pegar de una manera rápida.
1. Los comandos, documentos de configuración y código fuente que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$ sudo apt install neofetch`.
1. Para las actividades a mano se deberá hacer una foto a la resolución del ejercicio y añadirla al PDF.

Además:

1. El documento no debe contener faltas ortográficas.
1. En el caso de utilizar capturas de pantalla, las capturas también deben demostrar la autoría de las actividades. Por lo tanto, estas capturas deberán ser de toda la pantalla del alumno para que se vea la fecha de realización y el nombre del fichero que está abierto.

![Ejemplo de portada](ejemploPortada.png)
_Ejemplo de portada_

![Ejemplo de actividad](ejemploActividad.png)
_Ejemplo de actividad_

> Os dejo en [este enlace](/assets/docx/apellido1_apellido2_nombre_SIGxx_Tarea.docx) una plantilla en formato DOCX realizada con WPS Office que cumple la mayoría de los requisitos. ¡Recuerda eliminar los símbolos "<" y ">" al usar esta plantilla.
{:.prompt-info}

## Entrega y presentación en formato ZIP

Si la entrega de la práctica debe ser un documento ZIP, el nombre tendrá el siguiente formato:

`<tu usuario>_t<número de la tarea con dos dígitos>.zip`{: .filepath}

Asegúrate que el nombre no contenga la letra ñ, tildes ni caracteres especiales extraños. Así por ejemplo el alumno Marcos Ruiz García para la primera tarea, tendría el siguiente nombre:

`mruizg_t01.zip`{: .filepath}

En la raíz del fichero ZIP deberá encontrarse el documento PDF (en el caso que se pida) con el nombre `mruizg_t01.zip`{: .filepath} y las actividades en el formato que corresponda:

- Las actividades de XML deberán estar en formato XML con el nombre `<tu usuario>_a<Número de la actividad con dos dígitos>.xml`{: .filepath}. Por ejemplo: `mruizg_a01.xml`{: .filepath}.
- Las actividades de HTML deberán estar en formato HTML con el nombre `<tu usuario>_a<Número de la actividad con dos dígitos>.html`{: .filepath}. Por ejemplo: `mruizg_a01.html`{: .filepath}.
- Las actividades de Packet Tracer 6.2 deberán estar en formato PKT con el nombre `<tu usuario>_a<Número de la actividad con dos dígitos>.pkt`{: .filepath}. Por ejemplo: `mruizg_a01.pkt`{: .filepath}.
- Las actividades de JavaScript deberán estar en formato JS con el nombre `<tu usuario>_a<Número de la actividad con dos dígitos>.js`{: .filepath}. Por ejemplo: `mruizg_a01.js`{: .filepath}.
- Las actividades con otro tipo de extensión deberán estar en formato correspondiente `<tu usuario>_a<Número de la actividad con dos dígitos>.<extensión>`{: .filepath}. Por ejemplo: `mruizg_a01.jar`{: .filepath}.

## Entrega y presentación en formato presentación

Si la entrega de la práctica debe ser un documento PDF, el nombre tendrá el siguiente formato:

`<tu usuario>_t<número de la tarea con dos dígitos>.pdf`{: .filepath}

Asegúrate que el nombre no contenga la letra ñ, tildes ni caracteres especiales extraños. Así por ejemplo el alumno Marcos Ruiz García para la primera tarea, tendría el siguiente nombre:

`mruizg_t01.pdf`{: .filepath}

En caso de que no se pueda trasladar la presentación desarrollada a formato PDF se deberá entregar un documento PDF con un número de capturas adecuado y un enlace web público con la presentación real.

El documento PDF SIEMPRE debe contener una portada, número de la tarea, título de la tarea, nombre del módulo profesional, nombre del ciclo formativo, autor(es) y fecha de realización.

## Entrega y presentación en formato Markdown

Si la entrega de la práctica debe ser un documento PDF, el nombre tendrá el siguiente formato:

`<tu usuario>_t<número de la tarea con dos dígitos>.md`{: .filepath}

Asegúrate que el nombre no contenga la letra ñ, tildes ni caracteres especiales extraños. Así por ejemplo el alumno Marcos Ruiz García para la primera tarea, tendría el siguiente nombre:

`mruizg_t01.md`{: .filepath}

El documento Markdown debe contener título de la tarea, nombre del módulo profesional, nombre del ciclo formativo, autor(es) y fecha de realización.

Ejemplo de entrega:

```markdown
# Tarea 11: Introducción a XPath

- Módulo profesional: Lenguajes de Marcas y Sistemas de Gestión de Información
- Ciclo formativo: Desarrollo de Aplicaciones Web
- Autor: Marcos Ruiz García
- Fecha: 28/02/2024

## Actividad 1

Dado el siguiente documento XML, escriba las expresiones XPath que devuelvan la respuesta deseada.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ies>
  <nombre>Campus Digital</nombre>
  <web>https://campusdigitalfp.com/</web>
</ies>
‎```

### Actividad 1.1

Nombre del instituto.

Salida esperada:

```xml
<nombre>Campus Digital</nombre>
‎```

Consulta XPath:

```xpath
/ies/nombre
‎```

Salida real:

```plaintext
<nombre>Campus Digital</nombre>
‎```

```
{: file="mruizg_t01.md" }


## Cómo saber mi nombre de usuario

El usuario que debes usar siempre en las prácticas debe cumplir con el siguiente formato:

- La inicial de tu primer nombre.
- Tu primer apellido.
- La inicial de tu segundo apellido si tienes.

En mi caso, como yo me llamo Marcos Ruiz García mi usuario será: mruizg.

En todas las prácticas, cada vez que se haga mención a `<tu usuario>` deberás sustituirlo por tu usuario.

> Siempre que sea posible deberás usar tu nombre de usuario para que no haya ninguna duda sobre la autoría de las prácticas.
{:.prompt-warning}

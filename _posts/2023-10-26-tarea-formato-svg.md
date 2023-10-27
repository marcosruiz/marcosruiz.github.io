---
title: "Tarea: El formato SVG"
date: 2023-10-26 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, práctica, tarea, lmsgi, dam, daw, asir]
img_path: /assets/img/tarea-formato-svg/
---

## Entrega y presentación

La entrega será en formato SVG.

## Calificación

La tarea se calificará como apto o no apto.

## Actividades

Un ejemplo de los lenguajes de marcas es el formato SVG que nos permite definir gráficos vectoriales visible en navegadores compatibles, vamos a comprobar si eres capaz de generar un archivo SVG y ponerlo a funcionar.

{:.activity}
### Compromisos de la organización

Copia el siguiente texto en el bloc de notas de tu equipo o en otro editor similar:

```xml
<?xml version="1.0" standalone="no"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 20010904//EN" "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
 <svg width="500" height="400" xmlns="http://www.w3.org/2000/svg">
 <rect x="25" y="10" width="200" height="100" fill="orange" stroke="blue" stroke-width="3" />
 <rect x="225" y="25" width="50" height="85" fill="blue" stroke="red" stroke-width="8" />
 <circle cx="70" cy="110" r="25" fill="green" stroke="red"/>
 <circle cx="220" cy="110" r="25" fill="green" stroke="red"/>
 <path fill="pink" d="M 316 9 L 396 9 L 359 46 L 359 94 C 359 94 357 100 384 102
       L 384 103 L 331 103 L 331 102 C 356 100 354 94 354 94
   L 354 46 L 316 9 z " />
 <line stroke="green" stroke-width="8" x1="25" y1="150" x2="400" y2="150" />
 <polyline fill="red" points="20, 250 85, 350 120, 350" />
 <polygon fill="green" points="250,250 297, 284 279,340 220, 340 202, 284" />
 <ellipse fill="blue" cx="400" cy="300" rx="72" ry="50"/>
</svg>
```

Guarda el archivo con extensión SVG y ábrelo con un navegador en tu equipo, si lo has hecho correctamente y el navegador es compatible verás una imagen como la siguiente:

![imgDescription](SolucionSVG.jpg)
_imgDescription_

Prueba a generar y entregar en esta tarea tu propio archivo SVG con la imagen que quieras, puedes coger ideas o inspiración en los [tutoriales del w3schools](https://www.w3schools.com/graphics/svg_intro.asp).

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)

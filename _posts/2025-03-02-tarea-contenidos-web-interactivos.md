---
title: "Tarea obligatoria: Contenidos web interactivos"
date: 2024-12-04 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/tarea-contenidos-web-interactivos/
---

## Información sobre la tarea

La entrega será en formato ZIP con el código y un video dentro. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

La tarea se calificará con una nota de APTO (10) o NO APTO (0).

Duración actividades obligatorias: 7 horas.

RA4. Integra contenido multimedia en documentos Web valorando su aportación y seleccionando adecuadamente los elementos interactivos.

## Actividades

A continuación, se muestran las actividades a realizar.

{:.activity}
### (Voluntaria) Drag & drop al bloc de notas

En base al ejemplo de Drag & drop del artículo [Contenidos web interactivos](/posts/contenidos-web-interactivos/), prueba a arrastrar el texto a otra aplicación de bloc de notas. ¿Ha funcionado?

Ahora modifica el ejemplo y en vez de usar `dataTransfer` usa una variable de JavaScript y vuelve a arrastrar el texto a la misma aplicación de bloc de notas. ¿Ha funcionado?. Explica que ha ocurrido.

{:.activity}
### (Voluntaria) Drag & drop con JSON

En base al ejemplo de Drag & drop del artículo [Contenidos web interactivos](/posts/contenidos-web-interactivos/), modifica que en vez de guardarse el texto del elemento, se guarde un JSON similar al siguiente:

```json
{
  color: "#FF0000",
  texto: "Disco duro"
}
```

Y al soltar que en el elemento `<p>`, se muestre la propiedad texto del JSON y que sea del color de la propiedad color del JSON.

{:.activity}
### Vuelos

Haz un programa similar al siguiente:

![Interfaz de la aplicación web de vuelos](vuelos.png)
_Interfaz de la aplicación web de vuelos_

De forma que:

- Al arrastrar el icono de "Avión despegando" sobre el texto de "Nº de Vuelos Despegados" se incrementará en 1 el valor
- Al arrastrar el icono de "Avión aterrizando" sobre el texto de "Nº de Vuelos Aterrizados" se incrementará en 1 el valor
- Al arrastrar el icono de "Nº de Vuelos Despegados" sobre el icono de "La papelera" se decrementará en 1 el valor
- Al arrastrar el icono de "Nº de Vuelos Aterrizados" sobre el icono de "La papelera" se decrementará en 1 el valor

{:.activity}
### (Voluntaria) Introducción rápida a Figma

Prueba los elementos básicos de Figma utilizando esta guía en español: [Figma Basics (Español) - Primeros pasos en Figma](https://www.figma.com/community/file/923140611594993345).

> Recuerda que deberás crear una cuenta de usuario en Figma para acceder al tutorial/plantilla.
{:.prompt-info}

{:.activity}
### Interfaz con Figma

Mejora la interfaz de usuario utilizando Figma.

Crea un proyecto con Figma para crear la interfaz de esta página. Es obligatorio seguir la estructura que fija el **Atomic Design**. Puedes inspirarte en proyectos de la comunidad e incluso usarlos como plantilla.

A modo de contexto, vamos a suponer que la página se usa en la torre de control de una aeropuerto como Castellón y se usa para ir controlando cuantos aviones van despegando y aterrizando.

> Recuerda que puedes generar el código CSS directamente con Figma y copiarlo a tu CSS.
{:.prompt-info}

> Crea solo los átomos, moléculas, organismos, plantillas y páginas que sean necesarios.
{:.prompt-info}

{:.activity}
### (Voluntaria avanzada) Responsive

Aunque te estarías adelantando al desarrollo habitual de esta asignatura, puedes intentar hacerlo responsive utilizando media queries o cualquier técnica que consideres.

> Puedes utilizar [el artículo de Logongas sobre Diseño Responsivo](https://logongas.es/doku.php?id=clase:daw:diw:2eval:tema06) como ayuda.
{:.prompt-info}

{:.activity}
### Vídeo

Graba un video mostrando la aplicación de vuelos que has desarrollado. El video debe cumplir con los siguientes requisitos:

1. El video debe ser lo más corto posible.
1. El vídeo debe mostrar el funcionamiento del Drag and Drop de la aplicación en dos o más navegadores.
1. Debes explicar brevemente tu código asociado al funcionamiento del Drag and Drop.
1. Debes incluir las explicaciones con TU VOZ.
1. Debes mostrar tu proyecto en Figma.
1. Debes indicar si has utilizado el código generado con Figma y porqué.

{:.activity}
### (Voluntaria) Ponte a prueba con 100dayscss

Haz click <https://100dayscss.com/days/27/> y empieza con tu reto de 100 días para convertirte en todo un experto en CSS.

Si te atascas, recuerda que puedes vers soluciones de otros usuarios que pueden "inspirarte".

{:.activity}
### (Voluntaria no recomendada) Formulario

> Esta es la tarea del ministerio. La dejo para que la tengas pero considero que no aplica a esta unidad.
{:.prompt-info}

Reforma el código [formulario.html](/assets/img/tarea-contenidos-web-interactivos/formulario.html) de un formulario en un código que:

- Siga las recomendaciones del W3C para XHTML. [El validador de la W3C](https://validator.w3.org/#validate_by_upload) te será de ayuda.
- Esté dotado de interactividad empleando CSS.
- Sea usable.

## Dame tu feedback...

<div class="strawpoll-embed" id="strawpoll_xVg71NJAOyr" style="height: 644px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_xVg71NJAOyr" src="https://strawpoll.com/embed/xVg71NJAOyr" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

<div class="strawpoll-embed" id="strawpoll_3RnYXLv9zye" style="height: 3012px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_3RnYXLv9zye" src="https://strawpoll.com/embed/3RnYXLv9zye" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

## Bibliografía

- <https://logongas.es/doku.php?id=clase:daw:diw:1eval:tema01>
- <https://lenguajecss.com/css/calidad-de-codigo/stylelint/>
- <https://getbootstrap.com/docs/5.3/examples/>

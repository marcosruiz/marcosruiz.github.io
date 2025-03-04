---
title: "Tarea obligatoria: Contenidos web interactivos"
date: 2024-12-04 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/tarea-contenidos-web-interactivos/
---

> Artículo en construcción.
{:.prompt-warning}

## Información sobre la tarea

La entrega será en formato ZIP con un PDF dentro. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

La tarea se calificará con una nota de APTO (10) o NO APTO (0).

Duración actividades obligatorias: X horas.

RA4. Integra contenido multimedia en documentos Web valorando su aportación y seleccionando adecuadamente los elementos interactivos.

## Actividades

A continuación, se muestran las actividades a realizar.

{:.activity}
### Formulario

Reforma el código [formulario.html](/assets/img/tarea-contenidos-web-interactivos/formulario.html) de un formulario en un código que:

- Siga las recomendaciones del W3C para XHTML. [El validador de la W3C](https://validator.w3.org/#validate_by_upload) te será de ayuda.
- Esté dotado de interactividad empleando CSS.
- (Voluntario) Sea usable.

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

Además, cambiar todo el aspecto visual para que "quede bonito". Vamos a suponer que la página se usa en la torre de control de una aeropuerto como Castellón y se usa para ir controlando cuantos aviones van despegando y aterrizando.

{:.activity}
### (Voluntaria) Ponte a prueba con 100dayscss

Haz click <https://100dayscss.com/days/27/> y empieza con tu reto de 100 días para convertirte en todo un experto en CSS.

Si te atascas, recuerda que puedes vers soluciones de otros usuarios que pueden "inspirarte".

## Dame tu feedback...

<div class="strawpoll-embed" id="strawpoll_xVg71NJAOyr" style="height: 644px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_xVg71NJAOyr" src="https://strawpoll.com/embed/xVg71NJAOyr" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

<div class="strawpoll-embed" id="strawpoll_3RnYXLv9zye" style="height: 3012px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_3RnYXLv9zye" src="https://strawpoll.com/embed/3RnYXLv9zye" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

## Bibliografía

- <https://logongas.es/doku.php?id=clase:daw:diw:1eval:tema01>
- <https://lenguajecss.com/css/calidad-de-codigo/stylelint/>
- <https://getbootstrap.com/docs/5.3/examples/>

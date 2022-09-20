---
title: "Internet, características y evolución"
date: 2022-09-15 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, teoría]
---

## Introducción

## Historia de Internet

<iframe width="560" height="315" src="https://www.youtube.com/embed/mGG5o6vbKyQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/l-zFtlzanvQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/9hIQjrMHTv4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Leer artículo [Historia de Internet: cómo nació y cuál fue su evolución](https://marketing4ecommerce.net/historia-de-internet/)

Leer artículo [Historia de Internet](https://www.mastermarketing-valencia.com/marketing-digital/blog/internet-historia-evolucion/#Los_origenes_de_internet_ARPA) hasta la sección "Evolución de Internet en cifras" incluida.

Leer artículo [Historia de internet](https://www.fib.upc.edu/retro-informatica/historia/internet.html) hasta la sección "WWW" incluida.

## Historia de la web

Ver hasta el año 2001...

<iframe width="560" height="315" src="https://www.youtube.com/embed/NWUZCTTLQcg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<details class="card mb-2">
  <summary class="card-header question">¿Qué es una página web?</summary>
  <div class="card-body" markdown="1">
    
Una página web es un documento HTML. Este documento HTML es interpretado por un navegador:

- Google Chrome
- Mozilla Firefox
- Internet Explorer
- Microsoft Edge
- Opera
- Safari

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo Internet que la web?</summary>
  <div class="card-body" markdown="1">
    
No. WEB = INTERNET + HTTP

  </div>
</details>

## La web 1.0, 2.0 y 3.0

Leer artículo [¿Qué es la Web 3.0?](https://www.ceupe.com/blog/que-es-la-web-3-0.html).

## La web 4.0

Leer el artículo [Web 4.0](https://www.paradigmadigital.com/dev/web-4-0/).

## Arquitectura cliente-servidor

La web tiene una arquitectura cliente-servidor.

![Arquitectura cliente-servidor](/assets/img/internet-caracteristicas-evolucion/arquitecturaClienteServidor.png)
_Arquitectura cliente-servidor_

<details class="card mb-2">
  <summary class="card-header question">¿Qué diferencia hay entre una arquitectura cliente servidor y una arquitectura p2p?</summary>
  <div class="card-body" markdown="1">
    
**Cliente-Servidor**: es un modelo de aplicación distribuida en el que las tareas se reparten entre los proveedores de recursos o servicios, llamados servidores, y los demandantes, llamados clientes. Un cliente realiza peticiones a otro programa, el servidor, quien le da respuesta. Esta idea también se puede aplicar a programas que se ejecutan sobre una sola computadora, aunque es más ventajosa en un sistema operativo multiusuario distribuido a través de una red de computadoras.

**P2P**: es una red de computadoras en la que todos o algunos aspectos funcionan sin clientes ni servidores fijos, sino una serie de nodos que se comportan como iguales entre sí. Es decir, actúan simultáneamente como clientes y servidores respecto a los demás nodos de la red. Las redes P2P permiten el intercambio directo de información, en cualquier formato, entre los ordenadores interconectados.

Una de las diferencias, es que en el "CS" se necesita un servidor, y un cliente, a diferencia del "P2P", que permite a cualquier usuario ser cliente o servidor. Una de las ventajas del "P2P" es que la conexión siempre estará activa, ya que con que haya un cliente, el servidor esta activo, pero en el "CS" se requiere que el servidor principal esté activo. En el "P2P" todo usuario o cliente tiene las mismas funciones que otro igual que él, aspecto contrario al "CS" en el cual un servidor tiene las funciones que los clientes no poseen. 

  </div>
</details>

{:.question}
¿Sabríais decirme 5 navegadores web?

![Arquitectura cliente-servidor](/assets/img/internet-caracteristicas-evolucion/arquitecturaClienteServidorConNat.png)
_Arquitectura cliente-servidor con NAT_

{:.question}
¿Qué significan las siglas NAT?

## Direcciones de Internet

### Direcciones IP

<iframe width="560" height="315" src="https://www.youtube.com/embed/gVUE2IDwWA0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Cómo se llaman los proveedores de internet (siglas)?

{:.question}
¿Cómo puede Movistar disponer de menos IPs que usuarios?

{:.question}
¿Qué es la WAN?

{:.question}
¿Qué información tiene cada paquete TCP/IP?

<iframe width="560" height="315" src="https://www.youtube.com/embed/HeZWcZmrQUY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Cómo sabe el router a qué dispositivo de la LAN a la que va el paquete de respuesta?

{:.question}
¿El router analiza la dirección MAC para realizar el trabajo del NAT satisfactoriamente?

{:.question}
¿Qué es el NAT? ¿En qué dispositivo suele estar?

{:.question}
¿Cuál es la IP de la puerta de enlace?

{:.question}
¿Cuál es el rango de direcciones IP? ¿Cómo se puede calcular?

{:.question}
¿Es lo mismo la puerta enlace que el gateway? ¿Qué le(s) corresponde(n)?

{:.question}
¿Por qué existen las IPs privadas? ¿No podrían ser todas públicas y así ahorrarnos el paso de traducción?

### URLs

Todo recurso de Internet debe tener una dirección accesible desde cualquier ordenador del mundo. A esa dirección se le llama URLs (Uniform Resource Locator).

Una URL es una secuencia de caracteres, de acuerdo a un formato estándar, que se usa para nombrar recursos en Internet para su localización o identificación.

Esta imagen [https://upload.wikimedia.org/wikipedia/en/thumb/2/22/Heckert_GNU_white.svg/246px-Heckert_GNU_white.svg.png](https://upload.wikimedia.org/wikipedia/en/thumb/2/22/Heckert_GNU_white.svg/246px-Heckert_GNU_white.svg.png) tiene una URL en Internet.

![Formato de una URL](/assets/img/internet-caracteristicas-evolucion/formatoUrl.png)
_Formato de una URL_

<details class="card mb-2">
  <summary class="card-header question">¿Por qué usamos dominios?</summary>
  <div class="card-body" markdown="1">
    
La IP del centro educativo IES Leonardo de Chabacier es 2.139.196.76.
Cómo memorizar estos números es poco práctico se crearon los servidores DNS y así asociar estas IPs a nombres.

  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un DNS y para qué sirve?</summary>
  <div class="card-body" markdown="1">
    
Cada dispositivo conectado a Internet tiene una dirección IP única que otros equipos pueden usar para encontrarlo. Los servidores DNS (Domain Name System) suprimen la necesidad de que los humanos memoricen direcciones IP tales como 192.168.1.1 (en IPv4) o nuevas direcciones IP alfanuméricas más complejas, tales como 2400:cb00:2048:1:c629:d7a2 (en IPv6).

![Comunicación cliente-servidor DNS básica](/assets/img/internet-caracteristicas-evolucion/servidorDns.png)
_Comunicación cliente-servidor DNS básica_

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## HTML

HTML (Lenguaje de Marcas de Hipertexto, del inglés HyperText Markup Language) es el componente más básico de la Web. Define el significado y la estructura del contenido web. Además de HTML, generalmente se utilizan otras tecnologías para describir la apariencia/presentación de una página web (CSS) o la funcionalidad/comportamiento (JavaScript).

"Hipertexto" hace referencia a los enlaces que conectan páginas web entre sí, ya sea dentro de un único sitio web o entre sitios web. Los enlaces son un aspecto fundamental de la Web. Al subir contenido a Internet y vincularlo a las páginas creadas por otras personas, te conviertes en un participante activo en la «World Wide Web» (Red Informática Mundial).

HTML utiliza "marcas" para etiquetar texto, imágenes y otro contenido para mostrarlo en un navegador Web. Las marcas HTML incluyen "elementos" especiales como `<head>`, `<title>`, `<body>`, `<header>`, `<footer>`, `<article>`, `<section>`, `<p>`, `<div>`, `<span>`, `<img>`, `<aside>`, `<audio>`, `<canvas>`, `<datalist>`, `<details>`, `<embed>`, `<nav>`, `<output>`, `<progress>`, `<video>`, `<ul>`, `<ol>`, `<li>` y muchos otros.

Un elemento HTML se distingue de otro texto en un documento mediante "etiquetas", que consisten en el nombre del elemento rodeado por "`<`" y "`>`". El nombre de un elemento dentro de una etiqueta no distingue entre mayúsculas y minúsculas. Es decir, se puede escribir en mayúsculas, minúsculas o una mezcla. Por ejemplo, la etiqueta `<title>` se puede escribir como `<Title>`, `<TITLE>` o de cualquier otra forma.

<details class="card mb-2">
  <summary class="card-header question">¿Qué significa hipertexto?</summary>
  <div class="card-body" markdown="1">

Del mismo modo que un hipermercado es mejor que un mercado. El hipertexto es mejor que el texto. De manera simplificada es texto con enlaces que te llevan a otros documentos.

  </div>
</details>

### Estructura básica de HTML

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Título de la página</title>
  </head>
  <body>

    <h1>Esto es una cabecera</h1>
    <p>Esto es un párrafo.</p>

    <p id="bienvenida">¡Bienvenido!</p>

  </body>
</html>
```

### Nomenclatura HTML

- **Elemento**: Los elementos HTML son los componentes básicos de un documento HTML. En esta página que estás leyendo, por ejemplo, el título, un párrafo y una imagen son elementos H1, P e IMG, respectivamente. No todos los tipos de elemento son visibles: algunos tienen como única función agrupar a otros elementos, por ejemplo.
- **Etiqueta**: Las etiquetas HTML son los códigos que se usan en el código fuente para declarar y delimitar cada uno de los elementos. Por ejemplo, el elemento P (párrafo) comienza siempre con la etiqueta de apertura `<p>` y suele terminar con la etiqueta de cierre `</p>`. Algo así: `<p>Hola, mundo.</p>`.
- **Atributo**: Los atributos se incluyen en las etiquetas de apertura para añadir información necesaria para el elemento. Por ejemplo, si quiero incluir aquí un enlace a Facebook, debo añadir al correspondiente elemento A (enlace) un atributo href donde especificaré la dirección de Facebook, así: `<a href="https://www.facebook.com">Ir a Facebook</a>`.


![Nomenclatura HTML](/assets/img/internet-caracteristicas-evolucion/nomenclaturaHtml.png)
_Nomenclatura HTML_

{:.question}
¿Cómo se llama un elemento que tiene clave pero no tiene valor?

{:.question}
¿Para que sirve el atributo alt o texto alternativo?

{:.question}
Veamos el código fuente de [www.muylinux.com](www.muylinux.com). ¿Tiene la estructura que he explicado?

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un lenguaje de programación?</summary>
  <div class="card-body" markdown="1">
    
Un lenguaje de programación es un lenguaje formal que le proporciona a una persona, en este caso el programador, la capacidad de escribir (o programar) una serie de instrucciones o secuencias de órdenes en forma de algoritmos con el fin de controlar el comportamiento físico o lógico de un sistema informático, de manera que se puedan obtener diversas clases de datos o ejecutar determinadas tareas. 

A todo este conjunto de órdenes escritas mediante un lenguaje de programación se le denomina programa informático.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


<details class="card mb-2">
  <summary class="card-header question">¿Es HTML un lenguaje de programación?
</summary>
  <div class="card-body">

HTML es una forma de representar la información. No programas el comportamiento de una computadora por lo tanto no es un lenguaje de programación.

HTML ("Hypertext Markup Language") no es un lenguaje de programación. Es un lenguaje de marcado que le dice a los navegadores web cómo estructurar las páginas web que estás visitando. Puede ser tan complejo o tan simple como desee el desarrollador web. El HTML consiste en una serie de elementos, que puedes utilizar para encerrar, delimitar o marcar diferentes partes del contenido para hacer que aparezcan de una cierta manera, o actúen de determinada forma. Las etiquetas que delimitan un fragmento de contenido pueden hacer que dicho contenido enlace con otra página, ponga una palabra en cursiva, etcétera. Por ejemplo, dada la siguiente línea de contenido:

<iframe width="560" height="315" src="https://www.youtube.com/embed/b6sNxnldPhU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

  </div>
</details>


## Bibliografía

- [HTML: Lenguaje de etiquetas de hipertexto](https://developer.mozilla.org/es/docs/Web/HTML)
- [HTML Tutorial](https://www.w3schools.com/html/)
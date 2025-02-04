---
title: "Tutorial: Primeros pasos con SASS"
date: 2024-11-16 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw, sass]
img_path: /assets/img/tutorial-sass/
---

{:.section}
## Introducción

**SASS** (Syntactically Awesome Stylesheets) es un preprocesador de CSS que permite escribir hojas de estilo de manera más eficiente, estructurada y con características avanzadas que no están disponibles en CSS nativo. Es una herramienta que compila su código en CSS estándar, el cual luego puede ser interpretado por los navegadores.

<iframe width="560" height="315" src="https://www.youtube.com/embed/BtiiM3jeb_c?si=SIae2atwq8JpcTqn" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Preguntas sobre el vídeo:

- ¿Qué pasos debemos seguir para instalar sass? ¿Es necesario tener node instalado?
- ¿Hay alguna diferencia entre usar la extensión `.sass` y la extensión `.scss` en nuestros ficheros?
- ¿Visual Studio Code hace un resaltado de la sintaxis de SASS automáticamente o necesitas instalar una extensión?
- ¿Se puede cargar un fichero de extensión `.scss` como hoja de estilos de un HTML directamente?

<details class="card mb-2">
  <summary class="card-header question">¿Qué diferencia hay entre compilar y transpilar?</summary>
  <div class="card-body" markdown="1">

La **compilación** es el proceso mediante el cual el código fuente escrito en un lenguaje de alto nivel (como Java o C++) se traduce completamente a un lenguaje de bajo nivel o lenguaje máquina (código binario), el cual puede ser ejecutado directamente por el sistema operativo o la máquina.

La **transpilación** es un proceso en el cual el código fuente de un lenguaje de programación es transformado en otro código fuente, pero dentro del mismo nivel de abstracción.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Principales características principales de SASS

{:.subsection}
### Variables

Permite definir variables para reutilizar valores como colores, tamaños, fuentes, etc.  

```scss
$primary-color: #3498db;
body {
    background-color: $primary-color;
}
```

<details class="card mb-2">
  <summary class="card-header question">¿CSS tiene variables?</summary>
  <div class="card-body" markdown="1">

Si. A partir de 2017, la mayoría de los navegadores modernos comenzaron a soportar variables CSS. Sin embargo, versiones antiguas de ciertos navegadores  no son compatibles con esta funcionalidad, por lo que se recomienda verificar la compatibilidad antes de implementarlas en proyectos donde se necesite compatibilidad con navegadores más antiguos.

Comprueba en la web [Can I use](https://caniuse.com/) si Internet Explorer (IE) es compatible o no con las variables CSS.

Comprueba también si IE es compatible con los template literals.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Para qué sirve la web [Can I use](https://caniuse.com/)?

{:.section}
## Anidación

Facilita la organización del código al permitir anidar selectores dentro de otros, reflejando la jerarquía HTML.

```scss
nav {
    ul {
        margin: 0;
        li {
            list-style: none;
        }
    }
}
```

{:.subsection}
### Mixins

Permite reutilizar fragmentos de código con argumentos personalizables.  

```scss
@mixin border-radius($radius) {
    border-radius: $radius;
    -webkit-border-radius: $radius;
}
button {
    @include border-radius(10px);
}
```

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un mixin de SASS?</summary>
  <div class="card-body" markdown="1">

Un mixin en Sass es una forma de reutilizar bloques de código CSS dentro de tu hoja de estilos sin necesidad de repetir el código.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Puede un mixin recibir parámetros?</summary>
  <div class="card-body" markdown="1">

Los mixins pueden aceptar parámetros para hacerlos más dinámicos y reutilizables.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Cómo se invoca un mixin de SASS?</summary>
  <div class="card-body" markdown="1">

Con la palabra clave `@include`.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Los mixins devuelven un valor cuando se les invoca?</summary>
  <div class="card-body" markdown="1">

A diferencia de las funciones en otros lenguajes de programación, los mixins en Sass no devuelven un valor. Simplemente insertan el código CSS donde se usan.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Cómo usar SASS

Para usar SASS necesitas instalarlo y configurarlo para compilarlo a CSS. Para ello debes seguir lso siguientes pasos.

Instala node, reinicia el ordenador y comprueba que está instalado con la siguiente instrucción:

```console
node -v
```

Crea una carpeta o usa una carpeta existente para crear un proyecto de node con la instrucción:

```console
npm init -y
```

Instala SASS (por ejemplo, usando npm) con el parámetro `-g` para indicar que es global:  

```console
npm install -g sass
```

> También podemos instalarlo con [Chocolatey](https://chocolatey.org/).
{:.prompt-info}

<details class="card mb-2">
  <summary class="card-header question">¿Qué es Chocolatey?</summary>
  <div class="card-body" markdown="1">

Es un gestor de paquetes para Windows.

Recuerda que un gestor de paquetes o package manager es una herramienta que facilita la instalación, actualización, configuración y gestión de software como pueden ser programas, frameworks, herramientas o librerías.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Compila tu archivo `.scss` en CSS:

```console
sass input.scss output.css
```

También puedes ejecutar el siguiente comando para que se autotranspile directamente cada vez que haces cambios en el fichero `.scss`:

```console
sass --watch input.scss output.css
```

{:.question}
¿Por qué crees que se usa el parámetro `--watch` para cuando queremos que se transpile automáticamente?

## Bibliografía

- <https://sass-lang.com/guide/>
- <https://sass-lang.com/install/>

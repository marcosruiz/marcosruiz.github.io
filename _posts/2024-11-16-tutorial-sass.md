---
title: "Tutorial: Primeros pasos con SASS"
date: 2024-10-26 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Diseño de Interfaces Web]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, diseño de interfaces web, diw]
img_path: /assets/img/imagenes-web/
---

## Introducción

**SASS** (Syntactically Awesome Stylesheets) es un preprocesador de CSS que permite escribir hojas de estilo de manera más eficiente, estructurada y con características avanzadas que no están disponibles en CSS nativo. Es una herramienta que compila su código en CSS estándar, el cual luego puede ser interpretado por los navegadores.

<iframe width="560" height="315" src="https://www.youtube.com/embed/BtiiM3jeb_c?si=SIae2atwq8JpcTqn" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Principales características principales de SASS

### Variables

Permite definir variables para reutilizar valores como colores, tamaños, fuentes, etc.  

```scss
$primary-color: #3498db;
body {
    background-color: $primary-color;
}
```

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

Instala SASS (por ejemplo, usando npm):  

```console
npm install -g sass
```

Compila tu archivo `.scss` en CSS:

```console
sass input.scss output.css
```

También puedes ejecutar el siguiente comando para que se autocompile directamente cada vez que haces cambios en el fichero .scss:

```console
sass --watch input.scss output.css
```

## Bibliografía

- <https://sass-lang.com/guide/>

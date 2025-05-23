---
title: Trabajar con Visual Studio Code
date: 2023-01-26 09:00:00 +0100
categories: [General]
tags: [atajos, shortcuts, vscode, windows, linux, terminal, aplicaciones web]
img_path: /assets/img/trabajar-visual-studio-code/
---

## Introducción

Visual Studio Code es una de las herramientas más utilizadas en el mundo del desarrollo web por lo que también se usa en asignaturas de los ciclos formativos de SMR, DAM, DAW o ASIR.

A continuación se presenta una guía práctica de como usar y configurar Visual Studio Code.

## Atajos de teclado para Visual Studio Code

| Atajo de teclado | Inglés | Descripción |
|---|---|---|
| `Ctrl + P` |  | Buscar archivos por nombre. |
| `Ctrl + Shift + P` | Command **P**alette | Acciones. Por ejemplo, transformar un texto a mayúsculas o minúsuclas. |
| `Ctrl + F` | **F**ind | Buscar. |
| `Ctrl + Shift + F` | **F**ind | Buscar en todo el proyecto. Puedes usar expresiones regulares. Puedes practicar el uso de estas expresiones regulares [aquí](https://regex101.com/). |
| `Ctrl + H` |  | Buscar y reemplazar. |
| `Ctrl + Shift + H` |  | Buscar y reemplazar en todo el proyecto.  |
| `Alt + ↑` |  | Mueve la línea actual una posición arriba. |
| `Alt + ↓` |  | Mueve la línea actual una posición abajo. |
| `Ctrl + 1` |  | Te sitúa en el panel 1 (izquierdo). |
| `Ctrl + 2` |  | Te sitúa en el panel 2 (derecho en caso de tener 2). Lo crea si no existe. |
| `Ctrl + Alt + ➡` |  | Pestaña actual a la derecha. |
| `Ctrl + Alt + ⬅` |  | Pestaña actual a la izquierda. |
| `Ctrl + G` | **G**o to line | Ir a una línea concreta del código. |
| `Ctrl + D` |  | Buscar y seleccionar. |
| `Alt + Enter` |  | Seleccionar todo lo que coincida en la búsqueda. |
| `Alt + Shift + ↑` |  | Mueve la línea actual una posición arriba. |
| `Alt + Shift + ↓` |  | Mueve la línea actual una posición abajo. |
| `Ctrl + Shift + K` |  | Delete line. |
| `Ctrl + Alt + ↑` |  | Multiplicar cursor una posición hacia arriba. |
| `Ctrl + Alt + ↓` |  | Multiplicar cursor una posición hacia abajo. |
| `Shift + Alt + F` | **F**ormat | Dar formato al documento. |
| `Ctrl + Ñ` |  | Mostrar/ocultar consola |
| `Ctrl + B` | Toggle Side**b**ar | Mostrar/ocultar barra lateral izquierda |
| `Alt + Click` |  | Insertar cursor |
| `Click central` y arrastrar |  | Seleccionar en vertical |

Puedes descargar un PDF con todos los atajos de teclado en inglés [aquí](/assets/img/trabajar-visual-studio-code/keyboard-shortcuts-windows.pdf).

## Consejos para Visual Studio Code

Si usas el click de la rueda del ratón puedes seleccionar en vertical.

Si escribes `html:5` y le das al Enter generas una estructura básica de html.

Si escribes `ul>li*5` y le das al Enter se te generará el siguiente código:

```html
<ul>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
</ul>
```

## Configurar Visual Studio Code

<iframe width="560" height="315" src="https://www.youtube.com/embed/uyEUVgNMvGI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Extensiones de Visual Studio Code

Existe la posibilidad de instalar extensiones en Visual Studio Code, yo te recomiendo las siguientes:

- **Live Preview**: Ver un navegador integrado que se actualiza solo.
- **Live Server**: Para probar la web en un servidor local de manera rápida y sencilla.
- **Error lens**: Mostrar los errores en la misma línea donde se escribe.
- **Prettier** (necesario npm): Indenta de manera correcta.
- **ESLint** (necesario npm): Errores de JavaScript.
- **Stylelint** (necesario npm): Errores de estilo.
- **Code Runner** (necesario npm): Ejecutar código JavaScript.

<iframe width="560" height="315" src="https://www.youtube.com/embed/sdbl-LpIoQI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

#### Configurar Stylelint y Prettier

Primero necesitas instalar la última versión LTS de Node.js que encontrarás en [este enlace](https://nodejs.org/en/download/).

Posteriormente, puedes seguir los pasos del siguiente tutorial para instalar tanto Stylelint como Prettier en tu proyecto.

<iframe width="560" height="315" src="https://www.youtube.com/embed/EBlXDDzE_8Y" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Con esto podemos conseguir un análisis de nuestro código, el cual nos puede ayudar a mejorar nuestra calidad de código ya que nos avisa de muchos de nuestros errores como se puede ver en la siguiente Figura.

![Mensaje de error de Stylelint](mensajeDeErrorDeStylelint.png)
_Mensaje de error de Stylelint_

#### Extensiones para trabajar con Markdown

- Markdown All in One
- markdownlint. Deberás añadir en `settings.json` de Visual Studio Code la siguiente excepción.

```json
"markdownlint.config": {
    "MD022": false
}
```

## Fuentes para programar

- Cascadia Code
- JetBrins Mono
- Fira Code
- Victor Mono

<iframe width="560" height="315" src="https://www.youtube.com/embed/JYFH0nE-UjA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Bibliografía

- [Atajos de teclado en Visual Studio Code](https://carontestudio.com/blog/atajos-de-teclado-en-visual-studio-code/).
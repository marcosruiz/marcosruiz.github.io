---
title: "Tutorial: Cuestionarios GIFT en Moodle"
date: 2022-10-18 9:00:00 +0100
categories: [General]
tags: [gift, cuestionarios, tests, moodle, aeducar, profesor, adistanciafp, fpvirtual, fpvirtualaragon, adistanciafparagon, guia, virtual, aiken, visual, studio, code, notepad, sublime, cuestionario, test, tutorial, plantillas, formato, pregunta, respuesta, retroalimentación, atajos]
img_path: /assets/img/moodle-profesor/
---

{:.section}
## Introducción

A la hora de importar y exportar cuestionarios en Moodle uso el formato GIFT.

Las ventajas del formato GIFT es que se puede editar con cualquier bloc de notas como por ejemplo:

- Notepad (Bloc de notas) de Microsoft.
- Notepad++.
- Visual Studio Code (RECOMENDADO) con la extensión GIFT Format y GIFT Format Preview.

Pero además ChatGPT conoce el formato GIFT y nos puede generar montones de preguntas en este formato que podemos copiar y pegar fácilmente.

> Otro formato más fácil de usar es el formato AIKEN, pero este formato solo permite preguntas de una sola opción válida.
{:.prompt-info}

{:.section}
## Caracteres especiales que hay que escapar

```plaintext
~ = # { } :
```

Estos caracteres escribiendo el `\` delante de ellos.

{:.section}
## Plantillas

A continuación se ponen plantillas para copiar y pegar de forma rápida.

> Todo lo que está entre los símbolos `::` y `::` es el nombre corto de la pregunta. En mi caso uso los códigos con el siguiente formato `TXX XX`. Por ejemplo: `T01 02`, sería la pregunta 2 del primer test del curso.
{:.prompt-info}

{:.subsection}
### Pregunta de una opción

Sin restar por respuesta errónea:

```plaintext
Pregunta{
    =Respuesta
    ~Respuesta
    ~Respuesta
    ~Respuesta
}
```

O como a mi me gusta poner un nombre corto y usar el formato Markdown para el contenido de las preguntas, hago lo siguiente:

```plaintext
::TXX XX::[markdown]Pregunta{
    =Respuesta
    ~Respuesta
    ~Respuesta
    ~Respuesta
}
```

Restando el 50% del valor de la pregunta por respuesta errónea:

```plaintext
::TXX XX::[markdown]Pregunta{
    =Respuesta
    ~%-50%Respuesta
    ~%-50%Respuesta
    ~%-50%Respuesta
}
```

{:.subsection}
### Pregunta de opción múltiple

Dos respuestas correctas y dos incorrectas:

```plaintext
::TXX XX::[markdown]Pregunta{
    ~%50%Respuesta
    ~%50%Respuesta
    ~%-50%Respuesta
    ~%-50%Respuesta
}
```

Tres respuestas correctas y una incorrecta:

```plaintext
::TXX XX::[markdown]Pregunta{
    ~%33.33333%Respuesta
    ~%33.33333%Respuesta
    ~%33.33333%Respuesta
    ~%-100%Respuesta
}
```

Cuatro respuestas correctas:

```plaintext
::TXX XX::[markdown]Pregunta{
    ~%25%Respuesta
    ~%25%Respuesta
    ~%25%Respuesta
    ~%25%Respuesta
}
```

{:.subsection}
### Pregunta respuesta numérica

Respuesta exacta:

```plaintext
::TXX XX::[markdown]Pregunta {#5}
```

Dando un rango de error:

```plaintext
::TXX XX::[markdown]Pregunta {#5.2:0.1}
```

{:.subsection}
### Pregunta respuesta texto

Una única respuesta correcta:

```plaintext
::TXX XX::[markdown]Pregunta {=respuesta}
```

Varias respuestas correctas:

```plaintext
::TXX XX::[markdown]Pregunta {=respuesta =respuesta2}
```

> En caso de estas respuestas siempre NO son case sensitive por lo que el alumno podrá escribir "RespUESta" y se la dará como correcta.
{:.prompt-info}

{:.subsection}
### Pregunta de verdadero y falso

```plaintext
::TXX XX::[markdown]Pregunta {T}
```

```plaintext
::TXX XX::[markdown]Pregunta {F}
```

> No se recomienda usar este tipo de preguntas ya que si la pregunta es confusa (y nos damos cuenta tarde) no permite la opción de que "Verdadero" y "Falso" sean opciones correctas al mismo tiempo.
{:.prompt-info}

```plaintext
::TXX XX::[markdown]Pregunta {
  =Verdadero
  ~Falso
}
```

```plaintext
::TXX XX::[markdown]Pregunta {
  =Falso
  ~Verdadero
}
```

{:.subsection}
### Pregunta de relacionar columnas

```plaintext
::TXX XX::[markdown]Pregunta {
  =Definición1 -> Término1
  =Definición2 -> Término2
  =Definición3 -> Término3
  =Definición4 -> Término4
}
```

{:.subsection}
### Pregunta de bloque de texto o ensayo

Cuando queremos que aparezca un bloque de texto grande para que contesten nuestros alumnos existe la pregunta tipo ensayo. El único problema de este tipo de preguntas es que deben ser corregidas de manera manual por el profesor.

```plaintext
::TXX XX::[markdown]Pregunta{}
```

{:.subsection}
### Pregunta con imágenes

No hay una forma muy sencilla para añadir imágenes a nuestros cuestionarios pero la que yo uso es la siguiente:

Primero debemos subir las imágenes a Moodle, la forma más sencilla es crear el recurso CARPETA:

![alt text](preguntaImagen01.png)
_Añadir recurso carpeta al curso_

Entramos en la carpeta y hacemos click en Editar:

![alt text](preguntaImagen02.png)
_Botón para editar el contenido de la carpeta_

Añadir todas las imágenes que queramos utilizar en nuestro test:

![alt text](preguntaImagen03.png)
_Edición del contenido de la carpeta_

En la Configuración del recurso CARPETA, vamos al apartado Contenido y desseleccionamos la opción "Forzar descarga de archivos":

![alt text](preguntaImagen04.png)
_Deshabilitar la descarga de archivos forzado_

Ahora ocultamos el recurso para que no lo puedan ver nuestros alumnos:

![alt text](preguntaImagen05.png)
_Ocultar un recurso_

Y tras ocultarlo podemos hacerlo disponible:

![alt text](preguntaImagen06.png)
_Hacer disponible un recurso_

Esto hace que las imágenes se puedan ver pero el recurso no aparezca a simple vista para los estudiantes.

Entramos en el recurso CARPETA que hemos creado y al hacer click en cada imagen se nos abrirá:

![alt text](preguntaImagen07.png)
_Lista de imágenes en su carpeta_

Ahora debemos copiar la dirección de cada imagen:

![alt text](preguntaImagen08.png)
_Imagen abierta_

Y la deberemos copiar el cuestionario de la siguiente manera:

```plaintext
::RA1 01::[markdown]Pregunta 
![](URL de la imagen)
{
    =Respuesta
    ~%-50%Respuesta
    ~%-50%Respuesta
    ~%-50%Respuesta
}
```

> Recuerda que en la URL de la imagen también se deben escapar los caracteres especiales.
{:.prompt-warning}

Por ejemplo:

```plaintext
::TXX XX::[markdown]Pregunta 
![](https\://www.fpvirtualaragon.es/pluginfile.php/123456/mod_folder/content/0/01.png)
{
    =Respuesta
    ~%-50%Respuesta
    ~%-50%Respuesta
    ~%-50%Respuesta
}
```

![alt text](preguntaImagen09.png)
_Pregunta real con el carácter ":" escapado en la URL_

{:.subsection}
### Retroaliemntación para el alumno

Recuerda que también puedes añadir la retroalimentación que recibirán los alumnos. Yo suelo utilizar la retroalimentación general para la pregunta. Por ejemplo:

```plaintext
::TXX XX::[markdown]Pregunta{
    ~%25%Respuesta
    ~%25%Respuesta
    ~%25%Respuesta
    ~%25%Respuesta
    #### Esto es una retroalimentación general
}
```

{:.subsection}
{:.section}
## Autoincrementar

Es útil darle un nombre a cada pregunta para encontrarla en el banco de preguntas. En Visual Studio code se puede hacer lo siguiente para hacerlo de forma rápida:

1. Instalas la extensión Increment Selection.
1. Delante de `[markdown]`, añades al inicio de cada línea un título. Por ejemplo: `::T05 01::`.
1. Seleccionas el `01`. Haces `Ctrl+Shift+L` para seleccionar todas las preguntas.
1. Hacer `Ctrl+Alt+I` para dar un nombre único a cada pregunta.

{:.subsection}
{:.section}
## Añadir atajos de teclado en Visual Studio Code

En Notion podemos usar `Ctrl + e` para hacer que un texto se vea como código. En el caso de Visual Studio Code también podemos configurarlo. En mi caso uso `Ctrl + comilla inversa`.

- Debemos tener instalada la extensión "Markdown All In One".
- File > Preferences > Keyboard Shortcuts
- Buscamos "Toggle code span".
- Hacemos doble click en la casilla correspondiente a la columna de "Keybinding".
- Presionamos el atajo de teclado al que queramos asociar dicha acción.

{:.section}
## Borrar preguntas

Moodle exporta las preguntas aunque hayan sido eliminadas. Por lo que si queremos exportar, borrar y reimportar las mismas preguntas editadas, en lugar de borrar preguntas es mejor moverlas a una categoria llamada "Papelera" o "Preguntas viejas" para que no molesten.

## Bibliografía

- <https://docs.moodle.org/all/es/Formato_GIFT#Caracteres_especiales_.7E_.3D_.23_.7B_.7D>
- <https://docs.moodle.org/all/es/C%C3%A1lculos_de_calificaci%C3%B3n>

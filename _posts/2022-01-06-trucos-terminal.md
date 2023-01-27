---
title: Consejos y trucos para terminal/shell/consola
date: 2022-01-06 15:20:00 +0100
categories: [General, GNU Linux]
tags: [gnu linux, terminal, dam, smr, entornos de desarrollo, seguridad informática, servicios en red, redes locales]     # TAG names should always be lowercase
img_path: /assets/img/consejos-trucos-terminal/
---

## Consejos para el terminal en GNU Linux

En GNU Linux, puedes hacer `click central` en el ratón para pegar lo que está seleccionado.

Puedes hacer `Flecha hacia arriba` para recorrer el historial de instrucciones.

Puedes hacer `TAB` para autocompletar lo que estás escribiendo.

Puedes ejecutar varios comandos en un solo comando utilizando ";" para separarlos. Por ejemplo `Comando1; Comando2; Comando 3`. O usa "&&" si solo deseas que se ejecute el siguiente comando cuando el primero sea exitoso. Por ejemplo `Comando1 && Comando2 && Comando3`.

Puedes redirigir la salida estándar (es decir, el texto que sale por terminal) utilizando el símbolo ">" seguido de un fichero que si no existe se creará al ejecutar la instrucción. Por ejemplo `echo patata > fichero.txt` guardará la palabra "patata" en el fichero "fichero.txt".

{:.question}
¿Para qué sirve el símbolo `>>`?

{:.question}
¿Para qué sirve el símbolo `<`?

{:.question}
¿Para qué sirve el símbolo `1>`?

{:.question}
¿Para qué sirve el símbolo `2>`?

{:.question}
¿Para qué sirve una pipeline o tubería?

{:.question}
¿Cuál es el símbolo de una pipeline o tubería?

{:.question}
¿Para qué sirve el símbolo `&`?

### Atajos de teclado en el terminal en GNU Linux

Antes de utilizar la terminal debes saber que puedes abrir el terminal con `Ctrl + Alt + T`.

Debes conocer estos atajos de teclado:

- `Ctrl + Shift + C` ➡ Copiar en terminal.
- `Ctrl + Shift + V` ➡ Pegar en terminal.
- `Tab` ➡ Autocompletar.
- `Tab + Tab` ➡ Mostrar opciones de autocompletado.
- `Ctrl + R` ➡ Búsqueda reversa.
- `Ctrl + Shift + T` ➡ Abrir una pestaña en el terminal.
- `Ctrl + Shift + N` ➡ Abrir una nueva ventana de terminal.
- `Ctrl + C` ➡ Detener de forma segura el programa que se está ejecutando.
- `Ctrl + Z` ➡ Forzar la detención de un programa.
- `Ctrl + A` ➡ Ir al comienzo de la línea del terminal.
- `Ctrl + E` ➡ Ir al final de la línea de terminal.
- `Click central` del ratón ➡ Pegar lo que está seleccionado.
- `Ctrl + C` ➡ para detener de forma segura el programa que se está ejecutando.
- `Ctrl + Z` ➡ para forzar la detención de un programa.
- `Ctrl + A` ➡ para ir al comienzo de la línea del terminal.
- `Ctrl + E` ➡ para ir al final de la línea de terminal.
- `Ctrl + R` ➡ para búsqueda inversa.

### Comandos básicos

Recuerda que puedes usar el comando `clear` si el terminal está abarrotado de información con comandos pasados.

Puedes leer mi artículo [35 comandos básicos de GNU Linux](https://marcosruiz.github.io/posts/comandos-basicos-gnu-linux/).

### Vi o Vim

- `j` ➡ Abajo
- `k` ➡ Arriba
- `h` ➡ Izquierda
- `l` ➡ Derecha
- `w` ➡ Siguiente palabra
- `b` ➡ Palabra anterior
- `e` ➡ Final de la palabra

### Chuleta de terminal en GNU Linux

Puedes descargarte la [Chuleta de GNU Linux en inglés](/assets/img/consejos-trucos-terminal/terminal-cheatsheet-terminaldelinux.com.pdf)

## Consejos para el terminal en Windows

- `Ctrl + C` ➡ Copiar en terminal.
- `Ctrl + V` ➡ Pegar en terminal.
- `Click derecho` del ratón ➡ Pegar lo que has copiado previamente.
- `Ctrl + Shift + T` ➡ Abrir una pestaña en el terminal.
- `Tab` ➡ Autocompletar.

## Bibliografía

- [Redirigir entrada y salida en Linux](https://atareao.es/tutorial/terminal/redirigir-entrada-y-salida-en-linux/)

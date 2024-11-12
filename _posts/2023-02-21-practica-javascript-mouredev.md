---
title: "Práctica: Ejercicios de JavaScript de Mouredev"
date: 2023-02-21 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, práctica, javascript]
img_path: /assets/img/practica-introduccion-javascript/
---

## Objetivo y duración

El objetivo de esta práctica es aprender a programar con JavaScript a un nivel básico.

Esta práctica se recomienda realizarla **por parejas**. El trabajo en parejas (pair-programming) es una técnica muy popular con varias ventajas:

- Ayuda a mantener la concentración.
- Es una excelente oportunidad para aprender y/o enseñar.
- Puedes conocer personas que también están aprendiendo!

La idea del trabajo en parejas es que haya **una persona que dicta y otra que escribe**. Idealmente la persona que dicta sabe cómo hacer el ejercicio y la persona que escribe va aprendiendo y ayuda a corregir. 

Duración: 14 h

## Entrega y presentación

La entrega será en formato ZIP. Leer [Entrega y presentación de prácticas](/posts/entrega-presentacion-practicas/).

## Actividades

Realizar las siguientes actividades. Cada actividad debe contar con un comentario donde este escrito el enunciado de la actividad.

{:.activity}
### Decimal a binario

Dificultad: FÁCIL

Crea un programa se encargue de transformar un número decimal a binario sin utilizar funciones propias del lenguaje que lo hagan directamente.

{:.activity}
### Invierte cadenas

Dificultad: FÁCIL

Crea un programa que invierta el orden de una cadena de texto sin usar funciones propias del lenguaje que lo hagan de forma automática.

- Si le pasamos "Hola mundo" nos retornaría "odnum aloH"

{:.activity}
### Anagrama

Dificultad: MEDIA

Escribe una función que reciba dos palabras (String) y retorne verdadero o falso (Boolean) según sean o no anagramas.

- Un Anagrama consiste en formar una palabra reordenando TODAS las letras de otra palabra inicial.
- NO hace falta comprobar que ambas palabras existan.
- Dos palabras exactamente iguales no son anagrama.

{:.activity}
### ¿Es un número primo?

Dificultad: MEDIA

Escribe un programa que se encargue de comprobar si un número es o no primo.

Hecho esto, imprime los números primos entre 1 y 100.

{:.activity}
### Aspect ratio de una imagen

Dificultad: DIFÍCIL

Crea un programa que se encargue de calcular el aspect ratio de una imagen a partir de una url.

- Url de ejemplo: https://avatars.githubusercontent.com/u/7647613?v=4
- Por ratio hacemos referencia por ejemplo a los "16:9" de una imagen de 1920*1080px.

{:.activity}
### Cuenta palabras

Dificultad: MEDIA

Crea un programa que cuente cuantas veces se repite cada palabra y que muestre el recuento final de todas ellas.

- Los signos de puntuación no forman parte de la palabra.
- Una palabra es la misma aunque aparezca en mayúsculas y minúsculas.
- No se pueden utilizar funciones propias del lenguaje que lo resuelvan automáticamente.

{:.activity}
### Código morse

Dificultad: MEDIA

Crea un programa que sea capaz de transformar texto natural a código morse y viceversa.

- Debe detectar automáticamente de qué tipo se trata y realizar la conversión.
- En morse se soporta raya "—", punto ".", un espacio " " entre letras o símbolos y dos espacios entre palabras "  ".
- El alfabeto morse soportado será el mostrado en https://es.wikipedia.org/wiki/Código_morse.

{:.activity}
### Expresiones equilibradas

Dificultad: MEDIA

Crea un programa que comprueba si los paréntesis, llaves y corchetes de una expresión están equilibrados.

- Equilibrado significa que estos delimitadores se abren y cierran en orden y de forma correcta.
- Paréntesis, llaves y corchetes son igual de prioritarios. No hay uno más importante que otro.
- Expresión balanceada: { [ a * ( c + d ) ] - 5 }
- Expresión no balanceada: { a * ( c + d ) ] - 5 }

{:.activity}
### La sucesión de Fibonacci

Dificultad: DIFÍCIL

Escribe un programa que imprima los 50 primeros números de la sucesión de Fibonacci empezando en 0.

- La serie Fibonacci se compone por una sucesión de números en la que el siguiente siempre es la suma de los dos anteriores.
- 0, 1, 1, 2, 3, 5, 8, 13...

{:.activity}
### Vocal más común

Dificultad: FÁCIL

Crea un función que reciba un texto y retorne la vocal que más veces se repita.

- Ten cuidado con algunos casos especiales.
- Si no hay vocales podrá devolver vacío.

{:.activity}
### La encriptación de Karaca

Dificultad: FÁCIL

Crea una función que sea capaz de encriptar y desencriptar texto utilizando el algoritmo de encriptación de Karaca (debes buscar información sobre él).

{:.activity}
### Bumeranes

Dificultad: FÁCIL

Crea una función que retorne el número total de bumeranes de un array de números enteros e imprima cada uno de ellos.

- Un bumerán (búmeran, boomerang) es una secuencia formada por 3 números seguidos, en el que el primero y el último son iguales, y el segundo es diferente. Por ejemplo [2, 1, 2].
- En el array [2, 1, 2, 3, 3, 4, 2, 4] hay 2 bumeranes ([2, 1, 2] y [4, 2, 4]).

{:.activity}
### Conversor de temperatura

Dificultad: FÁCIL

Crea una función que transforme grados Celsius en Fahrenheit y viceversa.

- Para que un dato de entrada sea correcto debe poseer un símbolo "°" y su unidad ("C" o "F").
- En caso contrario retornará un error.

{:.activity}
### La ley de Ohm

Dificultad: FÁCIL

Crea una función que calcule el valor del parámetro perdido correspondiente a la ley de Ohm.

- Enviaremos a la función 2 de los 3 parámetros (V, R, I), y retornará el valor del tercero (redondeado a 2 decimales).
- Si los parámetros son incorrectos o insuficientes, la función retornará la cadena de texto "Invalid values".

{:.activity}
### Binario a decimal

Dificultad: MEDIA

Crea un programa se encargue de transformar un número binario a decimal sin utilizar funciones propias del lenguaje que lo hagan directamente.

{:.activity}
### Los números perdidos

Dificultad: FÁCIL

Dado un array de enteros ordenado y sin repetidos, crea una función que calcule y retorne todos los que faltan entre el mayor y el menor.

- Lanza un error si el array de entrada no es correcto.

{:.activity}
### El segundo más grande

Dificultad: FÁCIL

Dado un listado de números, encuentra el SEGUNDO más grande.

{:.activity}
### Años bisiestos

Dificultad: FÁCIL

Crea una función que imprima los 30 próximos años bisiestos siguientes a uno dado.

- Utiliza el menor número de líneas para resolver el ejercicio.

{:.activity}
### Marco de palabras

Dificultad: FÁCIL

Crea una función que reciba un texto y muestre cada palabra en una línea, formando un marco rectangular de asteriscos.

- ¿Qué te parece el reto? Se vería así:

```
**********
* ¿Qué   *
* te     *
* parece *
* el     *
* reto?  *
**********
```

{:.activity}
### Ordena la lista

Dificultad: FÁCIL

Crea una función que ordene y retorne una matriz de números.
- La función recibirá un listado (por ejemplo [2, 4, 6, 8, 9]) y un parámetro adicional "Asc" o "Desc" para indicar si debe ordenarse de menor a mayor o de mayor a menor.
- No se pueden utilizar funciones propias del lenguaje que lo resuelvan automáticamente.

{:.activity}
### Vectores ortogonales

Dificultad: FÁCIL

Crea un programa que determine si dos vectores son ortogonales.

- Los dos array deben tener la misma longitud.
- Cada vector se podría representar como un array. Ejemplo: [1, -2]

{:.activity}
### ¿Es un palíndromo?

Dificultad: MEDIA

Escribe una función que reciba un texto y retorne verdadero o falso (Boolean) según sean o no palíndromos.

Un Palíndromo es una palabra o expresión que es igual si se lee de izquierda a derecha que de derecha a izquierda.

NO se tienen en cuenta los espacios, signos de puntuación y tildes.

Ejemplo: Ana lleva al oso la avellana.

{:.activity}
### MCD y MCM

Dificultad: MEDIA

Crea dos funciones, una que calcule el máximo común divisor (MCD) y otra que calcule el mínimo común múltiplo (mcm) de dos números enteros.
No se pueden utilizar operaciones del lenguaje que lo resuelvan directamente.

{:.activity}
### Conjuntos

Dificultad: FÁCIL

Crea una función que reciba dos array, un booleano y retorne un array.
 * - Si el booleano es verdadero buscará y retornará los elementos comunes de los dos array.
 * - Si el booleano es falso buscará y retornará los elementos no comunes de los dos array.
 * - No se pueden utilizar operaciones del lenguaje que lo resuelvan directamente.

{:.activity}
### Conversor tiempo

Dificultad: FÁCIL

Crea una función que reciba días, horas, minutos y segundos (como enteros) y retorne su resultado en milisegundos.

{:.activity}
### En mayúscula

Dificultad: FÁCIL

Crea una función que reciba un String de cualquier tipo y se encargue de poner en mayúscula la primera letra de cada palabra.

- No se pueden utilizar operaciones del lenguaje que lo resuelvan directamente.

{:.activity}
### ¿Es un número de Armstrong?

Dificultad: FÁCIL

Escribe una función que calcule si un número dado es un número de Amstrong (o también llamado narcisista). 

Si no conoces qué es un número de Armstrong, debes buscar información al respecto.

{:.activity}
### Factorial recursivo

Dificultad: FÁCIL

Escribe una función que calcule y retorne el factorial de un número dado de forma recursiva.

{:.activity}
### Eliminando caracteres

Dificultad: FÁCIL

Crea una función que reciba dos cadenas como parámetro (str1, str2) e imprima otras dos cadenas como salida (out1, out2).

- out1 contendrá todos los caracteres presentes en la str1 pero NO estén presentes en str2.
- out2 contendrá todos los caracteres presentes en la str2 pero NO estén presentes en str1.

## Bibliografía

- [mouredev/Weekly-Challenge-2022-Kotlin](https://github.com/mouredev/Weekly-Challenge-2022-Kotlin)


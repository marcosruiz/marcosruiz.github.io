---
title: "Práctica: Introducción a JavaScript 2"
date: 2023-02-21 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, práctica, javascript]
img_path: /assets/img/practica-introduccion-javascript-2/
---

## Objetivo y duración

El objetivo de esta práctica es aprender a programar con JavaScript a un nivel básico.

Esta práctica se recomienda realizarla **por parejas**. El trabajo en parejas (pair-programming) es una técnica muy popular con varias ventajas:

- Ayuda a mantener la concentración.
- Es una excelente oportunidad para aprender y/o enseñar.
- Puedes conocer personas que también están aprendiendo!

La idea del trabajo en parejas es que haya **una persona que dicta y otra que escribe**. Idealmente la persona que dicta sabe cómo hacer el ejercicio y la persona que escribe va aprendiendo y ayuda a corregir.

Duración: 9 h

## Entrega y presentación

La entrega de esta práctica debe ser un fichero ZIP con un nombre en el siguiente formato `<Apellidos>_<Nombre>_P<NúmeroDeLaPrácticaConDosDígitos>.zip`{: .filepath}. Por ejemplo, en mi caso el nombre del fichero ZIP sería `RuizGarcía_Marcos_P11.zip`{: .filepath}. En la raíz del documento ZIP deben aparecer las actividades correspondientes con el nombre `actividad_<NúmeroDeLaActividadConDosDígitos>.<extensión>`{: .filepath}.

## Actividades

Realizar las siguientes actividades. **Cada actividad debe contar con un comentario donde este escrito el enunciado de la actividad**.

{:.activity}
### If and else

Crear un programa donde se introduzcan los tres ángulos internos de un triángulo y se determine si el triángulo es válido o no. Un triángulo será valido si la suma de sus 3 ángulos internos suman exactamente 180.

{:.activity}
### (Opcional) If and else

Determinar si una palabra empieza con mayúscula o no.

{:.activity}
### If and else

Determinar si un año dado es bisiesto.

{:.activity}
### (Opcional) Bucles

Mostrar todos los números de 1 a N aumentando de 2 en 2 donde N lo ingresa el usuario en un prompt. Por ejemplo:

```plaintext
Introduce un número:
> 4
1
3
```

{:.activity}
### (Opcional) Bucles

Mostrar todos los números de N a 1 disminuyendo de 1 en 1 donde N lo ingresa el usuario en un prompt.

```plaintext
Introduce un número:
> 4
3
2
1
```

{:.activity}
### Bucles

Escribir utilizando `console.log()` la tabla de multiplicar que te indique el usuario en un prompt. Por ejemplo:

```plaintext
Introduce un número para obtener su tabla de multiplicar:
> 9

9 x 1 = 9
9 x 2 = 18
9 x 3 = 27
9 x 4 = 36
9 x 5 = 45
9 x 6 = 54
9 x 7 = 63
9 x 8 = 72
9 x 9 = 81
9 x 10 = 90
```

{:.activity}
### (Opcional) Bucles

Pedir al usuario que ingrese un número en un prompt, hacer la suma de todos los dígitos. Deberás validar que el número ingresado no contenga letras.

{:.activity}
### Bucles

Realizar el factorial de los primeros N números.

{:.activity}
### (Opcional) Bucles

Encontrar todos los divisores de un número.

{:.activity}
### (Opcional) Bucles

Determinar si un número ingresado por el usuario en un loop infinito es primo o no. Deberás validar que el número ingresado sea mayor o igual a dos.

{:.activity}
### (Opcional) Bucles

Crear un programa que determine si un número es perfecto o no, (se dice que un número es perfecto si el número es igual a sus divisores, ejemplos 6 = 1 + 2 + 3)

{:.activity}
### Bucles

Generar los primeros N números primos, donde N es ingresado por el usuario.

{:.activity}
### Bucles

Generar los primeros N números perfectos.

{:.activity}
### Bucles anidados

Dibujar los siguientes patrones ocupando `document.write()`, para rellenar los espacios vacíos se debe imprimir un espacio vacío.

Cuadrado lleno:

```plaintext
*****
*****
*****
*****
*****
```

Cuadrado hueco:

```plaintext
*****
*   *
*   *
*   *
*****
```

Tablero de Ajedrez:

```plaintext
⬛⬜⬛⬜⬛⬜⬛⬜
⬜⬛⬜⬛⬜⬛⬜⬛
⬛⬜⬛⬜⬛⬜⬛⬜
⬜⬛⬜⬛⬜⬛⬜⬛
⬛⬜⬛⬜⬛⬜⬛⬜
⬜⬛⬜⬛⬜⬛⬜⬛
⬛⬜⬛⬜⬛⬜⬛⬜
⬜⬛⬜⬛⬜⬛⬜⬛
```

{:.activity}
### (Opcional) Bucles anidados

Piramide Izquierda:

```plaintext
*     
**    
***   
****  
***** 
```

Pirámide centrada:

```plaintext
    *
   ***
  *****
 *******
*********
```

Pirámide invertida:

```plaintext
*********
*******
*****
***
*

```

Diamante:

```plaintext
*
***
*****
*******
*********
*******
*****
***
*
```

{:.activity}
### (Opcional) Funciones

Crear una función autoejecutable que muestre "muuu" en pantalla

{:.activity}
### Arrays

Dado el array = [1,2,3,4,5,6]

- Iterar por todos los elementos dentro de un array utilizando while y mostrarlos en pantalla.
- Iterar por todos los elementos dentro de un array utilizando for y mostrarlos en pantalla.
- Iterar por todos los elementos dentro de un array utilizando .forEach y mostrarlos en pantalla.
- Mostrar todos los elementos dentro de un array sumándole uno a cada uno.
- Generar una copia de un array pero con todos los elementos incrementado en 1.
- Calcular el promedio

{:.activity}
### Arrays

Crear un array vacío, luego generar 20 números enteros al azar y guardarlos en un array.

{:.activity}
### Arrays

Crear un array vacío, luego generar N números al azar y guardarlos en un array, N es introducido por el usuario a través de un prompt.

{:.activity}
### Arrays

Dado un array que contiene ["azul", "amarillo", "rojo", "verde", "café", "rosa"] determinar si un color introducido por el usuario a través de un prompt se encuentra dentro del array o no.

{:.activity}
### Strings y arrays

El usuario ingrese un string con varias palabras separadas por coma en un popup y se deben convertir en un array, (el usuario ingresa: "1,2,3,4,5" y se convierte en [1,2,3,4,5])

{:.activity}
### (Opcional) Strings y arrays

Convertir un array hardcodeado dentro del código en un string (existe un método en javascript para hacerlo).

{:.activity}
### Unión, intersección y conteo

Existen dos arrays, cada uno con 5 palabras, generar un nuevo array con la intersección de ambos elementos. (Ejemplo: [1,2,3] unión [1,2,4] = [1,2]

{:.activity}
### (Opcional) Unión, intersección y conteo

Existen dos arrays, cada uno con 5 palabras, generar un nuevo array con la unión de ambos elementos, (Ejemplo: [1,2,3] unión [1,2,4] = [1,1,2,2,3,4]

{:.activity}
### (Opcional) Unión, intersección y conteo

El usuario ingresa dos conjuntos de números separados por coma, el programa debe determinar si ambos conjuntos tienen la misma cantidad de números.

{:.activity}
### Unión, intersección y conteo

El usuario ingresa dos conjuntos de números separados por coma, si ambos conjuntos tienen la misma cantidad de elementos mostrar un array que contenga la suma de cada elemento. (Ejemplo: [1,2,3] + [2,3,4] = [3,5,7])

{:.activity}
### (Opcional) Filtrando datos en array

Crear una función que reciba un array con números y devuelva un nuevo array con solo los números pares. Pista: utilizar [reduce()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/Reduce).

{:.activity}
### (Opcional) Filtrando datos en array

Crear una función que reciba un array con palabras, crear un nuevo array que contenga solo las palabras que empiezan con una vocal.

{:.activity}
### Ordenamiento

Crear un método que permite intercambiar las posiciones de dos elementos de un array en base a sus índices. Por ejemplo:

```javascript
arr = [1,2,3]
swap(arr, 0, 1)
console.log(arr) // [2,1,3]
```

{:.activity}
### Ordenamiento

Realizar el mismo ejercicio anterior pero que en esta ocasión devuelva un array nuevo con los datos cambiados.

```javascript
arr = [1,2,3]
new_arr = swap(arr, 0, 1)
console.log(arr) // [1,2,3]
console.log(new_arr) // [2,1,3]
```

{:.activity}
### Ordenamiento

Crear una función que reciba un array y que cree uno nuevo con todos los elementos ordenados de menor a mayor (sin utilizar el método `.sort()`).

{:.activity}
### (Opcional) Ordenamiento

Crear una función que reciba un array y que cree uno nuevo con todos los elementos ordenados de mayor a menor.

{:.activity}
### Arrays de arrays

Crear una función que permite aplanar un array dado. Por ejemplo: 

````javascript
const arr = [[1,2,3],[4,5,6],[7,8,9]];
console.log(aplanar(arr)); // [1,2,3,4,5,6,7,8,9]
```

{:.activity}
### Arrays de arrays

Crear una función que divida un array en dos partes con la misma cantidad de elementos (o una diferencia de máximo un elemento) y devuelva un array que contenga al grupo1 y al grupo2

```javascript
const arr = [1,2,3,4,5,6,7,8];
console.log(split(arr)); // [[1,2,3,4], [5,6,7,8]]
```

{:.activity}
### Matrices

Recorrer un array de arrays para mostrarlo como una matriz, ejemplo [[1,1],[2,2]] se mostraría de la siguiente forma:

| 1 | 1 |
| 2 | 2 |

{:.activity}
### Matrices

Sumar [[1,1],[2,2]] con [[3,1],[3,2]].

{:.activity}
### Matrices

Contar la cantidad de elementos dentro de una matriz.

{:.activity}
### Matrices

Multiplicar una matriz por un escalar, si la matriz inicial es [[1,2,3],[4,5,6]], al multiplicarla por dos deberíamos obtener [[2,4,6],[8,10,12]].

{:.activity}
### (Opcional) Matrices

Encontrar el número mayor en una matriz.

{:.activity}
### (Opcional) Matrices

Determinar si un determinado número se encuentra dentro de una matriz o no.

{:.activity}
### Matrices

Devolver la suma de todos los elementos en la diagonal de la matriz.

{:.activity}
### (Opcional) Matrices

Mostrar la transpuesta de una matriz, es decir, dado:

| 1 | 2 | 3 |
| 4 | 5 | 6 |
| 7 | 8 | 9 |

Debería quedar como:

| 1 | 4 | 7 |
| 2 | 5 | 8 |
| 3 | 6 | 9 |

{:.activity}
### (Opcional) Funciones y arrays

Crear una función que devuelva el promedio de un array, en caso de que el array esté vacío debe devolver cero.

{:.activity}
### Funciones y arrays

Crear una función que calcule el promedio dentro de un array pero dentro de un rango, esta función recibe el array, un punto de partida y uno de termino y devuelve el promedio de los valores dentro del rango especificado.

{:.activity}
### Objetos

- Crear un objeto literal persona con nombre y edad y una método que determine si es mayor de edad o no.
- Crear una función constructora que permita crear objetos del tipo personas pasándole solo un nombre y edad, agregar el método.
- Crear un array que contenga varios objetos persona.
- Crear una función que reciba el array y devuelva la edad promedio del grupo de personas.

{:.activity}
### DOM

Utilizando `getElementById` e `innerHTML` transformar el emoji en un smiley.

```html
<p id="demo"> :( </p>
```

{:.activity}
### DOM

Utilizando `getElementById()` e `innerHTML` transformar el emoji en un smiley cuando se haga click en él

```html
<button type="button" id="demo"> :( </button>
```

{:.activity}
### DOM

Sobre el ejercicio anterior haz que solo se transforme el emoji si hacemos click en él.

{:.activity}
### DOM

Utilizando la instrucción `setInterval` mostrar la hora exacta y actualizarla cada segundo.

{:.activity}
### DOM

1. Formulario campos: Nombre, Apellidos y edad
2. Botón de enviar el formulario: eventos submit
3. Mostrar datos por pantalla
4. Validación del formulario para que no metan datos vacíos

{:.activity}
### (Opcional) DOM

Crea un formulario para guardar nombres de personas en el localstorage y muéstralos por pantalla en una lista de html.

{:.activity}
### (Opcional) DOM

En la lista anterior añade un botón para poder eliminar elementos del localstorage y mostrar la nueva lista de nombres.

## Bibliografía

- [DesafioLatam/guia-de-ejercicios-javascript](https://github.com/DesafioLatam/guia-de-ejercicios-javascript/blob/master/ejercicios.md)
- [30 Ejercicios de Programación para Practicar y Aprender JavaScript Desde Cero (para principiantes) 📒](https://www.youtube.com/watch?v=PescFjv1UXM)

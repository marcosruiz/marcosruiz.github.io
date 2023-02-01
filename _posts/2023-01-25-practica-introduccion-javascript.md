---
title: "Práctica: Introducción a JavaScript"
date: 2023-01-25 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, práctica, javascript]
img_path: /assets/img/practica-introduccion-javascript/
math: true
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

La entrega de esta práctica debe ser un fichero ZIP con un nombre en el siguiente formato `<Apellidos>_<Nombre>_P<NúmeroDeLaPrácticaConDosDígitos>.zip`{: .filepath}. Por ejemplo, en mi caso el nombre del fichero ZIP sería `RuizGarcía_Marcos_P11.zip`{: .filepath}. En la raíz del documento ZIP deben aparecer las actividades correspondientes con el nombre `actividad_<NúmeroDeLaActividadConDosDígitos>.html`{: .filepath}.

## Actividades

Realizar las siguientes actividades. Cada actividad debe contar con un comentario donde este escrito el enunciado de la actividad.

> La única manera de aprender a programar es practicar, practicar y practicar. ¡Así que a darle duro!
> 
> ![Látigo](whip.gif)
{:.prompt-tip}

Si quieres crear la estructura de actividades más rápido puedes ejecutar el siguiente script bash:

```bash
#!/bin/bash

# Hecho por Diego Pina SMR2

for i in {1..51}
do
  twoDigits=$(printf "%02d" $i)

  file_content="<!DOCTYPE html>
<html lang='es'>
<head>
    <meta charset='UTF-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Actividad_$twoDigits</title>
    <script src='actividad_$twoDigits.js'></script>
</head>
<body>
    <h1>Actividad_$twoDigits</h1>
</body>
</html>"

  printf "$file_content" > "actividad_$twoDigits.html"

  touch "actividad_$twoDigits.js"

done
```

### Actividad 1

Escribe un programa que le pida al usuario ingresar una frase y la imprima en la consola.

Recuerda que para pedirle al usuario que escriba una frase debes utilizar el método `prompt()` y para escribir en la consola debes utilizar el método `console.log()`.

### Actividad 2

Escribe un programa que le pregunte al usuario su nombre e imprima "Hola" seguido del nombre y un signo de exclamación.

Por ejemplo, si el usuario ingresa "Pedro" el programa debe imprimir en la consola "Hola Pedro!".

### Actividad 3

Escribe un programa que le pida al usuario ingresar un número, luego le pide un segundo número, e imprima en la consola la suma de los dos números que ingresó el usuario.

### Actividad 4

Escribe un programa que le pida al usuario su año de nacimiento e imprima su edad actual en la consola con la frase "Tienes X años". Por ejemplo, asumiendo que el año actual es 2020 y el usuario ingresa 2000, el programa debe imprimir en la consola:

```
Tienes 20 años
```

### Actividad 5

El índice de masa corporal (IMC), o BMI por sus siglas en inglés, es un valor que determina la cantidad de grasa de una persona.

El BMI se calcula con la siguiente formula:


$$BMI = \frac{peso}{altura^2}$$

Escribe un programa que le pida al usuario su peso y su altura para calcular su BMI e imprima la frase "Tu BMI es X".

Por ejemplo, si el usuario ingresa 65 de peso y 1.8 de altura el programa debe imprimir en la consola la frase "Tu BMI es 20.061728395061728".

### Actividad 6

Escribe un programa que le pida un número al usuario e imprima en la consola si el número es mayor o menor/igual a 10.

Si es mayor debe imprimir "El número es mayor a 10".

Si es menor debe imprimir "El número es menor o igual a 10".

### Actividad 7

Escribe un programa que piense un número de forma aleatoria del 1 al 10 y le pida al usuario que lo trate de adivinar. Si el número es correcto debe imprimir en la consola "Felicitaciones, ese era!", de lo contrario debe imprimir "Lo siento, intenta nuevamente!"

### Actividad 8

Un múltiplo de 5 es aquel que dividido por 5 da por resultado un número entero (sin residuo). Por ejemplo 10, 15, 20, etc. son múltiplos de 5. 11 no es múltiplo de 5 porque quedaría un residuo de 1.

Escribe un programa que le pida al usuario un número e imprima si es un múltiplo de 5 o no.

Si es múltiplo debe imprimir "Si, el número x es múltiplo 5", de lo contrario debe imprimir "No, el número x no es múltiplo de 5".

### Actividad 9

Escribe un programa que le pida un número al usuario e imprima en la consola si el número si es mayor, menor o igual que 10.

Si el número es menor a 10 debe imprimir "El número es menor que 10".

Si el número es mayor a 10 debe imprimir "El número es mayor que 10".

Si el número es igual a 10 debe imprimir "El número es igual a 10".

### Actividad 10


El índice de masa corporal (IMC), o BMI por sus siglas en inglés, es un valor que determina la cantidad de grasa de una persona.

El BMI se calcula con la siguiente formula:

$$BMI = \frac{peso}{altura^2}$$

Escribe un programa que le pida al usuario su peso y altura. El programa deberá calcular el BMI e imprimir:

* "Bajo de peso" si el BMI < 18.5
* "Normal" si está entre 18.5 y 24.9
* "Sobrepeso" si está entre 25 y 29.9
* "Obeso" si es igual o mayor a 30

### Actividad 11

Escribe un programa que le pida al usuario ingresar un número.

* Si el número es múltiplo de 3 debe imprimir en la consola "fizz".
* Si el número es múltiplo de 5 debe imprimir en la consola "buzz".
* Si el número es múltiplo tanto de 3 como de 5 debe imprimir en la consola "fizzbuzz".
* Si no cumple ninguna de las condiciones anteriores debe imprimir el mismo número.

### Actividad 12

Escribe un programa que le pida al usuario ingresar una frase. El programa debe imprimir la frase en la consola 10 veces.

**Nota:** utiliza un bucle para imprimir la frase las 10 veces.

### Actividad 13

Escribe un programa que le pida al usuario una frase y un número. El programa debe imprimir la frase en la consola el número de veces que ingresó el usuario.

Por ejemplo, si el usuario ingresó la frase "Hola Mundo" y el número 5, el programa debe imprimir "Hola Mundo" 5 veces:

```
Hola Mundo
Hola Mundo
Hola Mundo
Hola Mundo
Hola Mundo
```

### Actividad 14

Escribe un programa para la consola que le pida al usuario un número e imprima los números desde 1 hasta el número.

Por ejemplo, si el usuario ingresa el número 5, el programa de be imprimir:

```
1
2
3
4
5
```

### Actividad 15

Escribe un programa para la consola que le pida al usuario un número y sume todos los números desde 1 hasta ese número.

Por ejemplo, si el usuario ingresa el número 5, el programa debe imprimir 15 (1+2+3+4+5). Si el usuario ingresa el número 10, el programa debe imprimir 55.

### Actividad 16

Escribe un programa para la consola que le pida al usuario dos números e imprima en la consola los números en ese rango. Por ejemplo, si el usuario ingresa 5 como primer número y 10 como segundo número, el programa debe imprimir:

```
5
6
7
8
9
10
```

Nota 1: Puedes asumir que el primer número siempre va a ser menor o igual que el segundo.

Nota 2: Fíjate que se imprimen también los números en los límites, en el ejemplo el 5 y el 10.

> A patir de esta actividad, todas las actividades deben hacer uso de funciones. Por ejemplo en esta actividad la función podría llamarse `imprimeRango` y podría tener dos parámetros de entrada. Otra opción sería que la función solo resuelva el problema devolviendo con un `return` una array para luego mostrarla por pantalla.
{:.prompt-info}

{:.question}
¿Qué quiere decir que una función es idempotente?

### Actividad 17

Escribe un programa que piense un número de forma aleatoria y le pida al usuario que lo trate de adivinar (como en uno de los ejercicios anteriores). La diferencia es que esta vez el usuario puede intentar indefinidamente hasta que encuentre el número.

### Actividad 18

Crea un programa a partir de las siguientes instrucciones:

1. Crea una variable llamada `nombres` con un arreglo que tenga los siguientes elementos: "Pedro", "Pablo", "María", "Juan", "Diana".
2. Pídele al usuario que ingrese un nombre e insértalo al final del arreglo que creaste en el paso 1.
3. Pídele al usuario que ingrese otro nombre y reemplaza la tercera posición del arreglo con este valor.
4. Recorre el arreglo e imprímelo.

Un ejemplo de cómo se comportaría el programa en la consola sería el siguiente:

```
Ingresa un nombre> Camilo
Ingresa otro nombre> Ariel
Pedro
Pablo
Ariel
Juan
Diana
Camilo
```

### Actividad 19

Escribe un programa que:

1. Le pida al usuario un número y cree un arreglo de números empezando en el 1 hasta el número que el usuario ingrese (incluyéndolo)
2. Elimine el segundo elemento.
3. Recorra e imprima el arreglo.

Ejemplo:

```
Ingresa un número> 5
1
3
4
5
```

**Nota:** los 3 pasos de este ejercicio se deben realizar con programación según lo visto en clase.

### Actividad 20

Imprime la matriz en la consola, el resultado final debe ser el siguiente:

```javascript
const mat = [
  ["Pablo", "Maria", "Pedro"],
  ["Diana", "Juan", "Federico"],
  ["Roberto", "Daniel", "Sandra"]
];
```

```markdown
Grupo 1:
  Pablo
  Maria
  Pedro
Grupo 2:
  Diana
  Juan
  Federico
Grupo 3:
  Roberto
  Daniel
  Sandra
```

**Nota 1:** utiliza bucles anidados para solucionar este ejercicio
**Nota 2:** agrega dos espacios al principio de cada nombre

### Actividad 21

Completa el siguiente programa para imprimir los números que sean mayores a 10.

```javascript
const nums = [1, 23, 5, 8, 40, 12, 2, 67, 24, 9, 39]
// escribe tu código aquí debajo
```

El resultado debería ser el siguiente:

```
23
40
12
67
24
39
```

**Nota:** este ejercicio lo debes hacer con bucles y sin ayuda de la función `filter` de JavaScript. Al terminarlo cambia el arreglo original para verificar que funcione con otros números.

### Actividad 22

Completa el siguiente programa e imprime la cantidad de unos (1) que haya en el arreglo:

```javascript
const nums = [1, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1]
```

El resultado debería ser el siguiente:

```
11
```

**Nota:** este ejercicio lo debes hacer con bucles y sin ayuda de la función `filter` de JavaScript. Al terminarlo, cambia el arreglo original para verificar que funcione con otras combinaciones de ceros y unos.

### Actividad 23

Escribe un programa que le pida una frase al usuario y la repita en mayúsculas. Por ejemplo:

```
Ingresa una frase> Hola Mundo
HOLA MUNDO
```

### Actividad 24

Escribe un programa que le pida una frase al usuario y le muestre el número de caracteres "a" que hay en la frase. Por ejemplo:

```
Ingresa una frase> Hasta la próxima
La frase tiene 4 caracteres "a"
```

### Actividad 25

Escribe un programa que le pida una frase al usuario y le muestre una nueva frase con los siguientes cambios:

* Las mayúsculas se reemplazan por minúsculas.
* Se eliminan los espacios en blanco.
* Reemplaza el caracter "a" por "4".
* Reemplaza el caracter "e" por "3".
* Reemplaza el caracter "i" por "1".
* Reemplaza el caracter "o" por "0".

Ejemplo:

```
Ingresa una frase> esta es una prueba
3st43sun4pru3b4
```

**Nota:** Aunque esta es una forma de generar contraseñas no se considera segura y no la recomendamos.

### Actividad 26

Escribe un programa que le pida una frase al usuario y capitalice cada palabra. Por ejemplo:

```
Ingresa una frase> esta es una prueba
Esta Es Una Prueba
```

### Actividad 27

Escribe un programa que le pida una frase al usuario e imprima cada palabra en una nueva línea. Por ejemplo:

```
Ingresa una frase> esta es una prueba
esta
es
una
prueba
```

**Nota:** Las palabras se separan por espacio.

### (Opcional) Actividad 28

Escribe un programa que le pida dos frases al usuario e imprima los caracteres que tienen en común. Si no tienen caracteres en común debe imprimir "No se encontraron caracteres en común".

Ejemplo 1:

```
Ingresa frase 1> German
Ingresa frase 2> Gabriela
Los caracteres en común son: G, e, r, a
```

Ejemplo 2:

```
Ingresa frase 1> Hola
Ingresa frase 2> Bye
No se encontraron caracteres en común
```

### Actividad 29

Escribe una función llamada `suma` que reciba dos números y retorne la suma de los dos números.

```javascript
// escribe la función suma aquí debajo

// código de prueba, verifica que aparezcan los valores correctos en la consola
console.log(suma(1, 2)) // 3
console.log(suma(0, 0)) // 0
console.log(suma(245, 923)) // 1168
```

### Actividad 30

Escribe una función llamada `hola` que reciba un argumento (una cadena de texto) y retorne "Hola " seguido del argumento y un signo de exclamación.

```javascript
// escribe la función hola aquí debajo

// código de prueba
console.log(hola("Pedro")) // "Hola Pedro!"
console.log(hola("Juan")) // "Hola Juan!"
console.log(hola("")) // "Hola !"
```

### Actividad 31

El índice de masa corporal (IMC), o BMI por sus siglas en inglés, es un valor que determina la cantidad de grasa de una persona.

El BMI se calcula con la siguiente formula:

$$BMI = \frac{peso}{altura^2}$$

Escribe una función llamada `bmi` que reciba dos argumentos: peso y altura. Utiliza la fórmula para retornar el BMI correspondiente.

```javascript
// escribe la función bmi aquí debajo

// código de prueba
console.log(bmi(65, 1.8)) // 20.061728395061728
console.log(bmi(72, 1.6)) // 28.124999999999993
console.log(bmi(52, 1.75)) //  16.979591836734695
```

### Actividad 32

La función `calcularColor` recibe un número como argumento y retorna un string de acuerdo al número:

* Si el número es 1 retorna "El color es negro".
* Si el número es 2 retorna "El color es blanco".
* Si el número es 3 retorna "El color es azul".
* De lo contrario retorna "El color es verde".

El problema es que la función tiene algunos errores y no está funcionando. Tu misión es corregirla para que funcione correctamente según lo anterior.

```javascript
function calcuarColor() {
  if (num === 1) {
    let color = "black";
  } else (num = 2) {
    let color = "blanco":
  } else if (num === 3) {
    let color = "rojo";
  } else {
    let color = "verde";
  }

  return "El color es " + color;
}

// código de prueba
console.log(calcularColor(1)) // "El color es negro"
console.log(calcularColor(2)) // "El color es blanco"
console.log(calcularColor(3)) // "El color es azul"
console.log(calcularColor(8)) // "El color es verde"
```

### Actividad 33

Escribe una función llamada `capitalizar` que reciba una cadena y capitalice cada palabra de la cadena.

**Nota:** puedes asumir que cada palabra está separada por espacio.

```javascript
// escribe la función aquí debajo

// código de prueba
console.log(capitalizar("pedro perez")) // "Pedro Perez"
console.log(capitalizar("make it real")) // "Make it Real"
```

### Actividad 34

Escribe una función llamada `promedio` que reciba un arreglo de números y retorne el promedio los elementos.

```javascript
// escribe la función aquí debajo

// código de prueba
console.log(promedio([1, 2, 3, 4])) // 2.5
console.log(promedio([7, 8, 9])) // 8
console.log(promedio([300, 100])) // 200
```

### Actividad 35

Crea una variable llamada `pedro` de tipo objeto literal con las siguientes llaves y valores:

- `nombre` - "Pedro Perez"
- `edad` - 30
- `activo` - true
- `hobbies` - un arreglo con los siguientes elementos: "programar", "squash", "piano".

Ahora haz lo siguiente:

1. Imprime en consola el valor de la llave `edad`.
2. Agrega una propiedad con llave `estatura` y valor `1.8`.
3. Elimina la propiedad con llave `activo`.
4. Recorre todas las propiedades e imprímelas en consola (una línea por propiedad y separando la llave y el valor con dos puntos `:`).

El resultado en consola debería ser parecido al siguiente (puede que las propiedades no salgan en el mismo orden):

```
30
nombre: "Pedro Perez"
edad: 30
hobbies: ["programar", "squash", "piano"]
estatura: 1.8
```

### Actividad 36

Escribe una función llamada saludar que reciba un objeto que representa una persona y retorne la frase como se muestra a continuación:

```javascript
// escribe tu función aquí debajo

// código de prueba
const pedro = { nombre: "Pedro", edad: 23 };
console.log(saludar(pedro)); // "Hola Pedro, tienes 23 años"

const maria = { nombre: "Maria", edad: 35 };
console.log(saludar(maria)); // "Hola Maria, tienes 35 años"

const juan = { nombre: "Juan" };
console.log(saludar(juan)); // "Hola Juan"
```

El objeto siempre tendrá la llave `nombre`. La llave `edad` es opcional y cuando no está presente deberás omitir la parte ", tienes x años".

### Actividad 37

Escribe una función `buscarProducto` que reciba un arreglo de objetos y un número. La función deberá buscar el número dentro de cada objeto (en la llave id) y retornar el objeto encontrado.

Si no encuentra un objeto con ese id deberá retornar `null`.

```javascript
// escribe tu función aquí debajo

// código de prueba
let productos = [
  { id: 1, nombre: "A" },
  { id: 2, nombre: "B" },
];
console.log(buscarProducto(productos, 1)); // { id: 1, nombre: "A" }

productos = [
  { id: 1, nombre: "A" },
  { id: 2, nombre: "B" },
];
console.log(buscarProducto(productos, 566)); // null
```

### Actividad 38

Escribe una función llamada `descifrar` que reciba un string y un objeto. Utiliza las propiedades del objeto para reemplazar los caracteres de la cadena y retorna el resultado:

```javascript
// escribe tu función aquí debajo

// código de prueba
console.log(descifrar("h0l4", { 0: "o", 4: "a" })); // "hola"
console.log(descifrar("pyrmizo", { y: "e", z: "s" })); // "permiso"
console.log(descifrar("igual", { h: "n" })); // "igual"
```

### Actividad 39

Escribe una función llamada `frecuencias` que reciba un string y retorne un objeto con el número de veces que aparece cada carácter (exceptuando el espacio en blanco):

```javascript
// escribe tu función aquí debajo

// código de prueba
console.log(frecuencias("hola mundo"));
// { h: 1, o: 2, l: 1, a: 1, m: 1, u: 1, n: 1, d: 1 }

console.log(frecuencias("anita lava la tina"));
// { a: 6, n: 2, i: 2, t: 2, l: 2, v: 1 }
```

### Actividad 40

Crea una variable llamada `persona` de tipo objeto literal con las siguientes propiedades:

- `peso` - 65
- `estatura` - 1.8
- `bmi` - una función que retorne el **índice de masa corporal de la persona**. Recuerda que la fórmula es:

$$BMI = \frac{peso}{altura^2}$$

```javascript
// escribe tu código aquí debajo

// código de prueba
console.log(persona.bmi()); // 20.061728395061728
```

### Actividad 41

Imprime todos los elementos del arreglo utilizando el método `forEach`:

```javascript
const arr = [45, "Hola", 82, 2, 67, true, "Juan", 12.34]

// escribe tu código aquí debajo
```

El resultado en consola debería ser el siguiente:

```shell
45
Hola
82
2
67
true
Juan
12.34
```

### Actividad 42

Escribe una función llamada `pares` que reciba un arreglo de números y retorne un nuevo arreglo con los números pares que existen en el arreglo:

```javascript
// escribe la función aquí debajo

// código de prueba
console.log(pares([0, 1, 2, 3, 4])) // [0, 2, 4]
console.log(pares([120, 876, 934, 1298])) // [120, 876, 934, 1298]
console.log(pares([7, 921, 43, 9649])) // []
```

**Nota:** Intenta utilizar el método `filter` de los arreglos para solucionar este ejercicio.

### Actividad 43

Escribe una función llamada `posPares` que reciba un arreglo y retorne un nuevo arreglo con los valores en las **posiciones** pares del arreglo que llega como argumento.

```javascript
// escribe tu función aquí debajo

// código de prueba
console.log(posPares(["a", "b", "c"])) // ["a", "c"]
console.log(posPares([0, 1, 2, 3, 4])) // [0, 2, 4]
console.log(posPares([])) // []
```

**Nota:** Intenta utilizar el método `filter` de los arreglos.

### Actividad 44

Escribe una función llamada `multiplicar` que reciba un arreglo (de números) y un número. La función debe retornar un nuevo arreglo con cada número multiplicado por segundo número:

```javascript
// escribe tu función aquí debajo

// código de prueba
console.log(multiplicar([1, 2, 3], 2)) // [2, 4, 6]
console.log(multiplicar([7, 4], 3)) // [21, 12]
console.log(multiplicar([], 10)) // []
```

**Nota:** intenta utilizar el método `map` de los arreglos.

### Actividad 45

Escribe una función llamada `productosBaratos` que reciba un arreglo de objetos (que representan productos) y retorne un nuevo arreglo con los nombres de los productos cuyo precio esté entre 5 y 10:

```javascript
// escribe tu función aquí debajo

// código de prueba
let prods = [
  { nombre: "Arroz", precio: 5 },
  { nombre: "Pan", precio: 3 },
  { nombre: "Tomate", precio: 8 },
  { nombre: "Leche", precio: 15 }
];
console.log(productosBaratos(prods)); // ["Arroz", "Tomate"]
```

### Actividad 46

Crea una función flecha y asígnala a una variable llamada `hola`. La función debe recibir un argumento `name` (con valor por defecto "Pedro") y debe retornar la frase "Hola " seguido del nombre y un signo de exclamación.

**Nota:** Utiliza *plantillas de strings* para la creación de la frase.

```javascript
// escribe aquí debajo tu función flecha

// código de prueba
console.log(hola()) // "Hola Pedro!"
console.log(hola("Maria")) // "Hola Maria!"
```

### Actividad 47

Utiliza destructuración para almacenar los primeros dos elementos del siguiente arreglo en las variables `first` y `second`:

```javascript
const arr = [1, 2, 3, 4]

// escribe aquí debajo tu respuesta

// código de prueba
console.log(first) // 1
console.log(second) // 2
```

Utiliza ahora destructuración para obtener el valor de las llaves `name` y `age` del objeto:

```javascript
const person = {
  name: "Pedro",
  age: 20
}

// escribe tu respuesta aquí debajo

// código de prueba
console.log(name) // "Pedro"
console.log(age)
```

### Actividad 48

Crea un objeto literal en una variable llamada `auto` que tenga un atributo `velocidad` (con valor inicial 0) y dos métodos `acelerar` y `frenar`. Los métodos `acelerar` y `frenar` deben incrementar y decrementar la propiedad `velocidad` en 1.

**Nota:** Utiliza métodos concisos

```javascript
// escribe tu solución aquí debajo

// código de prueba
console.log(auto.velocidad) // 0
auto.acelerar()
console.log(auto.velocidad) // 1
auto.frenar()
console.log(auto.velocidad) // 0
```

### Actividad 49

Crea una función flecha y asígnala a una variable `obtenerImpares`. La función debe recibir un arreglo de números y retornar todos los impares.

**Nota:** Utiliza el método `filter` y pásale una función flecha como argumento.

```javascript
// escribe tu solución aquí debajo

// código de prueba
console.log(obtenerImpares([1, 2, 3, 4, 5])) // [1, 3, 5]
console.log(obtenerImpares([64, 35, 27])) // [35, 27]
console.log(obtenerImpares([])) // []
```

### Actividad 50

Crea una función llamada `max` (puede ser normal o función flecha) que reciba un arreglo de números como argumento y retorne el número mayor.

**Nota:** No utilices el método `Math.max` de JavaScript.

```javascript
// escribe tu solución aquí debajo

// código de prueba
console.log(max([1, 2, 3, 4])) // 4
console.log(max([63, 85, 39, 24, 3])) // 85
```

#### (Opcional) Actividad 51

Modifica el ejercicio anterior para que la función `max` no reciba un arreglo sino un número indeterminado de argumentos.

```javascript
// escribe tu solución aquí debajo

// código de prueba
console.log(max(1, 2, 3, 4)) // 4
console.log(max(63, 85, 39, 24, 3)) // 85
```

## Bibliografía

- [makeitrealcamp/intro-javascript-sept-2022](https://github.com/makeitrealcamp/intro-javascript-sept-2022)
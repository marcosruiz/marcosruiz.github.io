---
title: "Práctica: PSeInt básico"
date: 2022-01-20 14:00:00 +0100
categories: [Bachillerato, Tecnologías de la Información y Comunicación II]
tags: [tic ii, práctica, programación, pseint]
---

## Objetivo

El objetivo de esta práctica es aprender a programar utilizando la herramienta de pseudocódigo [PSeInt](http://pseint.sourceforge.net/) y los siguientes conceptos básicos de la programación estructurada:

- Declaración y asignación de variables y constantes
- Operadores aritméticos y lógicos
- Escritura y lectura con un programa
- Seguimiento o depuración de código
- Estructuras condicionales
- Bucles

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica. Cada actividad deberá llamarse

Si necesitas ayuda tienes los siguientes enlaces donde se explica toda la teoría:

1. [Introduccion a Pseudocódigo (Incluye enlace pseint)](http://www.discoduroderoer.es/introduccion-a-pseudocodigo/)
1. [Declaración de variables](http://www.discoduroderoer.es/declaracion-de-variables-en-pseudocodigo/)
1. [Variables y constantes](http://www.discoduroderoer.es/variables-y-constantes-en-pseudocodigo/)
1. [Asignación](http://www.discoduroderoer.es/asignacion-en-pseudocodigo/)
1. [Operadores](http://www.discoduroderoer.es/operadores-pseudocodigo/)
1. [Entrada y salida](http://www.discoduroderoer.es/operacion-de-entrada-y-salida-en-pseudocodigo/)
1. [Análisis para resolver un problema](http://www.discoduroderoer.es/analisis-de-un-problema-a-resolver-en-pseudocodigo/)
1. [Seguimiento del código](http://www.discoduroderoer.es/seguimiento-en-pseudocodigo/)
1. [Estilo de escritura de algoritmos y programas](http://www.discoduroderoer.es/estilo-de-escritura-de-algoritmos-y-programas/)
1. [Estructuras condicionales](http://www.discoduroderoer.es/instruccion-de-control-condicional-en-pseudocodigo/)
1. [Estructuras repetitivas](http://www.discoduroderoer.es/instrucciones-repetitivas-o-bucles-en-pseudocodigo/)

Si con esto no te resulta suficiente, puedes ver los siguientes vídeos del canal [DiscoDuroDeRoer](https://www.youtube.com/channel/UCEzsgYrYzOCOcwmjhu_pngw) de YouTube en los cuales se resuelven problemas muy similares a los de esta práctica:

- [Ejercicios PseInt - Básicos #1 - Empezando por lo básico](https://youtu.be/DHIi4dcaMEc)
- [Ejercicios PseInt - Básicos #2 If y precios](https://youtu.be/WmX_15MqBW4)
- [Ejercicios PseInt - Básicos #3 Usando bucles](https://youtu.be/Fr3hL3AdmC4)
- [Ejercicios Pseint - Básicos #4 - Calculando cuadrados y notas de alumnos](https://youtu.be/8J7a3BsvvNQ)
- [Ejercicios PseInt - Básicos #5 - Reloj digital](https://youtu.be/nWBy6TQpWYE)
- [Ejercicios PseInt - Básicos #6 - Panagrama](https://youtu.be/VMloTpEfhfg)

### Actividad 1
Dadas dos variables numéricas A y B, que el usuario debe teclear, se pide realizar un algoritmo que intercambie los valores de ambas variables y muestre cuanto valen al final las dos variables (recuerda la asignación).

### Actividad 2
Algoritmo que lea dos números, calculando y escribiendo el valor de su suma, resta, producto y división.

### Actividad 3
Algoritmo que lea dos números y nos diga cual de ellos es mayor o bien si son iguales (recuerda usar la estructura condicional SI)

### Actividad 4
Algoritmo que lea tres números distintos y nos diga cual de ellos es el mayor (recuerda usar la estructura condicional Si y los operadores lógicos).

### Actividad 5
Diseñar un algoritmo que pida por teclado tres números; si el primero es negativo, debe imprimir el producto de los tres y si no lo es, imprimirá la suma.

### Actividad 6
 Realizar un algoritmo que lea un número por teclado. En caso de que ese número sea 0 o menor que 0, se saldrá del programa imprimiendo antes un mensaje de error. Si es mayor que 0, se deberá calcular su cuadrado y la raíz cuadrada del mismo, visualizando el numero que ha tecleado el usuario y su resultado ("Del numero X, su potencia es X y su raíz X" ). Para calcular la raíz cuadrada se puede usar la función interna RAIZ(X)  o con una potencia de 0,5.

### Actividad 7
Un colegio desea saber qué porcentaje de niños y qué porcentaje de niñas hay en el curso actual. Diseñar un algoritmo para este propósito (recuerda que para calcular el porcentaje puedes hacer una regla de 3).

#### Ejemplo de ejecución

```
*** Ejecución Iniciada. ***
Introduce el numero de niños
> 5
Introduce el numero de niñas
> 4
Hay un 55.5555555556% de niños
Hay un 44.4444444444% de niñas
*** Ejecución Finalizada. ***
```

### Actividad 8
Una tienda ofrece un descuento del 15% sobre el total de la compra durante el mes de octubre. Dado un mes y un importe, calcular cuál es la cantidad que se debe cobrar al cliente.

### Actividad 9
Realizar un algoritmo que dado un número entero, visualice en pantalla si es par o impar. En el caso de ser 0, debe visualizar "el número no es par ni impar" (para que un numero sea par, se debe dividir entre dos y que su resto sea 0)

### Actividad 10
Modificar el algoritmo anterior, de forma que si se teclea un cero, se vuelva a pedir el número por teclado (así hasta que se teclee un número mayor que cero) (recuerda la estructura mientras).

### Actividad 11
Algoritmo que nos diga si una persona puede acceder a cursar un ciclo formativo de grado superior o no. Para acceder a un grado superior, si se tiene un titulo de bachiller, en caso de no tenerlo, se puede acceder si hemos superado una prueba de acceso.

### Actividad 12
Desarrollar un algoritmo que nos calcule el cuadrado de los 9 primeros números naturales (recuerda la estructura desde-hasta). Este cálculo también es llamado factorial y se representa con el símbolo de exclamación (!).

### Actividad 13
Se pide representar el algoritmo que nos calcule la suma de los N primeros números naturales. N se leerá por teclado (no tenemos porque llamar a la variable N, podemos llamarla como queramos).

### Actividad 14
Se pide representar el algoritmo que nos calcule la suma de los N primeros números pares. Es decir, si insertamos un 5, nos haga la suma de 2+4+6+8+10+12+14.

### Actividad 15
Dada una secuencia de números leídos por teclado, que acabe con un –1, por ejemplo: 5,3,0,2,4,4,0,0,2,3,6,0,...,-1; Realizar el algoritmo que calcule la media aritmética. Suponemos que el usuario no insertara numero negativos. El -1 no se debe tener en cuenta en el cálculo de la media.

### Actividad 16
Teniendo en cuenta que la clave es "eureka", escribir un algoritmo que nos pida una clave. Solo tenemos 3 intentos para acertar, si fallamos los 3 intentos nos mostrara un mensaje indicándonos que hemos agotado esos 3 intentos. Si acertamos la clave, saldremos directamente del programa.

### Actividad 17
Algoritmo que lea números enteros hasta teclear 0, y nos muestre el máximo, el mínimo y la media de todos ellos. Piensa como debemos inicializar las variables. El 0 no se debe tener en cuenta ya que solo indica que queremos terminar de introducir números.

### Actividad 18
Algoritmo que visualice la cuenta de los números que son múltiplos de 2 o de 3 que hay entre 1 y 100.

### Actividad 19
Leer tres números que denoten una fecha (día, mes, año). Comprobar que es una fecha válida. Si no es válida escribir un mensaje de error. Si es válida escribir la fecha cambiando el número del mes por su nombre. Ej. si se introduce 1 2 2006, se deberá imprimir "1 de febrero de 2006". El año debe ser mayor que 0. (Recuerda la estructura según sea).

NOTA: en PSeInt, si queremos escribir sin que haya saltos de linea, al final de la operación escribir escribimos sin saltar.

### Actividad 20
Calcular las calificaciones de un grupo de alumnos. La nota final de cada alumno se calcula según el siguiente criterio: la parte práctica vale el 10%; la parte de problemas vale el 50% y la parte teórica el 40%. El algoritmo leerá el nombre del alumno, las tres notas, escribirá el resultado y volverá a pedir los datos del siguiente alumno hasta que el nombre sea una cadena vacía. Las notas deben estar entre 0 y 10, si no lo están, no imprimirá las notas, mostrara un mensaje de error y volverá a pedir otro alumno.

### Actividad 21
Algoritmo que lea un número entero (lado) y a partir de él cree un cuadrado de asteriscos con ese tamaño. Los asteriscos sólo se verán en el borde del cuadrado, no en el interior.

Ejemplo, para lado = 4 escribiría:

```
****
*  * 
*  * 
****
```

### Actividad 22
Algoritmo que lea un número entero (altura) y a partir de él cree una escalera invertida de asteriscos con esa altura. Deberá quedar asi, si ponemos una altura de 5.

```
*****
 ****
  ***
   **
    *
```

### Actividad 23
Algoritmo que dado un año, nos diga si es bisiesto o no. Un año es bisiesto bajo las siguientes condiciones:

- Un año divisible por 4 es bisiesto y no debe ser divisible entre 100.
- Si un año es divisible entre 100 y además es divisible entre 400, también resulta bisiesto.

NOTA: Este ejercicio tiene muchas soluciones.

### Actividad 24
El siguiente es el menú de un restaurante de bocadillos. Diseñar un algoritmo capaz de leer el número de unidades consumidas de cada alimento ordenado y calcular la cuenta total. Vamos a suponer que estos precios son fijos, es decir, que son constantes (recuerda que en PSeInt no se usa comas para separar la parte decimal de la parte entera).

| Producto | Precio |
|---|---|
| Bocadillo de jamón | 1,5 € |
| Refresco | 1,05 € |
| Cerveza | 0,75 € |

### Actividad 25
Algoritmo que nos calcule las raíces de una ecuación de segundo grado. Controlar el caso de que las soluciones sean imaginarias.

### Actividad 26
Calcular el cuadrado de los N primeros números. Mostrar por pantalla.

### Actividad 27
Calcular la nota de N alumnos, introduciendo su nota teórica (60%) y su nota practica (40%). Mostrarlo por pantalla.

### Actividad 28
Realiza un reloj digital que nunca pare. También debes hacer que espere un segundo real para darle mas realismo.

## Entrega y presentación

La entrega de esta práctica debe ser un documento ZIP con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.zip". Por ejemplo, en mi caso el nombre del documento ZIP sería "RuizGarcía_Marcos_Práctica\<NúmeroDeLaPráctica\>.zip". 

En la raíz del documento ZIP debe haber una carpeta llamada "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>" donde estén todas las actividades. Cada actividad debe tener un nombre con el siguiente formato "actividad_\<númeroDeLaActividad\>_\<nombreDeUsuario\>.psc". Por ejemplo, en mi caso el nombre de la primera actividad sería "actividad_1_mruizg.psc" ya que mi correo del centro es "mruizg@chabacier.es".

## Bibliografía

- [Ejercicios propuestos y resueltos en pseudocodigo](https://www.discoduroderoer.es/ejercicios-propuestos-y-resueltos-en-pseudocodigo/)
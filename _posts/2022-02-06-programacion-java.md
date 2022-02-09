---
title: Programación Java
date: 2022-02-06 16:30:00 +0100
categories: [Bachillerato, Tecnologías de la Información y Comunicación II]
tags: [tic ii, teoría, programación, poo, programación orientada a objetos, java]
---

{:.section}
## Introducción a la programación

<iframe width="100%" height="315" src="https://www.youtube.com/embed/TAyyujKoY6k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="100%" height="315" src="https://www.youtube.com/embed/as1opL254NA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="100%" height="315" src="https://www.youtube.com/embed/VlsWkpGWqvw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.section}
## Normas para nombrar tipos de datos en Java

- Sensible a mayúsculas y minúsculas.
- No se pueden usar palabras reservadas.
- No se permiten los espacios en blanco.
- Los identificadores deben ser descriptivos
- El nombre no puede empezar por un número

{:.section}
## Tipos de Datos básicos en Java

- `boolean`
- `char`
- `byte`
- `short`
- `int`
- `long`
- `float`
- `double`

{:.subsection}
### Tipo de Dato Booleano

- `true`
- `false`

{:.subsection}
### Operadores Lógicos

Operador | Expresión Java | Significado | 
|:---:|:---:|:---|
`!` | `!op1` | Devuelve true si op1 es false y viceversa | 
`&` | `op1 & op2` | Devuelve true si op1 y op2 son true | 
`|` | `op1 | op2` | Devuelve true si op1 u op2 son true | 
`^` | `op1 ^ op2` | Devuelve true si sólo uno de los dos operandos es true | 
`&&` | `op1 && op2` | Igual que `&`, pero si op1 es false ya no se evalúa op2 | 
`||` | `op1 || op2` | Igual que `|`, pero si op1 es true ya no se evalúa op2 |

{:.subsection}
### Tipos de Datos Enteros

- `short`
- `int`
- `long`

{:.subsection}
### Tipos de Datos Reales

- `float`
- `double`

{:.subsection}
### Operadores numéricos

| Operador | Definición |
|:---:|:---|
| `-` | Cambiode signo |
| `+` | Suma |
| `-` | Resta |
| `*` | Multiplicación |
| `/` | División |
| `%` | Resto de una división entera |

{:.subsection}
### Operadores numéricos Incrementales / Decrementales

| Operador | Definición | Expresión equivalente |
|:---:|:---:|:---:|
| `++` | `op1++` | `op1 = op1 + 1` |
| `--` | `op1--` | `op1 = op1 - 1` |

{:.subsection}
### Operadores numéricos de asignación

| Operador | Expresión Java | Expresión equivalente |
|:---:|:---:|:---:|
| `+=` | `op1+=op2` | `op1=op1+op2` |
| `-=` | `op1-=op2` | `op1=op1-op2` |
| `*=` | `op1*=op2` | `op1=op1*op2` |
| `/=` | `op1/=op2` | `op1=op1/op2` |
| `%=` | `op1%=op2` | `op1=op1%op2` |

{:.subsection}
### Operadores numéricos de Relación (True –False)

| Operador | Expresión Java | Significado | 
|:---:|:---:|:---:|
| `==` | `op1==op2` | op1 iguala op2 | 
| `!=` | `op1!=op2` | op1 distintoa op2 | 
| `>` | `op1>op2` | op1 mayor que op2 | 
| `<` | `op1<op2` | op1 menor que op2 | 
| `>=` | `op1>=op2` | op1 mayor o iguala op2 | 
| `<=` | `op1<=op2` | op1 menor o iguala op2 |

{:.section}
## Declaración variables y constantes

```java
// Declaración de variable
int numA;

// Declaración y asignación de variable
int numB = 30;

// Declaración y asignación de constante
final float NUM_C = 3.1416;
```

{:.section}
## Comentarios

- Comentarios de una sola línea: `//Comentario`
- Comentario de varias líneas: `/* Comentario */`

{:.section}
## Estructuras de control

{:.subsection}
### if

Al cumplirse una condición se ejecutan una serie de instrucciones.

```java
if (/*condición*/) {
    /*instrucciones que se ejecutan si la condición es true*/
}
```

{:.subsection}
### if & else

Al cumplirse una condición se ejecutan una serie de instrucciones. Se puede hacer que otro conjunto de instrucciones se ejecute si la condición es falsa.

```java
if(/*condición*/) {
    /*instrucciones que se ejecutan si la condición es true*/
} else {
    /*instrucciones que se ejecutan si la condición es false*/
}
```

```java
if(/*condición*/) {
    /*instrucciones que se ejecutan si la condición es true>*/
} else if (/*condición*/) {
    /*instrucciones que se ejecutan si la condición es true y las anteriores son falsas */
} else if (/*condición*/) {
    /*instrucciones que se ejecutan si la condición es true y las anteriores son falsas */
} else {
    /*instrucciones que se ejecutan si todas las condiciones anteriores son falsas*/
}
```

{:.subsection}
### switch

- Esta instrucción evalúa una expresión (que debe ser short, int, byte o char), y según el valor de la misma ejecuta instrucciones. Cada case contiene un valor de la expresión; si efectivamente la expresión equivale a ese valor, se ejecutan las instrucciones de ese case y de los siguientes.
- Es posible indicar un conjunto de sentencias para cada caso, formando un bloque, sin que ni siquiera sea necesario agruparlas entre llaves, ya que las cláusulas case delimitan sin ambigüedad sus ámbitos de actuación.
- Default opcional
- Si queremos que para un determinado valor se ejecuten las instrucciones de un apartado case y sólo las de ese apartado, entonces habrá que finalizar ese case con un break.

```java
switch(/* expresión */) {
   case valor1 :
      /* Instrucciones */
      break; // break sirve para salir del switch
   case valor2 :
      /* Instrucciones */
      break; // break sirve para salir del switch
   default : 
      /* Instrucciones */
}
```

Por ejemplo:

```java
/* existe una variable i de tipo int que no sabemos lo que vale */
switch(i) {
   case 0 :
      /* Si vale 0 entraremos aquí */
      break; // Salimos del switch
   case 1 :
      /* Si vale 1 entraremos aquí */
      break; // Salimos del switch
   default : 
      /* Si vale cualquier otro valor entraremos aquí */
}
```


{:.subsection}
### while

- Un bucle es un conjunto de sentencias que se repiten si se cumple una determinada condición. Los bucles whileagrupan instrucciones las cuales se ejecutan continuamente hasta que una condición que se evalúa sea falsa.
- La condición se mira antes de entrar dentro del whiley cada vez que se termina de ejecutar las instrucciones del while.

```java
while (/* condicion */) {
    /* sentencias que se ejecutan si la condición es true */
}
```

{:.subsection}
### do while

La condición se evalúa después de ejecutar las instrucciones; lo cual significa que el bucle se ejecuta al menos una vez.

```java
do {
    /* Instrucciones */
} while (/* condición */)
```

{:.subsection}
### for

- La expresión inicial es una instrucción que se ejecuta una sola vez: al entrar por primera vez en el bucle for(normalmente esa expresión lo que hace es dar valor inicial al contador del bucle).
- La condición es cualquier expresión que devuelve un valor lógico. En el caso de que esa expresión sea verdadera se ejecutan las instrucciones. Cuando la condición pasa a ser falsa, el bucle deja de ejecutarse. La condición se valora cada vez que se terminan de ejecutar las instrucciones del bucle.
- Después de ejecutarse las instrucciones interiores del bucle, se realiza la expresión que tiene lugar tras ejecutarse las instrucciones del bucle (que, generalmente, incrementa o decrementaal contador). Luego se vuelve a evaluar la condición y así sucesivamente hasta que la condición sea falsa.

```java
for (/* expresiónInicial */; /* condición */; /* expresiónEnCadaIteración */){
    /* Instrucciones */
}
```

El siguiente ejemplo mostrará por pantalla 10 veces la cadena de carácteres "Hola!". En la primera iteración i valdrá 0, en la segunda i valdrá 1, en la tercera i valdrá 2 y así sucesivamente hasta que i valga 10, momento en el cual se comprobará la condición i\<10 y devolverá falso saliendo del bucle.

```java
for (int i = 0; i<10; i++){
    System.out.println("Hola!");
}
```


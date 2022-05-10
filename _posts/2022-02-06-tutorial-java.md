---
title: Tutorial Java
date: 2022-02-06 16:30:00 +0100
categories: [Bachillerato, Tecnologías de la Información y Comunicación II]
tags: [tic ii, teoría, programación, poo, programación orientada a objetos, java]
---

{:.section}
## Introducción a Java

Java es un de programación de propósito general creado en 1995. Actualmente el propietario es Oracle y más de 3 millones de dispositivos tienen Java instalado.

<iframe src="https://www.youtube.com/embed/u17_apulIBg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.subsection}
### ¿Por qué Java?

- Es multiplataforma.
- Es muy popular.
- Es fácil de aprender.
- Es open-source y gratuito.
- Es seguro, rápido y poderoso.
- Tiene una gran comunidad que puede ayudarte.
- Es un lenguaje de programación orientado a objetos (POO).


{:.section}
## Instalación de Java en Windows

Para saber si tienes instalado ya Java en tu PC deberás ejecutar la siguiente instrucción en tu terminal:

```console
$ java -version
```

![img-description](/assets/img/tutorial-java/javaVersion.png)
_Ejemplo de ejecución del comando `java -version` con Java instalado_

Si no tenemos instalado Java podemos hacerlo siguiendo los siguientes pasos:

Vamos a [este enlace](https://www.oracle.com/java/technologies/downloads/) y descargamos el JDK para nuestra plataforma.

Si usamos Windows haremos iremos donde se indica en la siguiente Figura:

![img-description](/assets/img/tutorial-java/descargarWindows.png)

Añadimos la ruta de la carpeta donde tenemos el ejecutable de Java a las variables de entorno del sistema:

![img-description](/assets/img/tutorial-java/instalacionWindowsPaso1.png)

![img-description](/assets/img/tutorial-java/instalacionWindowsPaso2.png)

![img-description](/assets/img/tutorial-java/instalacionWindowsPaso3.png)

![img-description](/assets/img/tutorial-java/instalacionWindowsPaso4.png)


{:.section}
## Sintaxis de Java

Para explicar la sintaxis vamos a partir de el programa más sencillo que podemos escribir en Java, un hola mundo:

```java
public class Main {
  public static void main(String[] args) {
    System.out.println("Hello World");
  }
}
```

{:.subsection}
### La clase Main

- Toda línea de código Java debe estar dentro de una `class` o clase. 
- El nombre de la clase debe comenzar por mayúsucla.
- El nombre de la clase debe coincidir con el nombre del fichero .java.

{:.subsection}
### El método main()

El método `main()` es un método que debe tener todo programa en Java:

```java
public static void main(String[] args){

}
```

{:.subsection}
### El método println()

Para escribir por pantalla se usa el método `println()`:

```java
public static void main(String[] args) {
  System.out.println("Hola mundo!");
}
```

Para los más avanzados...

- `System` es una clase.
- `out` es una variable pública dentro de esa clase. En este caso es un tipo de dato no primitivo `PrintStream`.
- `println()` es un método público de la clase `PrintStream`.

{:.section}
## Comentarios

Los comentarios son usados para explicar código y hacerlo más entendible. A continuación se muestra las diferentes formas de escribir un comentario en Java:

```java
// Esto es un comentario
System.out.println("Hola mundo!");
```

```java
System.out.println("Hola mundo!"); // Esto es un comentario
```

```java
/*
 * Esto es un comentario
 */
System.out.println("Hola mundo!");
```

```java
/**
 * Esto es un comentario
 */
System.out.println("Hola mundo!");
```

{:.section}
## Variables en Java

Las variables son contenedores donde podemos guardar datos. Existen diferentes tipos de datos en Java. Por ejemplo:

- `String`: Guarda texto.
- `int`: Guara un número entero.
- `float`: Guarda un número real (con decimales).
- `char`: Guarda un caracter.
- `boolean`: guarda un valor con dos estados: Verdadero y falso.


{:.subsection}
### Creación de variables

La sintaxis se muestra a continuación:

```java
<tipo> <nombreDeLaVariable> = <valor>;
```


```java
// Declaración de variable de tipo entero
int numA;

// Asignación de valor a una variable de tipo int
numA = 15;

// Declaración y asignación de valor a una variable de tipo int
int numB = 30;

// Declaración y asignación de valor a una variable de tipo String
String nombre = "Marcos";
```

Estas variables pueden ser modificadas. Por ejemplo:

```java
int numA = 15;
numA = 20; // numA ahora vale 20
```

{:.subsection}
### Creación de variables finales

Si quieres que una variable no se pueda modificar debes añadirle la etiqueta `final`:

```java
// Declaración y asignación de valor a una constante de tipo real
final float NUM_C = 3.1416;
```

Nota: Estas variables también son llamadas constantes.

{:.subsection}
### Mostrar por pantalla variables

El método `println()` puede ser usado para mostrar variables. Para encadenar un texto y una variable se usa el caracter `+`.

```java
String name = "John";
System.out.println("Hello " + name); // Esto muestra por pantalla: Hello John
```

Para valores numéricos el caracter `+` funciona como un operador matemático:

```java
int x = 5;
int y = 6;
System.out.println(x + y); // Esto muestra por pantalla: 11
```

{:.subsection}
### Normas para nombrar variables en Java

- El nombre puede contener letras, dígitos, guiones bajos y símbolos del dolar.
- El nombre debe tener una letra.
- Debe empezar con una letra minúsculas.
- No puede contener espacios en blanco.
- Sensible a mayúsculas y minúsculas (case sensitive), es decir, no es lo mismo `nombreDeVariable` que `nombredevariable`.
- No se pueden usar palabras reservadas. Algunas palabras reservadas son `public`, `static`, `void`, `return`, `int`, etc.
- Los identificadores deben ser descriptivos.

{:.section}
## Tipos de datos en Java

En Java, todas las variables deben tener un tipo de dato asociado. Los tipos de datos se dividen en dos grupos:

- **Tipos de datos primitivos**: Son byte, short, int, long, float, double, boolean y char.
- **Tipos de datos no primitivos**: Son String, Arrays y las clases.

{:.subsection}
### Tipos de datos primitivos

| Tipo de dato | Tamaño | Descripción |
|---|---|---|
| `byte` | 1 Byte | Guarda un número de -128 a 127 |
| `short` | 2 Bytes | Guarda un número de -32.768 a 32.767 |
| `int` | 4 Bytes | Guarda un número de -2.147.483.648 a 2.147.483.647 |
| `long` | 8 Bytes | Guarda un número de -9.223.372.036.854.775.808 a 9.223.372.036.854.775.807 |
| `float` | 4 Bytes | Guarda un número decimal de 7 dígitos. |
| `double` | 8 Bytes | Guarda un número decimal de 15 dígitos. |
| `boolean` | 1 bit | Guara un valor verdadero o falso. |
| `char` | 2 Bytes | Guarda un solo caracter |

A continuación se muestran ejemplos de los diferentes tipos de datos:

```java
// Números
byte myByteNum = 100;             // Entero
int myIntNum = 100000;            // Entero
long myLongNum = 15000000000L;    // Entero
float myFloatNum = 5.99f;         // Real
double myNum = 19.99d;            // Real

// Booleanos
boolean isJavaFun = true;         // Booleano
boolean isThisFalse = false;      // Booleano

// Caracteres
char myLetter = 'D';              // Caracter
```

{:.subsection}
### Tipos de datos no primitivos

Los tipos de datos no primitivos en Java son referencias a objetos.

Las principales diferencias entre tipos de datos primitivos y no primitivos son las siguientes:

- Los tipos de dato primitivos están predefinidos en Java. Los tipos de datos no primitivos son creados por un programador.
- Los tipos de datos no primitivos pueden ser usados para llamar a métodos.
- Los tipos de datos primitivos SIEMPRE tienen un valor mientras que los no primitivos pueden tener el valor `null`.
- Los tipos de datos primitivos empiezan con una minúsucla mientras que los no primitivos empiezan con mayúsucla.

{:.section}
## Casteando tipos de datos en Java

Hay veces que necesitamos transformar un tipo de dato en otro. Esto se puede hacer de la siguiente forma:

```java
// Aquí estamos transformando un dato real a uno entero, esto hará que 9.78 pase a ser un 9.
double myDouble = 9.78d;
int myInt = (int) myDouble; 
```

{:.section}
## Operadores en Java

Los operadores sirven para realizar operaciones con variables y valores. Dependiendo del tipo de dato primitivo que usemos podremos realizar una serie de operaciones:

{:.subsection}
### Operadores aritméticos

Los operadores aritméticos se utilizan para realizar operaciones matemáticas comunes.

| Operador | Definición | Ejemplo |
|:---:|:---|:---|
| `-` | Cambio de signo | `op1 = -op3` |
| `+` | Suma | `op1 = op2 + op3` |
| `-` | Resta | `op1 = op2 - op3` |
| `*` | Multiplicación | `op1 = op2 * op3` |
| `/` | División | `op1 = op2 / op3` |
| `%` | Resto de una división entera | `op1 = op2 % op3` |

{:.subsection}
### Operadores de asignación

Los operadores de asignación se utilizan para asignar valores a las variables.

| Operador | Expresión Java | Expresión equivalente |
|:---:|:---:|:---:|
| `+=` | `op1 += op2` | `op1 = op1 + op2` |
| `-=` | `op1 -= op2` | `op1 = op1 - op2` |
| `*=` | `op1 *= op2` | `op1 = op1 * op2` |
| `/=` | `op1 /= op2` | `op1 = op1 / op2` |
| `%=` | `op1 %= op2` | `op1 = op1 % op2` |
| `++` | `op1++` | `op1 = op1 + 1` |
| `--` | `op1--` | `op1 = op1 - 1` |

{:.subsection}
### Operadores de comparación

Los operadores de comparación se utilizan para comparar dos valores:

| Operador | Expresión Java | Significado | 
|:---:|:---:|:---:|
| `==` | `op1==op2` | op1 iguala op2 | 
| `!=` | `op1!=op2` | op1 distintoa op2 | 
| `>` | `op1>op2` | op1 mayor que op2 | 
| `<` | `op1<op2` | op1 menor que op2 | 
| `>=` | `op1>=op2` | op1 mayor o iguala op2 | 
| `<=` | `op1<=op2` | op1 menor o iguala op2 |

{:.subsection}
### Operadores lógicos

Los operadores lógicos se utilizan para determinar la lógica entre variables o valores:

Operador | Expresión Java | Significado | 
|:---:|:---:|:---|
`!` | `!op1` | Devuelve true si op1 es false y viceversa | 
`&` | `op1 & op2` | Devuelve true si op1 y op2 son true | 
`|` | `op1 | op2` | Devuelve true si op1 u op2 son true | 
`^` | `op1 ^ op2` | Devuelve true si sólo uno de los dos operandos es true | 
`&&` | `op1 && op2` | Igual que `&`, pero si op1 es false ya no se evalúa op2 | 
`||` | `op1 || op2` | Igual que `|`, pero si op1 es true ya no se evalúa op2 |

{:.section}
## Sentencias de control en Java

Un programa en Java se ejecuta en orden desde la primera sentencia hasta la última.

Si bien existen las sentencias de control de flujo las cuales permiten alterar el fujo de ejecución para tomar decisiones o repetir sentencias.

Dentro de las sentencias de control de flujo tenemos las siguientes:

- Sentencias de decisión
- Sentencias de bucle
- Sentencias de ramificación

{:.subsection}
### Sentencias de decisión

Son sentencias que nos permiten tomar una decisión para poder ejecutar un bloque de sentencias u otro.

Las sentencias de decisión son: `if-then-else` y `switch`.

{:.subsubsection}
#### if-then-else

Al cumplirse una condición se ejecutan una serie de instrucciones.

```java
if (/*condición*/) {
    /*instrucciones que se ejecutan si la condición es true*/
}
```

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

{:.subsubsection}
#### switch

Con `switch` podremos evaluar múltiples decisiones y ejecutar un bloque asociado a cada una de ellas.

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
### Sentencias de bucle

Las sentencias de bucle nos van a permitir ejecutar un bloque de sentencias tantas veces como queramos, o tantas veces como se cumpla una condición.

En el momento que se cumpla esta condición será cuando salgamos del bucle.

Las sentencias de bucle en Java son: while, do-while y for.

En el caso de la sentencia while tenemos un bucle que se ejecuta mientas se cumple la condición, pero puede que no se llegue a ejecutar nunca, si no se cumple la condición la primera vez.

{:.subsubsection}
#### while

- Un bucle es un conjunto de sentencias que se repiten si se cumple una determinada condición. Los bucles while agrupan instrucciones las cuales se ejecutan continuamente hasta que una condición que se evalúa sea falsa.
- La condición se mira antes de entrar dentro del while y cada vez que se termina de ejecutar las instrucciones del while.

```java
while (/* condición */) {
    /* sentencias que se ejecutan si la condición es true */
}
```

{:.subsubsection}
#### do-while

La condición se evalúa después de ejecutar las instrucciones; lo cual significa que el bucle se ejecuta al menos una vez.

```java
do {
    /* instrucciones */
} while (/* condición */)
```

{:.subsubsection}
#### for

La sentencia for nos permite escribir toda la estructura del bucle de una forma más acotada. Si bien, su cometido es el mismo.

- La expresión inicial es una instrucción que se ejecuta una sola vez: al entrar por primera vez en el bucle for(normalmente esa expresión lo que hace es dar valor inicial al contador del bucle).
- La condición es cualquier expresión que devuelve un valor lógico. En el caso de que esa expresión sea verdadera se ejecutan las instrucciones. Cuando la condición pasa a ser falsa, el bucle deja de ejecutarse. La condición se valora cada vez que se terminan de ejecutar las instrucciones del bucle.
- Después de ejecutarse las instrucciones interiores del bucle, se realiza la expresión que tiene lugar tras ejecutarse las instrucciones del bucle (que, generalmente, incrementa o decrementaal contador). Luego se vuelve a evaluar la condición y así sucesivamente hasta que la condición sea falsa.

```java
for (/* expresiónInicial */; /* condición */; /* incremento */){
    /* instrucciones */
}
```

El siguiente ejemplo mostrará por pantalla 10 veces la cadena de carácteres "Hola!". En la primera iteración i valdrá 0, en la segunda i valdrá 1, en la tercera i valdrá 2 y así sucesivamente hasta que i valga 10, momento en el cual se comprobará la condición i\<10 y devolverá falso saliendo del bucle.

```java
for (int i = 0; i<10; i++){
    System.out.println("Hola!");
}
```

{:.subsection}
### Sentencias de ramificación

Las sentencias de ramificación son aquellas que nos permiten romper con la ejecución lineal de un programa.

No es necesario conocerlas a este nivel.


{:.subsubsection}
#### Videos de bucles en Java

<iframe src="https://www.youtube.com/embed/HQz8xwAjCsI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe src="https://www.youtube.com/embed/TMIoxn4nMtA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe src="https://www.youtube.com/embed/gzJn5MTSL5U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe src="https://www.youtube.com/embed/EUCmFmtX26I" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.section}
## Aprende a programar en un video... si puedes

<iframe src="https://www.youtube.com/embed/TAyyujKoY6k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe src="https://www.youtube.com/embed/as1opL254NA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe src="https://www.youtube.com/embed/VlsWkpGWqvw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.section}
## Curso de Java completo

Aprende TODO sobre Java en "solo" 200 vídeos:

<iframe src="https://www.youtube.com/embed/coK4jM5wvko" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Bibliografía

- [Java Tutorial](https://www.w3schools.com/java/default.asp)

---
title: Manual Java
date: 2022-03-30 23:30:00 +0100
categories: [Bachillerato, Tecnologías de la Información y Comunicación II]
tags: [tic ii, teoría, programación, poo, programación orientada a objetos, java]
---

{:.section}
## Conceptos Básicos en Java

{:.subsection}
### Objeto

Es un elemento de software que intenta representar un objeto del mundo real. De esta forma un objeto tendrá sus propiedades y acciones a realizar con el objeto. Estas propiedades y acciones están encapsuladas dentro del objeto, cumpliendo así los principios de encapsulamiento.

El paradigma de la orientación a objetos aparece como contraste a la programación estructurada que se venía utilizando desde los años 60.

Un objeto tiene su estado (o estados) y su comportamiento. Esto se modela mediante propiedades (o variables) y métodos. Incluso un objeto puede contener a su vez a otro tipo de objeto.

{:.subsection}
### Clase

Las clases representan los prototipos de los objetos que tenemos en el mundo real. Es decir, es una generalización de un conjunto de objetos. A su vez los objetos serán instancias de una determinada clase.

Por ejemplo, para nuestro caso de las figuras geométricas podríamos definir un triángulo de la siguiente forma:

```java
class Triangulo {
    private long base;
    private long altura;

    public Triangulo(long base, long altura) {
        this.base = base;
        this.altura = altura;
    }

    public long area() {
        return (base*altura)/2;
    }
}

Triangulo t1 = new Triangulo(2.0,3.0);
Triangulo t2 = new Triangulo(4.0,7.0);

t1.area(); // Área 3.0
t2.area(); // Área 14.0
```

De momento no te preocupes por entender el código del todo, pero verás que hemos definido una clase triángulo la cual tiene dos propiedades base y altura. Estas propiedades las hemos definido como "private" lo cual hace que no puedan ser visibles desde fuera.

```java
private long base;
private long altura;
```

Luego tenemos lo que se conoce como un método constructor. Es el método que tiene el mismo nombre que la clase: `Triangulo ()` y que nos sirve para inicializar las propiedades desde el exterior.

```java
public Triangulo(long base, long altura) {
    this.base = base;
    this.altura = altura;
}
```

Además hemos creado un método que nos calcula el área de un triángulo (base x altura / 2). Este método ya es público y podrá ser invocado de forma externa.

```java
public long area() {
  return (base*altura)/2;
}
```

Vemos cómo creamos diferentes objetos del tipo Triángulo. A estos objetos los pasamos diferentes valores.

```java
Triangulo t1 = new Triangulo(2.0,3.0);
Triangulo t2 = new Triangulo(4.0,7.0);
```

Y por último hemos invocado al método que nos devuelve el área del triángulo del objeto en concreto.

```java
t1.area(); // Área 3.0
t2.area(); // Área 14.0
```

{:.section}
## Variables en Java

Las variables Java son un espacio de memoria en el que guardamos un determinado valor (o dato). Para definir una variable seguiremos la estructura:

```java
[privacidad] tipo_variable identificador;
```

Java es un lenguaje de tipado estático. Por lo cual todas las variables tendrán un tipo de dato (ya sea un tipo de dato primitivo o una clase) y un nombre de identificador.

El tipo de dato se asignará a la hora de definir la variable. Además, en el caso de que las variables sean propiedades de objetos tendrán una privacidad.

Ejemplos de variables serían...

```java
int numero = 2;
String cadena = "Hola";
long decimal = 2.4;
boolean flag = true;
```

Las variables son utilizadas como propiedades dentro de los objetos.

```java
class Triangulo {
    private long base;
    private long altura;
}
```

{:.subsection}
### Tipos de variables en Java

Dentro de Java podemos encontrar los siguientes tipos de variables:

{:.subsubsection}
#### Globales

##### Estáticas

Son aquellas variables que están precedidas del modificador static. Esto indica que solo hay una instancia de dicha variable. Es decir, aunque tengamos N objetos de la clase, la variable estática solo se instancia una vez.

```java
class Triangulo {
    static long lados = 3;
}
```

##### No estáticas (o de instancia)

Son las variables que están definidas dentro de un objeto pero que NO tienen un modificador de estáticas (static).

```java
class Triangulo {
    private long base;
    private long altura;
}
```

Si además queremos que el valor no pueda cambiar nunca la definiremos como final.

```java
class Matematicas {
    final static long PI = 3.14159;
}
```

{:.subsubsection}
#### Locales

Son variables temporales cuyo ámbito de visibilidad es el método sobre el que están definidas. No pueden ser accedidas desde otra parte del código. Se las distingue de las variables de instancia ya que estas no llevan modificadores de visibilidad delante.

```java
int variable = 2;
```

##### Parámetros

Son las variables recibidas como parámetros de los métodos. Su visibilidad será el código que contenga dicho método.

```java
public Triangulo(long base, long altura){...}
```

{:.subsection}
### Nombres de variables en Java

Cuando vayamos a dar un nombre a una variable deberemos de tener en cuenta una serie de normas. Es decir, no podemos poner el nombre que nos dé la gana a una variable.

Los identificadores son secuencias de texto sensibles a mayúsculas cuya primer carácter solo puede ser una letra, número, `$` o `_`.

Es recomendable que los nombres de los identificadores sean legibles y no acrónimos que no podamos leer. De tal manera que a la hora de verlos se auto-documenten por sí mismos. Además estos identificadores nunca podrán coincidir con las palabras reservadas.

Algunas reglas no escritas, pero que se han asumido por convención son:

- Los identificadores siempre se escriben en minúsculas. (pe. nombre). Y si son dos o más palabras, el inicio de cada siguiente palabra se escriba en mayúsculas (pe. nombrePersona)
- Si el identificador implica que sea una constante. Es decir que hayamos utilizado los modificadores final static, dicho nombre se suele escribir en mayúsculas (pe. LETRA). Y si la constante está compuesta de dos palabras, estas se separan con un subrayado (pe. LETRA_PI).

{:.section}
## Tipos de Datos Primitivos en Java

Como ya hemos comentado Java es un lenguaje de tipado estático. Es decir, se define el tipo de dato de la variable a la hora de definir esta. Es por ello que todas las variables tendrán un tipo de dato asignado.

El lenguaje Java da de base una serie de tipos de datos primitivos.

- **byte**: Representa un tipo de dato de 8 bits con signo. De tal manera que puede almacenar los valores numéricos de -128 a 127 (ambos inclusive).
- **short**: Representa un tipo de dato de 16 bits con signo. De esta manera almacena valores numéricos de -32.768 a 32.767.
- **int**: Es un tipo de dato de 32 bits con signo para almacenar valores numéricos. Cuyo valor mínimo es -2<sup>31</sup> y el valor máximo 2<sup>31</sup>-1.
- **long**: Es un tipo de dato de 64 bits con signo que almacena valores numéricos entre -2<sup>63</sup> a 2<sup>63</sup>-1.
- **float**: Es un tipo dato para almacenar números en coma flotante con precisión simple de 32 bits.
- **double**: Es un tipo de dato para almacenar números en coma flotante con doble precisión de 64 bits.
- **boolean**: Sirve para definir tipos de datos booleanos. Es decir, aquellos que tienen un valor de true o false. Ocupa 1 bit de información.
- **char**: Es un tipo de datos que representa a un carácter Unicode sencillo de 16 bits.

Es importante saber que estos son tipos de datos del lenguaje y que no representan objetos. Cosa que sí sucede con el resto de elementos del lenguaje Java.

{:.subsection}
### Valores por defecto de los tipos de datos primitivos

| Dato Primitivo | Valor por Defecto |
|---|---|
| byte | 0 |
| short | 0 |
| int | 0 |
| long | 0L |
| float | 0.0f |
| double | 0.0d |
| char | ‘u0000’ |
| String (o cualquier objeto) | null |
| boolean | false |

Hay un tipo de dato String para el manejo de cadenas que no es en sí un tipo de dato primitivo. Con el tipo de dato String podemos manejar cadenas de caracteres separadas por dobles comillas.

El elemento String es un tipo de dato inmutable. Es decir, que una vez creado, su valor no puede ser cambiado.

El String no es un tipo de dato primitivo del lenguaje Java. Pero su uso es igual de importante que el de los tipos de datos revisados aquí. Veremos más en detalle el uso del tipo String.

{:.section}
## Literales en Java

Los valores literales son aquellos que podemos asignar a las variables. Dependiendo del tipo de variable podremos asignar unos valores u otros.

{:.subsection}
### Literales de enteros

Los enteros que podemos utilizar serán byte, short, int y long. Los literales que les asignemos siempre será un número entero.

```java
byte variableByte = 12;
short variableShort = 12;
int variableInt = 12;
long variableLong = 12;
```

{:.subsection}
### Literales de decimales

Los dos tipos de datos de decimales que podemos manejar son float y double. Para estos casos la representación del literal de decimales serán con separación de un punto entre la parte entera y la parte decimal.

```java
float variableFloat = 12.2;
double variableDouble = 12.2;
```

Literales de caracteres y cadenas

Para los caracteres utilizaremos comillas simples para delimitarlos, mientras que para las cadenas utilizaremos comillas dobles.

```java
char variableChar = ‘a’;
String variableString = "cadena";
```

{:.section}
## Expresiones, sentencias y bloques en Java

Un programa en Java se compone de un conjunto de sentencias que se ejecutan para resolver un problema. Las sentencias son el elemento básico de ejecución de los programa Java.

A parte de las sentencias, en un programa Java nos encontraremos con expresiones y bloques.

{:.subsection}
### Expresiones

Una expresión es un conjunto de variables, operadores e invocaciones de métodos que se construyen para poder ser evaluadas retornando un resultado.

Ejemplos de expresiones son:

```java
int valor = 1;
if (valor 1 > valor2) { ... }
```

{:.subsection}
### Sentencias

Una sentencia es la unidad mínima de ejecución de un programa. Un programa se compone de conjunto de sentencias que acaban resolviendo un problema. Al final de cada una de las sentencias encontraremos un punto y coma (;).

Tenemos los siguientes tipos de sentencias.

{:.subsubsection}
#### Sentencias de declaración

```java
int valor = 2;
```

{:.subsubsection}
#### Sentencias de asignación

```java
valor = 2;
```

{:.subsubsection}
#### Sentencias de incremento o decremento

```java
valor++;
valor--;
```

{:.subsubsection}
#### Invocaciones a métodos

```java
System.out.println("Hola Mundo");
```

{:.subsubsection}
#### Creaciones de objetos

```java
Circulo miCirculo = new Circulo(2,3);
```

{:.subsubsection}
#### Sentencias de control de flujo

```java
if (valor>1) { … }
```

{:.section}
## Operadores de Asignación en Java

El operador Java más sencillo es el operador de asignación. Mediante este operador se asigna un valor a una variable. El operador de asignación es el símbolo igual.

La estructura del operador de asignación es:

```java
variable = valor;
```

Así podemos asignar valores a variables de tipo entero, cadena,…

```java
int numero = 3;
String cadena = "Hola Mundo";
double decimal = 4.5;
boolean verdad = true;
```

Existen más tipos de operadores en Java:

- Operadores aritméticos: `+`, `-`, `*`, `/`, `%`.
- Operadores de igualdad: `==`, `!=`, `>`, `>=`, `<`, `<=`.
- Operadores condicionales: `&&`, `||`, etc.
- Operadores de bit.

Leer el artículo [Tutorial Java](/posts/tutorial-java).


{:.section}
## Sentencias Control en Java

Ir al artículo [Tutorial Java](/posts/tutorial-java).

{:.section}
## Clase String: Representando una cadena de texto

Una cadena de texto no deja de ser más que la sucesión de un conjunto de caracteres alfanuméricos, signos de puntuación y espacios en blanco con más o menos sentido.

Podemos encontrarnos desde la archiconocida cadena "Hola Mundo" y la no menos "Mi primera cadena de texto", pasando por las cadenas de texto personalizadas "Víctor", "Víctor Cuervo", las cadenas de depuración "¿Aquí?", "Paso 1", "Paso 2",… hasta las inclasificables "asdf".

Todas ellas serán representadas en java con la clase String y StringBuffer. Aunque de momento nos centraremos en la primera.

Para encontrar la clase String dentro de las librerías de Java tendremos que ir a java.lang.String.

{:.subsection}
### Creando una cadena de texto

Para crear una cadena tenemos dos opciones:

Instanciamos la clase String. Que sería una creación explicita de la clase

```java
String sMiCadena = new String("Cadena de Texto");
```

Crear implícitamente la cadena de texto. Es decir, simplemente le asignamos el valor al objeto.

```java
String sMiCadena = "Cadena de Texto";
```

En este caso, Java, creará un objeto String para tratar esta cadena.


{:.subsection}
### Volcando una cadena de texto a la consola

Solo nos quedará saber cómo volcar una cadena por pantalla. Esto lo haremos con la clase System.out.println que recibirá como parámetro el objeto String.

Por ejemplo:

```java
System.out.println("Mi Cadena de Texto");
```

ó

```java
String sMiCadena = new String("Mi Cadena de Texto");
System.out.println(sMiCadena);
```

{:.section}
## Funciones Básicas con Cadenas

Ir a [Funciones Básicas con Cadenas](https://www.manualweb.net/java/funciones-basicas-con-cadenas/).

{:.section}
## Arrays en Java

Un array Java es una estructura de datos que nos permite almacenar una ristra de datos de un mismo tipo. El tamaño de los arrays se declara en un primer momento y no puede cambiar en tiempo de ejecución como puede producirse en otros lenguajes. La declaración de un array en Java y su inicialización se realiza de la siguiente manera:

```java
tipo_dato nombre_array[];
nombre_array = new tipo_dato[tamanio];
```

Por ejemplo, podríamos declarar un array de caracteres e inicializarlo de la siguiente manera:

```java
char arrayCaracteres[];
arrayCaracteres = new char[10];
```

Los arrays Java se numeran desde el elemento cero, que sería el primer elemento, hasta el tamaño-1 que sería el último elemento. Es decir, si tenemos un array de diez elementos, el primer elemento sería el cero y el último elemento sería el nueve. Para acceder a un elemento especifico utilizaremos los corchetes de la siguiente forma. Entendemos por acceso, tanto el intentar leer el elemento, como asignarle un valor.

```java
arrayCaracteres[numero_elemento];
```

Por ejemplo, para acceder al tercer elemento lo haríamos de la siguiente forma:

```java
// Lectura de su valor.
char x = arrayCaracteres[2];

// Asignación de un valor. Como se puede comprobar se pone el  número dos, que coincide con el tercer elemento. Ya que como  dijimos anteriormente el primer elemento es el cero.
arrayCaracteres[2] = 'b';
```

El objeto array, aunque podríamos decir que no existe como tal, posee una variable, la cual podremos utilizar para facilitar su manejo.

Este atributo nos devuelve el número de elementos que posee el array. Hay que tener en cuenta que es una variable de solo lectura, es por ello que no podremos realizar una asignación a dicha variable. Por ejemplo esto nos serviría a la hora de mostrar el contenido de los elementos de un array:

```java
char array[];
array = new char[10];

for (int x=0;x<array.length;x++){
  System.out.printnln(array[x]);
}
```

Incialización de Arrays en Java

Existe una forma de inicializar un array en Java con el contenido, amoldándose su tamaño al número de elementos a los que le inicialicemos. Para inicializar un array Java utilizaremos las llaves de la siguiente forma:

```java
tipo_dato array[] = {elemento1,elemento2,...,elementoN};
```

Así, por ejemplo, podríamos inicializar un array Java o una matriz Java:

```java
// Tenemos un array de 5 elementos.
char array[] = {'a','b','c','d','e'};
```
{:.subsection}
### Vídeos de arrays en Java

<iframe src="https://www.youtube.com/embed/UID_EKKfpcE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe src="https://www.youtube.com/embed/NwztwM_xGgU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.section}
## Bibliografía

- [Manual Java](https://www.manualweb.net/java/)
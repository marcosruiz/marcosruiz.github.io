---
title: "Iniciación a la programación 2"
date: 2022-01-20 02:00:00 +0100
categories: [Bachillerato, Tecnologías de la Información y Comunicación II]
tags: [tic ii, teoría, programación]
---

{:.section}
## Carácteres

Un carácter es cualquier símbolo en un ordenador. Pueden ser números, letras, puntuaciones, espacios, etc. Un carácter corresponde, por lo general, a un byte, conformado por ocho bits.

Los ordenadores pueden representar a un número finito de carácteres, los cuales se corresponden con los símbolos más usados por las personas para escribir. Se clasifican en:

- Letras minúsculas del alfabeto: { a, b, c, ..., x, y, z }.
- Letras mayúsculas del alfabeto: { A, B, C, ..., X, Y, Z }.
- Números (dígitos del sistema decimal): { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 }.
- Carácteres gráficos: {♣, ♦, ♥, ♠,...}.
- Carácteres especiales: {+, -, *, /, @, #, ñ, Ñ, á, é,...}.
- Carácteres de control: {salto de línea, tabulador horizontal, avance de página,...}. Suelen formarse por agrupación de varios de los carácteres anteriores.

{:.subsection}
### Carácteres especiales

Cada lenguaje de programación usa una serie de carácteres especiales de forma habitual, normalmente alfanuméricos, cuyo significado puede ser específico de dicho lenguaje. Además de las diferencias de significado, estos carácteres suelen requerir un tratamiento especial dentro de las sentencias de codificación del programa. El uso incorrecto o inadecuado puede hacer que un programa dé resultados erróneos, que no funcione correctamente o que no funcione en absoluto. En resumen, los carácteres especiales y su uso varían según el lenguaje de programación; su uso incorrecto puede dar lugar a discordancias y errores de sintaxis, lo que provocará que el programa no interprete bien las sentencias y no funcione.

Un carácter especial son las comillas, que según el lenguaje de programación pueden llegar a diferenciarse en simple ('), doble (") e invertida (`). Cada una tiene un fin determinado y es necesario saber utilizarlas para evitar errores y no desesperar a la hora de programar.

Otros carácteres especiales son, por ejemplo, +, *, ? y { }.

Así, el carácter + suele indicar que lo que tenemos a la izquierda puede encontrarse una o más veces. El carácter * es similar a +, pero en este caso lo que se sitúa a su izquierda puede encontrarse cero o más veces. El carácter ? suele indicar opcionalidad, es decir, lo que tenemos a la izquierda puede o no aparecer (puede aparecer 0 veces o 1 vez).

Finalmente, las llaves { } sirven para indicar el número de veces exacto que puede aparecer el carácter de la izquierda, o bien un rango de veces que puede aparecer. Por ejemplo {3} indicaría que tiene que aparecer exactamente 3 veces, {3,8} indicaría que tiene que aparecer de 3 a 8 veces.

Los carácteres especiales pueden ser un único carácter, o pueden consistir en dos o más carácteres juntos. Por ejemplo, en C, en Java, en Python, son carácteres especiales las combinaciones formadas por una barra inversa seguida de una letra, como las que aparecen a continuación:

| Código | Significado |
|---|---|
| `\n` | nueva línea (ir al inicio de la siguiente línea) |
| `\t` | tabulador horizontal |
| `\b` | retroceso |

{:.section}
## Identificadores

Un identificador es simplemente el nombre que un programador da a una variable, constante o función.

Los identificadores pueden ser combinaciones de letras y números. Cada lenguaje tiene sus propias reglas que definen cómo pueden estar construidos. Cuando un identificador se asocia a una entidad concreta, entonces es el "nombre" de dicha entidad, y en adelante la representa en el programa.

Existen ciertas reglas a la hora de nombrar estos identificadores, según el tipo de lenguaje. Por ejemplo en lenguaje C:

- Iniciar con una letra del alfabeto inglés, o con el signo (_).
- No debe contener carácteres especiales, tales como @, #, $, etc.
- Después de la primera letra puede contener más letras del alfabeto inglés, números o el carácter (_).
- No deben existir espacios en blanco en los identificadores.
- C diferencia entre mayúsculas y minúsculas, por lo que no es lo mismo declarar la variable numero, que Numero o NuMeRo (en Processing, el nombre los identificadores deben empezar siempre con minúscula y si hay varias palabras en el nombre, la primera letra de cada palabra adicional deben ser en mayúsculaej: roomTemperature).
- No deben utilizarse tildes en los identificadores.
- Existen palabras reservadas propias del lenguaje que no pueden ser utilizadas como identificadores: if, do,…

Ejemplos de identificadores en C:

| Válidos | No válidos |
|---|---|
| Numero | 123 |
| dia_del_mes | _DÍA |
| PINGUINO1 | numero* |
| _ciudad | lugar de nacimiento |
| Z | año |

{:.section}
## Palabras clave o reservadas

En los lenguajes de programación existen una serie de palabras reservadas, con un significado especial y una finalidad determinada, que no se pueden usar con otro propósito, por lo que no deben usarse para nombrar variables, constantes o funciones.

Cada lenguaje tiene un determinado número de palabras reservadas dependiendo de su complejidad. Algunos ejemplos de palabras reservadas son if, for, while, etc.

![img-description](/assets/img/iniciacion-a-la-programacion-2/palabras-reservadas-python.png)

![img-description](/assets/img/iniciacion-a-la-programacion-2/palabras-reservadas-c.png)

![img-description](/assets/img/iniciacion-a-la-programacion-2/palabras-reservadas-java.png)

{:.section}
## Variables

Las variables en programación son como un contenedor para diferentes tipos de datos. Para cada variable, se necesita especificar qué tipo de datos contendrá, cuál es el nombre de la variable y qué valor se le asigna.

Podemos pensar en ellas como en botes. Digamos que tenemos dos botes, uno para galletas y otro para palabras, estos son los tipos de datos. Ahora hay que darle un nombre a cada bote; cookieJar (bote de galletas) y jarOfWord (bote de palabras). Ahora se decide qué poner en cada bote. En el cookieJar ponemos una galleta de chocolate y en el jarOfWord ponemos la palabra “programa”. Así, cada bote tiene un valor.

Se puede cambiar el contenido de los botes, su valor, en cualquier momento, pero siempre y cuando sea del mismo tipo. Por ejemplo, puede cambiarse la galleta de chocolate por otra de mantequilla y “programa” por “spaceinvader”.

![img-description](/assets/img/iniciacion-a-la-programacion-2/jar.png)

A la hora de nombrar una variable, deben tenerse en cuenta los aspectos mencionados cuando hablábamos de identificadores. El nombre de una variable será, además, lo suficientemente largo como para impedir que pueda confundirse con otra variable por tener un nombre similar, así como para aportar una indicación de cuál es el contenido o función que cumple.

![img-description](/assets/img/iniciacion-a-la-programacion-2/ejemplos-nombres-posibles-variables.png)

Como hemos dicho ya, una variable es un contenedor para guardar datos. Las variables permiten que los datos sean reutilizados muchas veces en un programa. Cada variable tiene un nombre y un valor. Si una variable almacena el valor 21 y es llamada edad, el nombre edad puede aparecer muchas veces en el programa. Cuando el programa se ejecute, la palabra edad cambiará por el valor 21.

Podríamos clasificar las variables según distintos criterios:

{:.subsection}
### Variables según el tipo de dato que almacenan

- **Variables numéricas:**
    - Variables de datos enteros (tipo int); almacenan valores con números enteros.
    - Variables de datos reales (tipo float); almacenan números decimales e irracionales usando la notación científica.
- **Variables alfanuméricas:**
    - Variables para datos de tipo carácter (tipo char); almacenan un único carácter (letra, signo o número)
    - Variables para datos de tipo cadena (tipo string); almacenan un conjunto de carácteres.
- **Variables booleanas o lógicas:** Pueden almacenar sólo valores de lógica binaria (dos estados, “true” o “false”).

{:.subsection}
### Variables según su ámbito de utilización

- **Globales:** Variables que pueden ser utilizadas a lo largo de todo el programa (definidas normalmente al comienzo del programa).
- **Locales:** Variables que solo pueden ser utilizadas en la función o grupo de instrucciones donde éstas se declaran (por ejemplo dentro de un bucle determinado).

{:.section}
## Constantes

Una constante es un dato que no cambia durante todo el desarrollo del algoritmo o durante la ejecución del programa. Es un objeto de valor invariable. Para expresar una constante se escribe explícitamente su valor. Al igual que las variables, las constantes pueden ser, según el tipo de valor:

- Constantes numéricas.
- Constantes alfanuméricas.
- Constantes lógicas (boolenas).

{:.section}
## Arrays

Un array es un medio de guardar un conjunto de elementos de la misma clase. Es como una caja con muchos compartimentos, cada uno de los cuales puede tener diferentes objetos que pueden encontrarse referenciándolos de la manera adecuada.

Por ejemplo, un array llamado cajaDeFruta tiene tres compartimentos y puede contener 3 objetos. El primer compartimento tiene un plátano, el segundo una fresa y el tercero una cereza. Si queremos encontrar la cereza , miraremos en el tercer compartimento. A la hora de referenciar los diversos objetos de un array se utilizan números enteros denominados índices, empezando por el 0 y acabando en el índice n-1, que será el índice del último elemento.

De esta forma, el compartimento o índice 0 de la cajaDeFruta contiene el plátano, el 1 contiene la fresa y el 2 la cereza. Para acceder a los elementos del array se utilizan en muchos lenguajes de programación los corchetes [ ], dentro de los cuales se indicará el índice del elemento en cuestión.

Los arrays son muy utilizados en programación. Dependiendo de la cantidad de dimensiones que tengan pueden ser:

- De una dimensión (vectores).
- De dos dimensiones (matrices).
- De tres o más dimensiones (multidimensionales).

![img-description](/assets/img/iniciacion-a-la-programacion-2/arrays.png)

Los arrays pueden almacenar datos de cualquier tipo, como un número entero (int) o una cadena de carácteres (string).

{:.section}
## Comentarios

En el código fuente no sólo se pueden insertar comandos y sentencias que más tarde se ejecutarán, sino también comentarios. Un comentario es una parte de nuestro programa que el ordenador ignora y que, por tanto, no afectarán al programa.

Se utilizan generalmente para realizar aclaraciones al código (por ejemplo para ayudar a recordar al programador qué pretendía hacer en la línea o parte del programa donde se encuentra el comentario o para que sea más comprensible paraa cualquier otra persona que quiera mejorarlo o, simplemente, entenderlo). Para explicar, por ejemplo, qué guarda una variable o para qué sirve un fragmento de código, se utilizan comentarios.

Dependiendo del lenguaje de programación de que se trate, para los comentarios se utilizan determinados símbolos, por ejemplo, en Processing, para hacer comentarios de una línea se debe iniciar el comentario con // y para hacer comentarios que requieran más de una línea, se debe comenzar el comentario con /*, y finalizar con */.

![img-description](/assets/img/iniciacion-a-la-programacion-2/comentario-1.png)

![img-description](/assets/img/iniciacion-a-la-programacion-2/comentario-2.png)

{:.section}
## Expresiones

Las expresiones son combinaciones de constantes, variables, símbolos de operación, paréntesis y nombres de funciones especiales. Los elementos de una expresión son:

- Operadores.
- Operandos.

Un operador es un símbolo o palabra que indica que se ha de realizar cierta acción entre dos o más valores, llamados operandos.

Las expresiones se pueden clasificar en:

- Expresiones aritméticas
- Expresiones lógicas

{:.subsection}
### Expresiones aritméticas

Son análogas a las fórmulas matemáticas. Las variables y constantes son numéricas (enteras o reales) y las operaciones son las aritméticas.

![img-description](/assets/img/iniciacion-a-la-programacion-2/operadores-matematicos-mas-frecuentes.png)

Las expresiones que tienen dos o más operandos requieren unas reglas matemáticas que permitan determinar el orden de las operaciones, se denominan reglas de prioridad o precedencia. Son las siguientes:

- Las operaciones que están encerradas entre paréntesis se evalúan primero. Si existen paréntesis anidados (interiores unos a otros), las expresiones internas se evalúan primero.
- Prioridad de operadores aritméticos. Dentro de una misma expresión, los operadores se evalúan con un orden prefijado de antemano.

![img-description](/assets/img/iniciacion-a-la-programacion-2/prioridad.png)

- En caso de coincidir varios operadores de igual prioridad en una expresión, el orden de prioridad es de izquierda a derecha.

{:.subsection}
### Expresiones lógicas

Las expresiones lógicas se forman combinando constantes y variables con operadores relacionales y operadores lógicos.

Los operadores relacionales se utilizan para expresar condiciones o comparar entre dos elementos.

![img-description](/assets/img/iniciacion-a-la-programacion-2/operadores-relacionales.png)

Los operadores lógicos funcionan con valores booleanos (verdadero o falso). Las salidas o resultados de las operaciones con operadores lógicos se representan en forma de tabla. A estas tablas se las conoce con el nombre de tablas de verdad. Podemos hablar de los siguientes operadores lógicos:

#### NOT

Operador NOT (no) o negación (Not p). El operador o puerta lógica NOT devuelve la negada de la entrada; si entra el valor "verdadero" la salida es "falso" y si entra el valor "falso", la salida es "verdadero".

| p | NOT p |
|---|---|
| V | F |
| F | V |

#### AND

Operador AND (y) o conjunción (p and q). La expresión p AND q, es verdadero solamente cuando ambas, p y q, son verdaderas, de lo contrario el resultado será falso.

| p | q | p AND q |
|---|---|---|
| V | V | V |
| V | F | F |
| F | V | F |
| F | F | F |

#### OR

Operador OR (o) o disyunción inclusiva (p OR q). La expresión p OR q es falsa solamente cuando ambas expresiones son falsas, en caso contrario es verdadera.

| p | q | p OR q |
|---|---|---|
| V | V | V |
| V | F | V |
| F | V | V |
| F | F | F |


{:.section}
## Sentencias

Si bien las expresiones son unidades o componentes elementales, las sentencias son unidades completas, ejecutables en sí mismas, de rango superior a las expresiones.

Así, muchos tipos de sentencias incorporan expresiones aritméticas o lógicas como componentes de dichas sentencias.

Las sentencias son los elementos básicos en que se divide el código de un programa de un determinado lenguaje de programación. Son las instrucciones u órdenes que se le dan al programa para realizar una tarea específica (mostrar un mensaje en la pantalla, declarar una variable, inicializarla, llamar a una función, etc.).

Las sentencias acaban con “;”, este carácter separa una sentencia de la siguiente. Podemos decir que cualquier instrucción acabada en “;”, forma una sentencia.

Normalmente, las sentencias se ponen unas debajo de otras, aunque sentencias cortas pueden colocarse en una misma línea. Son ejemplos de sentencias:

![img-description](/assets/img/iniciacion-a-la-programacion-2/sentencias.png)

Podemos decir que un programa es una secuencia de sentencias que se ejecutan para realizar una determinada tarea. Las sentencias pueden ser de dos tipos: simples y estructuradas o de control:

{:.subsection}
### Sentencias simples

Son una única instrucción; las sentencias simples son ejecutadas secuencialmente, una después de la otra. Pueden ser:

#### Sentencia de salto incondicional (goto)

La sentencia goto se utilizaba mucho en los primeros lenguajes de programación porque era la única manera de saltar de una instrucción del programa a otra.

#### Sentencia de llamada a procedimiento

Esta sentencia consiste en llamar a un procedimiento, y se hace poniendo el nombre del procedimiento seguido de un punto y coma. Un procedimiento es un subprograma que creas con el fin de realizar una cierta tarea, y llamarlo así desde el programa principal cuando se necesite. Es decir, se divide un programa grande en otros más pequeños para llamarlos cuando los necesites. A esto se le llama programación procedimental.

#### Sentencias de asignación

Es una de las instrucciones más comunes en un programa. Permite darle un primer valor a una variable o cambiar su valor. Una sentencia de asignación consta de tres partes:

![img-description](/assets/img/iniciacion-a-la-programacion-2/sentencia-asignacion.png)

#### Sentencias estructuradas o de control

Permiten controlar el flujo del programa, tomando decisiones a partir de comparaciones y generando bucles mientras o hasta que se cumplan ciertas condiciones. Controlar el flujo es determinar el orden en el que se ejecutarán las instrucciones en nuestros programas. Si no existiesen las sentencias de control, los programas se ejecutarían de forma secuencial, empezarían por la primera instrucción e irían una a una hasta llegar a la última. Con las sentencias de control tenemos la posibilidad de elegir uno de entre varios caminos en función de ciertas condiciones (sentencias alternativas o selectivas: if, case,...), o también ejecutar algo repetidas veces, sin tener que escribir el código para cada una (sentencias repetitivas o iterativas: for, while, repeat,...).

{:.section}
## Funciones

Una función es un conjunto de líneas de código que realizan una tarea determinada. Se utilizan para descomponer grandes problemas en tareas simples y para ejecutar operaciones que son comúnmente utilizadas durante un programa y de esta manera reducir las líneas de código. Una función es una sección de un programa que calcula un valor de manera independiente al resto del programa.

Una función tiene tres componentes importantes: los parámetros o valores que recibe la función como entrada, el código de la función con las operaciones a realizar y el resultado (o valor de retorno), que es el valor final que entrega la función. En esencia, una función es un mini programa. Sus tres componentes son análogos a la entrada, el proceso y la salida de un programa.

Cuando una función es “llamada”, se ejecuta el código en su interior, y una vez que ésta finalice, el programa regresa al punto desde el cual la función fue llamada.

![img-description](/assets/img/iniciacion-a-la-programacion-2/funciones.png)

## Bibliografía

- [¿Es correcto usar la voz caracter para referirse al 'signo de escritura o imprenta'?](https://www.academia.org.mx/espin/respuestas/item/caracter)
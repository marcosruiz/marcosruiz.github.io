---
title: Iniciación a la programación
date: 2022-01-11 17:40:00 +0100
categories: [2 Bachillerato, Tecnologías de la Información y Comunicación II]
tags: [gnu linux, comandos, terminal, bash, tic ii, teoría]
---

{:.section}
## ¿Qué es programar?

Programar consiste en crear una serie de órdenes dirigidas a un ordenador o dispositivo para que lleve a cabo las tareas que le encomendemos, con el objetivo de solucionar un determinado problema. 
La programación es el instrumento que permite la ejecución de las tareas automatizadas de un sistema informático. 
Es pues una herramienta muy poderosa.

Para conseguir esto, se utilizan los lenguajes de programación, a través de los cuales se crearán los programas que contienen las instrucciones que se dan a la máquina para que ésta ejecute determinada acción.

{:.section}
## ¿Qué es un programa?

Un programa es una secuencia de instrucciones que han sido escritas en un lenguaje de programación concreto, entendibles por el ordenador, y que permiten realizar un trabajo o resolver un problema. 
Si no sabemos resolver este problema, no podremos escribir el programa. 
De ahí que un buen programador siempre comienza su trabajo con un análisis y compresión exhaustivos del problema que pretende resolver.

Si el objetivo de un programa es la resolución de un problema, lo primero que tenemos que considerar es que las formas de resolver un mismo problema no son únicas, de forma que ante un mismo problema un programador podrá escribir diferentes programas que solucionen de distinta forma el problema planteado. Pero, si bien lo anterior es evidente, lo que sí podemos afirmar es que, en la codificación de cualquier programa, de forma general, se pueden distinguir las siguientes partes:

![Gestión de permisos en GNU Linux](/assets/img/iniciacion-a-la-programacion/entrada-proceso-salida.png)
_Partes de un programa_

- **Entrada de datos**: Instrucciones que recogen datos de un dispositivo o periférico para ser almacenados en la memoria principal a la espera de su proceso posterior.
- **Proceso**: Parte del programa que engloba las instrucciones encargadas de procesar los datos recogidos anteriormente. Los resultados se almacenan de nuevo en la memoria principal.
- **Salida de resultados**: Instrucciones del programa que recogen los resultados obtenidos en la fase anterior y los envían a los dispositivos de salida de la información.

{:.section}
## Clasificación de lenguajes de programación

De la misma forma que el término genérico "lenguaje" se refiere a cualquier sistema estructurado de comunicación (gestos, sonidos, símbolos,... y las reglas que rigen su uso), podemos definir lenguaje de programación como un conjunto de caracteres y reglas que permiten crear un programa, para introducir y procesar la información en un ordenador. 
Son lenguajes artificiales creados con el objetivo de conseguir la comunicación entre el humano y la máquina, o entre máquinas.

Los lenguajes de programación se pueden clasificar atendiendo a los siguientes criterios: nivel de abstracción, propósito de creación y paradigma de creación.

{:.subsection}
### Según el nivel de abstracción

Éste es el criterio que ayuda a una mejor comprensión de lo que en realidad son los lenguajes de programación y para qué se utilizan. 
Según dicho nivel de abstracción, los lenguajes de programación pueden ser:

{:.subsubsection}
#### Lenguaje máquina

Es el lenguaje de programación que entiende directamente la computadora o máquina. 
Utiliza el sistema binario, es decir, únicamente utiliza dos dígitos, el 0 y el 1. 
Con estos dos únicos dígitos, conocidos como bits, forma las cadenas binarias (combinaciones de ceros y unos) con las que la CPU de una máquina procesa la información.

![Lenguaje máquina](/assets/img/iniciacion-a-la-programacion/lenguaje-maquina-bits.png)
_Lenguaje máquina_

![Entrada y salida del lenguaje máquina](/assets/img/iniciacion-a-la-programacion/lenguaje-maquina-entrada-salida.png)
_Entrada y salida del lenguaje máquina_

Cualquier cosa que queramos que realice el ordenador debe expresarse con este código de ceros y unos, que es el lenguaje que realmente entiende y utiliza el microprocesador de un ordenador o cualquier otro dispositivo. El lenguaje máquina fue el primer lenguaje de programación.

Los primeros programadores programaban en lenguaje máquina, con números binarios, pero la complejidad de las operaciones realizadas y la facilidad de cometer errores derivó en la necesidad de crear lenguajes de programación más parecidos al lenguaje humano, más sencillos y rápidos de manejar y de entender.

De esta forma, para escribir un programa de forma más sencilla y fácil de recordar, se utilizan los lenguajes de bajo y alto nivel. En ellos, la sucesión de unos y ceros es sustituida por letras o palabras, generalmente en inglés, mucho más fáciles de recordar y utilizar por su mayor semejanza con el lenguaje humano.

{:.subsubsection}
#### Lenguaje ensamblador

A este grupo pertenecen los primeros lenguajes creados con el fin de sustituir el lenguaje máquina por uno más similar al utilizado por el hombre. Se denominan frecuentemente lenguajes ensambladores.

Son mucho más fáciles de utilizar que el lenguaje máquina, pero son específicos de cada procesador, lo que obliga a reescribir los programas hechos con este tipo de lenguaje si queremos utilizarlo en otro computador (poca portabilidad), siendo éste su principal inconveniente.

Estos lenguajes están constituidos, básicamente, por las instrucciones del lenguaje máquina escritas en forma simbólica, mediante códigos nemotécnicos (grupos de 3-4 caracteres alfanuméricos que simbolizan las órdenes o tareas a realizar) fáciles de leer y de recordar (ejemplo: ADD-sumar, MOV-mover,...). Un programa escrito en este lenguaje no es directamente ejecutable en la máquina. De esta forma, debido a su simbolismo, debe ser traducido a un programa equivalente, escrito en lenguaje máquina, capaz de ser ejecutado. Esta traducción se realiza mediante programas denominados programas ensambladores.

![Entrada y salida del lenguaje ensamblador](/assets/img/iniciacion-a-la-programacion/ensamblador-entrada-salida.png)
_Entrada y salida del lenguaje ensamblador_

En la actualidad, se suelen usar en ambientes reducidos, académicos y de investigación, cuando se va a manipular hardware y se pretende conseguir un uso de recursos muy controlado, o cuando se pretende conseguir un alto rendimiento. En los ensambladores se necesitan muchas instrucciones para tareas simples y su utilización exige grandes conocimientos sobre el hardware de la máquina, por lo que programar en ensamblador es realmente complejo. Muchos dispositivos programables (como los microcontroladores[^microcontrolador]) aún cuentan con el ensamblador como la única manera de ser manipulados.

![Ejemplo de lenguaje ensamblador](/assets/img/iniciacion-a-la-programacion/ensamblador-lengueje.png)
_Ejemplo de lenguaje ensamblador_

[^microcontrolador]: Un microcontrolador es un circuito integrado o chip que incluye en su interior las tres unidades funcionales de un ordenador: CPU, Memoria y Unidades de E/S, es decir, se trata de un computador completo en un solo circuito integrado. Aunque sus prestaciones son limitadas, además de dicha integración, su característica principal es su alto nivel de especialización. Aunque los hay del tamaño de una moneda, lo normal es que sean incluso más pequeños, ya que, lógicamente, forman parte del dispositivo que controlan.

{:.subsubsection}
#### Lenguaje de alto nivel

Los lenguajes de alto nivel son más fáciles de aprender y utilizar porque son los que más se parecen al lenguaje natural, ya que se usan palabras o propias del lenguaje humano (generalmente en inglés). Por ello, son los más utilizados por los programadores.

Además, los lenguajes de alto nivel son independientes de la máquina, por lo que se pueden usar en cualquier computador con muy pocas modificaciones o sin ellas.

Existen muchos lenguajes de programación de alto nivel con sus diferentes versiones y lenguajes derivados. Entre ellos tenemos el C, C++, Java, JavaScript, Python, Pascal, Logo, Processing (basado en Java),...

![Hola mundo en lenguaje C, Java, Python](/assets/img/iniciacion-a-la-programacion/hola-mundo-c-java-python.png)
_Hola mundo en lenguaje C, Java, Python_

El primer lenguaje de programación de alto nivel que se creó fue FORTRAN, que significa Traductor de Fórmulas y proviene de las palabras en inglés FORmula TRANslating.

FORTRAN fue desarrollado por un equipo de investigadores de IBM en la década de 1950, que buscaban un lenguaje de programación que tuviera apariencia al lenguaje humano.

Fortran se sigue utilizando hoy en día para la programación de aplicaciones científicas y matemáticas.

El código escrito mediante el lenguaje de alto nivel (código fuente o programa fuente) debe ser traducido a lenguaje máquina para que la computadora pueda entenderlo. Para ello, se utilizan los siguientes tipos de programas:

##### Lenguajes compilados

El compilador traduce el programa completo a código máquina antes de empezar a ejecutarlo, obteniendo lo que se llama código objeto o programa objeto y, si no hay errores, genera un archivo ejecutable. Gráficamente:

![Funcionamiento de un compilador](/assets/img/iniciacion-a-la-programacion/compilador.png)
_Funcionamiento de un compilador_

Una vez compilado el programa, podemos ejecutarlo, es decir, hacer que se inicie la carga del programa y que comiencen a realizarse las acciones programadas. Ejemplos de lenguajes compilados son C, C++, Java, Pascal o Processing.
Las ventajas de utilizar un compilador son:
- El programa ejecutable no incluye el código fuente, por lo tanto, el código compilado es más seguro.
- Un programa compilado se ejecuta más rápidamente que un programa que está siendo interpretado.

Las desventajas de utilizar un compilador son:
- Si el programa es muy largo, el proceso de compilación puede ser muy lento.
- El código fuente debe estar libre de errores para que el archivo ejecutable se genere.
- El archivo ejecutable generado por el compilador solo funcionará en el sistema operativo en el que fue creado.

##### Lenguajes interpretados

A diferencia de un compilador, un intérprete transcribe a lenguaje máquina y ejecuta una por una, todas las instrucciones descritas en el código fuente (sin generar un código o programa objeto). De esta forma, cada vez que se ejecuta el programa fuente, éste deberá ser interpretado de nuevo; cada vez que se ejecuta una sentencia ésta debe ser interpretada de nuevo.

![Compilador vs intérprete](/assets/img/iniciacion-a-la-programacion/compilador.png)
_Compilador vs intérprete_

Es decir, el programa intérprete traduce y ejecuta las instrucciones del programa línea a línea, siguiendo la secuencia real del programa. Cuando detecta un error, la traducción y ejecución del programa se detienen, e indica un código de error. La ejecución del programa en un intérprete es, por lo general, más lenta que en un compilador. El intérprete no genera un archivo ejecutable. La ventaja de ello es que cualquier programa puede ser interpretado en cualquier sistema operativo.

Ejemplos de lenguajes interpretados son las primeras versiones de BASIC, Logo, JavaScript o Python.

Las ventajas de utilizar un intérprete son:

- Al ejecutarse línea a línea, resulta ser más fácil de depurar y comprobar errores.
- Un intérprete permite utilizar algunas funciones y operadores potentes que usualmente son imposible tratar por medio de compiladores. Los lenguajes que incluyen este tipo de operadores y que, por tanto, exigen un intérprete, se llaman interpretativos. Los lenguajes compilativos, que permiten el uso de un compilador, prescinden de este tipo de operadores.

Las desventajas de utilizar un intérprete son:

- Se requiere el código fuente para poder ejecutar un programa.
- Un compilador suele generar programas más rápidos y eficientes, ya que el análisis del lenguaje fuente se hace una sola vez, durante la generación del programa equivalente. En cambio, un intérprete se ve obligado generalmente a analizar cada instrucción tantas veces como se ejecute (incluso miles o millones de veces).

{:.subsection}
### Según el propósito de creación

Atendiendo al propósito para el que se crean, los lenguajes de programación pueden ser:

- **Lenguajes de propósito general**. Son lenguajes que pueden ser usados para desarrollar cualquier tipo de programa y aplicarlo en la mayoría de las actividades que desarrolla el hombre. Ejemplos de este tipo de lenguajes son C, C++, Java, Pascal, etc.
- **Lenguajes de propósito específico**. Se utilizan de forma específica para desarrollar aplicaciones muy específicas en ámbitos determinados como por ejemplo la ingeniería y tienen por lo general un alto nivel de abstracción. Ejemplos de este tipo de lenguajes son Snobol (orientado a aplicaciones para manipulación de textos), SQL (diseñado para administrar sistemas de gestión de bases de datos relacionales) o Matlab (para creación de aplicaciones matemáticas).

{:.subsection}
### Según el paradigma de programación

Otro posible criterio de clasificación de los lenguajes de programación es el hacerlo según su paradigma de programación.

El término “paradigma” ha sido objeto de muchas interpretaciones. En su origen griego, significaba “modelo”, “ejemplo” o “patrón”. Sobre este punto de partida, podemos hablar de un paradigma como un conjunto de creencias, prácticas y conocimientos que guían el desarrollo de una disciplina durante un periodo de tiempo. En diversas ramas de la ciencia, un conjunto de ideas en vigencia puede ser reemplazado drásticamente por otro que entre en conflicto con él y se demuestre más acertado. La programación tiene sus propios paradigmas, pero el concepto “paradigma de programación” no necesariamente representa un modelo único que deba ser respetado hasta que aparezca otro mejor.

Un paradigma de programación es un estilo de desarrollo de programas. Es decir, un modelo para resolver problemas computacionales. Los lenguajes de programación, necesariamente, se encuadran en uno o varios paradigmas a la vez a partir del tipo de órdenes que permiten implementar, algo que tiene una relación directa con su sintaxis. Según su paradigma, los lenguajes de programación pueden ser:

{:.subsubsection}
#### Imperativos

En la programación imperativa se describen paso a paso una serie de instrucciones que deben ejecutarse para hallar la solución, es decir, un algoritmo que resuelva el problema.
- Paso 1: solicitar número.
- Paso 2: multiplicar número por dos.
- Paso 3: imprimir resultado de la operación.

Algunos ejemplos de lenguajes de programación imperativos (o que son usados idiomáticamente en estilo imperativo a pesar de aceptar otros estilos) son: C, C++, Java, JavaScript, Python, Pascal, Processing, etc.
Dentro de la programación imperativa existen subparadigmas bien diferenciados como son:

- **Programación estructurada**. Es aquella en la que las sentencias incluidas en el código se ejecutan de forma lineal y sencilla (una detrás de otra) a partir de un solo punto de entrada (inicio) y otro de salida (final). Se fundamenta en la teoría de que todo programa se puede escribir utilizando únicamente tres tipos de estructuras de control; secuenciales, condicionales y repetitivas. Ejemplo: Robomind.
- **Programación orientada a objetos (POO)**. Es la evolución lógica de la programación estructurada y se basa en dividir los programas en pequeñas unidades de código a las que se les llama objetos (los cuales a su vez se agrupan en clases). Pensar en objetos es muy parecido a como lo haríamos los seres humanos en la vida real. Por ejemplo, diríamos que un coche es un objeto que tiene una serie de características (marca, modelo, color,…) y una serie de funcionalidades asociadas (como ponerse en marcha o frenar); en el esquema POO, el coche sería el objeto, las propiedades o atributos serían las características (color, modelo,…) y los métodos serían las funcionalidades asociadas (ponerse en marcha, frenar, etc.). Un objeto mantiene sus características en una o más variables e implementa su comportamiento con métodos (pequeños programas asociados a un objeto).

{:.subsubsection}
#### Declarativos

En la programación imperativa, los programas consisten en secuencias de mandatos, instrucciones u órdenes que han de ser ejecutados por el computador en el orden indicado por el programador. A diferencia de esta visión, en los paradigmas declarativos el programador expresa la finalidad que debe satisfacer el programa, pero no el orden exacto en que han de realizarse las acciones dentro del ordenador hasta llegar a la solución, la cual es obtenida por mecanismos internos de control (son los compiladores de estos lenguajes los que realizan esta función y tienen gran libertad para decidir cómo llegar a esa solución). Un mismo programa puede ser ejecutado siguiendo diferentes secuencias de acciones elementales sin que por ello se vea afectado su resultado final. De esta forma, la programación declarativa facilita la labor del programador, permitiéndole concentrarse en dar una formulación del problema, liberándolo del control del algoritmo ya que la máquina, a partir de tal formulación, encontrará la solución del problema. Así, se dice que la componente esencial de este tipo de lenguajes es la componente lógica o especificación de un problema en términos de cierta lógica.

Dentro de la programación declarativa distinguimos dos tipos:

- **Lenguajes funcionales**. Se basan en la utilización de funciones matemáticas predefinidas, es decir, implementaciones de comportamiento que reciben un conjunto de datos de entrada y devuelven un valor de salida. Ejemplo: R (estadística). 
- **Lenguajes lógicos**. Utilizan la lógica matemática para expresar problemas complejos y resolverlos mediante la aplicación de reglas, hipótesis y teoremas. Ejemplo: Prolog.

{:.subsection}
### Fases del proceso de programación

La creación de un programa informático es un proceso ordenado que ha de realizarse de modo secuencial. Desde el programa más sencillo, con pocas instrucciones, hasta la programación de grandes aplicaciones que contienen miles de líneas de instrucciones, se han de seguir una serie de pasos, que constituyen las ETAPAS DE PROGRAMACION:

- Definición del problema.
- Análisis de los datos.
- Diseño del algoritmo (solución).
- Codificación.
- Prueba y depuración.
- Documentación.
- Mantenimiento.

{:.subsubsection}
#### Definición del problema

El enunciado del problema debe ser claro y no complejo. Es importante que conozcamos exactamente qué se desea obtener al final del proceso; mientras esto no se comprenda, no puede pasarse a la siguiente etapa.

{:.subsubsection}
#### Análisis de los datos

Para poder definir con precisión el problema se requiere que las especificaciones de entrada y salida sean descritas con detalle si se quiere lograr una solución eficaz.

Ejemplo: Diseñar un programa informático que permita, conocido el radio una circunferencia, calcular e imprimir su superficie y su longitud.

- Entradas ➡ Radio del círculo (variable RADIO, de tipo real).
- Salidas ➡ Superficie del círculo (variable ÁREA, de tipo real).

Longitud del círculo (variable LONGITUD, de tipo real).

{:.subsubsection}
#### Diseño del algoritmo (solución)

Se llama algoritmo a la secuencia de pasos organizados a seguir para resolver un problema. Cualquier algoritmo debe tener las siguientes características:

- La descripción de cada paso no debe llevar a ambigüedades, los pasos deben ser absolutamente explícitos y no inducir a error.
- El número de pasos debe ser finito, de forma que el algoritmo se pueda ejecutar en un tiempo finito.

Los algoritmos son independientes de la sintaxis de cada lenguaje de programación en particular, de forma que el algoritmo que lleve a la solución de un determinado problema pueda ser expresado utilizando distintos lenguajes de programación.

Hay distintas formas de escribir un algoritmo, bien usando un lenguaje específico de descripción de algoritmos (pseudocódigo), bien mediante representaciones gráficas (diagramas de flujo u organigramas).

Veamos un ejemplo de diseño de un algoritmo, expresado de ambas formas:

![Ejercicio](/assets/img/iniciacion-a-la-programacion/ejercicio-1.png)
_Ejercicio_

De los dos tipos, los algoritmos más utilizados en la programación son los diagramas de flujo u organigramas. Éstos utilizan símbolos estandarizados que permiten reflejar cada uno de los pasos que se deben seguir para diseñar un programa. El organigrama del programa se traduce más tarde a las instrucciones propias del lenguaje de programación que se utilice. Los símbolos más utilizados en los organigramas son:

![SIMBOLOGÍA USADA EN LOS DIAGRAMAS DE FLUJO](/assets/img/iniciacion-a-la-programacion/simbologia-diagramas-de-flujo.png)
_SIMBOLOGÍA USADA EN LOS DIAGRAMAS DE FLUJO_

En cuanto al pseudocódigo, se trata de un falso lenguaje empleado para describir un algoritmo de forma previa a la utilización de un lenguaje de programación real, con el fin de que pueda ser leído en interpretado fácilmente por un ser humano y no por una máquina. 
Se trata pues de un lenguaje intermedio entre cualquier lenguaje de programación y el lenguaje humano. No existen reglas fijas para escribir en pseudocódigo, aunque casi siempre se utiliza el mismo vocabulario.

{:.subsubsection}
#### Codificación del programa (obtención del código fuente y del código objeto)
Se refiere a la obtención de un programa definitivo que pueda ser comprensible para la máquina. Incluye una primera etapa de escritura del programa en lenguaje de alto nivel (código fuente), y una segunda de interpretación o compilación, donde el lenguaje de alto nivel se traduce a lenguaje máquina, obteniéndose así el llamado código objeto.

{:.subsubsection}
#### Prueba y depuración
Para comprobar un programa se realizan pruebas de diversa índole. De forma general, se inicia la prueba de un programa introduciendo datos válidos, inválidos e incongruentes y observando cómo reacciona en cada ocasión.

La depuración o localización de los errores detectados y su corrección, puede realizarse a tres niveles:

- Depuración de errores de sintaxis. Un programador siempre agradece que el lenguaje de programación tenga ayudas a la depuración del código utilizado, encontrando e indicando los errores de sintaxis cometidos a la hora de crear el código fuente.
- Depuración de errores en el funcionamiento. Aunque el programa no tenga errores de sintaxis, puede no estar haciendo lo que el programador desea. Se debe revisar la funcionalidad hasta conseguir que haga las operaciones deseadas.
- Optimización de la programación. Aunque el programa no tenga errores y funcione de manera correcta, siempre hay que buscar la manera óptima de realizarlo, es decir, lograr que la ejecución sea más rápida, que consuma menos memoria, que utilice menos recursos,…

{:.subsubsection}
#### Documentación

Es la guía o manual escrito que indica los pasos a seguir en la utilización del programa.

A menudo, un programa escrito por una persona es usado por otra. Por ello, la documentación sirve para ayudar a comprender o usar un programa o para facilitar futuras modificaciones.

{:.subsubsection}
#### Mantenimiento

Se refiere a las actualizaciones que deban aplicarse al programa cuando las circunstancias así lo requieran. Un programa debe ser susceptible de ser modificado para adecuarlo a nuevas condiciones de operación.

Cualquier actualización o cambio en el programa deberá reflejarse en su documentación.

{:.section}
## Bibliografía

- [danielggtecnologia - APUNTES 2º BACH ](https://danielggtecnologia.blogspot.com/p/apuntes-2-bach.html)
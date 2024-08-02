---
title: "Diagrama Entidad-Relación"
date: 2024-08-02 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Bases de Datos]
tags: [bases, base, datos, bbdd, daw, dam, desarrollo de aplicaciones web, desarrollo de aplicaciones multiplataforma, bases de datos, fp, ciclo superior, modulo, profesional]
img_path: /assets/img/diagrama-entidad-relacion/
---

## Introducción

Gracias al modelo conceptual Entidad-Relación, creado por Peter Chen en los años setenta, se puede representar el mundo real a través de una serie de símbolos y expresiones determinados. El objetivo de este modelo es obtener una representación de la realidad que capture sus propiedades.

Al tratarse de un modelo conceptual, no está orientado a ningún sistema físico concreto: tipo de ordenador, SGBD, sistema operativo... Tampoco tiene un objetivo informático concreto, podría perfectamente utilizarse para explicarle a una persona el funcionamiento de cualquier proceso, por lo que debe ser fácil de comprender.

Lo primero que se debe que hacer cuando se va a crear una base de datos es:

- Analizar el problema
- Pensar qué tipo de información se necesita almacenar, o dicho de otra forma, qué tipo de información se necesitará obtener de la base de datos.

Antes de seguir con el diseño de diagramas, hay que aclarar que distintos autores utilizan distintos símbolos o maneras de representar algunos elementos y características del modelo E/R, por lo que mientras el diseño esté bien realizado, el modo de expresarlo no es lo más importante, mientras todos los que trabajen en el problema utilicen y entiendan los mismos elementos gráficos. En Internet encontraréis diferentes maneras de representar un diagrama entidad relación. Lo importante es que plasmen el problema que se estudia de manera correcta.

## Entidades y relaciones

El primer paso para elaborar el diagrama E-R para una base de datos es:

- Encontrar las **entidades** que intervienen en el problema.
- Encontrar las **relaciones** existentes entre esas entidades.
- Encontrar los **atributos** que tienen esas entidades y esas relaciones.

### Entidades

Al observar el mundo que rodea al problema que se quiere plasmar en el diagrama, se puede detectar el conjunto de objetos de los que se desea almacenar información. Todos los objetos de una misma clase se representan con un tipo de entidad concreto (por simplicidad, se les nombra simplemente entidades), que se diferencia de otra entidad porque posee ciertas características que la hacen única.

Cada entidad tendrá una serie de instancias, que no son más que ocurrencias concretas de ese tipo de entidad.

En resumen: una entidad representa cualquier persona, suceso, evento o concepto (cualquier "cosa") sobre el que se desea almacenar información.

En el modelo E/R una entidad se representa con un rectángulo en cuyo interior aparece el nombre de la entidad.

![alt text](entidadAsignatura.png)

Es importante tener en cuenta que el diseño E/R acabará plasmado en un sistema gestor de bases de datos (SGBD) físico en un ordenador, por lo que es interesante respetar los nombres utilizados en el diseño, y por esa razón es conveniente no utilizar tildes en los nombres, ya que hay SGBD que no aceptan este tipo de caracteres.

> Existen tipos de entidades, lee los apuntes de la UOC (Universitat Oberta de Cataluña) con licencia Creative Commons  sobre el modelo conceptual en [este enlace](http://cv.uoc.edu/annotation/cb826b689abc472d8fb5b2519840058b/699689/PID_00213704/PID_00213704.html#w31aab7c13b5).
{:.prompt-info}

### Relaciones

Se entiende por relación aquella asociación o correspondencia existente entre entidades.

Se representa mediante un rombo con el nombre de la relación en el interior.

En el siguiente ejemplo, se representa la relación "trabaja" que se establece entre un empleado y una sucursal bancaria, de forma que represente que un empleado trabaja en una sucursal bancaria, y que la sucursal bancaria es el lugar de trabajo del empleado.

![alt text](relacion.png)

En las líneas que unen las entidades con las relaciones se puede escribir el rol o papel que desempeña una entidad en la relación en caso de que dicho papel no quede claro.

Para definir una relación se tienen en cuenta los siguientes elementos:

- **Nombre de la relación**: cada relación tiene un nombre que la distingue del resto y mediante el cual se hace referencia a ella. Habitualmente se utiliza un verbo en forma singular. (Trabaja, tiene, produce, etc)
- **Grado de la relación**: es el número de entidades que participan en una relación.
- **Cardinalidad de la relación**: Es el número máximo de instancias de cada entidad que pueden intervenir en una instancia de la relación que se está tratando. En la representación gráfica aparece como una etiqueta con 1:1, 1:N, o N:M, que se leen respectivamente como uno a uno, uno a muchos y muchos a muchos.

Ejemplos de cardinalidades:

- **Uno a uno**, es el caso de las entidades EMPLEADO, DEPARTAMENTO, y la relación 'es_jefe' en el que un departamento solo pueda tener un jefe y un empleado solo pueda ser jefe de un departamentp, y viceversa.
- **Uno a muchos**, es el caso de las entidades EMPRESA, EMPLEADO y la relación 'trabaja'. Considerando que no se permita el pluriempleo, en una empresa concreta trabajan muchos empleados, pero un empleado sólo trabaja en una empresa concreta.
- **Muchos a muchos**, es el caso de las entidades CLIENTE, ARTÍCULO y la relación 'compra'. Un cliente puede comprar diferentes artículos y un artículo puede ser comprado por diferentes clientes.

### Cardinalidades de las entidades

Las cardinalidades de las entidades se definen como el número mínimo y máximo de instancias de una entidad que pueden estar relacionadas con una instancia de otra u otras entidades que participan en la relación. Su representación gráfica es una etiqueta del tipo (0,1), (1,1), (0,n) o (1,n), según corresponda.

Por ejemplo, el siguiente diagrama representa el hecho de que un departamento de una empresa puede tener varios empleados trabajando en él (lo indica la cardinalidad máxima n) o ningún empleado trabajando en él (lo indica la cardinalidad mínima 0) y un empleado debe trabajar como mínimo y como máximo en un solo departamento.

![alt text](cardinalidades.png)

### Cardinalidades de las relaciones

En el caso de las relaciones, la cardinalidad indica el número de instancias de una entidad que se relacionan con un ejemplar de la otra entidad que forma parte de la relación, y viceversa.

La cardinalidad de las relaciones se obtiene de considerar el máximo número de instancias con las que puede participar cada una de las entidades en la relación, es decir con el máximo de las cardinalidades de cada una de las entidades que participan en la relación.

Dependiendo del número de instancias que aparezcan, podemos tener:

- **Relación uno a uno**. En la notación se pone 1:1. Con ejemplos se verá más fácil. Veamos el caso de las entidades EMPLEADO y PUESTO_DE_TRABAJO, y la relación "ocupa". Suponiendo que un determinado puesto de trabajo puede estar ocupado por un solo empleado, y al mismo tiempo, un empleado puede ocupar simultáneamente un único puesto de trabajo. El diagrama sería el siguiente:

![alt text](cardinalidad11.png)

- **Relación uno a muchos**. En la notación se pone 1:N. Por ejemplo, teniendo las entidades ASIGNATURA y PROFESOR, y la relación "imparte" para un curso concreto. En el caso de que una asignatura pueda ser impartida por un único profesor (no contemplando desdobles), pero cada profesor pueda impartir muchas asignaturas. El diagrama sería:

![alt text](cardinalidad1N.png)

- **Relación muchos a uno**. Es el mismo concepto que el de una relación uno a muchos (1:N).
- **Relación muchos a muchos**. En la notación se pone N:M. En el caso de una empresa de autobuses, si consideramos las entidades CONDUCTOR y AUTOBÚS, y la relación "conduce", lo normal es que cada autobús pueda ser conducido por distintos conductores, en diferentes turnos, y al mismo tiempo, que cada conductor pueda conducir varios autobuses en distintos turnos, de forma que cada autobús se relaciona con muchos conductores, y cada conductor se relaciona con muchos autobuses, formando una relación muchos a muchos.

![alt text](cardinalidadNM.png)

Aunque en este momento pueda parecer que los conceptos cardinalidad de una relación y cardinalidad de una entidad son muy similares, ambos son necesarios para la transformación del diagrama E/R al modelo relacional.

### Grado de una relación

El grado de una relación es el número de entidades que participan en la relación.

Se pueden encontrar los siguientes tipos de relaciones según su grado:

- **Reflexiva**: participa una única entidad.

![alt text](reflexiva.png)

- **Binaria**: Es aquella relación en la que participan dos entidades, es el tipo más habitual de relación.

![alt text](cardinalidad1N.png)

- **Ternaria**: Es aquella relación en la que participan tres entidades al mismo tiempo.
.png
![alt text](ternaria.png)

Este diagrama representa que una película se relaciona con un actor que ha interpretado un determinado personaje de los que forman parte del guión. O que un personaje se relaciona con la película de la que forma parte y con el actor que lo interpreta. O que un actor se relaciona con el personaje que interpreta y con la película en la que interviene... distintas formas de decir lo mismo.

- **N-aria**: Es aquella relación en la que participan n conjuntos de entidades. Es muy poco frecuente su aparición y es importante intentar disminuir el grado de la relación para hacer más intuitivo el modelado del sistema.

![alt text](naria.png)

Imaginemos una relación de orden 4, como la de la imagen, ¿cómo podemos disminuir su orden?

Las relaciones que expresa el diagrama son: un actor se relaciona con una película en la que interviene, que es producida por un estudio, y lo hace a cambio de un determinado salario de la tabla salarial que tienen establecida en ese estudio, y todas esas relaciones son en realidad contractuales, es decir, derivadas de contratos.

![alt text](naria2.png)

Sustituyendo la relación 'tiene_contrato' por una entidad nueva llamada CONTRATO y convirtiendo todas las relaciones en binarias se elimina la relación de grado 4.

Ahora, cada entidad de PELÍCULA, SALARIO, ESTUDIO y ACTOR se relaciona con las demás entidades sólo a través de la entidad CONTRATO.

### Atributos

Un atributo es cualquier característica que sirve para calificar, identificar, clasificar, cuantificar o expresar el estado de algo. Por ejemplo, las propiedades, cualidades, identificadores o características de entidades o relaciones

También hay que tener en cuenta si los atributos son simples o compuestos, o si son obligatorios u opcionales.

Los atributos de una entidad se representan mediante elipses o círculos etiquetados, que se conectan por una línea recta a la entidad o relación que califican, cada uno de los cuales tiene que tener un nombre único y que haga referencia a su contenido. Los nombres de los atributos deben ir en minúsculas.

![alt text](atributos.png)

Cada atributo tiene un conjunto de valores asociados denominado dominio. El dominio define todos los valores posibles que puede tomar un atributo.

#### Tipos de atributos

Los atributos pueden ser obligatorios u opcionales.

Un atributo obligatorio es aquél que siempre debe estar definido, como por ejemplo, el que identifica a una entidad. En una entidad EMPLEADO, un atributo obligatorio de esa entidad podría ser 'DNI', que no se puede dejar vacío porque gracias a él se identifican todas y cada una de las instancias de esa entidad.

Un atributo opcional, en cambio, puede quedar sin definir para algunas de las instancias de la entidad. En el caso de la entidad EMPLEADO un atributo opcional podría ser 'edad', que es un atributo que no es imprescindible para la identificación de las instancias de la entidad.

Otra clasificación de los atributos es: simples o compuestos.

Un atributo simple es un atributo que tiene un solo componente, que no se puede dividir en partes más pequeñas que tengan un significado propio, un ejemplo podría ser el DNI de una persona.

Un atributo compuesto es un atributo con varios componentes, cada uno con un significado por sí mismo. Por ejemplo, considerando la dirección de una persona como la unión de la calle donde vive, el número y la población.

En la siguiente figura se observa la forma de representar los atributos simples y los compuestos, Dirección es un atributo compuesto, que consta de varios componentes simples (calle, numero, poblacion).

![alt text](tiposAtributos.png)

Las relaciones también pueden tener atributos asociados. Se representan igual que los atributos de las entidades.

Imaginar que es necesario guardar la fecha de emisión de una factura a un cliente, y que es posible emitir duplicados de la factura (con distinta fecha). En tal caso, el atributo "Fecha de emisión" de la factura debería colocarse en la relación "se emite".

![alt text](atributoRelacion.png)

#### Clave primaria

Es muy importante poder distinguir cada instancia de una entidad o de una relación. Para esto tenemos la clave primaria.

Cada instancia de una entidad se puede distinguir de cualquier otra por todos sus atributos, y la mayoría de las veces no son necesarios todos, sino un subconjunto de ellos. Pero puede ocurrir que un subconjunto sea igual para varias entidades, por lo que no nos vale cualquier subconjunto. Lo importante es que el conjunto de todos los atributos que se seleccionan no se repita con los mismo valores para distintas instancias. Teniendo en cuenta esto se definen diferentes conceptos:

- **Clave**: es el atributo o conjunto de atributos que identifican a una entidad. Por ejemplo el DNI identifica una instancia de cualquier otra dentro de la entidad EMPLEADO, por lo que puede considerarse una clave de EMPLEADO. A veces es necesario más de un atributo para conseguir la identificación de las instancias. En ese caso la clave está constituida por el conjunto de atributos que garantice la identificación de cada una de las instancias.
- **Clave candidata**: Se trata de uno o más atributos cuyos valores son únicos para cada instancia de una entidad, pero que no son elegidos para identificar la entidad. Si tenemos la entidad EMPLEADO con los siguientes atributos: DNI, codigo_empleado, nombre, apellidos, direccion, fecha_nacimiento, etc... Dos claves candidatas son DNI y codigo_empleado, ya que ambas identifican de manera única una instancia de EMPLEADO.
- **Clave primaria**: Es la clave candidata elegida para identificar la entidad. Debe cumplir además que ningún subconjunto de ella sea clave candidata. En el caso anterior de la entidad EMPLEADO, pueden ser clave primaria tanto DNI, como codigo_empleado, y depende del criterio del diseñador de la base de datos que elija una u otra. Pero una vez que el diseñador elige una, sólo ese atributo (o conjunto de atributos) es clave primaria.
A continuación hay un diagrama en el que se representa el caso de la entidad Empleado y su clave primaria.

![alt text](clavePrimariaEmpleado.png)

### Restricciones avanzadas del modelo Entidad-Relación

Leer el artículo [Diseño conceptual de bases de datos](http://cv.uoc.edu/annotation/cb826b689abc472d8fb5b2519840058b/699689/PID_00213704/PID_00213704.html#w31aab7c15) de la UOC.

## Creación de un diagrama Entidad-Relación

Se va a realizar el diagrama E/R que representa la información de una Universidad sobre los grados y sus asignaturas que se pueden estudiar en ella y se va a incluir, además, la información de los alumnos matriculados en las asignaturas junto con las calificaciones que obtienen en ellas. Para este caso se va a suponer que una asignatura solo puede pertenecer a una grado.

Lo primero es buscar las entidades, que son Asignatura, Grado y Alumno.

Después las relaciones entre las entidades. Asignatura se relaciona con Grado a través de la relación "pertenece", y Alumno se relaciona con Asignatura a través de "esta_matriculado".

![alt text](creacionDiagrama1.png)

Ahora se ponen los atributos de las entidades y las relaciones (si los tuvieran). El enunciado del problema es bastante escueto y no nombra qué información se desea guardar. Normalmente los enunciados deben ser completos para no dejar nada a la imaginación del diseñador y que todo quede lo más aproximado posible al problema real.

En este caso no dicen nada, así que lo primero que debemos pensar es que las entidades deben estar identificadas y guardar la información más común de estas entidades. Por ejemplo, de Grado podemos guardar el nombre y un código interno dentro de la universidad que lo distingue en la base de datos. De las asignaturas, el nombre, código de la asignatura (que será la clave primaria), duración y horas semanales. De los alumnos, DNI (que será la clave primaria), nombre, apellidos, fecha de nacimiento e email.

Con todo esto el diagrama quedaría así (a falta de estudiar las cardinalidades).

![alt text](creacionERFinal.png)

Hay que fijarse que el atributo nota está en la relación porque es la nota que el alumno obtiene en una asignatura en concreto y para cada asignatura tendrá una nota distinta, por lo tanto, no puede ser un atributo de la entidad.

Ahora falta añadir las cardinalidades.

Empezamos con la relación "esta_matriculado". Un alumno puede estar matriculado en 1 o varias asignaturas, así que en el lado de la relación más próximo a la entidad Asignatura, se pone la cardinalidad (1,n). Una asignatura puede tener a ninguno o a varios alumnos matriculados, así que en el lado de la relación más próximo a la entidad Alumno se escribe la cardinalidad (0,n) y de estas dos cardinalidades, se deriva la cardinalidad de la relación, N:M.

La relación "pertenece". Una asignatura pertenece a un y solo un grado, con lo que la cardinalidad de la relación más próxima a la entidad grado, será (1,1). Y un grado se compone de mínimo 1 y máximo varias asignaturas, así que en el lado más próximo a la entidad Asignatura, se pone la cardinalidad (1,n). De estas cardinalidades, la cardinalidad de la relación es 1:N.

El diagrama final del problema es el siguiente:

![alt text](diagramaFinal.png)

## Crear diagrama ER con DIA

Lee el artículo [Tutorial: Crear diagrama ER con DIA](/posts/tutorial-crear-diagrama-entidad-relacion-dia).

## Bibliografía

- <https://libros.catedu.es/books/bases-de-datos-relacionales-y-lenguaje-sql/chapter/modulo-2-diseno-de-una-base-de-datos>
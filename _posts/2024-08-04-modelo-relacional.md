---
title: "Modelo relacional"
date: 2024-08-02 9:00:00 +0100
categories: [General]
tags: [general, sociograma, tutoria, tutorial, google, forms, sociogram, add on, alumnos, clase, dinamica, gratis, free]
img_path: /assets/img/modelo-relacional/
---

## Conceptos fundamentales del modelo relacional

El modelo relacional se basa en el concepto matemático de relación, que se representa gráficamente mediante una tabla. Codd utilizó terminología matemática para definir el modelo relacional, en concreto la de la teoría de conjuntos y de la lógica de predicados.

### El concepto de relación

La relación es el elemento básico del modelo relacional y está compuesta por dos partes:

- **Cabecera**. Formada por un conjunto fijo de atributos. Es la parte fija de la relación. Está constituida por:
  - El nombre del conjunto: la tabla.
  - El nombre de los atributos: las columnas de la tabla.
  - Los dominios de los que toman valores los atributos.
- **Cuerpo**. El cuerpo está formado por un conjunto de filas.

El número de columnas que tiene una relación recibe el nombre de grado de la relación, y el número de filas recibe el nombre de cardinalidad de la relación.

Como ejemplo, la siguiente tabla representa la relación PERSONA.

| NOMBRE  | APELLIDOS           | EDAD |  TELÉFONO   |
| ------- | ------------------- | ---- | :---------: |
| Alfonso | Gutiérrez Pérez     | 38   | 698 569 854 |
| Lucía   | López García        | 37   | 666 999 888 |
| Jorge   | Juan Bonilla        | 38   | 632 458 785 |
| Ana     | García García       | 29   | 654 987 321 |
| Diego   | Rodríguez Gracia    | 36   | 632 985 632 |
| Marta   | Pérez Martínez      | 34   | 678 521 456 |
| Alberto | Vega Domínguez      | 31   | 698 584 521 |
| Manuela | Fernández Hernández | 35   | 636 696 898 |
| Silvia  | Gracia Barrós       | 36   | 654 654 654 |

La cabecera de esta relación es: PERSONA (NOMBRE, APELLIDOS, EDAD, TELEFONO)

El cuerpo es el conjunto de 9 filas con los datos concretos de personas, el grado de la relación es 4 y la cardinalidad 9.

Las tablas del modelo relacional cumplen las siguientes propiedades:

- No existen filas repetidas: el cuerpo de la relación es un conjunto matemático y en matemáticas, por definición, los conjuntos no incluyen elementos repetidos. Esto se traduce en que dos registros de una misma relación deben diferir, al menos, en el valor de un campo.
- Las filas no están ordenadas: esta propiedad muestra la diferencia entre una relación y una tabla, porque las filas de una tabla tienen un orden obvio de arriba hacia abajo, mientras que las filas de una relación no tienen orden.
- Los atributos no están ordenados: esto proviene del hecho de que la cabecera de una relación se define también como conjunto. Las columnas de una tabla tienen un orden evidente de izquierda a derecha, pero los atributos de una relación no tienen orden.
- Todos los valores de los atributos son atómicos: esto quiere decir que un atributo sólo puede tomar un valor en cada fila.

### Clave primaria y claves ajenas

Sea va a recordar lo que era una clave primaria y se va a añadir un concepto nuevo, el de clave ajena.

En el modelo relacional tenemos los siguientes tipos de claves:

- **Clave candidata**: es un conjunto mínimo y no vacío de atributos que identifica unívocamente cada registro de una relación.
- **Clave primaria**: es la clave candidata que elige el usuario para identificar los registros de una relación. Una clave primaria es compuesta cuando está formada por más de un atributo.
- **Clave alternativa**: es cualquiera de las claves candidatas que no han sido elegidas como clave primaria.
- **Clave ajena**: Es un conjunto no vacío de atributos de una relación cuyos valores han de coincidir con los valores de la clave primaria de otra relación. Las dos relaciones no tienen que ser necesariamente distintas, podrían ser la misma relación (es el caso de las relaciones reflexivas).
Un ejemplo a continuación:

Oficina

| NUM_OFICINA | CALLE           | AREA   | POBLACION |
| ----------- | --------------- | ------ | --------- |
| 001         | Rúa Seco, 19    | Sur    | Olite     |
| 002         | Larraga, 21     | Norte  | Olite     |
| 003         | Tudela, 15      | Sur    | Pamplona  |
| 004         | Italia, 12      | Centro | Zaragoza  |
| 005         | de la Parra, 16 | Centro | Teruel    |

El atributo NUM_OFICINA es una clave candidata ya que identifica de manera única cada registro de la tabla, y en este caso además es la clave primaria porque no existe en la tabla ninguna otra clave candidata.

Empleado

| NUM_EMPLEADO | DNI      | OFICINA | TELEF_FIJO |
| ------------ | -------- | ------- | ---------- |
| 12340        | 25369874 | 005     | 978 225588 |
| 12350        | 72658412 | 002     | 948 121212 |
| 12360        | 72658965 | 003     | 948 323232 |
| 12370        | 25814796 | 001     | 976 456985 |
| 12380        | 25369854 | 004     | 976 658745 |

En esta tabla hay dos claves candidatas, el atributo NUM_EMPLEADO y el atributo DNI, ya que ambos identifican de manera única a cada registro de la tabla. Si se considera el atributo DNI como clave primaria, el atributo NUM_EMPLEADO pasa a ser una clave alternativa de la tabla.

Si la relación OFICINA tuviera la siguiente estructura:

Oficina

| NUM_OFICINA | CALLE           | AREA   | POBLACION | TELEFONO   | DIRECTOR |
| ----------- | --------------- | ------ | --------- | ---------- | -------- |
| 001         | Rúa Seco, 19    | Sur    | Olite     | 948 222222 | 25369874 |
| 002         | Larraga, 21     | Norte  | Olite     | 948 121212 | 72658412 |
| 003         | Tudela, 15      | Sur    | Pamplona  | 948 323232 | 72658965 |
| 004         | Italia, 12      | Centro | Zaragoza  | 976 658745 | 72658412 |
| 005         | de la Parra, 16 | Centro | Teruel    | 978 225588 | 72658965 |

Se puede ver que el atributo DIRECTOR hace referencia al atributo DNI de la tabla EMPLEADO, que además es la clave primaria de dicha tabla, por lo que DIRECTOR es la clave ajena de la tabla OFICINA y referencia la tabla EMPLEADO.

Las claves primarias y ajenas cumplen una serie de propiedades:

- Una clave ajena y la clave primaria de la tabla referenciada asociada han de estar definidas sobre los mismos dominios.
- Una tabla puede poseer más de una clave ajena. Tendrá una clave ajena por cada tabla referenciada de la cual dependa.
- Una tabla puede no tener ninguna clave ajena.
- Una clave ajena puede relacionar una tabla consigo misma (relaciones reflexivas).

## Transformación del modelo Entidad-Relación al modelo relacional

### Principios de transformación

La transformación de un diagrama E/R al modelo relacional está basado en los siguientes principios:

- Toda entidad se convierte en una tabla.
- Toda relación N:M se transforma en una tabla.
- Toda relación 1:N se traduce en el fenómeno de "propagación de clave" (se crea una clave ajena).

### Transformación de las entidades y sus atributos

**Entidades**: cada entidad que aparece en el diagrama E/R se convierte en una tabla.

**Atributos de las entidades**: Cada atributo de una entidad se transforma en una columna de la tabla a la que ha dado lugar la entidad.

Ahora vamos a ver cómo se definen cada uno de los tipos de atributos:

Todos los atributos pasan a ser columnas de la tabla.
Los atributos que forman parte de la clave primaria de una entidad pasan a ser la clave primaria de la tabla. Se debe especificar que no son nulos, esto es, que no pueden quedarse esos campos vacíos al insertar filas nuevas en la tabla.
Siguiendo con el ejemplo del diagrama E/R de la universidad, se tendrían las siguientes tablas con sus atributos. Las claves primarias están marcadas en negrita y subrayadas.

![alt text](paso-al-relacional-1.png)

### Transformación de las relaciones y sus atributos

Transformación de las relaciones entre entidades: dependiendo del tipo de relación y de la cardinalidad que tenga, existen diversas maneras de transformarlas:

- **Relaciones N:M**. Se crea una nueva tabla que incluye los atributos de la relación (si los tiene) y las claves primarias de las dos entidades, que forman la clave primaria de la nueva tabla.
- **Relaciones 1:N**. Estas relaciones se pueden transformar de dos maneras diferentes:
  - Propagar la clave primaria de la entidad que tiene cardinalidad máxima 1 a la que tiene cardinalidad máxima N, y hacer desaparecer la tabla de la relación como tal. Esto quiere decir que el atributo que es clave primaria en la entidad con cárdinalidad máxima 1 se añade como columna a la tabla que surge de la entidad que tiene cardinalidad máxima N. Además esta columna sería también clave ajena de la tabla, referenciando a la otra tabla de la relación. Si la relación tuviera atributos asociados, estos atributos pasan a formar parte de la tabla correspondiente al tipo de entidad que participa con cardinalidad máxima N.
  - Transformarla en una nueva tabla como si fuese de una relación de tipo N:M, es decir, incluyendo los atributos de la relación y las claves primarias de las dos entidades. Esta acción es recomendable sólo en los siguientes casos:
  - Cuando es posible que aparezcan muchos nulos (campos vacíos en las filas) porque existen pocos elementos relacionados.
  - Cuando se prevé que dicha relación pasará en un futuro a ser de tipo N:M,
  - Cuando la relación tiene atributos propios.
- **Relaciones 1:1**. Este es un caso particular de cualquiera de los dos casos anteriores, por lo que se podrían aplicar las reglas anteriores. Es recomendable tener en cuenta las siguientes recomendaciones:
  - Si la relación es entre entidades con cardinalidades (0,1) y (0,1), es mejor crear una relación para evitar tener muchos nulos como propagación de alguna de las claves a la otra.
  - Si la relación es entre entidades con cardinalidades (0,1) y (1,1), es mejor propagar la clave de la entidad (1,1) a la (0,1).
  - Si la relación es entre entidades con cardinalidades (1,1) y (1,1), la propagación es indiferente, y se hará atendiendo a los criterios de frecuencia de acceso (consulta, modificación, inserción, etc.) a cada una de las tablas en cuestión.
- **Transformación de relaciones ternarias (grado 3)**.
  - **Relaciones muchos a muchos a muchos**. Este tipo de relación se transforma en una tabla cuya clave primaria es la concatenación de las claves primarias de las tablas surgidas al transformar las entidades que forman parte de la relación. Junto a estos atributos se incluyen los atributos propios de la relación. Cada uno de los atributos que forman la clave primaria de esta tabla son a la vez claves ajenas respecto a cada una de las tablas donde dicho atributo es clave primaria.
  - **Relaciones muchos a muchos a uno**. Este tipo de relación se transforma en una tabla cuya clave primaria es la concatenación de las claves primarias de las tablas que corresponden a la cardinalidad N y M, surgidas al transformar las entidades que forman parte de la relación. Junto a estos atributos se incluyen los atributos propios de la relación más la clave primaria de la tabla que corresponde a la cardinalidad 1. Cada uno de los atributos que forman la clave primaria de esta tabla y los atributos añadidos de la relación de cardinalidad 1 son claves ajenas respecto a cada una de las tablas donde dicho atributo es clave primaria.

### Transformación de los atributos de relaciones

Si la relación se transforma en una tabla, todos sus atributos pasan a ser columnas de la tabla. En el caso en que alguno de los atributos de la relación sea clave primaria, deberá ser incluido como parte de la clave primaria en dicha tabla.

En el ejemplo de la Universidad, tenemos una relación 1:N y otra N:M. De la relación 1:N tendremos una propagación de clave, es decir, la clave primaria de la tabla con cardinalidad máxima 1 (Grado), pasa como atributo a la otra tabla (Asignatura) y además como clave ajena que referencia a la clave primaria de Grado. De la relación N:M se obtiene una nueva tabla con los atributos que tiene la relación (Nota) y la clave primaria la forma la unión de las claves primarias de las entidades que intervienen en la relación (Codigo de la asignatura y DNI del Alumno).

![alt text](paso-al-relacional-2.png)

> Para realizar estos diagramas, os recomiendo la herramienta [ERD Plus](https://erdplus.com/), que solo requiere registro en la misma y además permite luego exportar el código SQL de los diagramas relacionales, lo que es muy útil para luego generar la base de datos en un sistema físico.
{:.prompt-info}

## Bibliografía

- <https://libros.catedu.es/books/bases-de-datos-relacionales-y-lenguaje-sql/chapter/modulo-2-diseno-de-una-base-de-datos>
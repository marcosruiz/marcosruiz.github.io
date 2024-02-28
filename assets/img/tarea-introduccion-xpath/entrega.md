# Tarea: Introducción a XPath



## Actividad 1

Dado el siguiente documento XML, escriba las expresiones XPath que devuelvan la respuesta deseada:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ies>
  <nombre>Campus Digital</nombre>
  <web>https://campusdigitalfp.com/</web>
  <ciclos>
    <ciclo id="ASIR">
      <nombre>Administración de Sistemas Informáticos en Red</nombre>
      <grado>Superior</grado>
      <decretoTitulo año="2009" />
    </ciclo>
    <ciclo id="DAW">
      <nombre>Desarrollo de Aplicaciones Web</nombre>
      <grado>Superior</grado>
      <decretoTitulo año="2010" />
    </ciclo>
    <ciclo id="SMR">
      <nombre>Sistemas Microinformáticos y Redes</nombre>
      <grado>Medio</grado>
      <decretoTitulo año="2008" />
    </ciclo>
    <ciclo id="DAM">
      <nombre>Desarrollo de Aplicaciones Multiplataforma</nombre>
      <grado>Superior</grado>
      <decretoTitulo año="2010" />
    </ciclo>
  </ciclos>
</ies>
```

### Actividad 1.1

Nombre del instituto:

```xml
<nombre>Campus Digital</nombre>
```

### Actividad 1.2

Página web del Instituto:

```plaintext
https://campusdigitalfp.com/
```

### Actividad 1.3

Nombre de los Ciclos Formativos:

```plaintext
Administración de Sistemas Informáticos en Red
Desarrollo de Aplicaciones Web
Sistemas Microinformáticos y Redes
Desarrollo de Aplicaciones Multiplataforma
```

### Actividad 1.4

Siglas por las que se conocen los Ciclos Formativos:

```plaintext
id="ASIR"
id="DAW"
id="SMR"
id="DAM"
```

### Actividad 1.5

Años en los que se publicaron los decretos de título de los Ciclos Formativos:

```plaintext
año="2009"
año="2010"
año="2008"
año="2010"
```

### Actividad 1.6

Ciclos Formativos de Grado Medio (se trata de obtener el elemento `<ciclo>` completo):

> Resuelva este ejercicio de dos formas distintas, en un único paso de búsqueda y en dos pasos de búsqueda.
{:.prompt-info}

```xml
<ciclo id="SMR">
  <nombre>Sistemas Microinformáticos y Redes</nombre>
  <grado>Medio</grado>
  <decretoTitulo año="2008"/>
</ciclo>
```

### Actividad 1.7

Nombre de los Ciclos Formativos de Grado Superior:

> Resuelva este ejercicio de dos formas distintas, en un único paso de búsqueda y en dos pasos de búsqueda.
{:.prompt-info}

```xml
<nombre>Administración de Sistemas Informáticos en Red</nombre>
<nombre>Desarrollo de Aplicaciones Web</nombre>
<nombre>Desarrollo de Aplicaciones Multiplataforma</nombre>
```

### Actividad 1.8

Nombre de los Ciclos Formativos anteriores a 2010:

> Resuelva este ejercicio de dos formas distintas, en un único paso de búsqueda y en dos pasos de búsqueda.
{:.prompt-info}

```plaintext
Administración de Sistemas Informáticos en Red
Sistemas Microinformáticos y Redes
```

### Actividad 1.9

Nombre de los Ciclos Formativos de 2008 o 2010:

> Resuelva este ejercicio de dos formas distintas, en un único paso de búsqueda y en dos pasos de búsqueda.
{:.prompt-info}

```plaintext
Desarrollo de Aplicaciones Web
Sistemas Microinformáticos y Redes
Desarrollo de Aplicaciones Multiplataforma
```

### Actividad 1.9

Invéntate tu propia consulta.

## Actividad 2

Dado el siguiente documento XML, escriba las expresiones XPath que devuelvan la respuesta deseada:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ies>
  <modulos>
    <modulo id="0228">
      <nombre>Aplicaciones web</nombre>
      <curso>2</curso>
      <horasSemanales>4</horasSemanales>
      <ciclo>SMR</ciclo>
    </modulo>
    <modulo id="0372">
      <nombre>Gestión de bases de datos</nombre>
      <curso>1</curso>
      <horasSemanales>5</horasSemanales>
      <ciclo>ASIR</ciclo>
    </modulo>
    <modulo id="0373">
      <nombre>Lenguajes de marcas y sistemas de gestión de información</nombre>
      <curso>1</curso>
      <horasSemanales>3</horasSemanales>
      <ciclo>ASIR</ciclo>
      <ciclo>DAW</ciclo>
    </modulo>
    <modulo id="0378">
      <nombre>Seguridad y Alta Disponibilidad</nombre>
      <curso>2</curso>
      <horasSemanales>2</horasSemanales>
      <ciclo>ASIR</ciclo>
    </modulo>
  </modulos>
</ies>
```

### Actividad 2.1

Nombre de los módulos que se imparten en el Instituto:

```plaintext
Aplicaciones web
Gestión de bases de datos
Lenguajes de marcas y sistemas de gestión de información
Seguridad y Alta Disponibilidad
```

### Actividad 2.2

Nombre de los módulos del ciclo ASIR:

```plaintext
Gestión de bases de datos
Lenguajes de marcas y sistemas de gestión de información
Seguridad y Alta Disponibilidad
```

### Actividad 2.3

Nombre de los módulos que se imparten en el segundo curso de cualquier ciclo:

```plaintext
Aplicaciones web
Seguridad y Alta Disponibilidad
```

### Actividad 2.4

Nombre de los módulos de menos de 5 horas semanales:

```plaintext
Aplicaciones web
Lenguajes de marcas y sistemas de gestión de información
Seguridad y Alta Disponibilidad
```

### Actividad 2.5

Nombre de los módulos que se imparten en el primer curso de ASIR:

```plaintext
Gestión de bases de datos
Lenguajes de marcas y sistemas de gestión de información
```

### Actividad 2.6

Horas semanales de los módulos de más de 3 horas semanales:

```plaintext
4
5
```

## Actividad 3

Dado el siguiente documento XML, escriba las expresiones XPath que devuelvan la respuesta deseada:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ies>
  <nombre>Campus Digital</nombre>
  <web>https://campusdigitalfp.com/</web>
  <ciclos>
    <ciclo id="ASIR">
      <nombre>Administración de Sistemas Informáticos en Red</nombre>
      <grado>Superior</grado>
      <decretoTitulo año="2009" />
    </ciclo>
    <ciclo id="DAW">
      <nombre>Desarrollo de Aplicaciones Web</nombre>
      <grado>Superior</grado>
      <decretoTitulo año="2010" />
    </ciclo>
    <ciclo id="SMR">
      <nombre>Sistemas Microinformáticos y Redes</nombre>
      <grado>Medio</grado>
      <decretoTitulo año="2008" />
    </ciclo>
  </ciclos>
  <modulos>
    <modulo id="0228">
      <nombre>Aplicaciones web</nombre>
      <curso>2</curso>
      <horasSemanales>4</horasSemanales>
      <ciclo>SMR</ciclo>
    </modulo>
    <modulo id="0372">
      <nombre>Gestión de bases de datos</nombre>
      <curso>1</curso>
      <horasSemanales>5</horasSemanales>
      <ciclo>ASIR</ciclo>
    </modulo>
    <modulo id="0373">
      <nombre>Lenguajes de marcas y sistemas de gestión de información</nombre>
      <curso>1</curso>
      <horasSemanales>3</horasSemanales>
      <ciclo>ASIR</ciclo>
      <ciclo>DAW</ciclo>
    </modulo>
    <modulo id="0378">
      <nombre>Seguridad y Alta Disponibilidad</nombre>
      <curso>2</curso>
      <horasSemanales>2</horasSemanales>
      <ciclo>ASIR</ciclo>
    </modulo>
  </modulos>
</ies>
```

### Actividad 3.1

Nombre de los módulos del ciclo "Sistemas Microinformáticos y Redes" (en la expresión final no deben aparecer las siglas SMR):

```plaintext
Aplicaciones web
```

### Actividad 3.2

Nombre de los ciclos que incluyen el módulo "Lenguajes de marcas y sistemas de gestión de información":

```plaintext
Administración de Sistemas Informáticos en Red
Desarrollo de Aplicaciones Web
```

### Actividad 3.3

Nombre de los módulos de ciclos de Grado Superior:

```plaintext
Gestión de bases de datos
Lenguajes de marcas y sistemas de gestión de información
Seguridad y Alta Disponibilidad
```

### Actividad 3.4

Nombre de los módulos de ciclos cuyo título se aprobó en 2008:

```plaintext
Aplicaciones web
```

### Actividad 3.5

Grado de los ciclos con módulos de primer curso:

```plaintext
Superior
Superior
```

## (Voluntaria) Actividad 4

Vamos a trabajar con el fichero [`universidad.xml`](/assets/img/tarea-introduccion-xpath/universidad.xml). Obtén la siguiente información:

### Actividad 4.01

Nombre de la Universidad.

### Actividad 4.02

País de la Universidad.

### Actividad 4.03

Nombres de las grados.

### Actividad 4.04

Años de plan de estudio de las grados.

### Actividad 4.05

Nombres de todos los alumnos.

### Actividad 4.06

Identificadores de todas las grados.

### Actividad 4.07

Datos de la grado cuyo id es g01.

### Actividad 4.08

Centro en que se estudia de la grado cuyo id es g02.

### Actividad 4.09

Nombre de las grados que tengan subdirector.

### Actividad 4.10

Nombre de los alumnos que estén haciendo proyecto.

### Actividad 4.11

Códigos de las grados en las que hay algún alumno matriculado.

### Actividad 4.12

Apellidos y Nombre de los alumnos con beca.

### Actividad 4.13

Nombre de las asignaturas de la titulación g04.

### Actividad 4.14

Nombre de las asignaturas de segundo trimestre.

### Actividad 4.15

Nombre de las asignaturas que no tienen 4 créditos teóricos.

### Actividad 4.16

Código de la grado que estudia el último alumno.

### Actividad 4.17

Código de las asignaturas que estudian mujeres.

### Actividad 4.18

Nombre de los alumnos que matriculados en la asignatura a02.

### Actividad 4.19

Códigos de las grados que estudian los alumnos matriculados en alguna asignatura.

### Actividad 4.20

Apellidos de todos los hombres.

### Actividad 4.21

Nombre de la grado que estudia Víctor Manuel.

### Actividad 4.22

Nombre de las asignaturas que estudia Luisa.

### Actividad 4.23

Primer apellido de los alumnos matriculados en Ingeniería del Software.

### Actividad 4.24

Nombre de las grados que estudian los alumnos matriculados en la asignatura Tecnología de los Alimentos.

### Actividad 4.25

Nombre de los alumnos matriculados en grados que no tienen subdirector.

### Actividad 4.26

Nombre de las alumnos matriculados en asignaturas con 0 créditos prácticos y que estudien la grado de I.T. Informática .

### Actividad 4.27

Nombre de los alumnos que estudian grados cuyos planes son anteriores a 2002.
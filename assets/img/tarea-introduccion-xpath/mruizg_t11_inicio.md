# Tarea: Introducción a XPath

- Módulo profesional: Lenguajes de Marcas y Sistemas de Gestión de Información
- Ciclo formativo: Desarrollo de Aplicaciones Web
- Autor: Marcos Ruiz García
- Fecha: 11/03/2024

## Actividad 1

Dado el siguiente documento XML, escriba las expresiones XPath que devuelvan la respuesta deseada.

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
    <ciclo id="DAM">
      <nombre>Desarrollo de Aplicaciones Multiplataforma</nombre>
      <grado>Superior</grado>
      <decretoTitulo año="2010" />
    </ciclo>
    <ciclo id="SMR">
      <nombre>Sistemas Microinformáticos y Redes</nombre>
      <grado>Medio</grado>
      <decretoTitulo año="2008" />
    </ciclo>
  </ciclos>
</ies>
```

### Actividad 1.1

Nombre del instituto.

Salida esperada:

```xml
<nombre>Campus Digital</nombre>
```

Consulta XPath:

```xpath

```

Salida real:

```xml

```

### Actividad 1.2

Página web del Instituto.

Salida esperada:

```plaintext
https://campusdigitalfp.com/
```

### Actividad 1.3

Nombre de los Ciclos Formativos.

Salida esperada:

```plaintext
Administración de Sistemas Informáticos en Red
Desarrollo de Aplicaciones Multiplataforma
Sistemas Microinformáticos y Redes
```

### Actividad 1.4

Siglas por las que se conocen los Ciclos Formativos.

Salida esperada:

```xpath
id="ASIR"
id="DAM"
id="SMR"
```

### Actividad 1.5

Años en los que se publicaron los decretos de título de los Ciclos Formativos.

Salida esperada:

```xpath
año="2009"
año="2010"
año="2008"
```

### Actividad 1.6

Ciclos Formativos de Grado Medio (se trata de obtener el elemento `<ciclo>` completo).

Salida esperada:

> Resuelva este ejercicio de dos formas distintas, en un único paso de búsqueda y en dos pasos de búsqueda.

```xml
<ciclo id="SMR">
  <nombre>Sistemas Microinformáticos y Redes</nombre>
  <grado>Medio</grado>
  <decretoTitulo año="2008"/>
</ciclo>
```

### Actividad 1.7

Nombre de los Ciclos Formativos de Grado Superior.

Salida esperada:

> Resuelva este ejercicio de dos formas distintas, en un único paso de búsqueda y en dos pasos de búsqueda.

```xml
<nombre>Desarrollo de Aplicaciones Multiplataforma</nombre>
<nombre>Administración de Sistemas Informáticos en Red</nombre>
```

### Actividad 1.8

Nombre de los Ciclos Formativos anteriores a 2010.

Salida esperada:

> Resuelva este ejercicio de dos formas distintas, en un único paso de búsqueda y en dos pasos de búsqueda.

```plaintext
Administración de Sistemas Informáticos en Red
Sistemas Microinformáticos y Redes
```

### Actividad 1.9

Nombre de los Ciclos Formativos de 2008 o 2010.

Salida esperada:

> Resuelva este ejercicio de dos formas distintas, en un único paso de búsqueda y en dos pasos de búsqueda.

```plaintext
Desarrollo de Aplicaciones Multiplataforma
Sistemas Microinformáticos y Redes
```

### Actividad 1.9

Invéntate tu propia consulta.

## Actividad 2

Dado el siguiente documento XML, escriba las expresiones XPath que devuelvan la respuesta deseada.

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

Nombre de los módulos que se imparten en el Instituto.

Salida esperada:

```plaintext
Aplicaciones web
Gestión de bases de datos
Lenguajes de marcas y sistemas de gestión de información
Seguridad y Alta Disponibilidad
```

### Actividad 2.2

Nombre de los módulos del ciclo ASIR.

Salida esperada:

```plaintext
Gestión de bases de datos
Lenguajes de marcas y sistemas de gestión de información
Seguridad y Alta Disponibilidad
```

### Actividad 2.3

Nombre de los módulos que se imparten en el segundo curso de cualquier ciclo.

Salida esperada:

```plaintext
Aplicaciones web
Seguridad y Alta Disponibilidad
```

### Actividad 2.4

Nombre de los módulos de menos de 5 horas semanales.

Salida esperada:

```plaintext
Aplicaciones web
Lenguajes de marcas y sistemas de gestión de información
Seguridad y Alta Disponibilidad
```

### Actividad 2.5

Nombre de los módulos que se imparten en el primer curso de ASIR.

Salida esperada:

```plaintext
Gestión de bases de datos
Lenguajes de marcas y sistemas de gestión de información
```

### Actividad 2.6

Horas semanales de los módulos de más de 3 horas semanales.

Salida esperada:

```plaintext
4
5
```

### Actividad 2.7

Invéntate tu propia consulta.

## Actividad 3

Dado el siguiente documento XML, escriba las expresiones XPath que devuelvan la respuesta deseada.

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

Nombre de los módulos del ciclo "Sistemas Microinformáticos y Redes" (en la expresión final no deben aparecer las siglas SMR).

Salida esperada:

```plaintext
Aplicaciones web
```

### Actividad 3.2

Nombre de los ciclos que incluyen el módulo "Lenguajes de marcas y sistemas de gestión de información".

Salida esperada:

```plaintext
Administración de Sistemas Informáticos en Red
Desarrollo de Aplicaciones Web
```

### Actividad 3.3

Nombre de los módulos de ciclos de Grado Superior.

Salida esperada:

```plaintext
Gestión de bases de datos
Lenguajes de marcas y sistemas de gestión de información
Seguridad y Alta Disponibilidad
```

### Actividad 3.4

Nombre de los módulos de ciclos cuyo título se aprobó en 2008.

Salida esperada:

```plaintext
Aplicaciones web
```

### Actividad 3.5

Grado de los ciclos con módulos de primer curso.

Salida esperada:

```plaintext
Superior
Superior
```

### Actividad 3.6

Invéntate tu propia consulta.

## (Voluntaria) Actividad 4

Dado el siguiente fichero XML:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<universidad>

    <nombre>Universidad de Zaragoza</nombre>
    <pais>España</pais>

    <!-- GRADOS -->

    <grados>

        <grado id="g01">
            <nombre>Grado en Ingeniería Informática</nombre>
            <plan>2003</plan>
            <creditos>250</creditos>
            <centro>Escuela de Informática</centro>
        </grado>

        <grado id="g02">
            <nombre>Grado en Administración y Dirección de Empresas</nombre>
            <plan>2000</plan>
            <creditos>275</creditos>
            <centro>Facultad de Ciencias Sociales</centro>
        </grado>

        <grado id="g03">
            <nombre>Grado en Relaciones Laborales</nombre>
            <plan>2000</plan>
            <creditos>280</creditos>
            <centro>Facultad de Ciencias Sociales</centro>
            <subdirector>Alfonso Martín Luque</subdirector>
        </grado>

        <grado id="g04">
            <nombre>Grado en Quimica</nombre>
            <plan>2003</plan>
            <creditos>175</creditos>
            <centro>Facultad de Ciencias Experimentales</centro>
        </grado>

        <grado id="g05">
            <nombre>Grado en Biotecnología</nombre>
            <plan>2000</plan>
            <creditos>175</creditos>
            <centro>Facultad de Ciencias</centro>
        </grado>

        <grado id="g06">
            <nombre>Grado en Humanidades</nombre>
            <plan>1980</plan>
            <creditos>475</creditos>
            <centro>Facultad de Humanidades</centro>
        </grado>

    </grados>

    <!-- ASIGNATURAS -->

    <asignaturas>

        <asignatura id="a01" titulacion="g01">
            <nombre>Ofimática</nombre>
            <creditosTeoricos>3</creditosTeoricos>
            <creditosPracticos>1.5</creditosPracticos>
            <trimestre>1</trimestre>
        </asignatura>

        <asignatura id="a02" titulacion="g01">
            <nombre>Ingeniería del Software</nombre>
            <creditosTeoricos>6</creditosTeoricos>
            <creditosPracticos>1.5</creditosPracticos>
            <trimestre>2</trimestre>
        </asignatura>

        <asignatura id="a03" titulacion="g02">
            <nombre>Administración de Empresas</nombre>
            <creditosTeoricos>4</creditosTeoricos>
            <creditosPracticos>1.5</creditosPracticos>
            <trimestre>1</trimestre>
        </asignatura>

        <asignatura id="a04" titulacion="g02">
            <nombre>Derecho Internacional</nombre>
            <creditosTeoricos>4</creditosTeoricos>
            <creditosPracticos>5</creditosPracticos>
            <trimestre>1</trimestre>
        </asignatura>

        <asignatura id="a05" titulacion="g04">
            <nombre>Pedagogía</nombre>
            <creditosTeoricos>4</creditosTeoricos>
            <creditosPracticos>1.5</creditosPracticos>
            <trimestre>2</trimestre>
        </asignatura>

        <asignatura id="a06" titulacion="g03">
            <nombre>Didáctica</nombre>
            <creditosTeoricos>4</creditosTeoricos>
            <creditosPracticos>3</creditosPracticos>
            <trimestre>2</trimestre>
        </asignatura>

        <asignatura id="a07" titulacion="g04">
            <nombre>Tecnología de los Alimentos</nombre>
            <creditosTeoricos>1.5</creditosTeoricos>
            <creditosPracticos>7.5</creditosPracticos>
            <trimestre>2</trimestre>
        </asignatura>

        <asignatura id="a08" titulacion="g01">
            <nombre>Bases de Datos</nombre>
            <creditosTeoricos>4.5</creditosTeoricos>
            <creditosPracticos>5.5</creditosPracticos>
            <trimestre>1</trimestre>
        </asignatura>

        <asignatura id="a09" titulacion="g06">
            <nombre>Historia del Pensamiento</nombre>
            <creditosTeoricos>6</creditosTeoricos>
            <creditosPracticos>0</creditosPracticos>
            <trimestre>2</trimestre>
        </asignatura>

    </asignaturas>

    <!-- ALUMNOS -->

    <alumnos>

        <alumno id="e01">
            <apellido1>Rivas</apellido1>
            <apellido2>Santos</apellido2>
            <nombre>Víctor Manuel</nombre>
            <sexo>Hombre</sexo>
            <estudios>
                <grado codigo="g01" />
                <asignaturas>
                    <asignatura codigo="a01" />
                    <asignatura codigo="a03" />
                    <asignatura codigo="a05" />
                    <asignatura codigo="a09" />
                </asignaturas>
            </estudios>
        </alumno>

        <alumno id="e02">
            <apellido1>Pérez</apellido1>
            <apellido2>García</apellido2>
            <nombre>Luisa</nombre>
            <sexo>Mujer</sexo>
            <estudios>
                <grado codigo="g02" />
                <asignaturas>
                    <asignatura codigo="a02" />
                    <asignatura codigo="a01" />
                </asignaturas>
                <proyecto>Web de IBM.com</proyecto>
            </estudios>

        </alumno>

        <alumno id="e03" beca="si">
            <apellido1>Pérez</apellido1>
            <apellido2>Romero</apellido2>
            <nombre>Fernando</nombre>
            <sexo>Hombre</sexo>
            <estudios>
                <grado codigo="g02" />
                <asignaturas>
                    <asignatura codigo="a02" />
                    <asignatura codigo="a01" />
                    <asignatura codigo="a04" />
                    <asignatura codigo="a09" />
                </asignaturas>
            </estudios>
        </alumno>

        <alumno id="e04">
            <apellido1>Avalón</apellido1>
            <apellido2>Jiménez</apellido2>
            <nombre>María</nombre>
            <sexo>Mujer</sexo>
            <estudios>
                <grado codigo="g01" />
                <asignaturas>
                    <asignatura codigo="a02" />
                    <asignatura codigo="a01" />
                    <asignatura codigo="a07" />
                </asignaturas>
                <proyecto>Estudio de Salinidad del Pantano Iris</proyecto>
            </estudios>
        </alumno>

    </alumnos>

</universidad>
```

Obtén la siguiente información.

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

Nombre de las asignaturas del grado g04.

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

### Actividad 4.28

Invéntate tu propia consulta.
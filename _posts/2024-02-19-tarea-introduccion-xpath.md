---
title: "Tarea: Introducción a XPath"
date: 2024-01-30 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Multiplataforma, Lenguajes de Marcas y Sistemas de Gestión de Información]
tags: [desarrollo de aplicaciones multiplataforma, lenguajes de marcas y sistemas de gestión de información, administración de sistemas informáticos de red, práctica, tarea, dam, daw, asir]
img_path: /assets/img/tarea-xpath/
---

## Entrega y presentación

La entrega será en formato PDF. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

## Calificación

La tarea se calificará como apto o no apto.

Duración: - h

## Actividades

Para hacer estos ejercicios puedes utilizar la página: [Code Beauty - XPath Tester](https://codebeautify.org/Xpath-Tester)

### Actividad 1

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
</ies>
```

1. Nombre del instituto:

```xml
<nombre>Campus Digital</nombre>
```

2. Página web del Instituto:

```plaintext
https://campusdigitalfp.com/
```

3. Nombre de los Ciclos Formativos:

```plaintext
Administración de Sistemas Informáticos en Red
Desarrollo de Aplicaciones Web
Sistemas Microinformáticos y Redes
```

4. Siglas por las que se conocen los Ciclos Formativos:

```plaintext
id="ASIR"
id="DAW"
id="SMR"
```

5. Años en los que se publicaron los decretos de título de los Ciclos Formativos:

```plaintext
año="2009"
año="2010"
año="2008"
```

6. Ciclos Formativos de Grado Medio (se trata de obtener el elemento completo):

```xml
<ciclo id="SMR">
  <nombre>Sistemas Microinformáticos y Redes</nombre>
  <grado>Medio</grado>
  <decretoTitulo año="2008"/>
</ciclo>
```

7. Nombre de los Ciclos Formativos de Grado Superior:

```xml
<nombre>Administración de Sistemas Informáticos en Red</nombre>
<nombre>Desarrollo de Aplicaciones Web</nombre>
```

8. Nombre de los Ciclos Formativos anteriores a 2010:

```plaintext
Administración de Sistemas Informáticos en Red
Sistemas Microinformáticos y Redes
```

9. Nombre de los Ciclos Formativos de 2008 o 2010:

```plaintext
Desarrollo de Aplicaciones Web
Sistemas Microinformáticos y Redes
```

### Actividad 2

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
    <modulo id="0376">
      <nombre>Implantación de aplicaciones web</nombre>
      <curso>2</curso>
      <horasSemanales>5</horasSemanales>
      <ciclo>ASIR</ciclo>
    </modulo>
  </modulos>
</ies>
```

1. Nombre de los módulos que se imparten en el Instituto:

```plaintext
Aplicaciones web
Gestión de bases de datos
Lenguajes de marcas y sistemas de gestión de información
Implantación de aplicaciones web
```

2. Nombre de los módulos del ciclo ASIR:

```plaintext
Gestión de bases de datos
Lenguajes de marcas y sistemas de gestión de información
Implantación de aplicaciones web
```

3. Nombre de los módulos que se imparten en el segundo curso de cualquier ciclo:

```plaintext
Aplicaciones web
Implantación de aplicaciones web
```

4. Nombre de los módulos de menos de 5 horas semanales:

```plaintext
Aplicaciones web
Lenguajes de marcas y sistemas de gestión de información
```

5. Nombre de los módulos que se imparten en el primer curso de ASIR:

```plaintext
Gestión de bases de datos
Lenguajes de marcas y sistemas de gestión de información
```

6. Horas semanales de los módulos de más de 3 horas semanales:

### Actividad 3

Dado el siguiente documento XML, escriba las expresiones XPath que devuelvan la respuesta deseada:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ies>
  <nombre>IES Gonzalo Nzareno</nombre>
  <web>http://www.gonzalonzareno.org</web>
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
    <modulo id="0376">
      <nombre>Implantación de aplicaciones web</nombre>
      <curso>2</curso>
      <horasSemanales>5</horasSemanales>
      <ciclo>ASIR</ciclo>
    </modulo>
  </modulos>
</ies>
```

1. Nombre de los módulos del ciclo “Sistemas Microinformáticos y Redes” (en la expresión final no deben aparecer las siglas SMR):

2. Nombre de los ciclos que incluyen el módulo “Lenguajes de marcas y sistemas de gestión de información”:

```plaintext
Administración de Sistemas Informáticos en Red
Desarrollo de Aplicaciones Web
```

3. Nombre de los módulos de ciclos de Grado Superior:

```plaintext
Gestión de bases de datos
Lenguajes de marcas y sistemas de gestión de información
Implantación de aplicaciones web
```

4. Nombre de los módulos de ciclos cuyo título se aprobó en 2008:

5. Grado de los ciclos con módulos de primer curso:

### Actividad 4

Vamos a trabajar con el fichero [`universidad.xml`](/assets/img/tarea-introduccion-xpath/universidad.xml). Obtén la siguiente información:

1. Nombre de la Universidad.
2. País de la Universidad.
3. Nombres de las Carreras.
4. Años de plan de estudio de las carreras.
5. Nombres de todos los alumnos.
6. Identificadores de todas las carreras.
7. Datos de la carrera cuyo id es c01.
8. Centro en que se estudia de la carrera cuyo id es c02.
9. Nombre de las carreras que tengan subdirector.
10. Nombre de los alumnos que estén haciendo proyecto.
11. Códigos de las carreras en las que hay algún alumno matriculado.
12. Apellidos y Nombre de los alumnos con beca.
13. Nombre de las asignaturas de la titulación c04.
14. Nombre de las asignaturas de segundo trimestre.
15. Nombre de las asignaturas que no tienen 4 créditos teóricos.
16. Código de la carrera que estudia el último alumno.
17. Código de las asignaturas que estudian mujeres.
18. Nombre de los alumnos que matriculados en la asignatura a02.
19. Códigos de las carreras que estudian los alumnos matriculados en alguna asignatura.
20. Apellidos de todos los hombres.
21. Nombre de la carrera que estudia Víctor Manuel.
22. Nombre de las asignaturas que estudia Luisa.
23. Primer apellido de los alumnos matriculados en Ingeniería del Software.
24. Nombre de las carreras que estudian los alumnos matriculados en la asignatura Tecnología de los Alimentos.
25. Nombre de los alumnos matriculados en carreras que no tienen subdirector.
26. Nombre de las alumnos matriculados en asignaturas con 0 créditos prácticos y que estudien la carrera de I.T. Informática .
27. Nombre de los alumnos que estudian carreras cuyos planes son anteriores a 2002.

<details class="card mb-2">
  <summary class="card-header">Soluciones</summary>
  <div class="card-body" markdown="1">

1. `/universidad/nombre`
2. `/universidad/pais`
3. `//carrera/nombre`
4. `//carrera/plan`
5. `//alumno/nombre`
6. `//carrera/@id`
7. `//carrera[@id='c01']`
8. `//carrera[@id='c02']/centro`
9. `//subdirector/../nombre`
10. `//alumno//proyecto/../../nombre`
11. `//alumno//carrera/@codigo`
12. `//alumno[@beca]/nombre | //alumno[@beca]/apellido1 | //alumno[@beca]/apellido2`
13. `//asignatura[@titulacion='c04']/nombre`
14. `//asignatura[trimestre=2]/nombre`
15. `//asignatura[not(creditos_teoricos=4)]/nombre`
16. `//alumno[last()]//carrera/@codigo`
17. `//alumno[sexo='Mujer']//asignatura/@codigo`
18. `//alumno[.//asignatura/@codigo='a02']/nombre`
19. `//alumno//asignatura/../../carrera/@codigo`
20. `//alumno[sexo='Hombre']/apellido1 | //alumno[sexo='Hombre']/apellido2`
21. `//carrera[@id=//alumno[nombre='Víctor Manuel']//carrera/@codigo]/nombre`
22. `//asignatura[@id=//alumno[nombre='Luisa']//asignatura/@codigo]/nombre`
23. `//alumno[.//asignatura/@codigo=//asignatura[nombre='Ingeniería del Software']/@id]/apellido1`
24. `//carrera[@id=//alumno[.//asignatura[@codigo=//asignatura[nombre='Tecnología de los Alimentos']/@id]]//carrera/@codigo]/nombre`
25. `//alumno[not (.//carrera/@codigo=//carrera[subdirector]/@codigo)]/nombre`
26. `//alumno[.//asignatura/@codigo=//asignatura[creditos_practicos=0]/@id][.//carrera/@codigo=//carrera[nombre='I.T. Informática']/@id]/nombre`
27. `//alumno[.//carrera/@codigo=//carrera[not(plan>=2002)]/@id]/nombre`

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Bibliografía

- <https://fp.josedomingo.org/lmgs/u04/ejercicio_xpath.html>
- <https://www.mclibre.org/consultar/xml/ejercicios/xpath.html>

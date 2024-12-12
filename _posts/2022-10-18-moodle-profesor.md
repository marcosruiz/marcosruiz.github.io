---
title: "Guía del profesor virtual"
date: 2022-10-18 9:00:00 +0100
categories: [General]
tags: [gift, moodle, aeducar, profesor, adistanciafp, fpvirtual, fpvirtualaragon, adistanciafparagon]
img_path: /assets/img/moodle-profesor/
---

{:.section}
## Introducción

Este artículo busca ser una guía para recordar todo lo que se puede hacer con:

- Moodle
- Autocrat
- Visual Studio Code

Para preparar materiales educativos.

{:.section}
## Tareas con entregas grupales

Las entregas grupales tienen varias ventajas:

- La carga de corrección del docente es menor.
- Fomenta el trabajo colaborativo.
- Los trabajos resultantes suelen ser de mayor calidad.

Para realizar este tipo de entregas son necesarias dos acciones:

1. Crear grupos
2. Crear tarea

{:.subsection}
### Crear grupos

1. Entramos en el curso donde queremos crear los grupos.
2. En la barra lateral izquierda, hacemos click en "Participantes".
3. A la derecha, tenemos el engranaje, hacemos click en él y seleccionamos la opción "Grupos" del desplegable.
4. Ahora podemos crear grupos de dos maneras:
   1. **Manualmente**: Creamos los grupos uno a uno.
   2. **Automáticamente** (recomendada): Creamos todos los grupos de golpe. Podemos hacer que sean grupos al azar, alfabéticamente o podemos crearlos vacíos para añadirlos manualmente más adelante.

![Creación de grupos vacíos automáticamente en Moodle](crearGruposAutomaticamente.png){: w="250" }
_Creación de grupos vacíos automáticamente en Moodle_

{:.subsection}
### Crear tarea

En la opción "Editar ajustes" de una Tarea vamos a la sección "Configuración de entrega por grupo" y ponemos los ajustes que aparecen en la siguiente Figura.

![Configuración de entrega por grupo en Moodle](configuracionEntregaPorGrupo.png){: w="250" }
_Configuración de entrega por grupo en Moodle_

{:.section}
## Cuestionarios GIFT

{:.subsection}
### Caracteres especiales que hay que escapar

```plaintext
~ = # { } :
```

Estos carácteres escribiendo el `\` delante de ellos.

{:.subsection}
### Plantillas

A continuación se ponen plantillas para copiar y pegar de forma rápida.

> Todo lo que está entre los símbolos `::` y `::` es el nombre corto de la pregunta. En mi caso uso los códigos con el siguiente formato `TXX XX`. Por ejemplo: `T01 02`, sería la pregunta 2 del primer test del curso.
{:.prompt-info}

#### Pregunta de una opción

Sin restar por respuesta errónea:

```plaintext
::TXX XX::[markdown]Pregunta{
    =Respuesta
    ~Respuesta
    ~Respuesta
    ~Respuesta
}
```

Restando el 50% del valor de la pregunta por respuesta errónea:

```plaintext
::TXX XX::[markdown]Pregunta{
    =Respuesta
    ~%-50%Respuesta
    ~%-50%Respuesta
    ~%-50%Respuesta
}
```

#### Pregunta de opción múltiple

Dos respuestas correctas y dos incorrectas:

```plaintext
::TXX XX::[markdown]Pregunta{
    ~%50%Respuesta
    ~%50%Respuesta
    ~%-50%Respuesta
    ~%-50%Respuesta
}
```

Tres respuestas correctas y una incorrecta:

```plaintext
::TXX XX::[markdown]Pregunta{
    ~%33.33333%Respuesta
    ~%33.33333%Respuesta
    ~%33.33333%Respuesta
    ~%-100%Respuesta
}
```

Cuatro respuestas correctas:

```plaintext
::TXX XX::[markdown]Pregunta{
    ~%25%Respuesta
    ~%25%Respuesta
    ~%25%Respuesta
    ~%25%Respuesta
}
```

#### Pregunta respuesta numérica

Respuesta exacta:

```plaintext
::TXX XX::[markdown]Pregunta {#5}
```

Dando un rango de error:

```plaintext
::TXX XX::[markdown]Pregunta {#5.2:0.1}
```

#### Pregunta respuesta texto

Una única respuesta correcta:

```plaintext
::TXX XX::[markdown]Pregunta {=respuesta}
```

Varias respuestas correctas:

```plaintext
::TXX XX::[markdown]Pregunta {=respuesta =respuesta2}
```

> En caso de estas respuestas siempre NO son case sensitive por lo que el alumno podrá escribir "RespUESta" y se la dará como correcta.
{:.prompt-info}

#### Pregunta de verdadero y falso

```plaintext
::TXX XX::[markdown]Pregunta {T}
```

```plaintext
::TXX XX::[markdown]Pregunta {F}
```

> No se recomienda usar este tipo de preguntas ya que si la pregunta es confusa (y nos damos cuenta tarde) no permite la opción de que "Verdadero" y "Falso" sean opciones correctas al mismo tiempo.
{:.prompt-info}

```plaintext
::TXX XX::[markdown]Pregunta {
  =Verdadero
  ~Falso
}
```

```plaintext
::TXX XX::[markdown]Pregunta {
  =Falso
  ~Verdadero
}
```

#### Pregunta de relacionar columnas

```plaintext
::TXX XX::[markdown]Pregunta {
  =Definición1 -> Término1
  =Definición2 -> Término2
  =Definición3 -> Término3
  =Definición4 -> Término4
}
```

{:.subsection}
### Autoincrementar

Es útil darle un nombre a cada pregunta para encontrarla en el banco de preguntas. En Visual Studio code se puede hacer lo siguiente para hacerlo de forma rápida:

1. Instalas la extensión Increment Selection.
1. Delante de `[markdown]`, añades al inicio de cada línea un título. Por ejemplo: `::T05 01::`.
1. Seleccionas el `01`. Haces `Ctrl+Shift+L` para seleccionar todas las preguntas.
1. Hacer `Ctrl+Alt+I` para dar un nombre único a cada pregunta.

{:.subsection}
### Añadir atajos de teclado en Visual Studio Code

En Notion podemos usar `Ctrl + e` para hacer que un texto se vea como código. En el caso de Visual Studio Code también podemos configurarlo. En mi caso uso `Ctrl + comilla inversa`. 

- Debemos tener instalada la extensión "Markdown All In One".
- File > Preferences > Keyboard Shortcuts
- Buscamos "Toggle code span".
- Hacemos doble click en la casilla correspondiente a la columna de "Keybinding".
- Presionamos el atajo de teclado al que queramos asociar dicha acción.

{:.section}
## Test para revisar

La siguiente configuración es para los test para el profesor.

![imgDescription](testRevisarEsquema.png)
_Sección "Esquema" para Test para revisar_

![imgDescription](testRevisarComportamientoPreguntas.png)
_Sección "Comportamiento de las preguntas" para Test para revisar_

![imgDescription](testRevisarOpcionesRevision.png)
_Sección "Opciones de revisión" para Test para revisar_

{:.section}
## Test alumnos distancia

La siguiente configuración es para los test de los alumnos que estudian a distancia:

![imgDescription](testEsquema.png)
_Sección "Esquema" para Test alumnos distancia_

![imgDescription](testComportamientoPreguntas.png)
_Sección "Comportamiento de las preguntas" para Test alumnos distancia_

![imgDescription](testOpcionesRevision.png)
_Sección "Opciones de revisión" para Test alumnos distancia_

{:.section}
## Configuración de tareas

{:.subsection}
### Calificación de tarea Apto/No apto

El uso del workflow permite que todos los alumnos reciban la nota al mismo tiempo.

![Sección "Calificación" de tarea Apto/No apto con workflow](calificacionTareaAptoNoApto.png){: w="250" }
_Sección "Calificación" de tarea Apto/No apto con workflow_

Cuando trabajamos con tareas de Apto/No apto debemos tener en cuenta que:

- "No hay calificación" corresponde a un 0.
- "No apta" corresponde a un 1.
- "Apta" corresponde a un 2.

{:.subsection}
### Calificación de tarea con nota

![Sección "Calificación" de tarea con nota 0 a 10 con workflow](calificacionTareaConNota.png){: w="250" }
_Sección "Calificación" de tarea con nota 0 a 10 con workflow_

{:.subsection}
### Finalización de actividad

Si queremos que la tarea esté gamificada deberemos tener la siguiente configuración en la sección "Finalización de actividad":

![Sección "Finalización de actividad" para gamificación](finalizacionActividad.png){: w="250" }
_Sección "Finalización de actividad" para gamificación_

Como resultado a esto los alumnos verán que para completar su tarea deben entregarla, debe ser corregida y debe tener una nota superior o igual a "Calificación para aprobar" de la sección "Calificación".

![Cómo ve el alumno el curso desde "Mis cursos"](porcentajeCompletoCardCurso.png){: w="250" }
_Cómo ve el alumno el curso desde "Mis cursos"_

En el caso de que estemos gamificando es recomendable que añadamos el bloque "Estado de Finaliazación" para que el alumno pueda ver cual es el estado general de sus tareas.

![Bloque "Estado de Finaliazación" dentro del curso](estadoFinalizacionBloqueCurso.png){: w="250" }
_Bloque "Estado de Finaliazación" dentro del curso_

<details class="card mb-2">
  <summary class="card-header question">¿Cómo añado el bloque "Estado de Finaliazación"?</summary>
  <div class="card-body" markdown="1">

Estando en "Modo edición" seleccionamos "Agregar bloque":

![Paso 1: Click en "Agregar bloque"](agregarBloqueEstadoFinalizacion1.png)
_Paso 1: Click en "Agregar bloque"_

Y añadimos el bloque "Estado de Finaliazación":

![Paso 2: Seleccionar "Estado de Finaliazación"](agregarBloqueEstadoFinalizacion2.png)
_Paso 2: Seleccionar "Estado de Finaliazación"_

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Libro de calificaciones 23 24

Fórmula EV1:

```plaintext
=if(AND([[ExamenEV1]]>=5;[[Tarea01]]>1;[[Tarea02]]>0;[[Tarea05]]>1;[[Tarea07]]>1;[[Tarea08]]>0); ([[ExamenEV1]]*0,7 + [[TareasObligatoriasEV1]]*0,2 + [[TestsEV1]]*0,1+[[TareasVoluntariasEV1]]*0,1); min(4,99;[[ExamenEV1]]*0,7 + [[TareasObligatoriasEV1]]*0,2 + [[TestsEV1]]*0,1))
```

Donde:

- Las tareas Tarea01 y Tarea08 son tareas obligatorias con nota de 0 a 10 (ambos incluido).
- Las tareas Tarea02, Tarea05 y Tarea07 son tareas obligatorias de apto/no apto. En este caso:
  - Sin calificar equivale a 0.
  - No apto equivale a 1.
  - Apto equivale a 2.

Fórmula SIGAD EV1:

```plaintext
=if([[EV1]]>=5; round([[EV1]];0); floor([[EV1]]))
```

La fórmula de la EV2 es similar a la de la EV1:

```plaintext
=if(AND([[ExamenEV2]]>=5;[[Tarea09]]>0;[[Tarea10]]>0;[[Tarea11]]>1;[[Tarea12]]>0); ([[ExamenEV2]]*0,7 + [[TareasObligatoriasEV2]]*0,2 + [[TestsEV2]]*0,1); min(4,99;[[ExamenEV2]]*0,7 + [[TareasObligatoriasEV2]]*0,2 + [[TestsEV2]]*0,1))
```

Fórmula SIGAD EV2:

```plaintext
=if([[EV2]]>=5; round([[EV2]];0); floor([[EV2]]))
```

La fórmula de la nota final será:

```plaintext
=if(AND([[EV1]]>5; [[EV2]]>5); average([[EV1]];[[EV2]]); min(4,99; average([[EV1]];[[EV2]])))
```

> Cuando se pongan las notas de J1 y J2 habrá que sustituir la nota del examen de cada evaluación por la nota de EV1 y EV2 como corresponda.
{:.prompt-info}

{:.section}
## Libro de calificaciones 24 25

Para los RAs:

```plaintext
=if([[ExamenesRA1]]>=5,0; 0,05*[[TestsRA1]]+0,25*[[TareasRA1]]+0,7*[[ExamenesRA1]]; [[ExamenesRA1]])
=if([[ExamenesRA2]]>=5,0; 0,05*[[TestsRA2]]+0,25*[[TareasRA2]]+0,7*[[ExamenesRA2]]; [[ExamenesRA2]])
=if([[ExamenesRA3]]>=5,0; 0,05*[[TestsRA3]]+0,25*[[TareasRA3]]+0,7*[[ExamenesRA3]]; [[ExamenesRA3]])
=if([[ExamenesRA4]]>=5,0; 0,05*[[TestsRA4]]+0,25*[[TareasRA4]]+0,7*[[ExamenesRA4]]; [[ExamenesRA4]])
=if([[ExamenesRA5]]>=5,0; 0,05*[[TestsRA5]]+0,25*[[TareasRA5]]+0,7*[[ExamenesRA5]]; [[ExamenesRA5]])
=if([[ExamenesRA6]]>=5,0; 0,05*[[TestsRA6]]+0,25*[[TareasRA6]]+0,7*[[ExamenesRA6]]; [[ExamenesRA6]])
=if([[ExamenesRA7]]>=5,0; 0,05*[[TestsRA7]]+0,25*[[TareasRA7]]+0,7*[[ExamenesRA7]]; [[ExamenesRA7]])
```

Para la nota final:

```plaintext
=if([[RA1]]>=5.0 AND [[RA2]]>=5.0 AND [[RA3]]>=5.0 AND [[RA4]]>=5.0 AND [[RA5]]>=5.0 AND [[RA6]]>=5.0 AND [[RA7]]>=5.0; average([[RA1]]; [[RA2]]; [[RA3]]; [[RA4]]; [[RA5]]; [[RA6]]; [[RA7]]); min(4; average([[RA1]]; [[RA2]]; [[RA3]]; [[RA4]]; [[RA5]]; [[RA6]]; [[RA7]])))
```

## Exportación e importación de cuestionarios GIFT

La recomendación es preparar los test bien antes de abrirlos al alumnado. Para ello debemos realizar los siguientes pasos:

1. Exportar preguntas.
1. Editar preguntas exportadas.
1. Borrar preguntas de Moodle.
1. Importar preguntas.

### Exportar preguntas

Para exportar preguntas hay que seguir los siguientes pasos:

1. Ir al banco de preguntas.
1. En el desplegable superior, seleccionar "Exportar".
1. Seleccionar "Formato GIFT".
1. Seleccionar categoría deseada.
1. Seleccionar "Exportar preguntas a un archivo".
1. Seleccionar categoría a exportar.

### Editar preguntas exportadas

Una vez exportado podemos abrir el documento con cualquier bloc de notas. Yo uso Visual Studio Code, pero para profesores que no sean de informática recomiendo Sublime Text o Notepad++.

> Recuerda que aunque en el documento exportado cada pregunta esté precedida de un comentario con su ID ( por ejemplo, `// question: 277277 `) esto no tiene efecto alguno en la importación de estas preguntas. Es decir, si exportamos, actualizamos algunas preguntas y reimportamos las preguntas aparecerán duplicadas en lugar de actualizadas.
{:.prompt-warning}

### Borrar (cambiar de categoría) preguntas de Moodle

Aunque lo que queremos e borrar preguntas antiguas, esto genera ciertos el problema de que las preguntas eliminadas también se exportan por lo que **es mejor cambiar las preguntas de categoría**. A estas categorías y las llamo `OLD - <nombre de la categoría original>`.

Por lo tanto, lo primero que debemos hacer es cambiar de categoría las preguntas viejas de la siguiente manera:

1. Ir al banco de preguntas.
1. Seleccionar todas las preguntas.
1. Seleccionar "Con seleccionadas" y "Mover a...".
1. Seleccionamos una categoría cajón desastre. En mi caso "OLD - Test 05".

### Importar preguntas

1. Ir al banco de preguntas.
1. En el desplegable superior, seleccionar "Importar".
1. Seleccionar "Formato GIFT".
1. En "General" seleccionamos la "Categoría a donde importar". En mi caso "Test 05".
1. Seleccionamos el archivo.
1. Hacemos click en "Importar".
1. Comprobamos que el número de preguntas es el que tiene que ser y hacemos click en "Continuar".

> Recuerda que quizás sea necesario actualizar el cuestionario que use las preguntas de la categoría que has actualizado.
{:.prompt-info}

## AutoCrat

```plaintext
Job name: Corrección Ex. EV2
Template: LMSGI 23 24 - Plantilla Corrección Examen EV2
File Name: Ex. EV2 <<APELLIDOS>> <<NOMBRE>>
File Type: PDF
Output: Multiple documents
Run on form trigger: No
Run on time trigger: No
Send emails and Share:
To: <<EMAIL>>
Subject: Nota LMSGI Examen EV2
Body: Ya tienes la nota en la plataforma educativa pero te adjunto tu nota desglosada.
Users can re share: false
```

## Bibliografía

- <https://docs.moodle.org/all/es/Formato_GIFT#Caracteres_especiales_.7E_.3D_.23_.7B_.7D>
- <https://docs.moodle.org/all/es/C%C3%A1lculos_de_calificaci%C3%B3n>

---
title: "Uso de Moodle como profesor"
date: 2022-10-18 9:00:00 +0100
categories: [General]
tags: [gift, moodle, aeducar]
img_path: /assets/img/moodle-profesor/
---

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

{:.subsection}
### Plantillas

A continuación se ponen plantillas para copiar y pegar de forma rápida

#### Pregunta de una opción

Sin restar por respuesta errónea:

```plaintext
[markdown]Pregunta{
    =Respuesta
    ~Respuesta
    ~Respuesta
    ~Respuesta
}
```

Restando el 50% del valor de la pregunta por respuesta errónea:

```plaintext
[markdown]Pregunta{
    =Respuesta
    ~%-50%Respuesta
    ~%-50%Respuesta
    ~%-50%Respuesta
}
```

#### Pregunta de opción múltiple

Dos respuestas correctas y dos incorrectas:

```plaintext
[markdown]Pregunta{
    ~%50%Respuesta
    ~%50%Respuesta
    ~%-50%Respuesta
    ~%-50%Respuesta
}
```

Tres respuestas correctas y una incorrecta:

```plaintext
[markdown]Pregunta{
    ~%33.33333%Respuesta
    ~%33.33333%Respuesta
    ~%33.33333%Respuesta
    ~%-100%Respuesta
}
```

Cuatro respuestas correctas:

```plaintext
[markdown]Pregunta{
    ~%25%Respuesta
    ~%25%Respuesta
    ~%25%Respuesta
    ~%25%Respuesta
}
```

#### Pregunta respuesta numérica

Respuesta exacta:

```plaintext
[markdown]Pregunta {#5}
```

Dando un rango de error:

```plaintext
[markdown]Pregunta {#5.2:0.1}
```

#### Pregunta respuesta texto

Una única respuesta correcta:

```plaintext
[markdown]Pregunta {=respuesta}
```

Varias respuestas correctas:

```plaintext
[markdown]Pregunta {=respuesta =respuesta2}
```

> En caso de estas respuestas siempre NO son case sensitive por lo que el alumno podrá escribir "RespUESta" y se la dará como correcta.
{:.prompt-info}

#### Pregunta de verdadero y falso

```plaintext
[markdown]Pregunta {T}
```

> No se recomienda usar este tipo de preguntas ya que si la pregunta es confusa (y nos damos cuenta tarde) no permite la opción de que "Verdadero" y "Falso" sean opciones correctas al mismo tiempo.
{:.prompt-info}

{:.subsection}
### Autoincrementar

Es útil darle un nombre a cada pregunta para encontrarla en el banco de preguntas. En Visual Studio code se puede hacer lo siguiente para hacerlo de forma rápida:

1. Instalas la extensión Increment Selection.
1. Delante de `[markdown]`, añades al inicio de cada línea un título. Por ejemplo: `::T05 01::`.
1. Seleccionas el `01`. Haces `Ctrl+Shift+L` para seleccionar todas las preguntas.
1. Hacer `Ctrl+Alt+I` para dar un nombre único a cada pregunta.

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
## Libro de calificaciones

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

La fórmula de la EV2 sería similar a la de la EV1:

```plaintext
=if(AND([[ExamenEV2]]>=5;[[Tarea09]]>0;[[Tarea10]]>0;[[Tarea11]]>0;[[Tarea12]]>0;[[Tarea13]]>0); ([[ExamenEV1]]*0,7 + [[TareasObligatoriasEV2]]*0,2 + [[TestsEV2]]*0,1); min(4,99;[[ExamenEV2]]*0,7 + [[TareasObligatoriasEV2]]*0,2 + [[TestsEV2]]*0,1))
```

Fórmula SIGAD EV2:

```plaintext
=if([[EV2]]>=5; round([[EV2]];0); floor([[EV2]]))
```

La fórmula de la nota final será:

```plaintext
=if(AND([[EV1]]>=5; [[EV2]]>=5); average([[EV1]];[[EV2]]); min([[EV1]];[[EV2]]))
```

## Bibliografía

- <https://docs.moodle.org/all/es/Formato_GIFT#Caracteres_especiales_.7E_.3D_.23_.7B_.7D>
- <https://docs.moodle.org/all/es/C%C3%A1lculos_de_calificaci%C3%B3n>

---
title: "Guía del profesor virtual"
date: 2022-10-18 9:00:00 +0100
categories: [General]
tags: [gift, moodle, aeducar, profesor, adistanciafp, fpvirtual, fpvirtualaragon, adistanciafparagon, guia, virtual]
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

Lee el artículo [Tutorial: Cuestionarios GIFT en Moodle](/posts/tutorial-cuestionarios-gift-moodle).

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

> Se recomienda usar categorías a la hora de configurar el calificador para poder tener las fórmulas preparadas antes de tener todas las tareas y cuestionarios preparados. Para la creación rápida de categorías es muy util utilizar `Ctrl + Click izquierdo` ya que así podemos crear varias categorías sin que se refresque la página.
{:.prompt-tip}

Para los RAs:

```plaintext
=if([[ExamenesRA1]]>=5; 0,05*[[TestsRA1]]+0,25*[[TareasRA1]]+0,7*[[ExamenesRA1]]; [[ExamenesRA1]])
=if([[ExamenesRA2]]>=5; 0,05*[[TestsRA2]]+0,25*[[TareasRA2]]+0,7*[[ExamenesRA2]]; [[ExamenesRA2]])
=if([[ExamenesRA3]]>=5; 0,05*[[TestsRA3]]+0,25*[[TareasRA3]]+0,7*[[ExamenesRA3]]; [[ExamenesRA3]])
=if([[ExamenesRA4]]>=5; 0,05*[[TestsRA4]]+0,25*[[TareasRA4]]+0,7*[[ExamenesRA4]]; [[ExamenesRA4]])
=if([[ExamenesRA5]]>=5; 0,05*[[TestsRA5]]+0,25*[[TareasRA5]]+0,7*[[ExamenesRA5]]; [[ExamenesRA5]])
=if([[ExamenesRA6]]>=5; 0,05*[[TestsRA6]]+0,25*[[TareasRA6]]+0,7*[[ExamenesRA6]]; [[ExamenesRA6]])
=if([[ExamenesRA7]]>=5; 0,05*[[TestsRA7]]+0,25*[[TareasRA7]]+0,7*[[ExamenesRA7]]; [[ExamenesRA7]])
```

Para la nota del 1º cuatrimestre si cada cuatrimestre tiene un peso diferente:

```plaintext
=round(if(and([[RA1]]>=5; [[RA2]]>=5; [[RA3]]>=5; [[RA4]]>=5; [[RA5]]>=5); [[RA1]] * 0,10 + [[RA2]] * 0,16 + [[RA3]] * 0,22 +  [[RA4]] * 0,22 + [[RA5]] * 0,30; min(4; [[RA1]] * 0,10 + [[RA2]] * 0,16 + [[RA3]] * 0,22 +  [[RA4]] * 0,22 + [[RA5]] * 0,30)))
```

Para la nota del 1º cuatrimestre si cada cuatrimestre tiene el mismo peso:

```plaintext
=if(and([[RA1]]>=5; [[RA2]]>=5; [[RA3]]>=5; [[RA4]]>=5; [[RA5]]>=5; [[RA6]]>=5; [[RA7]]>=5); average([[RA1]]; [[RA2]]; [[RA3]]; [[RA4]]; [[RA5]]; [[RA6]]; [[RA7]]); min(4; average([[RA1]]; [[RA2]]; [[RA3]]; [[RA4]]; [[RA5]]; [[RA6]]; [[RA7]])))
```

Para la nota final:

```plaintext
=if(and([[RA1]]>=5; [[RA2]]>=5; [[RA3]]>=5; [[RA4]]>=5; [[RA5]]>=5; [[RA6]]>=5; [[RA7]]>=5); [[RA1]] * 0,6 + [[RA2]] * 0,10 + [[RA3]] * 0,13 +  [[RA4]] * 0,13 + [[RA5]] * 0,18 + [[RA6]] * 0,17 + [[RA7]] * 0,23; min(4; [[RA1]] * 0,6 + [[RA2]] * 0,10 + [[RA3]] * 0,13 +  [[RA4]] * 0,13 + [[RA5]] * 0,18 + [[RA6]] * 0,17 + [[RA7]] * 0,23))
```

> Si nos confundimos a la hora de dar un ID a una categoría, tarea o cuestionario se puede cambiar desde la propia configuración de la categoría, tarea o cuestionario.
{:.prompt-tip}

{:.section}
## Exportación e importación de cuestionarios GIFT

La recomendación es preparar los test bien antes de abrirlos al alumnado. Para ello debemos realizar los siguientes pasos:

1. Exportar preguntas.
1. Editar preguntas exportadas.
1. Borrar preguntas de Moodle.
1. Importar preguntas.

{:.subsection}
### Exportar preguntas

Para exportar preguntas hay que seguir los siguientes pasos:

1. Ir al banco de preguntas.
1. En el desplegable superior, seleccionar "Exportar".
1. Seleccionar "Formato GIFT".
1. Seleccionar categoría deseada.
1. Seleccionar "Exportar preguntas a un archivo".
1. Seleccionar categoría a exportar.

{:.subsection}
### Editar preguntas exportadas

Una vez exportado podemos abrir el documento con cualquier bloc de notas. Yo uso Visual Studio Code, pero para profesores que no sean de informática recomiendo Sublime Text o Notepad++.

> Recuerda que aunque en el documento exportado cada pregunta esté precedida de un comentario con su ID ( por ejemplo, `// question: 277277`) esto no tiene efecto alguno en la importación de estas preguntas. Es decir, si exportamos, actualizamos algunas preguntas y reimportamos las preguntas aparecerán duplicadas en lugar de actualizadas.
{:.prompt-warning}

{:.subsection}
### Borrar preguntas de Moodle

Aunque lo que queremos e borrar preguntas antiguas, esto genera ciertos el problema de que las preguntas eliminadas también se exportan por lo que **es mejor cambiar las preguntas de categoría**. A estas categorías y las llamo `OLD - <nombre de la categoría original>`.

Por lo tanto, lo primero que debemos hacer es cambiar de categoría las preguntas viejas de la siguiente manera:

1. Ir al banco de preguntas.
1. Seleccionar todas las preguntas.
1. Seleccionar "Con seleccionadas" y "Mover a...".
1. Seleccionamos una categoría cajón desastre. En mi caso "OLD - Test 05".

{:.subsection}
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

{:.section}
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

{:.section}
## Citas para revisión de exámenes

Si queremos preparar citas para revisar exámenes de manera individual recomiendo la plataforma de Google:

- <https://calendar.google.com/calendar/u/0/r/appointment>

Permite poner horarios personalizados y es totalmente gratuita.

También existe la opción de usar Doodle aunque me parece menos versátil:

- <https://doodle.com/es/>

{:.section}
## Autopublicar enlaces a videoconferencias

En el caso de Aragón, se usa la herramienta de Google Meet para realizar las videoconferencias y se deben sincronizar manualmente en Moodle las diferentes videoconferencias.

![Icono de sala de videoconferencia en Moodle](iconoVideoconferencia.png)
_Icono de sala de videoconferencia en Moodle_

![Últimas sesiones de sala de videoconferencia en Moodle](sesionesVideoconferencia.png)
_Últimas sesiones de sala de videoconferencia en Moodle_

![Botón para sincronizar grabaciones de la sala de videoconferencia en Moodle](sinconizarConGoogleDrive.png)
_Botón para sincronizar grabaciones de la sala de videoconferencia en Moodle_

En mi caso uso una página de Notion como Diario del profesor y para que los alumnos puedan ver que se ha explicado en cada sesión si necesidad de abrir el vídeo. Muestro un ejemplo de dos sesiones a continuación:

![Guión de sesiones de videoconferencia en Notion](guionSesionesNotion.png)
_Guión de sesiones de videoconferencia en Notion_

Considero que es util que se autopubliquen los enlaces en mi página de Notion por si se me olvida publicarlo. Es por esto que he recurrido a la herramienta [Zapier](https://zapier.com/) y he creado un ZAP por cada módulo que imparto.

De manera resumida, lo que hace la siguiente automatización es detectar cuando se añade un fichero nuevo en la carpeta de Google Drive, comprueba si este es un fichero .mp4 y si tiene el código del módulo y escribe un comentario en Notion con el enlace a dicho archivo.

A continuación se muestra la configuración de un módulo:

![Vista general del ZAP](zapier01.png)
_Vista general del ZAP_

![Paso 1.1: Detección de nuevo fichero](zapier02.png)
_Paso 1.1: Detección de nuevo fichero_

![Paso 1.1: Detección de nuevo fichero](zapier03.png)
_Paso 1.1: Detección de nuevo fichero_

![Paso 2: Filtro](zapier04.png)
_Paso 2: Filtro_

![Paso 3.1: Publicación de comentario en Notion](zapier05.png)
_Paso 3.1: Publicación de comentario en Notion_

![Paso 3.2: Publicación de comentario en Notion](zapier06.png)
_Paso 3.2: Publicación de comentario en Notion_

> En lugar de Notion puedes elegir publicar el enlace, por ejemplo, en un documento de Google Docs.
{:.prompt-info}

## Bibliografía

- <https://docs.moodle.org/all/es/Formato_GIFT#Caracteres_especiales_.7E_.3D_.23_.7B_.7D>
- <https://docs.moodle.org/all/es/C%C3%A1lculos_de_calificaci%C3%B3n>

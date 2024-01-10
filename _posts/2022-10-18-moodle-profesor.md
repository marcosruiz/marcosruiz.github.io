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

![Creación de grupos vacíos automáticamente en Moodle](crearGruposAutomaticamente.png)
_Creación de grupos vacíos automáticamente en Moodle_

{:.subsection}
### Crear tarea

En la opción "Editar ajustes" de una Tarea vamos a la sección "Configuración de entrega por grupo" y ponemos los ajustes que aparecen en la siguiente Figura.

![Configuración de entrega por grupo en Moodle](configuracionEntregaPorGrupo.png)
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

```plaintext
[markdown]Pregunta{
    =Respuesta
    ~Respuesta
    ~Respuesta
    ~Respuesta
}
```

#### Pregunta de opción múltiple

```plaintext
[markdown]Pregunta{
    ~%50%Respuesta
    ~%50%Respuesta
    ~%-50%Respuesta
    ~%-50%Respuesta
}
```

#### Pregunta respuesta numérica

```plaintext
[markdown]Pregunta {#5}
```

#### Pregunta respuesta texto

```plaintext
[markdown]Pregunta {=respuesta}
```

```plaintext
[markdown]Pregunta {=respuesta =respuesta2}
```

#### Pregunta de verdadero y falso

```plaintext
[markdown]Pregunta {T}
```

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

El uso del workflow permite que todos los alumnos reciban la nota al mismo tiempo.

![imgDescription](calificacion.png)
_Sección "Calificación" con workflow_

## Bibliografía

- [Formato GIFT](https://docs.moodle.org/all/es/Formato_GIFT#Caracteres_especiales_.7E_.3D_.23_.7B_.7D)
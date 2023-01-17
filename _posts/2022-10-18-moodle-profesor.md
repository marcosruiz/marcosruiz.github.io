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
   2. **Automaticamente** (recomendada): Creamos todos los grupos de golpe. Podemos hacer que sean grupos al azar, alfabéticamente o podemos crearlos vacíos para añadirlos manualmente más adelante.

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
### Carácteres especiales que hay que escapar

```
~ = # { } :
```

{:.subsection}
### Plantillas

A continuación se ponen plantillas para copiar y pegar de forma rápida

#### Pregunta de una opción

```
[markdown]Pregunta{
    =Respuesta
    ~Respuesta
    ~Respuesta
    ~Respuesta
}
```

#### Pregunta de opción múltiple

```
[markdown]Pregunta{
    ~%50%Respuesta
    ~%50%Respuesta
    ~%-50%Respuesta
    ~%-50%Respuesta
}
```

#### Pregunta respuesta numérica

```
[markdown]Pregunta {#5}
```

#### Pregunta respuesta texto

```
[markdown]Pregunta {=respuesta}
```

```
[markdown]Pregunta {=respuesta =respuesta2}
```

#### Pregunta de verdadero y falso

```
[markdown]Pregunta {T}
```

## Bibliografía

- [Formato GIFT](https://docs.moodle.org/all/es/Formato_GIFT#Caracteres_especiales_.7E_.3D_.23_.7B_.7D)
---
title: "Tarea: Introducción a XML"
date: 2023-09-07 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Multiplataforma, Lenguajes de Marcas y Sistemas de Gestión de Información]
tags: [desarrollo de aplicaciones multiplataforma, lenguajes de marcas y sistemas de gestión de información, administración de sistemas informáticos de red, desarrollo de aplicaciones web]
img_path: /assets/img/tarea-01-introduccion-xml/
---

## Entrega y presentación

Una vez realizada la tarea elaborarás un único documento donde figuren las respuestas correspondientes. El documento tiene que estar en un formato editable (por ejemplo, fichero de LibreOffice o Word, pero no en PDF).  El envío se realizará a través de la plataforma de la forma establecida para ello, y el archivo se nombrará siguiendo las siguientes pautas:

`<apellido1>_<apellido2>_<nombre>_<SIGxx>_Tarea.<extensión>`

Asegúrate que el nombre no contenga la letra ñ, tildes ni caracteres especiales extraños. Así por ejemplo la alumna Begoña Sánchez Mañas para la primera unidad del MP de LMSGI, debería nombrar esta tarea como...

`sanchez_manas_begona_LMSGI01_Tarea.pdf`

## Calificación

La tarea se calificará como apto o no apto.

## Actividades

### Actividad 1

Indica por qué  los siguientes ejemplos XML son incorrectos.

#### a)

```xml
<elemento>Elemento 1</elemento>
<elemento>Elemento 2</elemento>
```

#### b)

```xml
<elemento>Coche</ELEMENTO>
```

#### c)

```xml
<negrita><italica>Texto XML</negrita></italica>
#### d)

```xml
<rango>1 < 5 & 11 > 7</rango>
```

#### e)

```xml
<XMLfichero>Marcas.xml</XMLfichero>
```

#### f)

```xml
<![CDATA[ <[[aa]]>]]>
```

#### g)

```xml
<user@uo>Pedro@Empleados</user@guo>
```

#### h)

```xml
<texto>El titular de hoy se basa en esta <subrayado>noticia<subrayado></texto>
```

> Tiempo aproximado de resolución: 15 minutos.
{:.prompt-info}

### Actividad 2

Diseñar un documento válido en XML que permita estructurar la información de una agenda de teléfonos, suponer que la información que podemos tener de una persona es su nombre y apellidos, su dirección y sus teléfonos, que pueden ser el teléfono de casa, el móvil y el teléfono del trabajo

> Tiempo aproximado de resolución: 45 minutos.
{:.prompt-info}

### Actividad 3

Diseñar un documento válido en XML que permita estructurar la información de las recetas de cocina de un restaurante y aplicarlo a la siguiente receta de cocina. Hay que hacerlo de modo que un sistema informático pueda realizar búsquedas por ingredientes, cantidad de comensales o nombre de la receta

Sopa de cebolla (4 personas).

Ingredientes:

- 1 Kg. de cebollas.
- 2 l. de caldo de carne.
- 100 gr. mantequilla.
- 1 cucharada de harina.
- 100 gr. de queso emmental suizo o gruyére rallado.
- Pan tostado en rebanadas.
- Tomillo.
- 1 hoja de laurel.
- Pimienta.

Proceso:

- Pelar y partir las cebollas en rodajas finas.
- Rehogarlas con la mantequilla, sal y pimienta a fuego lento hasta que estén transparentes sin dorarse.
- Añadir la harina sin dejar de remover.
- Ponerlo en una cazuela con el caldo, el tomillo y el laurel.
- Dejar cocer a fuego lento durante unos 15 minutos.
- Poner las rebanadas de pan encima, espolvorear el queso y gratinar al horno.

> Tiempo aproximado de resolución: 1,5 h.
{:.prompt-info}

### Actividad 4

Diseñar un documento XML válido que permita estructurar la información para permitir su gestión informática de los alumnos de un modulo del ciclo formativo DAM. Aplicarlo al módulo de Lenguajes de Marcas y Sistemas de Gestión de Información sabiendo que tiene asignadas 4 horas semanales y es de carácter obligatorio. El modulo se imparte entre el 15 de septiembre de 2010 y el 30 de junio de 2011. Hay matriculados dos alumnos:

- Ana Fernández Gutiérrez con nif 16965696L teléfono 789654321 email <ana.fdezgtrrez@hotmail.com>, su dirección es C/ El Percebe, 13 de Santander CP 39302 No hay información sobre las faltas de asistencia o sus notas hasta el momento.
- Pepito Grillo con nif 98765432H teléfono 656566555 email <yhyh@yahoo.com>, su dirección es Avd. El Pez, 5 de Suances CP 39401. Su nota es "apto" y no tiene faltas de asistencia

> Tiempo de resolución aproximado: 1,5 h.
{:.prompt-info}

---
title: "Tarea obligatoria: Comunicación asíncrona"
date: 2025-02-15 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [desarrollo de aplicaciones web, daw, desarrollo web en entorno cliente, dwec, practica, tarea, javascript]
img_path: /assets/img/tarea-comunicacion-asincrona/
---

## Información sobre la tarea

La entrega será en formato ZIP con 2 vídeos en formato MP4. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

Ejemplo de entrega si mi usuario es `mruizg`:

```plaintext
mruizg_t07.zip
├───mruizg_a01.mp4
└───mruizg_a04.mp4
```

La tarea se calificará con una nota de APTO (10) o NO APTO (0).

Duración actividades obligatorias: 10 horas.

RA7. Desarrolla aplicaciones web dinámicas, reconociendo y aplicando mecanismos de comunicación asíncrona entre cliente y servidor.

## Actividades

Realiza las siguientes actividades:

{:.activity}
### Llamadas asíncronas

Existen muchas APIs públicas como son:

- [The Rick and Morty API](https://rickandmortyapi.com/)
- [PokéAPI](https://pokeapi.co/)
- [AEMET OpenData](https://opendata.aemet.es/dist/index.html)
- [API de Marvel](https://developer.marvel.com/)
- [COVID Tracking](https://covidtracking.com/data)
- [OpenWeather APIs](https://openweathermap.org/api)

> Si quieres utilizar una API diferente deberá ser aceptada por el profesor.
{:.prompt-info}

Desarrolla una web SPA que haga uso de peticiones AJAX con la que se puedan hacer consultas a una de las APIs anteriores. Las consultas deben ser personalizables por el usuario de manera interactiva. Por ejemplo a través de filtros o un buscador.

#### Prepara un vídeo

Prepara un vídeo del tiempo que consideres necesario (pero intenta que sea lo más breve posible) que cumpla con los siguientes requisitos:

1. Las explicaciones que des deben ser CON TU VOZ.
1. Explica brevemente que ventajas tiene utilizar mecanismos de comunicación asíncrona entre cliente y servidor web.
1. Muestra el funcionamiento de la web. La web debe actualizarse de manera dinámica, es decir, sin necesidad de actualizar.
1. Muestra y explica el código que consideres relevante de tu aplicación. No te dejes la llamada a la API y como transformas y muestras los datos en la interfaz web.
1. Muestra y explica como has encadenado peticiones asíncronas. Si no has necesitado usarlas explica un caso donde necesitarías hacerlo y cómo lo harías.
1. Indica en que navegadores has probado tu aplicación web.

{:.activity}
### (Voluntaria) Tutorial Vue

Conoce las principales características que proporciona Vue a través del [tutorial oficial de Vue](https://vuejs.org/tutorial/#step-1). He preparado el artículo [Tutorial: Vue](/posts/tutorial-vue) donde he traducido todo el tutorial con DeepL por si tienes dificultades con el inglés.

{:.activity}
### (Voluntaria) Lista de tareas con Vue

Haz una aplicación de tareas que cumpla con los siguientes requisitos funcionales:

1. El usuario puede crear una tarea.
1. El usuario puede borrar una tarea.
1. El usuario puede editar una tarea.
1. El usuario puede marcar una tarea como completada.

<details class="card mb-2">
  <summary class="card-header question">¿Qué es el CRUD?</summary>
  <div class="card-body" markdown="1">

**CRUD** es un acrónimo que representa las **cuatro operaciones básicas** que se pueden realizar sobre datos en una aplicación informática, especialmente en contextos de desarrollo web y gestión de bases de datos:

| Letra | Significado en inglés | Significado en español | Acción típica                |
| ----- | --------------------- | ---------------------- | ---------------------------- |
| C     | Create                | Crear                  | Añadir nuevos datos          |
| R     | Read                  | Leer                   | Consultar o visualizar datos |
| U     | Update                | Actualizar o modificar | Cambiar datos existentes     |
| D     | Delete                | Eliminar               | Borrar datos                 |

Por ejemplo, en una aplicación que gestiona usuarios, las acciones CRUD serían:

- **Create**: Registrar un nuevo usuario.
- **Read**: Ver la lista de usuarios o los datos de un usuario específico.
- **Update**: Cambiar el nombre o correo de un usuario.
- **Delete**: Borrar un usuario del sistema.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.activity}
### Migra a Vue

Migra la Actividad 1 que has desarrollado a Vue, o si lo prefieres, migra la aplicación que desarrollaste en la [Tarea obligatoria: DOM](/posts/tarea-dom/).

#### Prepara un vídeo

Prepara un vídeo del tiempo que consideres necesario (pero intenta que sea lo más breve posible) que cumpla con los siguientes requisitos:

1. Las explicaciones que des deben ser CON TU VOZ.
1. Muestra el funcionamiento de la web.
1. Muestra y explica el código que consideres más relevante.
1. Explica que pasos has realizado para migrar todo a Vue.
1. Explica que ventajas te ha aportado hacer uso del framework Vue.

## Bibliografía


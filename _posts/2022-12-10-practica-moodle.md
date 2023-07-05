---
title: "Práctica: Moodle"
date: 2022-11-02 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, práctica]
img_path: /assets/img/practica-moodle/
---

## Objetivo y duración

El objetivo de esta práctica es aprender a instalar sistemas de gestión de aprendizaje a distancia (Moodle 4.1), describiendo la estructura del sitio y la jerarquía de directorios generada.

Duración: 10 sesiones de trabajo por parejas + 4 sesiones de presentaciones.

## Entrega y presentación

La entrega será en formato presentación grupal. Leer [Entrega y presentación de prácticas](/posts/entrega-presentacion-practicas/).

## Actividades

En las noticias sale el gobernante de Canarias diciendo "¡La ley de protección de datos debe cumplirse y a saber que puede llegar a hacer Google o el gobierno de EEUU con los datos de nuestros alumnes canaries!". Parece ser que el gobierno de Canarias va ha prohibir a todos los docentes de sus centros educativos públicos usar la GSuite, incluido Google Classroom.

Debido a esto, el gobernante de Canarias ha sacado a concurso público la instalación y mantenimiento de un sistema de gestión del aprendizaje para que sus docentes tengan una herramienta con la que comunicarse y evaluar a sus alumnos ahora que les ha prohibido usar la GSuite. Parece ser que le corre mucha prisa y hay que tener un servidor de prueba totalmente operativo junto con una presentación donde se muestre lo genial que es la solución propuesta en un plazo de 10 horas laborales.

Tu jefe ha visto que hay mucho dinero en juego y le ha parecido una buena idea presentarse al concurso público. Eso sí, todo el trabajo lo vas a hacer tú junto a otro compañero, que para eso os paga. De todos modos si ganáis el concurso tendréis que viajar tanto tu compañero como tú a Canarias a montar los servidores. "Nada mal" piensas.

Además, tu jefe ha encontrado los artículos Cómo instalar la pila [LAMP en Ubuntu 22.04 LTS](https://comoinstalar.me/como-instalar-la-pila-lamp-en-ubuntu-22-04-lts/) y [Cómo instalar Moodle en Ubuntu 22.04 LTS](https://comoinstalar.me/como-instalar-moodle-en-ubuntu-22-04-lts/). "¡Bastante crack mi jefe!" dices para tus adentros.

Así que con algo más de motivación te dispones a instalar y configurar el Moodle más bacano que pueda existir para dejar impresionados al jurado del concurso, que esperemos que no esté comprado.

A continuación se muestran las actividades que te ha dejado tu jefe para realizar. Recuerda que el concurso exige que hagas una presentación de 5 minutos para vender el producto y mostrar el sistema funcionando en tiempo real.

{:.activity}
### Crea una máquina virtual e instala Ubuntu Server 22.04 con un servidor SSH

Crea una máquina virtual e instala Ubuntu Server 22.04 con un servidor SSH para poder controlarlo desde un cliente SSH "remoto" similar a como se haría en la realidad.

{:.activity}
### Instala la pila LAMP

Para instalar Moodle primero se debe instalar la pila LAMP, es decir, Linux (Ubuntu 22.04 en nuestro caso), Apache, MySQL y PHP.

En la presentación, deberás especificar cuáles son los requerimientos en cuanto a versiones de sistemas operativos y pila LAMP para instalar Moodle 4.1.

{:.activity}
### Instala Moodle 4.1 en la máquina virtual

Instala y configura Moodle 4.1. Tu jefe cree que con la elección de esta versión tendréis más posibilidades de ganar.

{:.activity}
### Crea un curso de prueba

Crea un curso llamado `<tu usuario>` con al menos un usuario con rol de alumno y un usuario con rol de profesor. El alumno deberá tener `alumno<tu usuario>` como nombre y el profesor `profesor<tu usuario>`. Deberás hacer login con el usuario alumno y el usuario profesor y ambos deberán estar matriculados en el mismo curso, cada uno con su respectivo rol. Se valorará positivamente que añadas más de un alumno y más de un profesor.

{:.activity}
### Crea una actividad

Crea una actividad de tipo Cuestionario como profesor en tu nuevo curso con una sola pregunta tipo test. Haz que la haga al menos un alumno. Hay que asegurarse que algo tan básico funciona a la primera en la presentación.

Exporta la actividad, bórrala y vuelvela a importar.

{:.question}
¿En que formato se exportan las actividades de tipo Cuestionario?

{:.activity}
### Instala servicios

Instala, configura y demuestra que funcionan los siguientes servicios:

- Ghostscript
- Unoconv

{:.activity}
### Instala plugins de Moodle

Instala, configura y demuestra que funcionan los siguientes plugins de Moodle:

- Plugin "Interactive Content - H5P"
- Un plugin a vuestra elección. En la presentación deberás justificar su utilidad para los docentes canarios.

Haz click [aquí](https://moodle.org/plugins/) para ir a ver los plugins oficiales de Moodle.

{:.activity}
### Crea contenido H5P

Crea uno o varios contenidos H5P en tu nuevo curso, elige el que más te guste.

Exporta la actividad, bórrala y vuélvela a importar.

{:.question}
¿En que formato se exportan los contenidos H5P?

{:.activity}
### Aplica un tema

Aplica un tema a la instalación de Moodle para que parezca que no es como todos los demás.

Haz click [aquí](https://moodle.org/plugins/) para ir a ver los plugins oficiales de Moodle o puedes añadir tu propio CSS.

{:.activity}
### Crea un foro

Habilita un foro donde solo pueda publicar el profesor y los alumnos no puedan publicar pero si puedan comentar en el foro. Hay que asegurarse que algo tan básico le funciona a la primera en la presentación.

{:.activity}
### Aumenta la seguridad

Haz que las contraseñas de los usuarios cumplan con los siguientes requisitos:

- Al menos dos mayúsculas
- Al menos dos minúsculas
- Al menos un caracter no alfanumérico
- Al menos 10 carácteres en total

Y demuestra que funciona.

{:.activity}
### Realiza una copia de seguridad del curso

Realiza una copia de seguridad del curso de prueba, modifica el curso que has creado y restáuralo.

{:.activity}
### Configura tu perfil

Modifica tu perfil de usuario con al menos una foto y una descripción creativa.

{:.activity}
### Genera informes

Genera informes de acceso y utilización del sitio para impresionar al jurado de tu dominio de esta plataforma.

{:.activity}
### (Opcional) Configura el cajón de bloques

Como profesor, configura el cajón de bloques (barra lateral derecha) del curso para que contenga un bloque que consideres que pueden ser útil para el profesorado o para el alumnado canario.

{:.activity}
### (Opcional) Instala Moodle 4.1 con Docker

Esta actividad sustituye la Actividad “Instala la pila LAMP” y “Instala Moodle 4.1 en la máquina virtual”.

Instala y configura Moodle 4.1. Tu jefe cree que con la elección de esta versión tendréis más posibilidades de ganar. Además, en tu empresa habeis empezado a usar Docker para todas las instalaciones desde hace unos 6 meses y ha resultado todo un éxito.

{:.activity}
### (Opcional) Realiza una copia de seguridad de Moodle

Realiza una copia de seguridad de todo Moodle, elimina el curso que has creado y restáuralo. Para ello puedes seguir la documentación oficial de Moodle en el siguiente enlace: [Respaldo del sitio](https://docs.moodle.org/all/es/Respaldo_del_sitio).

{:.activity}
### (Opcional) Comprueba las actualizaciones

Comprueba si hay pendientes actualizaciones de seguridad e instálalas si las hay.

{:.activity}
### (Opcional) Realiza una copia de seguridad remota

Realiza una copia de seguridad remota y periódica de todo Moodle. Para ello puedes usar herramientas como:

- Bacula
- Rsync
- Filezilla
- Cron
- Scripts hechos por tí

{:.activity}
### Prepara y envía la presentación

Prepara una presentación de 5 minutos para vender el producto y mostrar el sistema funcionando en tiempo real. El formato de la presentación es libre.

Envía la presentación en la tarea correspondiente.

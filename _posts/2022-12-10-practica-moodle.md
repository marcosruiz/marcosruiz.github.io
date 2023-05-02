---
title: "Práctica: Moodle"
date: 2022-11-02 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, práctica]
img_path: /assets/img/practica-moodle/
---

## Objetivo y duración

El objetivo de esta práctica es aprender a instalar y configurar Moodle de manera manual.

Duración: 7 h

## Resultados de aprendizaje y criterios de evaluación

RA2. Instala gestores de contenidos, identificando sus aplicaciones y configurándolos según requerimientos.

1. Se han identificado los requerimientos necesarios para instalar gestores de contenidos. ✅
1. Se han gestionado usuarios con roles diferentes. ✅
1. Se ha personalizado la interfaz del gestor de contenidos. ✅
1. Se han realizado pruebas de funcionamiento. ✅
1. Se han realizado tareas de actualización del gestor de contenidos, especialmente las de seguridad. ✅
1. Se han instalado y configurado los módulos y menús necesarios.
1. Se han activado y configurado los mecanismos de seguridad proporcionados por el propio gestor de contenidos. ✅
1. Se han habilitado foros y establecido reglas de acceso. ✅
1. Se han realizado pruebas de funcionamiento. ✅
1. Se han realizado copias de seguridad de los contenidos del gestor. ✅

## Entrega y presentación

La entrega será en formato ZIP. La práctica puede ser realizada **por parejas**. Leer [Entrega y presentación de prácticas](/posts/entrega-presentacion-practicas/).

## Actividades

Acabas de volver de tus vacaciones en Costa de Marfil donde has coincidido con Didier Drogba. No solo eso te has hecho su colega y hasta te ha invitó a pasar una tarde en su yate. Estás deseando contárselo a todos tus compañeros pero el tirano de tu jefe te ha dejado trabajo

A continuación se listan las actividades que se deben realizar.

Tienes a tu disposición mi artículo [Tutorial: Instalar Moodle en Ubuntu Server 22.04](/posts/tutorial-moodle/) que te servirá de apoyo para la realización de esta práctica.

Tras la realización de cada actividad deberás hacer una o varias capturas que demuestren que la actividad ha sido realizada satisfactoriamente por ti.

{:.activity}
### Crear máquina virtual e instalar Ubuntu Server 22.04 con un servidor SSH

Crea una máquina virtual e instala Ubuntu Server 22.04 con un servidor SSH para poder controlarlo desde un cliente SSH "remoto" similar a como se haría en la realidad.

{:.activity}
### Instalar pila LAMP

Para instalar Moodle primero se debe instalar la pila LAMP, es decir, Linux (Ubuntu 22.04 en nuestro caso), Apache, MySQL y PHP.

{:.question}
¿Cuáles son los requerimientos en cuanto a versiones de sistemas operativos y pila LAMP para instalar Moodle 4.1?

{:.activity}
### Instalar Moodle 4.1 en la máquina virtual

Instala y configura Moodle 4.1.

{:.activity}
### Crea un curso

Crea un curso con al menos un usuario con rol de alumno y un usuario con rol de profesor. El alumno deberá tener `alumno<tuUsuario>` como nombre y el profesor `profesor<tuUsuario>`. Deberás hacer login con el usuario alumno y el usuario profesor y ambos deberán estar matriculados en el mismo curso, cada uno con su respectivo rol. Se valorará positivamente que añadas más de un alumno y más de un profesor.

{:.activity}
### Crea una actividad

Crea una actividad de tipo Cuestionario como profesor en tu nuevo curso con una sola pregunta tipo test. Haz que la haga al menos un alumno.

{:.activity}
### Aplica un tema

{:.activity}
### Crea un foro

Habilita un foro donde solo pueda publicar el profesor y los alumnos no puedan publicar pero si puedan comentar en el foro.

{:.activity}
### Comprueba las actualizaciones

Comprueba si hay pendientes actualizaciones de seguridad e instálalas si las hay.

{:.activity}
### Aumenta la seguridad

Haz que las contraseñas de los usuarios cumplan con los siguientes requisitos:

- Al menos una mayúscula
- Al menos una minúscula
- Al menos un símbolo
- Al menos 8 carácteres

{:.activity}
### Realiza una copia de seguridad

Realiza una copia de seguridad, elimina el curso y restáuralo.

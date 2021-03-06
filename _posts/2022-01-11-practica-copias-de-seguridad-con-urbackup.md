---
title: "Práctica: Copias de seguridad con UrBackup"
date: 2022-01-11 12:30:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [gnu linux, comandos, terminal, bash, seguridad informática, urbackup, backup, seguridad pasiva, almacenamiento, práctica]
---

## Objetivo 

El objetivo de esta práctica es aprender a instalar y configurar copias de seguridad en red periódicas a través del software UrBackup.

Duración: - h.

## Requistos previos

Debes tener dos máquinas virtuales con Zorin OS Lite conectadas al enrutador IPCOP. Ambas maquinas virtuales deben estar en la misma red local para verse entre ellas y deben tener acceso a Internet a través del enrutador IPCOP.

## Actividades

A continuación se listan las actividades que se deben realizar. 
Debes documentar cada paso que realices para llevar a cabo está instalación y configuración de cada actividad.
Debes realizar capturas de pantalla que demuestren la autoría de la práctica, para ello debes usar un usuario que tenga el nombre de tu correo elecrónico (sin el "@chabacier.es").

{:.activity}
### Instalar servidor UrBackup

Utilizando la documentación de [Administration Manual for UrBackup Server 2.4.x](https://www.urbackup.org/administration_manual.html) instalar un servidor UrBackup funcional en una máquina virtual Zorin OS Lite conectada a la máquina virtual IPCOP que hace de router de la práctica anterior.

{:.activity}
### Instalar cliente UrBackup

Utilizando la documentación de [Install client on Debian or Ubuntu from sources](https://www.urbackup.org/client_debian_ubuntu_install.html) instalar el cliente de UrBackup funcional en una máquina virtual Zorin OS Lite conectada a la máquina virtual IPCOP que hace de router de la práctica anterior.
Realizar dos copias de seguridad del cliente en el servidor. La segunda copia de seguridad debe ser incremental sobre la primera. Para ello la primera copia de seguridad deberá contener un fichero llamado patata.txt que contenga la frase "hola soy una patata" y para la segunda copia este mismo fichero deberá contener "hola soy una alcachofa".

Configura que el path para realizar las copias de seguridad sea /home/\<tuUsuario\>/Documentos/ y que las copias de seguridad se hagan cada semana.

Todas las contraseñas de todos los usuarios serán "chabacier".

{:.activity}
### Rollback

Utilizando la máquina virtual con el cliente de UrBackup realizar una restauración o rollback para que e fichero patata.txt vuelva a tener la frase "hola soy una patata".

## Preguntas que debes saber contestar tras esta práctica

1. ¿Qué es una dependencia?
1. ¿Qué es un repositorio?
1. ¿Qué es UrBackup? ¿Qué tipo de arquitectura usa UrBackup?
1. ¿Qué significa backup?
1. ¿Qué es un backend?
1. ¿Qué es un daemon o demonio? 
1. ¿Qué es un servicio? ¿Es lo mismo un servicio que un programa? 
1. ¿Es lo mismo un servicio que un daemon?
1. ¿De qué tres maneras se puede instalar un programa en GNU/Linux?
1. ¿Qué clase de fichero es uno que tiene la extensión ".tar.gz"?
1. ¿Cómo se comprueba el estado de un servicio?
1. ¿Qué es un rollback?
1. ¿Qué hace la instrucción `wget`?
1. ¿UrBackup forma parte de la seguridad activa o pasiva?
1. ¿Qué diferencia hay entre un backup completo y uno incremental? ¿Para qué situación conviene cada uno?
1. ¿Qué diferencia hay entre una copia total de ficheros y una copia de imagen completa?


## Entrega y presentación

La entrega de esta práctica debe ser un documento PDF con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.pdf". Por ejemplo, en mi caso el nombre del documento PDF sería "RuizGarcía_Marcos_Práctica\<NúmeroDeLaPráctica\>.pdf".

Asegúrate de que el documento PDF cumple con los siguientes parámetros:

1. Debe contener una portada con título, nombre de la asignatura, curso, autor y fecha de realización.
2. Debe tener un índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
3. Debe tener cada página numerada.
4. Cada actividad debe estar numerada. 
5. Cada actividad debe tener el enunciado en negrita y la respuesta en texto normal.
6. Cada imagen debe tener un pie de foto la cual tenga el siguiente formato: "Figura \<número\>: \<BreveDescripciónDeLaFigura\>".
7. El documento no debe contener faltas ortográficas.
8. Los comandos y ficheros de configuración que hayas utilizado deben quedar reflejados en el PDF de la entrega en texto para que permitirte copiar y pegar el día del examen todos los comandos de una manera rápida.
9. Los comandos y documentos de configuración que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$ sudo apt install neofetch`.


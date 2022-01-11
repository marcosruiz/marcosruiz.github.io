---
title: "Práctica 5: Copias de seguridad con UrBackup"
date: 2022-01-07 16:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [gnu linux, comandos, terminal, bash, seguridad informática, urbackup, backup, seguridad pasiva, almacenamiento, práctica]
---

## Objetivo

El objetivo de esta práctica es aprender a configurar copias de seguridad en red periódicas a través del software UrBackup.

Duración: 6 h.

## Actividades

A continuación se listan las actividades que se deben realizar.

### Actividad 1

Utilizando la documentación de [Administration Manual for UrBackup Server 2.4.x](https://www.urbackup.org/administration_manual.html) instalar un servidor UrBackup funcional en una máquina virtual Zorin OS Lite conectada a la máquina virtual IPCOP que hace de router de la práctica anterior.
Debes documentar cada paso que realices (con capturas de pantalla si es necesario) para llevar a cabo está instalación y configuración.

### Actividad 2

Utilizando la documentación de [Install client on Debian or Ubuntu from sources](https://www.urbackup.org/client_debian_ubuntu_install.html) instalar el cliente de UrBackup funcional en una máquina virtual Zorin OS Lite conectada a la máquina virtual IPCOP que hace de router de la práctica anterior.
Realizar dos copias de seguridad del cliente en el servidor. La segunda copia de seguridad debe ser incremental sobre la primera. Para ello la primera copia de seguridad deberá contener un fichero llamado patata.txt que contenga la frase "hola soy una patata" y para la segunda copia este mismo fichero deberá contener "hola soy una alcachofa".
Debes documentar cada paso que realices (con capturas de pantalla si es necesario) para llevar a cabo está instalación y configuración.

### Actividad 3

Utilizando la máquina virtual con el cliente de UrBackup realizar una restauración.

### Actividad 4 (presentación)

Asegúrate de que el documento PDF cumple con los siguientes parámetros:

1. Debe contener una portada con título, nombre de la asignatura, curso, autor y fecha de realización.
2. Debe tener un Índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
3. Debe tener cada página numerada.
4. Cada actividad debe estar numerada. 
5. Cada actividad debe tener el enunciado en negrita y la respuesta en texto normal.
6. Cada imagen debe tener un pie de foto la cual tenga el siguiente formato: "Figura <número>: <BreveDescripciónDeLaFigura>".
7. El documento no debe contener faltas ortográficas.
8. Los comandos y documentos de configuración que se muestren en el documento deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$ sudo apt install neofetch`.

## Entrega 

La entrega de esta práctica debe ser un documento PDF con un nombre en el siguiente formato `<Apellidos>_<Nombre>_Práctica<NúmeroDeLaPráctica>.pdf`. Por ejemplo, en mi caso el nombre del documento PDF sería `RuizGarcía_Marcos_Práctica<NúmeroDeLaPráctica>.pdf`.
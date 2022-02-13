---
title: "Práctica: Servicio de email con Postfix"
date: 2022-02-06 19:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Servicios en Red]
tags: [gnu linux, comandos, terminal, bash, servicios en red, ssh, seguridad informática, smr, práctica]
---

## Objetivos

El objetivo de esta práctica es aprender a instalar y configurar un servidor de correo electrónico POSTFIX.

Duración: 10 horas.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica. 

- ⚠ En cada actividad debes indicar los pasos que has realizado de manera detallada y/o hacer capturas que demuestren la realización de las mismas.
- ⚠ Debes usar usuarios que contengan como nombre tu usuario de correo del centro. Por ejemplo, si mi correo es "mruizg@chabacier.es" mi usuario deberá ser "mruizg". Se hará referencia a este nombre de usuario cuando se utilice la cadena de carácteres \<tuUsuario\>.
- ⚠ Cada vez que el video use la cadena de carácteres "redesplus" deberás sustituirlo por \<tuUsuario\>.

Para la realización de las actividades deberás seguir los pasos del siguiente vídeo:

<iframe width="100%" height="315" src="https://www.youtube.com/embed/kWNyiZfTp4E" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.activity}
### Configuración del servidor DNS

Configura el servidor DNS en Zorin OS Lite.

{:.activity}
### Crear cuentas de correo

Crea varias cuantas de correo llamadas "\<tuUsuario\>Compras" y "\<tuUsuario\>Ventas" en Zorin OS Lite.

{:.activity}
### Instalación y configuración de Postfix

Instala y configura el servicio de email Postfix en tú máquina Zorin OS Lite.

{:.activity}
### Comprobar el funcionamiento de Postfix

Comprueba el funcionamiento de Postfix (mailbox) en Zorin OS Lite.

{:.activity}
### Configurar el sistema de almacenaje de correo

Configura el sistema de almacenaje de correo Maildir en Zorin OS Lite.

{:.activity}
### Instalación y configuración del servidor Dovecot

Instala y configura el servidor Dovecot en Zorin OS Lite.

{:.activity}
### Comprobar el funcionamiento de Postfix-Dovecot

Comprueba el funcionamiento de Postfix-Dovecot con Thunderbird en una máquina Zorin OS Lite cliente. Tanto el cliente de correo como el servidor deberán estar en dos máquinas diferentes idealmente conectadas con otra máquina IPCOP.

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
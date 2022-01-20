---
title: "Práctica: Servicio FTP (VSFTP)"
date: 2022-01-12 22:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Servicios en Red]
tags: [gnu linux, comandos, terminal, bash, smr, servicios en red, ftp]
---

## Objetivo

El objetivo de esta práctica es:

- Conocer el funcionamiento del protocolo de transferencia de archivos.
- Entender el modo de funcionamiento cliente-servidor.
- Ser capaz de gestionar servidores FTP.
- Aprender el uso de los comandos que debe utilizar un cliente FTP.

Duración: 4 horas.

## Actividades

A continuación se listan las actividades a realizar para esta práctica.

{:.activity}
### Instalar y configurar el servidor VsFTPD en Zorin OS Lite

Instalar, configurar y probar un servidor VsFTPD en Zorin OS Lite. Deberás explicar todos los pasos realizados haciendo las capturas de pantalla si son necesarias que demuestren la realización de dicha instalación, configuración y prueba del servidor.

Los comandos y ficheros que hayas utilizado deben quedar reflejados en el PDF de la entrega en texto para permitirte copiar y pegar el día del examen todos los comandos de una manera rápida.

Para realizar esta tarea debes crear un usuario que tenga el nombre de tu email (sin el "@chabacier.es") y cuya contraseña sea "chabacier". Por ejemplo, si mi correo es "mruizg@chabacier.es" mi usuario será "mruizg". Y deberás incluir una o varias capturas de pantalla que demuestren que has realizado la práctica donde se vea tu nombre de usuario.

El servidor FTP debe tener las siguientes características:

1. Los ficheros nuevos deberán tener los siguientes permisos: `rw- r-- ---`.
1. Los directorios nuevos deberán tener los siguientes permisos: `rwx r-x ---`.
1. Modificar el banner de sesión con: "Bienvenido al servidor FTP de \<tuUsuario\>".
1. Debe permitir conectarse a 2 usuarios diferentes: "\<tuUsuario\>" y "\<tuUsuario\>2".
1. Hacer que el directorio raíz de cada usuario sea su directorio home.
1. Deshabilitar el acceso de usuarios anónimos al servidor.

Puedes ir al artículo [Servicio VSFTPD](/posts/servicio-vsfptd/) que explica como instalar y configurar VsFTPD.

{:.activity}
### Cliente FTP

A través de un cliente de terminal FTP explica como se harían las siguientes acciones:

1. Crear un directorio
1. Crear un fichero
1. Subir un fichero
1. Descargar un fichero
1. Listar los ficheros de un directorio
1. Moverte a otro directorio.
1. Cambiar el nombre de un fichero.
1. Cambiar los permisos de un fichero.
1. Cambiar el propietario de un fichero.

Puedes ir al artículo [Clientes FTP](/posts/clientes-ftp/) donde se explica como instalar y configurar VsFTPD.

## Preguntas que debes saber contestar tras la realización de esta práctica

1. ¿Qué significa enjaular un usuario?
1. ¿Por qué es bueno enjaular a los usuarios?
1. ¿Para qué sirve la propiedad `chroot`?
1. ¿La propiedad umask en VSFTPD da o quita permisos a los usuarios?
1. ¿Por qué es bueno modificar el mensaje de bienvenida del servidor FTP?
1. ¿Cuál es la instrucción para subir/bajar/borrar un fichero?
1. ¿Cuál es la instrucción para crear/borrar un directorio?
1. ¿Qué significan las siglas VSFTPD?
1. ¿Qué es un daemon?

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

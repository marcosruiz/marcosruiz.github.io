---
title: "Práctica: Servicio SSH"
date: 2022-01-26 01:20:00 +0100
categories: [Sistemas Microinformáticos y Redes, Servicios en Red]
tags: [gnu linux, comandos, terminal, bash, servicios en red, smr, práctica, ssh]
---

## Objetivo

El objetivo de esta práctica es aprender a instalar y configurar un servicio SSH cliente-servidor:

- Autenticandonos mediante usuario y contraseña.
- Autenticandonos usando el algoritmo de clave pública.

Para tener las siguientes funcionalidaes de manera segura.

- Utilizar un terminal remoto.
- Utilizar un terminal gráfico remoto.
- Enviar ficheros.
- Descargar ficheros.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica. 

- ⚠ En cada actividad debes indicar los pasos que has realizado de manera detallada y/o hacer capturas que demuestren la realización de las mismas.
- ⚠ Debes usar usuarios que contengan como nombre tu usuario de correo del centro. Por ejemplo, si mi correo es "mruizg@chabacier.es" mi usuario deberá ser "mruizg". Se hará referencia a este nombre de usuario cuando se utilice la cadena de carácteres \<tuUsuario\>.

{:.activity}
### Montar un servidor SSH

Instalar un servicio SSH en una máquina virtual Zorin OS la cual actuará de servidor con las siguientes opciones:

1. El servidor debe desconectar a los usuarios que no se hayan validado correctamente tras 15 segundos.
1. El servidor acepta conexiones por contraseña.
1. El servidor debe usar el puerto por defecto del servicio SSH.
1. El servidor debe dar un mensaje de bienvenida como el siguiente: "Bienvenido al servidor SSH de \<tuUsuario\>".

{:.activity}
### Autenticación mediante usuario y clave

Desde otra máquina virtual Zorin OS la cual actuará de cliente autenticarte y hacer una captura para demostrar la realización de esta actividad.

🗒 Si lo prefieres puedes usar el propio host para conectarte al servidor.

{:.activity}
### Transferir ficheros con SSH

Desde la máquina cliente envia un fichero y recibe otro diferente. 

{:.activity}
### Autenticación mediante clave pública

Conéctate desde un cliente SSH al servidor SSH utilizando autenticación de clave pública para ello deberás configurar el servidor y el cliente.

{:.activity}
### Conectarse en modo gráfico

Conéctate desde un cliente SSH al servidor SSH en modo gráfico.

## Entrega y presentación

La entrega de esta práctica debe ser un documento ZIP con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.zip". Por ejemplo, en mi caso el nombre del documento PDF sería "RuizGarcía_Marcos_Práctica\<NúmeroDeLaPráctica\>.zip".

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

---
title: "Práctica: OpenMediaVault y gestión de usuarios"
date: 2022-02-02 20:40:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [gnu linux, comandos, terminal, bash, seguridad informática, seguridad activa, seguridad pasiva, openmediavault, raid5, práctica]
---

## Objetivo

El objetivo de esta práctica ser capaz de montar un servidor NAS OpenMediaVault.

Duración: 6 h.

## Entrega y presentación

La entrega de esta práctica debe ser un documento PDF con un nombre en el siguiente formato `<Apellidos>_<Nombre>_P<NúmeroDeLaPráctica>.pdf`{: .filepath}. Por ejemplo, en mi caso el nombre del documento PDF sería `RuizGarcía_Marcos_P<NúmeroDeLaPráctica>.pdf`{: .filepath}.

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

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica. Sobre cada actividad deberás:

- Indicar los pasos que has seguido para llevar a cabo la realización de la actividad.
- Hacer una o varias capturas que demuestren la realización satisfactoria de la actividad. Siempre que sea posible se deberá ver el nombre de usuario que identifique al autor de la práctica.

{:.activity}
### Instalar OpenMediaVault

Descarga la última versión estable de [OpenMediaVault](https://www.openmediavault.org/) y comprueba su hash.

{:.question}
¿Qué nos información nos aporta este hash?
{:.activity}
### Instalar OpenMediaVault

Sigue los pasos de artículo [Tutorial: Instalación y configuración de OpenMediaVault](/posts/tutorial-instalacion-openmediavault) en una máquina virtual de Virtual Box. En mi caso estoy instalando la versión de OpenMediaVault 5 en lugar de la 6, pero los pasos son iguales o muy similares.

{:.activity}
### Conectarte desde el cliente web

Desde una máquina virtual Zorin OS Lite conectate al cliente web de OpenMediaVault. Las máquinas deben estar conectadas a través del router/cortafuegos IPCOP.

{:.activity}
### Crear una instántanea de la máquina virtual OpenMediaVault

Haz una instantánea del servidor OpenMediaVault.

{:.activity}
### Configurar FTPS

Configura el servicio FTP usando TLS/SSL.

{:.activity}
### Crear RAID5

Crea un RAID5 con tres discos de 100MB cada uno. El RAID resultante será de 200MB.

{:.activity}
### Compartir una carpeta pública dentro del RAID5

Crea una carpeta compartida llamada public y compártela para que cualquiera pueda entrar a través de SSH o a través de FTPS.

Crea una carpeta compartida llamada "profesor\<tuUsuario\>" para que el usuario "profesor\<tuUsuario\>" pueda añadir y borrar ficheros y el usuario "alumno\<tuUsuario\>" pueda ver y descargar los ficheros de dicha carpeta. Deberá funcionar a través de SSH y FTPS. Podrás usar tanto el sistema de permisos tradicional como ACL.

Deberás demostrar el funcionamiento conectándote al servidor a través del navegador de archivos Thunar y Filezilla.

{:.activity}
### Copias de seguridad

Añade y monta un disco de 200MB y programa copias de seguridad cada 10 minutos (para hacer pruebas puedes bajarlo a 2 minutos) de la carpeta compartida. Se recomienda usar rsync.

{:.activity}
### Copias de seguridad remota

Utilizando rsync hacer copias de seguridad de manera remota usando otro servidor OpenMediaVault encriptando la comunicación a través de clave pública.

{:.activity}
### Restaura tu sistema

Restaura tu carpeta compartida a un estado anterior, deberán verse los cambios en la carpeta.


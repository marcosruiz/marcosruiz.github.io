---
title: "Práctica: Comandos GNU Linux (Parte 5)"
date: 2022-01-17 21:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [gnu linux, comandos, terminal, bash, smr, seguridad informática]
---

## Objetivo

El objetivo de esta práctica ser capaz de modificar los permisos de acceso a los ficheros y a los directorios con el fin de asegurar la confidencialidad de los datos almacenados en el sistema de ficheros GNU Linux.

Duración: 10 h.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Preguntas previas

1. Un usuario ordinario se caracteriza por:
    1. Un UID igual a 0.
    1. Un grupo principal users.
    1. Un UID generalmente superior o igual a 500.
    1. Una contraseña simple.
2. ¿Qué significan los permisos r, w y x asociados a un archivo ordinario?
3. ¿Qué significan los permisos r, w y x asociados a un directorio?
4. Convertir los permisos siguientes a notación octal: `rwxr-xr--`
5. Convertir los permisos siguientes a notación simbólica: 640
6. ¿Qué permiso autoriza la ejecución de un programa bajo la identidad del propietario del archivo en lugar de la identidad del usuario que lo ejecuta?
    1. x.
    1. SUID.
    1. SGID.
    1. Sticky bit.

{:.activity}
### Cuentas de usuario y grupos

Duración estimada: 5 minutos

1. Conéctese a la segunda consola virtual texto como el usuario "\<tuNombreDeUsuario\>", otra con "\<tuNombreDeUsuario\>2" y otra con el usuario "root".
2. Visualice su nombre de conexión y su UID. Proceda del mismo modo para las cuentas "\<tuNombreDeUsuario\>2" y root. Utilice el comando `id`.
3. Visualice los grupos a los que pertenece. Proceda del mismo modo para las cuentas "\<tuNombreDeUsuario\>2" y root. Utilice el comando `groups`.

{:.activity}
### Permisos por defecto

Duración estimada: 15 minutos

1. En su directorio personal, cree un directorio con el nombre capítulo5. Utilice el comando `mkdir`.
2. Muestra los permisos del directorio capítulo5. Vaya a su directorio capítulo5. Utilice el comando `ls` y el comando `cd`.
3. Visualice la máscara que define los permisos por defecto en la creación de ficheros. ¿Qué significa el valor visualizado? Utilice el comando `umask`.
4. Cree un fichero vacío fic1 y un directorio dir1. Utilice los comandos `touch` y `mkdir`.
5. ¿Los permisos del fichero fic1 y del directorio dir1 corresponden al valor de la máscara visualizada anteriormente?
6. Modifique su máscara que define los permisos por defecto al valor 27. ¿Qué significa?
7. Cree un fichero vacío fic2 y un directorio dir2.
8. Verifique que los permisos del fichero fic2 y del directorio dir2 corresponden al nuevo valor de la máscara. ¿Los permisos del fichero fic1 y del directorio dir1 han cambiado?

{:.activity}
### Permisos de los directorios

Duración estimada: 15 minutos

1. Dé los permisos r, w y x a otros usuarios al directorio dir1 utilizando la notación simbólica. Utilice el comando `chmod`.
2. Dé los mismos permisos que al directorio dir1 a dir2 utilizando la notación octal. Utilice el comando `chmod`.
3. Cree el directorio /tmp/\<tuNombreDeUsuario\>. Dele también los mismos permisos que a los directorios dir1 y dir2 precedentes.
4. Cree el fichero secret en el directorio /tmp/\<tuNombreDeUsuario\>.
5. Modifique los permisos del fichero secret dejando únicamente el permiso de lectura al usuario \<tuNombreDeUsuario\>.
6. Conéctese a otro emulador de consola como usuario \<tuNombreDeUsuario\>2.
7. Como usuario \<tuNombreDeUsuario\>2, ¿puede leer el fichero secret de \<tuNombreDeUsuario\>?
8. Siempre como usuario \<tuNombreDeUsuario\>2, puede suprimir el fichero secret de \<tuNombreDeUsuario\>? ¿Por qué?

{:.activity}
### Permisos y vínculos

Duración estimada: 20 minutos

1. Vuelva a la identidad del usuario \<tuNombreDeUsuario\> y vuelva al directorio /home/\<tuNombreDeUsuario\>/capítulo5.
2. Establezca su máscara al valor 002.
3. Cree el directorio docperso y asígnele los permisos 700.
4. Vaya al directorio docperso, cree los ficheros fica, ficb, ficc y ficd. Luego liste de forma detallada el contenido del directorio.
5. Cree un vínculo duro ("hard link") /tmp/vínculofica hacia el fichero fica, y un vínculo simbólico ("soft link") /tmp/vínculoficb hacia el fichero ficb. Utilice el comando `ln`.
6. Vuelva a la identidad del usuario \<tuNombreDeUsuario\>2 en la tercera consola virtual (tty3) e intente listar el contenido del directorio /home/\<tuNombreDeUsuario\>/capítulo5/docperso. ¿Es posible y por qué?
7. Visualice el contenido del fichero /tmp/vínculofica. ¿Es posible y por qué?
8. Visualice el contenido del fichero /tmp/vínculoficb. ¿Es posible y por qué?

{:.activity}
### SUID, SGID y Sticky Bit

Duración estimada: 20 minutos

1. Vuelva a la identidad del usuario \<tuNombreDeUsuario\>.
2. ¿Cuáles son los permisos del comando `passwd` y del fichero /etc/shadow? ¿Por qué son así? El fichero correspondiente al comando `passwd` se encuentra generalmente en el directorio /usr/bin.
3. Copie el comando id en /tmp. El fichero correspondiente al comando `id` se encuentra generalmente en el directorio /usr/bin.
4. Establezca el permiso SUID en el fichero /tmp/id copiado anteriormente. Utilice el comando `chmod`.
5. Vuelva a la identidad del usuario \<tuNombreDeUsuario\>2 en la tercera consola virtual (tty3) y liste los permisos del fichero /tmp/id.
6. Como usuario \<tuNombreDeUsuario\>2, ejecute el comando id, después el fichero /tmp/id. ¿Qué observa?
7. ¿Cuáles son los permisos del comando write y del fichero de dispositivo /dev/tty2? ¿Por qué son así? El fichero correspondiente al comando `write` se encuentra generalmente en el directorio /usr/bin.
8. Siempre como usuario \<tuNombreDeUsuario\>2, intente suprimir el fichero /tmp/vínculofica creado anteriormente por el usuario \<tuNombreDeUsuario\>. ¿Es posible? Liste los permisos del directorio /tmp.

{:.activity}
### Disquetes DOS

Duración estimada: 10 minutos

Las cuestiones siguientes necesitan de la presencia del paquete `mtools` en el conjunto de software instalado en el sistema. Además, siguiendo los permisos acordados por el administrador en el fichero /etc/fstab, los usuarios pueden no estar autorizados a efectuar un montaje; será necesario entonces conectarse como root.

1. Vuelva a la identidad del usuario \<tuNombreDeUsuario\> y cree el fichero permisos con los permisos 740 en su directorio personal.
2. Inserte un disquete DOS en el lector de la máquina y copie el fichero permisos. Utilice el comando `mount` con el punto de montaje predefinido por su sistema en el fichero /etc/fstab (generalmente /mnt/floppy o /media/floppy). Para insertar un disquete virtual en la máquina virtual deberá apagar la máquina virtual e ir a su configuración, hacer click en "Añadir nuevo controlador de almacenamiento", hacer click en "I82078 (disquete)", click en "Añadir unidad de disquete", click en "crear", click en "Create", click en "Seleccionar" y "Aceptar". Posteriormente deberá iniciar la máquina y hacer click en [F12] para seleccionar el dispositivo desde el que desea hacer el inicio.
3. Suprima el fichero permisos de su directorio personal.
4. Vuelva a copiar el fichero permisos del disquete en su directorio personal. ¿Cuáles son sus permisos? ¿Por qué?

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

## Bibliografía

- [Prácticas de LINUX](https://www.ediciones-eni.com/open/mediabook.aspx?idR=0a8c20d27a126debe5747e874c9710ed)


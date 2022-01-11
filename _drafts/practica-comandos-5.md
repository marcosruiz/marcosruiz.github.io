---
title: "Práctica: Comandos GNU Linux 5"
date: 2022-01-08 14:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [gnu linux, comandos, terminal, bash, smr, seguridad informática]
---

## Objetivo

El objetivo de esta práctica ser capaz de modificar los permisos de acceso a los archivos y a los directorios con el fin de asegurar la confidencialidad de los datos almacenados en el sistema de archivos GNU Linux.

Duración: 4 h.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Cuentas de usuario y grupos

Duración estimada: 5 minutos

1. Conéctese a la segunda consola virtual texto (tty2) como el usuario "\<tuNombreDeUsuario\>".
2. Visualice su nombre de conexión y su UID. Proceda del mismo modo para las cuentas "\<tuNombreDeUsuario\>2" y root.
3. Visualice los grupos a los que pertenece. Proceda del mismo modo para las cuentas "\<tuNombreDeUsuario\>2" y root.

#### Pistas
2. Utilice el comando id.
3. Utilice el comando groups.

{:.activity}
### Permisos por defecto

Duración estimada: 15 minutos

1. En su directorio personal, cree un directorio con el nombre capítulo5.
2. Vaya a su directorio capítulo5 y verifíquelo.
3. Visualice la máscara que define los permisos por defecto en la creación de archivos. ¿Qué significa el valor visualizado?
4. Cree un archivo vacio fic1 y un directorio dir1.
5. ¿Los permisos del archivo fic1 y del directorio dir1 corresponden al valor de la máscara visualizada anteriormente?
6. Modifique su máscara que define los permisos por defecto al valor 27. ¿Qué significa?
7. Cree un archivo vacio fic2 y un directorio dir2.
8. Verifique que los permisos del archivo fic2 y del directorio dir2 corresponden al nuevo valor de la máscara. ¿Los permisos del archivo fic1 y del directorio dir1 han cambiado?

#### Pistas
1. Utilice el comando mkdir.
3. Utilice el comando umask.
4. Utilice los comandos touch y mkdir.

{:.activity}
### Permisos de los directorios

Duración estimada: 15 minutos

1. Dé los permisos r, w y x a otros usuarios al directorio dir1 utilizando la notación simbólica.
2. Dé los mismos permisos que al directorio dir1 a dir2 utilizando la notación octal.
3. Cree el directorio /tmp/\<tuNombreDeUsuario\>. Dele tambiHén los mismos permisos que a los directorios dir1 y dir2 precedentes.
4. Cree el archivo secret en el directorio /tmp/\<tuNombreDeUsuario\>.
5. Modifique los permisos del archivo secret dejando únicamente el permiso de lectura al usuario \<tuNombreDeUsuario\>.
6. Conéctese a la tercera consola virtual texto (tty3) como usuario \<tuNombreDeUsuario\>2.
7. Como usuario \<tuNombreDeUsuario\>2, ¿puede leer el archivo secret de \<tuNombreDeUsuario\>?
8. Siempre como usuario \<tuNombreDeUsuario\>2, puede suprimir el archivo secret de \<tuNombreDeUsuario\>? ¿Por qué?

#### Pistas

1. Utilice el comando chmod.
2. Utilice el comando chmod.

{:.activity}
### Permisos y vínculos

Duración estimada: 20 minutos

1. Vuelva a la identidad del usuario \<tuNombreDeUsuario\> en la segunda consola virtual (tty2) y vuelva al directorio /home/\<tuNombreDeUsuario\>/capítulo5.
2. Establezca su máscara al valor 002.
3. Cree el directorio docperso y asígnele los permisos 700.
4. Vaya al directorio docperso, cree los archivos fica, ficb, ficc y ficd. Luego liste de forma detallada el contenido del directorio.
5. Cree un vínculo duro ("hard link") /tmp/vínculofica hacia el archivo fica, y un vínculo simbólico ("soft link") /tmp/vínculoficb hacia el archivo ficb.
6. Vuelva a la identidad del usuario \<tuNombreDeUsuario\>2 en la tercera consola virtual (tty3) e intente listar el contenido del directorio /home/\<tuNombreDeUsuario\>/capítulo5/docperso. ¿Es posible y por qué?
7. Visualice el contenido del archivo /tmp/vínculofica. ¿Es posible y por qué?
8. Visualice el contenido del archivo /tmp/vínculoficb. ¿Es posible y por qué?

{:.activity}
### SUID, SGID y Sticky Bit

Duración estimada: 20 minutos

1. Vuelva a la identidad del usuario \<tuNombreDeUsuario\> en la segunda consola virtual (tty2).
2. ¿Cuáles son los permisos del comando passwd y del archivo /etc/shadow? ¿Por qué son así?
3. Copie el comando id en /tmp.
4. Establezca el permiso SUID en el archivo /tmp/id copiado anteriormente.
5. Vuelva a la identidad del usuario \<tuNombreDeUsuario\>2 en la tercera consola virtual (tty3) y liste los permisos del archivo /tmp/id.
6. Como usuario \<tuNombreDeUsuario\>2, ejecute el comando id, después el archivo /tmp/id. ¿Qué observa?
7. ¿Cuáles son los permisos del comando write y del archivo de dispositivo /dev/tty2? ¿Por qué son así?
8. Siempre como usuario \<tuNombreDeUsuario\>2, intente suprimir el archivo /tmp/vínculofica creado anteriormente por el usuario \<tuNombreDeUsuario\>. ¿Es posible?

#### Pistas

2. El archivo correspondiente al comando passwd se encuentra generalmente en el directorio /usr/bin.
3. El archivo correspondiente al comando id se encuentra generalmente en el directorio /usr/bin.
4. Utilice el comando chmod.
7. El archivo correspondiente al comando write se encuentra generalmente en el directorio /usr/bin.
8. Liste los permisos del directorio /tmp.

{:.activity}
### Disquetes DOS

Duración estimada: 10 minutos

Las cuestiones siguientes necesitan de la presencia del paquete mtools en el conjoncto de software instalado en el sistema. Además, siguiendo los permisos acordados por el administrador en el archivo /etc/fstab, los usuarios pueden no estar autorizados a efectuar un montaje; será necesario entonces conectarse como root.
1. Vuelva a la identidad del usuario \<tuNombreDeUsuario\> en la segunda consola virtual (tty2) y cree el archivo permisos con los permisos 740 en su directorio personal.
2. Inserte un disquete DOS en el lector de la máquina y copie el archivo permisos.
3. Suprima el archivo permisos de su directorio personal.
4. Vuelva a copiar el archivo permisos del disquete en su directorio personal. ¿Cuáles son sus permisos? ¿Por qué?

#### Pista

2. Utilice el comando mount con el punto de montaje predefinido por su sistema en el archivo /etc/fstab (generalmente /mnt/floppy o /media/floppy), o utilice el comando mcopy del paquete mtools.

## Entrega

La entrega de esta práctica debe ser un documento PDF con un nombre en el siguiente formato `<Apellidos>_<Nombre>_Práctica<NúmeroDeLaPráctica>.pdf`. Por ejemplo, en mi caso el nombre del documento PDF sería `RuizGarcía_Marcos_Práctica<NúmeroDeLaPráctica>.pdf`.

## Bibliografía

- [Prácticas de LINUX](https://www.ediciones-eni.com/open/mediabook.aspx?idR=0a8c20d27a126debe5747e874c9710ed)


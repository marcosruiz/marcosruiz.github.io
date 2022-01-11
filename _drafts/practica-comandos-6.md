---
title: "Práctica: Comandos GNU Linux 6"
date: 2022-01-08 14:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Servicios en Red]
tags: [gnu linux, comandos, terminal, bash, smr, seguridad informática]
---

## Objetivo

El objetivo de esta práctica ser capaz de controlar los procesos que ejecute en un sistema GNU Linux. 

Duración: 2 h.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Actividad: Cuentas de usuario y grupos

Duración estimada: 5 minutos

1. Conéctese a la segunda consola virtual texto (tty2) como el usuario \<tuNombreDeUsuario\>.
2. Visualice su nombre de conexión y su UID. Proceda del mismo modo para las cuentas \<tuNombreDeUsuario\>2 y root.
3. Visualice los grupos a los que pertenece. Proceda del mismo modo para las cuentas \<tuNombreDeUsuario\>2 y root.

#### Pistas
2. Utilice el comando id.
3. Utilice el comando groups.

{:.activity}
### Actividad: Permisos por defecto

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
### Actividad: Permisos de los directorios

Duración estimada: 15 minutos

1. Dé los permisos r, w y x a otros usuarios al directorio dir1 utilizando la notación simbólica.
2. Dé los mismos permisos que al directorio dir1 a dir2 utilizando la notación octal.
3. Cree el directorio /tmp/\<tuNombreDeUsuario\>. Dele también los mismos permisos que a los directorios dir1 y dir2 precedentes.
4. Cree el archivo secret en el directorio /tmp/\<tuNombreDeUsuario\>.
5. Modifique los permisos del archivo secret dejando únicamente el permiso de lectura al usuario \<tuNombreDeUsuario\>.
6. Conéctese a la tercera consola virtual texto (tty3) como usuario \<tuNombreDeUsuario\>2.
7. Como usuario \<tuNombreDeUsuario\>2, ¿puede leer el archivo secret de \<tuNombreDeUsuario\>?
8. Siempre como usuario \<tuNombreDeUsuario\>2, puede suprimir el archivo secret de \<tuNombreDeUsuario\>? ¿Por qué?

#### Pistas

1. Utilice el comando chmod.
2. Utilice el comando chmod.

{:.activity}
### Actividad: Permisos y vínculos

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
### Actividad: SUID, SGID y Sticky Bit

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
### Actividad: Disquetes DOS

Duración estimada: 10 minutos

Las cuestiones siguientes necesitan de la presencia del paquete mtools en el conjoncto de software instalado en el sistema. Además, siguiendo los permisos acordados por el administrador en el archivo /etc/fstab, los usuarios pueden no estar autorizados a efectuar un montaje; será necesario entonces conectarse como root.
1. Vuelva a la identidad del usuario \<tuNombreDeUsuario\> en la segunda consola virtual (tty2) y cree el archivo permisos con los permisos 740 en su directorio personal.
2. Inserte un disquete DOS en el lector de la máquina y copie el archivo permisos.
3. Suprima el archivo permisos de su directorio personal.
4. Vuelva a copiar el archivo permisos del disquete en su directorio personal. ¿Cuáles son sus permisos? ¿Por qué?

#### Pista

2. Utilice el comando mount con el punto de montaje predefinido por su sistema en el archivo /etc/fstab (generalmente /mnt/floppy o /media/floppy), o utilice el comando mcopy del paquete mtools.

{:.activity}
### Actividad: Visualización de procesos

Duración estimada: 15 minutos

1. Conéctese en la segunda consola virtual texto (tty2) como el usuario \<tuNombreDeUsuario\>.
2. Visualice el resumen de las opciones posibles del comando ps.
3. Consulte la página del manual electrónico referente al comando ps.
4. Liste los procesos iniciados a partir de su shell actual.
5. Liste todos sus procesos en ejecución actualmente en el sistema.
6. Liste todos los procesos iniciados en el sistema (demonios inclusive) mostrando la identidad bajo la que se ejecutan.
7. Liste de nuevo todos los procesos en ejecución en el sistema de forma detallada empleando otras opciones del comando ps.
8. Visualice la jerarquía de procesos en ejecución en el sistema.

#### Pistas

2. Utilice la opción GNU --help.
4. Utilice el comando man.
5. Utilice el comando ps con la opción adecuada.
6. Acumule varias opciones del comando ps: visualice todos los procesos, visualice los procesos no asociados a un terminal (demonios), visualice el UID bajo el que los procesos se ejecutan.
7. Acumule varias opciones del comando ps: visualice todos los procesos, visualización detallada.
8. Utilice el comando pstree.

{:.activity}
### Actividad: Señales y comando kill

Duración estimada: 10 minutos
1. Liste las señales que pueden enviarse a los procesos.
2. ¿A quién corresponden esas señales y cuál es el comportamiento por defecto de los procesos cuando las reciben?
3. Intente detener un proceso perteneciente a otro usuario. ¿Es posible?
4. Ejecute el comando siguiente: sleep 777.

Conéctese como usuario \<tuNombreDeUsuario\> en otro terminal y envié la señal SIGTERM al proceso sleep 777.

Pistas para el enunciado 6.2
1. Utilice el comando kill con la opción adecuada.
2. Visualice la página "signal" de la séptima sección del manual electrónico.

{:.activity}
### Actividad: Comando top

Duración estimada: 15 minutos
1. Visualice un lista refrescada en tiempo real de los procesos en ejecución en el sistema.
2. Visualice la ayuda incluida con el comando top.
3. Añada la columna PPID a la visualización del comando top.
4. Visualice ahora únicamente los procesos del usuario \<tuNombreDeUsuario\>.
5. Envíe la señal 2 (SIGINT) al proceso top que utiliza actualmente, sin abandonar el comando. ¿Qué pasa?

#### Pistas

1. Utilice el comando top.
3. Consulte la ayuda incluida con el comando top.

{:.activity}
### Actividad: Manipulación de procesos

Duración estimada: 20 minutos
1. Ejecute el comando sleep 1111 en segundo plano. ¿Qué significa lo que retorna a la pantalla?
2. Ejecute siempre en segundo plano los comandos sleep 2222 y sleep 3333.
3. Ejecute en primer plano el comando sleep 4444. Después intente recuperar el control de su shell actual.
4. Liste los trabajos (jobs) ejecutados a partir de su shell actual.
5. ¿Qué significan los caracteres + y - en la lista anterior?
6. Reinicie la ejecución del proceso, suspendido anteriormente, en segundo plano.
7. Ejecute el comando man sleep y posiciónese en su final.
8. Suspenda el proceso man sin pararlo.
9. Pare el proceso sleep 1111 utilizando su número de trabajo.
10. Pare el proceso sleep 2222 utilizando esta vez su PID.
11. Pare el proceso sleep 3333 con la secuencia de teclas [Ctrl]-C.
12. Vuelva a la página del manual anteriormente abierto. ¿Se encuentra siempre en el mismo lugar de la página?
13. Salga del manual electrónico.

#### Pistas

1. Un proceso se lanza en segundo plano cuando se añade el carácter & al final de la línea de comandos.
3. La secuencia de teclas que permiten suspender un proceso en primer plano es [Ctrl]-Z.
4. Utilice el comando jobs.
6. Utilice el comando bg.
9. Utilice los comandos jobs y kill.10. Utilice los comandos ps y kill.11. Reinicie previamente el trabajo correspondiente en primer plano con el comando fg.12. Utilice el comando fg.

## Entrega

La entrega de esta práctica debe ser un documento PDF con un nombre en el siguiente formato `<Apellidos>_<Nombre>_Práctica<NúmeroDeLaPráctica>.pdf`. Por ejemplo, en mi caso el nombre del documento PDF sería `RuizGarcía_Marcos_Práctica<NúmeroDeLaPráctica>.pdf`.

## Bibliografía

- [Prácticas de LINUX](https://www.ediciones-eni.com/open/mediabook.aspx?idR=0a8c20d27a126debe5747e874c9710ed)


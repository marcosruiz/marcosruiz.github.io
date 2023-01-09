---
title: "Práctica: Seguridad activa de sistemas operativos"
date: 2022-12-19 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría, seguridad activa]
img_path: /assets/img/practica-seguridad-activa-sistemas-operativos/
---

## Objetivo y duración

El objetivo de esta práctica es aprender a utilizar diversos sistemas de seguridad activa de un sistema operativo.

Duración: 7 h

## Entrega y presentación

La entrega de esta práctica debe ser un documento PDF con un nombre en el siguiente formato: "\<Apellidos\>_\<Nombre\>_P\<NúmeroDeLaPráctica\>.zip". Por ejemplo, en mi caso el nombre del documento PDF sería "RuizGarcía_Marcos_P07.pdf".

1. Debe contener una portada con título, nombre de la asignatura, curso, autor y fecha de realización.
2. Debe tener un índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
3. Debe tener cada página numerada.
4. Las actividades deberán estar numeradas y ordenadas de manera que se ignore el "3.". Por ejemplo, la sección "3.1. Actividad" será "1. Actividad" o "Actividad 1" en la entrega del alumno.
5. Cada actividad debe tener **el enunciado en negrita** y la respuesta en texto normal.
6. Cada imagen debe tener un pie de foto la cual tenga el siguiente formato: "Figura \<número\>: \<BreveDescripciónDeLaFigura\>".
7. El documento no debe contener faltas ortográficas.
8. Los comandos y ficheros de configuración que hayas utilizado deben quedar reflejados en el PDF de la entrega en texto para permitirte copiar y pegar el día del examen todos los comandos de una manera rápida.
9. Los comandos y documentos de configuración que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$ sudo apt install neofetch`.
10. Para las actividades a mano se deberá hacer una foto a la resolución del ejercicio y añadirla al PDF.

## Actividades

A continuación se listan las actividades que se deben realizar.

{:.activity}
### Contraseña a la BIOS

Entrar en la web [BIOS Simulator Center de Lenovo](https://download.lenovo.com/bsco/index.html), selecciona una BIOS/UEFI diferente al resto de tus compañeros e indica los pasos a seguir para cambiar la contraseña a dicha BIOS.

> 📷 Haz una captura por cada uno de los pasos que has realizado en la BIOS a modo de tutorial.
{:.prompt-info}

{:.activity}
### Contraseña al GRUB

En tu Zorin OS Lite, añade la contraseña "tiempos" al GRUB.

{:.activity}
### Crear usuario profesorMrug

Indica los comandos para realizar las siguientes acciones:

- Crear una cuenta de usuario llamado "profesorMrug" perteneciente al grupo "profesores" usando el terminal. 
- Esta cuenta de usuario debe esperar 10 días después de la inserción de una nueva contraseña para poder cambiarla; su contraseña será válida durante 60 días; se le avisará 3 días antes de que deba cambiarla; si no cambia la contraseña después de los 60 días, dispone de 7 días antes de que sea bloqueada.

{:.activity}
### Crear usuario alumno\<tuUsuario\>

Indica los comandos para realizar las siguientes acciones:

- Crear una cuenta de usuario llamado "alumno\<tuUsuario\>" perteneciente al grupo "alumnos" usando el terminal. 
- Este usuario debe cambiar la contraseña inmediatamente, tendrá validez de 30 días y se avisara un día antes de que debe volverla a cambiar. Si no la cambia, se bloqueará la cuenta en tres días.

{:.activity}
### Añade a sudors

Utilizando el terminal haz que los dos usuarios creados anteriormente puedan ejecutar comandos sudo.

{:.activity}
### Cifrado de particiones

A través de línea de comandos con LUKS crea y monta en `/mnt/particionSegura` una partición cifrada. Indica los comandos utilizados en texto plano. Puedes seguir los pasos marcados en el artículo [Cifra discos, particiones y archivos con LUKS en tu servidor Linux](https://www.redeszone.net/tutoriales/seguridad/cifrar-discos-particiones-archivos-luks-linux/).

{:.question}
¿Qué significan las siglas de LUKS?

{:.question}
¿Con qué algoritmo cifra LUKS las particiones?

{:.question}
¿Cuáles son los sistemas de ficheros más usados en GNU Linux? ¿Y en Windows? ¿Cuáles son sus peculiaridades en comparación con el resto? Haz una pequeña comparativa entre ellos.

{:.question}
¿Es lo mismo un MB que un MiB? ¿Cuál es la diferencia? ¿Qué unidades usa GNU Linux? ¿Y Windows? ¿Y OSX?

{:.question}
¿Qué significan las siglas LVM? ¿Qué ventajas/desventajas tiene sobre usar un sistema de particiones tradicional?

Mira el siguiente video para entender que es LVM:

<iframe width="560" height="315" src="https://www.youtube.com/embed/nkJvqfYmyLU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

> 📷 Haz una captura que demuestre la realización de la actividad.
{:.prompt-info}

{:.activity}
### Cuotas de usuarios

Define una cuota de disco de 1 GB para el grupo "profesores" y otra cuota de disco de 100 MB para el grupo "alumnos". Indica los comandos utilizados en texto plano.

> 📷 Haz una captura que demuestre la realización de la actividad.
{:.prompt-info}

{:.activity}
### Lynis

Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/97tEei4HPOE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Para qué sirve la herramienta Lynis?

Instala la herramienta Lynis en tu sistema GNU Linux e indica paso a paso la información que muestra el programa. La herramienta se ejecutará utilizando el comando `lynis -c` o `lynis -Q` o `lynis audit system`.

{:.question}
¿Qué secciones muestra Lynis en su análisis?

{:.activity}
### Lastlog

Averigua el propósito del comando para GNU Linux llamado lastlog. Indica cómo sería el comando para que muestre los inicios de sesión de los últimos cinco días.

{:.activity}
### Utmpdump

Averigua el propósito del comando para máquinas GNU Linux utmpdump. Indica qué información de interés es capaz de mostrar.

{:.activity}
### /etc/passwd

¿Qué información se encuentra en el archivo `/etc/passwd` y cómo el usuario puede modificar la que le concierne?

{:.activity}
### JohnTheRipper

Instala y obtén la contraseña de tu usuario con JohnTheRipper por fuerza bruta y por ataque de diccionario.

#### ¿Cómo usar JohnTheRipper?

Copia el fichero `/etc/passwd` y el fichero `/etc/shadow` en la máquina Kali:

```console
# unshadow ./passwd ./shadow > <ficheroDeHashes>
```

Puedes usar John The Ripper de manera predeterminada sobre un fichero de hashes de la siguiente manera:

```console
#john <ficheroDeHashes>
```

<!-- 
En mi caso he usado el siguiente comando para romper la contraseña con fuerza bruta:

```console
#john --incremental=Lower --length=7 <ficheroDeHashes>
```
-->

Puedes investigar en el artículo [John the Ripper's cracking modes](https://www.openwall.com/john/doc/MODES.shtml) para saber que parámetros necesitarás para hacer un ataque de fuerza bruta que termine en un tiempo razonable para la contraseña "tiempos".

También puedes usar John The Ripper para un ataque de diccionario de la siguiente manera:

```console
#john --wordlist="<ficheroDiccionario>" <ficheroDeHashes> 
#john --show <ficheroHashes>
```

Para ello primero deberás descargar un diccionario de palabras en español:

```console
$curl -O http://snowball.tartarus.org/algorithms/spanish/voc.txt
```

O si no funciona puedes usar [este enlace](/assets/img/practica-seguridad-activa-sistemas-operativos/diccionario.txt) directamente.

{:.question}
¿Cuánto tiempo tarda JohnTheRipper en romper la contraseña "tiempos" usando fuerza bruta? ¿Y usando el diccionario aportado?

{:.activity}
### ACL 1

Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/7F30Aixu8HI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Realiza los mismos pasos que el vídeo pero con los usuarios creados anteriormente.

> 📷 Haz una o varias capturas que demuestren la realización de la actividad.
{:.prompt-info}

{:.activity}
### ClamAV

Siguiendo los pasos del artículo [Cómo instalar ClamAV antivirus en Ubuntu 20.04 LTS](https://comoinstalar.me/como-instalar-clamav-antivirus-en-ubuntu-20-04-lts/) instala el antivirus ClamAV en tu máquina Zorin OS Lite.

{:.question}
¿Estamos libres de virus en los sistemas GNU Linux?

{:.question}
¿Qué es un daemon en GNU Linux?

### RKHunter

Rkhunter es una aplicación para línea de comandos que se encarga automáticamente de analizar nuestro sistema en busca de rootkits, malware, scripts maliciosos, backdoors y otro tipo de software potencialmente peligroso en nuestro sistema Linux para saber en todo momento si nuestro sistema se encuentra realmente seguro o de lo contrario estamos siendo víctimas de piratas informáticos. 

Siguiendo los pasos del artículo [How to Install Rkhunter on Ubuntu 20.04](https://blog.eldernode.com/install-rkhunter-on-ubuntu/) instalar y configurar escaneos regulares. 

A modo de resumen la manera de instalar, actualizar y usar rkhunter es la siguiente:

```console
$sudo apt install rkhunter -y
$sudo rkhunter --update
$sudo rkhunter --check
```

{:.question}
¿Qué es un rootkit?

{:.question}
¿Qué se observa en el fichero /var/log/rkhunter.log?

{:.activity}
### (Opcional) ACL 2

Sigue los pasos de este artículo [Utilización de ACLs en el sistema de archivos](https://sites.google.com/site/vaisereso/tutoriales-y-trucos/acls-en-linux).




## Bibliografía

- [John the Ripper's cracking modes](https://www.openwall.com/john/doc/MODES.shtml)
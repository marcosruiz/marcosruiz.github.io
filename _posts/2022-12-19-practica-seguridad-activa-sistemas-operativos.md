---
title: "Práctica: Seguridad activa de sistemas operativos"
date: 2022-12-19 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría, seguridad activa]
img_path: /assets/img/practica-seguridad-activa-sistemas-operativos/
---

## Objetivo y duración

El objetivo de esta práctica es aprender a utilizar diversos sistemas de seguridad activa de un sistema operativo.

Duración: 8 h

## Entrega y presentación

La entrega de esta práctica debe ser un documento PDF con un nombre en el siguiente formato: `<Apellidos>_<Nombre>_P<NúmeroDeLaPrácticaConDosDígitos>.zip`{: .filepath}. Por ejemplo, en mi caso el nombre del documento PDF sería `RuizGarcía_Marcos_P09.pdf`{: .filepath}.

> Esta práctica puede ser entregada en pareja.
{:.prompt-info}

1. Debe contener una portada con título, nombre de la asignatura, curso, autor y fecha de realización.
2. Debe tener un índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
3. Debe tener cada página numerada.
4. Las actividades deberán estar numeradas y ordenadas de manera que se ignore el "3.". Por ejemplo, la sección "3.1. Actividad" será "1. Actividad" o "Actividad 1" en la entrega del alumno.
5. Cada actividad debe tener **el enunciado en negrita** y la respuesta en texto normal.
6. Cada imagen debe tener un pie de foto la cual tenga el siguiente formato: "Figura \<número\>: \<BreveDescripciónDeLaFigura\>".
7. El documento no debe contener faltas ortográficas.
8. Los comandos y ficheros de configuración que hayas utilizado deben quedar reflejados en el PDF de la entrega en texto para permitirte copiar y pegar el día del examen todos los comandos de una manera rápida.
9. Los comandos y documentos de configuración que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$sudo apt install neofetch`.
10. Para las actividades a mano se deberá hacer una foto a la resolución del ejercicio y añadirla al PDF.

## Actividades

A continuación se listan las actividades que se deben realizar. Todas las actividades se realizarán usando la máquina virtual de Zorin OS salvo que se especifique lo contrario.

{:.activity}
### Contraseña a la BIOS

Entrar en la web [BIOS Simulator Center de Lenovo](https://download.lenovo.com/bsco/index.html), selecciona una BIOS/UEFI diferente al resto de tus compañeros (si es posible) e indica los pasos a seguir para cambiar la contraseña a dicha BIOS.

> 📷 Haz una captura por cada uno de los pasos que has realizado en la BIOS a modo de tutorial.
{:.prompt-info}

{:.activity}
### Contraseña al GRUB

> No seas un mandril como yo y haz una instantánea antes de empezar esta actividad.
{:.prompt-warning}

En tu Zorin OS Lite, añade la contraseña "tiempos" al GRUB siguiendo los pasos del artículo [Proteger el grub con contraseña](https://geekland.eu/proteger-el-grub-con-contrasena/). Deberemos usar nuestro usuario habitual (en  mi caso, mrug) en lugar de joan.

{:.question}
¿En que casos es recomendable proteger el GRUB?

{:.question}
¿Qué significa el símbolo `~` que se usa en el tutorial?

{:.question}
¿Qué significa `EOF`?

{:.question}
¿Cuál es la versión del GRUB que estás usando?

> 📷 Haz una o varias capturas que demuestren que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}

{:.activity}
### Crear usuario profesorMrug

Usando los comandos `groupadd`, `useradd` y `passwd`, realiza las siguientes acciones:

- Crear una cuenta de usuario llamado "profesorMrug" perteneciente al grupo "profesores" usando el terminal. 
- Esta cuenta de usuario debe esperar 10 días después de la inserción de una nueva contraseña para poder cambiarla; su contraseña será válida durante 60 días; se le avisará 3 días antes de que deba cambiarla; si no cambia la contraseña después de los 60 días, dispone de 7 días antes de que sea bloqueada.

> Recuerda que puedes ejecutar los comandos `useradd --help` y `passwd --help` para averiguar como se usan estos programas.
{:.prompt-tip}

> Personalmente he seguido los pasos de el tutorial [How to Add User to Group in Linux](https://linuxize.com/post/how-to-add-user-to-group-in-linux/) para la parte de creación y asignación de grupo.
{:.prompt-tip}

{:.question}
¿Qué diferencia hay entre `useradd` y `adduser`?

{:.question}
¿Cómo comprobamos que el usuario está realmente creado?

> Indica los comandos utilizados en texto plano. 📷 Haz una o varias capturas que demuestren que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}


{:.activity}
### Crear usuario alumno\<tuUsuario\>

Usando los comandos `groupadd`, `useradd` y `passwd`, realiza las siguientes acciones:

- Crear una cuenta de usuario llamado "alumno\<tuUsuario\>" perteneciente al grupo "alumnos" usando el terminal. 
- Este usuario debe cambiar la contraseña inmediatamente, tendrá validez de 30 días y se avisara un día antes de que debe volverla a cambiar. Si no la cambia, se bloqueará la cuenta en tres días.

> Indica los comandos utilizados en texto plano. 📷 Haz una o varias capturas que demuestren que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}

{:.activity}
### Haz que los usuarios puedan ejecutar el comando sudo

Utilizando el terminal haz que los dos usuarios creados anteriormente puedan ejecutar el comando `sudo`. 

> Personalmente he seguido los pasos del tutorial [How to Add User to Sudoers in Ubuntu](https://linuxize.com/post/how-to-add-user-to-sudoers-in-ubuntu/).
{:.prompt-tip}

{:.question}
¿De qué dos maneras se puede realizar esta tarea?

> Indica los comandos utilizados en texto plano. 📷 Haz una o varias capturas que demuestren que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}

{:.activity}
### Cuotas de usuarios

Define una cuota de disco de 1 GB para el grupo "profesores" y otra cuota de disco de 100 MB para el grupo "alumnos". Indica los comandos utilizados en texto plano.

> Personalmente he seguido los pasos del tutorial [How To Set Filesystem Quotas on Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-set-filesystem-quotas-on-ubuntu-20-04)
{:.prompt-tip}

{:.question}
¿Qué dos tipos de límites en una cuota existen y cuales son sus diferencias? ¿Cuál as usado tú para poner el límite? ¿Por qué?

{:.question}
¿Puedo dar cuotas a usuarios pertenecientes a un grupo de manera individual? En caso de que exista un comando, ¿cómo se utilizaría?


> Indica los comandos utilizados en texto plano. 📷 Haz una o varias capturas que demuestren que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}


{:.activity}
### Cifrado de particiones

A través de línea de comandos con LUKS crea y monta en `/media/<tuUsuario>/archivosSeguros`{: .filepath} una partición cifrada de 100MB.

> Puedes seguir los pasos marcados en el apartado "Cifrar cualquier disco o partición (con pérdida de datos)" del artículo [Cifra discos, particiones y archivos con LUKS en tu servidor Linux](https://www.redeszone.net/tutoriales/seguridad/cifrar-discos-particiones-archivos-luks-linux/).
{:.prompt-tip}

{:.question}
¿Qué significan las siglas de LUKS?

{:.question}
¿Con qué algoritmo cifra LUKS las particiones?

{:.question}
¿Cuáles son los sistemas de ficheros más usados en GNU Linux? ¿Y en Windows? ¿Cuáles son sus peculiaridades en comparación con el resto? Haz una pequeña comparativa entre ellos.

{:.question}
¿Es lo mismo un MB que un MiB? ¿Cuál es la diferencia? ¿Qué unidades usa GNU Linux? ¿Y Windows? ¿Y OSX?

> Indica los comandos utilizados en texto plano. 📷 Haz una captura que demuestre la realización de la actividad.
{:.prompt-info}

{:.activity}
### Teoría de LVM

Mira el siguiente video para entender que es LVM y como se puede usar:

<iframe width="560" height="315" src="https://www.youtube.com/embed/nkJvqfYmyLU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Y contesta a las siguientes preguntas:

1. ¿Qué significan las siglas LVM? 
1. ¿Qué 4 ventajas tiene LVM sobre usar un sistema de particiones tradicional?
1. ¿LVM tiene alguna desventaja sobre el sistema de particiones tradicional?
1. ¿Podemos usar LVM con un RAID y con cifrado de particiones al mismo tiempo?
1. ¿Es posible migrar de un sistema de ficheros tradicional a un LVM?

{:.activity}
### (Opcional) Práctica de LVM

Añade un disco de 100MB a la máquina virtual de Zorin OS Lite y configúralo para que utilice LVM. Posteriormente crea y añade otro disco de 100MB a la máquina virtual expande la partición lógica que usa LVM de 100MB a 200MB de capacidad.

> Personalmente he usado estos dos artículos [Crear y configurar discos LVM en Ubuntu](https://blog.ragasys.es/crear-y-configurar-discos-lvm-en-ubuntu) y [Crear y configurar discos LVM en Ubuntu](https://blog.ragasys.es/ampliar-particion-lvm-agregando-un-nuevo-disco)
{:.prompt-tip}

> Indica los comandos utilizados en texto plano. 📷 Haz una captura o varias que demuestren la realización de la actividad.
{:.prompt-info}

{:.activity}
### Lynis

Instala la herramienta Lynis en tu sistema Zorin OS Lite e indica paso a paso la información que muestra el programa. La herramienta se ejecutará utilizando el comando `lynis -c` o `lynis -Q` o `lynis audit system` y compara los apartados que nombra "Systems boy" en el vídeo con los tuyos.

<iframe width="560" height="315" src="https://www.youtube.com/embed/97tEei4HPOE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

A partir del resumen final de vulnerabilidades que nos muestra Lynis, elige una vulnerabilidad diferente al resto de tus compañeros (a poder ser) y explica en que consiste dicha vulnerabilidad y como se arreglaría.

{:.question}
¿De donde has obtenido la información de cómo corregir una vulnerabilidad?

{:.question}
¿Para qué sirve la herramienta Lynis?

{:.question}
A rasgos generales, ¿qué secciones muestra Lynis en su análisis?

{:.activity}
### (Opcional) Lynis

Instala la herramienta Lynis en un servidor con Apache y con un servidor SSH y analiza la salida de los apartados "Software: webserver", "SSH Support", "Databases" y "PHP".

{:.activity}
### Lastlog

Averigua el propósito del comando para GNU Linux llamado `lastlog`. Indica cómo sería el comando para que muestre los inicios de sesión de los últimos cinco días.

Crea un nuevo usuario, haz login con él a través de la GUI y comprueba si aparece este inicio de sesión en `lastlog` con el siguiente comando:

```console
$lastlog -u <nombreDeUsuario>
```

¿Por qué ocurre esto?

> Deja reflejado en texto plano los comandos utilizados y sus salidas.
{:.prompt-info}

{:.activity}
### Utmpdump

Averigua el propósito del comando para máquinas GNU Linux `utmpdump`. Indica qué información de interés es capaz de mostrar.

{:.question}
¿Qué relación tienen los comandos `utmpdump`, `last` y `lastb`?

{:.question}
¿Qué significan la información `tty` y `pts` que vemos en las salidas de estos programas?

> Deja reflejado en texto plano los comandos utilizados y sus salidas.
{:.prompt-info}

{:.activity}
### /etc/passwd

¿Qué información se encuentra en el archivo `/etc/passwd` y cómo el usuario puede modificar la que le concierne?

{:.activity}
### JohnTheRipper

Crea e instala una máquina virtual de Kali Linux y obtén la contraseña de tu usuario con JohnTheRipper por fuerza bruta y por ataque de diccionario. 

> Tienes el artículo [John the Ripper](/posts/john-the-ripper) que te servirá de ayuda.
{:.prompt-tip}

{:.question}
¿Cuánto tiempo tarda JohnTheRipper en romper la contraseña "tiempos" usando fuerza bruta en tu caso? ¿Y usando el diccionario aportado? ¿Qué características tiene tu máquina Kali?

> 📷 Haz varias capturas para demostrar que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}

{:.activity}
### Introducción a las ACLs

Mira el siguiente vídeo y realiza los mismos pasos que el vídeo pero con usuarios donde se te identifique y con una partición no cifrada de 100MB. En tu caso la carpeta donde se monte el disco deberá estar en `/media/particionAcl` y tu usuario deberá ser `secretario<tuUsuario>`.

<iframe width="560" height="315" src="https://www.youtube.com/embed/7F30Aixu8HI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Podemos mezclar las ACL con el sistema de permisos tradicional? ¿Cómo sabemos cuando estamos usando ACL?

{:.question}
Si añado los permisos 666 a un fichero, pero le indico mediante ACL que, por ejemplo, el usuario hisoka solo tiene permisos de lectura, ¿podrá el usuario hisoka escribir el fichero?

> 📷 Haz una o varias capturas que demuestren que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}

{:.activity}
### ClamAV

Siguiendo los pasos del artículo [Cómo instalar ClamAV antivirus en Ubuntu 20.04 LTS](https://comoinstalar.me/como-instalar-clamav-antivirus-en-ubuntu-20-04-lts/) instala, usa y configura el antivirus ClamAV en tu máquina Zorin OS Lite.

{:.question}
¿Estamos libres de virus en los sistemas GNU Linux?

{:.question}
¿Qué es un daemon en GNU Linux?

{:question}
¿Dónde se guardan los logs de la herramienta ClamAV? ¿Qué tipo de información aparece?

Una vez hecho todo lo anterior, instala la herramienta gráfica ClamTk.

```console
#apt install clamtk
```

También puedes añadir la extensión al explorador de archivos Nautilus instalando el plugin clamtk-gnome de la siguiente manera:

```console
#apt install clamtk-gnome 
```

Este plugin permite escanear ficheros haciendo click derecho sobre el mismo.

> 📷 Haz una o varias capturas que demuestren que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}

{:.activity}
### RKHunter

Rkhunter es una aplicación para línea de comandos que se encarga automáticamente de analizar nuestro sistema en busca de rootkits, malware, scripts maliciosos, backdoors y otro tipo de software potencialmente peligroso en nuestro sistema GNU Linux para saber en todo momento si nuestro sistema se encuentra realmente seguro o de lo contrario estamos siendo víctimas de piratas informáticos. 

> Personalmente he seguido los pasos del artículo [How to Install Rkhunter on Ubuntu 20.04](https://blog.eldernode.com/install-rkhunter-on-ubuntu/) para instalar y configurar escaneos regulares.
{:.prompt-info}

A modo de resumen la manera de instalar, actualizar y usar Rkhunter es la siguiente:

```console
#apt install rkhunter -y
#rkhunter --update
#rkhunter --check
```

{:.question}
¿Qué es un rootkit?

{:.question}
¿Qué se observa en el fichero `/var/log/rkhunter.log`{: .filepath}?

{:.question}
¿Qué tres programas conocemos ya para abrir ficheros en el propio terminal?

{:.question}
¿Qué es CRON? ¿Dónde está el script de RkHunter que se ejecuta diariamente?

> 📷 Haz una o varias capturas que demuestren que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}


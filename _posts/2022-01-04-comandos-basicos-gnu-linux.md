---
title: 35 comandos básicos de GNU Linux
date: 2022-01-04 16:30:00 +0100
categories: [General, GNU Linux]
tags: [gnu linux, terminal, dam, smr, servicios en red, seguridad informática, entornos de desarrollo, redes locales]
img_path: /assets/img/comandos-basicos-gnu-linux/
---

## Introducción

En este articulo se van a explicar una serie de comandos básicos de GNU Linux que se consideran imprescindibles a la hora de trabajar con el terminal o la consola de comandos.

## Prompt

Cuando abrimos por primera vez la terminal de GNU Linux nos aparecerá algo parecido a esto:

```console
usuario@máquina:~$
```
o a esto en caso de ser superusuario:

```console
root@máquina:~#
```

Esto se llama prompt y es un conjunto de caracteres que se muestran en una línea de comandos para indicar que está a la espera de órdenes.

A continuación explicaré que significa cada parte:

- `usuario`: Es tu nombre de usuario en el equipo.
- `@`: Un símbolo separador que se suele utilizar para indicar que lo que viene tras el nombre de usuario es un equipo.
`máquina`: Se trata del nombre que tiene tu equipo, en este caso `máquina`.
- `~`: Se trata del directorio del usuario actual, en este caso representa `/home/usuario`.
- `$`: Un indicador para informar de que la línea de comandos está lista para aceptar nuevos comandos sin permisos de superusuario.
- `#`: Un indicador para informar de que la línea de comandos está lista para aceptar nuevos comandos con permisos de superusuario.

## Comandos

Los comandos en GNU Linux son case sensitive, es decir, se diferencia entre mayúsculas y minúsculas. TODOS los comandos se escriben en minúsculas.

{:.section}
{:.section}
### man

Man (MANual) es un comando que sirve para aprender como se usa cualquier comando aún sin conexión a Internet. 
Su sintaxis es la siguiente: `man <comando>`. 

Por ejemplo el comando `man tail` nos mostrará por terminal una descripción del comando tail así como un listado con todos los argumentos que podemos utilizar junto a su significado. 
Una vez estamos en el manual podemos salir de este pulsando la tecla "q".

{:.section}
### more

More es un comando que sirve para mostrar por pantalla el contenido de un fichero de texto paginando el contenido del mismo y permitiendo ir hacia adelante. 
Su sintaxis es la siguiente: `more <fichero>`.

Por ejemplo `more el_quijote.txt` nos mostrará el contenido paginado de el_quijote.txt.

⚡ Si quieres realizar estos mismos ejemplos en tu ordenador puedes descargar el fichero de [aquí](https://gist.githubusercontent.com/jsdario/6d6c69398cb0c73111e49f1218960f79/raw/8d4fc4548d437e2a7203a5aeeace5477f598827d/el_quijote.txt).

{:.section}
### less

Less es un comando que sirve para mostrar por pantalla el contenido de un fichero de texto paginando el contenido del mismo y permitiendo ir hacia adelante **y hacia atrás**. 
Su sintaxis es la siguiente: `less <fichero>`.

Por ejemplo `less el_quijote.txt` nos mostrará el contenido paginado de el_quijote.txt.

{:.section}
### pwd

Pwd (Print Working Directory) es un comando que sirve para saber en qué directorio estás. 
Su sintaxis es la siguiente : `pwd`. A continuación, se muestra un ejemplo de uso:

```console
$ pwd
/home/usuario/
```

{:.section}
### ls

Ls (LiSt) es un comando que sirve para ver los directorios y archivos del directorio actual. 
Su sintaxis es la siguiente : `ls <directorioAListar>`.

Atributos opcionales:
- **-l** muestra todos los detalles de los ficheros incluido los permisos.
- **-a** muestra los ficheros y directorios ocultos. En linux los ficheros y directorios ocultos son los que empiezan por ".".

A continuación se muestran varios ejemplos:

```console
$ ls
Descargas  Documentos  Escritorio  Imágenes  Música  Público  snap  Templates  Vídeos
```

```console
$ ls -l
total 36
drwxr-xr-x 2 smr smr 4096 dic 21 10:32 Descargas
drwxr-xr-x 2 smr smr 4096 ene  5 13:01 Documentos
drwxr-xr-x 2 smr smr 4096 dic 21 10:35 Escritorio
drwxr-xr-x 2 smr smr 4096 sep 20 10:06 Imágenes
drwxr-xr-x 2 smr smr 4096 sep 20 10:06 Música
drwxr-xr-x 2 smr smr 4096 sep 20 10:06 Público
drwx------ 4 smr smr 4096 dic  1 21:11 snap
drwxr-xr-x 2 smr smr 4096 dic 21 10:35 Templates
drwxr-xr-x 2 smr smr 4096 sep 20 10:06 Vídeos
```

{:.section}
### clear

Clear es un comando que sirve para dejar vacío el terminal actual. 
Su sintaxis es la siguiente : `clear`.

{:.section}
### cd

Cd (Change Directory) es un comando que sirve para moverte por los directorios del sistema. 
Su sintaxis es la siguiente : `cd <directorioAMoverse>`.

Existen dos tipos de rutas:

- Absolutas: Las rutas absolutas indican toda la ruta de un fichero o directorio incluyendo el directorio raíz (/).
- Relativas: Las rutas relativas indican la ruta a partir de donde se este en ese momento situado. Para ello se usan una serie de caracteres comodín.
  - `.` simboliza el directorio actual.
  - `..` simboliza el directorio padre.
  - `~` simboliza el directorio del usuario actual. Por ejemplo, "/home/smr" en el caso de que seamos el usuario "smr". Nota: Las rutas con el símbolo `~` no se consideran rutas válidas por lo que no tiene sentido clasificarla como absoluta o relativa.

 A continuación se muestran varios ejemplos de uso:

```console
$ cd /
$ cd ./patata/
$ cd ../patata/
$ cd ~/patata/
```

{:.section}
### mkdir

Mkdir (MaKe DIRectory) es un comando que sirve para crear un nuevo directorio. 
Su sintaxis es la siguiente : `mkdir <directorioACrear>`. 

A continuación, se muestra un ejemplo de uso:

```console
$ mkdir patata
```

{:.section}
### touch

Touch es un comando que sirve para crear un nuevo fichero. 
Su sintaxis es la siguiente : `touch <ficheroACrear>`. 

A continuación, se muestra un ejemplo de uso:

```console
$ touch patata.txt
```

{:.section}
### cat

Cat (conCATenate) es un comando que sirve para ver el contenido de un archivo. 
Su sintaxis es la siguiente : `cat <ficheroAVer>`. 

A continuación, se muestra un ejemplo de uso:

```console
$ cat patata.txt
Esto es el contenido del fichero patata.txt
```

<details class="card mb-2">
  <summary class="card-header question">¿Puedo añadir un nuevo nombre al comando cat?</summary>
  <div class="card-body" markdown="1">

Si. La manera más fácil es añadiendo un alias en el fichero `~/.bashrc`{: .filepath}. Por ejemplo se puede añadir lo siguiente: 

```shell
alias muestraPorPantalla='/bin/cat'
```
{: file="~/.bashrc" }

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
### echo

Echo es un comando que sirve para imprimir/mostrar por pantalla/terminal. 
Su sintaxis es la siguiente: `echo <textoAImprimir>`. 

A continuación, se muestra un ejemplo de uso:

```console
$ echo "Hola mundo!"
Hola mundo!
```

{:.section}
### rm

Rm (ReMove) es un comando que sirve para eliminar directorios vacíos o ficheros. 
Su sintaxis es la siguiente: `rm <ficheroAEliminar>`.

Atributos opcionales:

- **-R** (Recursive): Indica que el borrado se hace de manera recursiva, es decir, se borrará el directorio y todo lo que haya en su interior.

A continuación, se muestra un ejemplo de uso:

```console
$ rm patata.txt
$ rm -R patata
```

{:.section}
### rmdir

Rmdir (ReMove DIRectory) es un comando que sirve para elimina ficheros, pero solo ficheros vacíos. 
Su sintaxis es la siguiente: `rmdir <directorioAEliminar>`. 

A continuación, se muestra un ejemplo de uso:

```console
$ rmdir patata
```

{:.section}
### cp

Cp (CoPy) es un comando que sirve para copiar archivos. 
Su sintaxis es la siguiente: `cp <ficheroOrigen> <ficheroDestino>`.

Atributos opcionales:

- **-R** (Recursive): Indica que la copia se hace de manera recursiva, es decir, se copiará el directorio y todo lo que haya en su interior.

A continuación, se muestra un ejemplo de uso:

```console
$ rm patata.txt
$ rm -R patata
```

{:.section}
### mv

Mv (MoVe) es un comando que sirve para mover archivos y directorios. 
Su sintaxis es la siguiente: `mv <ficheroOrigen> <ficheroDestino>`.

Atributos opcionales:

- **-R** (Recursive): Indica que el corte se hace de manera recursiva, es decir, se cortará el directorio y todo lo que haya en su interior.

A continuación se muestra un ejemplo de uso donde se elimina el fichero patata.txt:

```console
$ rm patata.txt
```

A continuación se muestra otro ejemplo donde se elimina el directorio patata y tod lo que haya en su interior.

```console
$ rm -R patata
```

{:.section}
### chmod

Nota: en el artículo [Permisos GNU Linux](/posts/permisos-gnu-linux) se explica de manera detallada.

Chmod (CHange MODe) es un comando que sirve para cambiar permisos (lectura, escritura y ejecución) de archivos y directorios. 
Su sintaxis es la siguiente: `chmod <permisos> <ficheroACambiarPermisos>`.

A modo de resumen, se debe saber que existen distintos tipos de usuarios:

- **u** (user): usuario dueño del fichero
- **g** (group): grupo de usuarios del dueño del fichero
- **o** (other): todos los otros usuarios
- **a** (all): todos los tipos de usuario (dueño, grupo y otros) 

Y tres tipos de permiso:

- **r** (read): se refiere a los permisos de lectura
- **w** (write): se refiere a los permisos de escritura
- **x** (execute): se refiere a los permisos de ejecución

Distribuidos de la siguiente manera:

![Gestión de permisos en GNU Linux](gestion-de-permisos-linux.png)
_Distribución de los permisos de un fichero_

Teniendo esto en cuenta, existen dos modos de uso del comando chmod: el modo octal y el modo notación simbólica. De los cuales se muestran varios ejemplos:

#{:.section}
### Modo octal

- `chmod 777 patata.txt` añade todos los permisos al fichero patata.txt.
- `chmod 000 patata.txt` quita todos los permisos al fichero patata.txt.
- `chmod 755 patata.txt` añade todos los permisos al dueño del fichero patata.txt y permisos de lectura y ejecución para el grupo y para el resto de usuarios. 

#{:.section}
### Modo notación simbólica

- `chmod u+x patata.txt` añade permisos de ejecución al usuario propietario del fichero patata.txt.
- `chmod a=rwx patata.txt` pone los permisos de lectura escritura y ejecución a todos los usuarios sobre el fichero patata.txt.

{:.section}
### sudo

Sudo (Super User DO) es un comando que sirve para ejecutar un comando como administrador. 
Su sintaxis es la siguiente: `sudo <comando>`. 

A continuación se muestra un ejemplo de uso donde se instala el programa neofetch:

```console
$ sudo apt install neofetch
```

![Meme comando sudo](comandoSudo.jpg)
_Meme comando sudo_

{:.section}
### su

Su (Switch User) es un comando que sirve para cambiar de usuario.
Es necesario tener permisos de administrados para ejecutar este comando.
Su sintaxis es `su <nombreDeUsuario>`.

Ejemplo donde cambiamos al superusuario o root:

```console
usuario@máquina:/home/usuario$ sudo su
root@máquina:/home/usuario# 
```
Ejemplo donde cambiamos al usuario otroUsuario:

```console
usuario@máquina:/home/usuario$ sudo su otroUsuario
otroUsuario@máquina:/home/usuario$ 
```

{:.section}
### exit

Exit es un comando que sirve para cerrar sesión. 
Su sintaxis es la siguiente: `exit`.

{:.section}
### history

History es un comando que sirve para mostrar el histórico de comandos que se han realizado. 
Su sintaxis es la siguiente: `history`. 

A continuación se muestra un ejemplo de uso:

```console
$ history
    1  ls
    2  sudo apt install virtualbox-guest-x11-hwe
    3  sudo apt install virtualbox-guest-utils
    4  sudo apt install virtualbox-guest-x11-hwe
    5  sudo apt install virtualbox-guest-x11-hwe
    6  history
```

{:.section}
### head

Head es un comando que sirve para mostrar el principio de un fichero. 
Su sintaxis es la siguiente: `head -<numeroDeLíneas>`. 

A continuación se muestra un ejemplo de uso donde se muestran las 5 primeras lineas de el_quijote.txt:

```console
$ head -5 el_quijote.txt
DON QUIJOTE DE LA MANCHA
Miguel de Cervantes Saavedra

PRIMERA PARTE
CAPÍTULO 1: Que trata de la condición y ejercicio del famoso hidalgo D. Quijote de la Mancha
```

{:.section}
### tail

Tail es un comando que sirve para mostrar el final de un fichero. 
Su sintaxis es la siguiente: `tail -<numeroDeLíneas>`. 

A continuación se muestra un ejemplo de uso donde se muestran las 5 ultimas lineas de el_quijote.txt:

```console
$ tail -5 el_quijote.txt
Reposa aquí Dulcinea;
y, aunque de carnes rolliza, la volvió en polvo y ceniza la muerte espantable y fea. Fue de castiza ralea,
y tuvo asomos de dama; del gran Quijote fue llama, y fue gloria de su aldea.
Estos fueron los versos que se pudieron leer; los demás, por estar carcomida la letra, se entregaron a un académico para que por conjeturas los declarase. Tiénese noticia que lo ha hecho, a costa de muchas vigilias y mucho trabajo, y que tiene intención de sacallos a luz, con esperanza de la tercera salida de don Quijote.
Forse altri canterà con miglior plettro. FINIS
```

{:.section}
### locate

Locate es un comando que sirve para localizar un archivo. 
Su sintaxis es la siguiente: `locate <nombreDelFichero>`. 
En el `<nombreDelFichero>` se puede usar el carácter comodín "*" que representa cero uno o más caracteres. 

Argumentos opcionales:
- **-i** (ignore case) sirve para que no se haga distinción entre mayúsculas y minúsculas.

Ejemplos:

```console
$ locate quijote
/home/smr/Documentos/el_quijote.txt
$ locate -i documentos
/home/smr/Documentos
/home/smr/Documentos/el_quijote.txt
```

{:.section}
### find

Find es un comando que sirve para buscar archivos y directorios dentro de un directorio. 
Su sintaxis es la siguiente: `locate <directorioDondeBuscar>`. 

Los argumentos son los siguientes:

- **-name** indica el nombre del archivo o directorio. Uso `-name <nombreDelFicheroABuscar>`.
- **-type**, si es `d` indica que se busca un directorio. Uso `-type <tipoDelFicheroABuscar>`.

Ejemplos:

```console
$ find /home/ -name el_quijote.txt
/home/smr/Documentos/el_quijote.txt
$ find /home/ -name quijote
$ find /home/ -name *quijote*
/home/smr/Documentos/el_quijote.txt
$ find . -name el_quijote.txt
/home/smr/Documentos/el_quijote.txt
```

{:.section}
### grep

Grep es un comando que sirve para buscar en un documento de texto dado. 
Su sintaxis es la siguiente: `grep <cadenaABuscar> <ficheroDondeBuscar>`.

Ejemplo:

```console
$ grep "azules, " el_quijote.txt
de los miembros gigantes que está a su derecha mano, es el nunca medroso Brandabarbaran de Boliche, señor de las tres Arabias, que viene armado de aquel cuero de serpiente, y tiene por escudo una puerta, que según es fama, es una de las del templo que derribó Sanson cuando con su muerte se vengó de sus enemigos. Pero vuelve los ojos a estotra parte, y verás delante y en la frente de estotro ejército al siempre vencedor y jamás vencido Timonel de Carcajona, príncipe de la Nueva Vizcaya, que viene armado con las armas partidas a cuarteles azules, verdes, blancos y amarillos, y trae en el escudo un gato de oro en campo leonado con una letra que dice "Miau", que es el principio del nombre de su dama, que según se dice es la sin par Miaulina, hija del duque de Alfeñiquen del Algarbe. El otro, que carga y oprime los lomos de aquella poderosa alfana, que trae las armas como nieve blancas, y el escudo blanco y sin empresa alguna, es un caballero novel, de nación francés, llamado Pierres Papin, señor de las baronías de Utrique. El otro, que bate las hijadas con los herrados carcaños a aquella pintada y lijera cebra, y trae las armas de los veros azules, es el poderoso duque de Nervia, Espartafilardo del Bosque, que trae por empresa en el escudo una esparraguera con una letra en castellano, que dice así: "Rastrea mi suerte".
```

{:.section}
### diff

Diff es un comando que compara el contenido de dos archivos línea por línea. Después de analizar los archivos, genera las líneas que no coinciden. Los programadores a menudo usan este comando cuando necesitan hacer modificaciones al programa en lugar de reescribir todo el código fuente. 
Su sintaxis es la siguiente: `grep <fichero1> <fichero2>`.

La forma más simple de usar este comando es `diff fichero1.txt fichero2.txt`.

{:.section}
### chown

Chown (CHange OWNer) es un comando que sirve para cambiar o transferir la propiedad de un archivo a otro usuario. 
Su sintaxis es la siguiente: `chown <usuario> <fichero>`. 

El siguiente ejemplo pone al usuario "marcos" como propietario del fichero "fichero.txt".

```console
$ chown marcos fichero.txt
```

{:.section}
### whoami

Whoami (WHO AM I?) es un comando que sirve para saber quien soy yo, es decir, para saber el usuario con el que estoy logeado en la terminal correspondiente. 
Su sintaxis es la siguiente: `whoami`.

Ejemplo:

```console
$ whoami
smr
```

{:.section}
### neofetch

Neofetch es un comando que sirve para mostrar información detallada sobre tu sistema Linux, como el nombre de la máquina, el sistema operativo, el núcleo, etc. de una manera bonita. 
Su sintaxis es la siguiente: `neofetch`. 
Este programa es necesario instalarlo previamente con la instrucción `sudo apt install neofetch`.

Ejemplo:

```console
$ neofetch
        `osssssssssssssssssssso`           smr@smr-VirtualBox 
       .osssssssssssssssssssssso.          ------------------ 
      .+oooooooooooooooooooooooo+.         OS: Zorin OS 15.3 x86_64 
                                           Host: VirtualBox 1.2 
                                           Kernel: 5.4.0-91-generic 
  `::::::::::::::::::::::.         .:`     Uptime: 5 hours, 20 mins 
 `+ssssssssssssssssss+:.`     `.:+ssso`    Packages: 2021 
.ossssssssssssssso/.       `-+ossssssso.   Shell: bash 4.4.20 
ssssssssssssso/-`      `-/osssssssssssss   Resolution: 1920x902 
.ossssssso/-`      .-/ossssssssssssssso.   DE: Xfce 
 `+sss+:.      `.:+ssssssssssssssssss+`    WM: Xfwm4 
  `:.         .::::::::::::::::::::::`     WM Theme: ZorinBlue-Light 
                                           Theme: ZorinBlue-Light [GTK2/3] 
                                           Icons: ZorinGrey-Light [GTK2], ZorinBlue-Light [GTK3] 
      .+oooooooooooooooooooooooo+.         Terminal: xfce4-terminal 
       -osssssssssssssssssssssso-          Terminal Font: Monospace 12 
        `osssssssssssssssssssso`           CPU: Intel i7-1065G7 (4) @ 1.497GHz 
                                           GPU: VMware SVGA II Adapter 
                                           Memory: 1372MiB / 7961MiB 
```

{:.section}
### wget

Wget (Web Get) es un comando que sirve para descargar archivos de Internet. 
Su sintaxis es la siguiente: `wget <url>`. 

En el siguiente ejemplo nos descargamos una imagen de prueba para posteriormente comprobar que efectivamente la nueva imagen está ahí.

```console
$ wget https://detallesorballo.com/wp-content/uploads/2020/09/imagen-de-prueba-320x240-1.jpg
--2022-01-06 16:16:07--  https://detallesorballo.com/wp-content/uploads/2020/09/imagen-de-prueba-320x240-1.jpg
Resolviendo detallesorballo.com (detallesorballo.com)... 82.98.155.205
Conectando con detallesorballo.com (detallesorballo.com)[82.98.155.205]:443... conectado.
Petición HTTP enviada, esperando respuesta... 200 OK
Longitud: 17247 (17K) [image/jpeg]
Guardando como: "imagen-de-prueba-320x240-1.jpg"

imagen-de-prueba-320x240-1.jpg                              100%[=========================================================================================================================================>]  16,84K  --.-KB/s    en 0s      

2022-01-06 16:16:07 (126 MB/s) - "imagen-de-prueba-320x240-1.jpg" guardado [17247/17247]
$ ls
el_quijote.txt  imagen-de-prueba-320x240-1.jpg
```

{:.section}
### curl

Curl (Client URL) es un comando que sirve para descargar archivos desde una ubicación remota.
Su sintaxis es la siguiente: `curl <url>`. 

Atributos opcionales:

- **-O** guardará el archivo en el directorio de trabajo actual con el mismo nombre de archivo que el remoto.
- **-o** permite especificar un nombre de archivo o ubicación diferente.
- **-I** recupera la información del encabezado de un sitio web.
- **--cookie-jar** guarda las cookies en un fichero.
- **--cookie** manda las cookie de un fichero.
- **--limit-rate** restringe el ancho de banda.

Ejemplos de uso:

```console
$ curl testdomain.com
<html><head><title>testdomain.com</title></head><body><h1>testdomain.com</h1><p>Coming soon.</p></body></html>
```

```console
$ curl -I www.testdomain.com
HTTP/1.1 200 OK
server: openresty/1.13.6.1
date: Thu, 06 Jan 2022 15:30:09 GMT
content-type: application/octet-stream
content-length: 118
content-type: text/html
connection: close
```

```console
$ curl --cookie-jar Mycookies.txt https://www.samplewebsite.com /index.html -O
```

```console
$ curl --cookie Mycookies.txt https://www. samplewebsite.com
```

{:.section}
### top

Top (Table Of Processes) es un comando que nos da información acerca del uso de la cpu, de la memoria, de los procesos en ejecución, etc en tiempo real. 
Nos puede ayudar a monitorizar nuestro servidor dedicado si notamos que algo no funciona bien.
Su sintaxis es la siguiente: `top`. 


```console
$ top
top - 15:30:53 up 15:51,  1 user,  load average: 0,08, 0,06, 0,01
Tareas: 204 total,   1 ejecutar,  154 hibernar,    0 detener,    0 zombie
%Cpu(s):  2,4 usuario,  0,7 sist,  0,0 adecuado, 96,7 inact,  0,1 en espera,  0,0 hardw int,  0,1 softw int,  0,0 robar tiempo
KiB Mem :  8152800 total,  4470668 libre,  1397904 usado,  2284228 búfer/caché
KiB Intercambio:  1459804 total,  1459804 libre,        0 usado.  6409468 dispon Mem 

  PID USUARIO   PR  NI    VIRT    RES    SHR S  %CPU %MEM     HORA+ ORDEN                                                                                                                                                                     
 1017 root      20   0 1098876 132956  54792 S   8,6  1,6   2:24.25 Xorg                                                                                                                                                                      
 1647 smr       20   0  780044  59372  31676 S   2,0  0,7   0:17.02 xfce4-terminal                                                                                                                                                            
 1388 smr       20   0 1191348  95760  56780 S   0,7  1,2   0:13.18 xfwm4                                                                                                                                                                     
 1900 smr       20   0 2622268 125872  91000 S   0,7  1,5   2:13.25 Isolated Web Co                                                                                                                                                           
  202 root     -51   0       0      0      0 S   0,3  0,0   0:00.55 irq/18-vmwgfx                                                                                                                                                             
 1335 smr       20   0  193568   2884   2528 S   0,3  0,0   2:19.84 VBoxClient  
...
```

## Comandos para redes

{:.section}
### ifconfig

Ifconfig es un comando que sirve para mostrar la configuración vigente de las interfaces de red activas, con detalles como la dirección MAC o el tráfico que ha circulado por las mismas hasta el momento. Las interfaces de red en Linux se suelen denominar eth (eth0, eth1, etc.).
Su sintaxis es la siguiente: `ìfconfig`.


Ejemplo:

```console
$ ifconfig
enp0s3: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.0.2.15  netmask 255.255.255.0  broadcast 10.0.2.255
        inet6 fe80::d148:566a:790c:a795  prefixlen 64  scopeid 0x20<link>
        ether 08:00:27:49:ad:33  txqueuelen 1000  (Ethernet)
        RX packets 45223  bytes 50986705 (50.9 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 22344  bytes 2378071 (2.3 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Bucle local)
        RX packets 7871  bytes 568691 (568.6 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 7871  bytes 568691 (568.6 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```

{:.section}
### ping

Ping es un comando que sirve para averiguar si el equipo en el que estamos trabajando puede comunicarse con otros a través de la red. De esta forma podemos constatar si una instalación de red está funcionando correctamente.
Su sintaxis es la siguiente: `ping <ipOURl>`.

Ejemplo:

```console
$ ping 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=115 time=46.9 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=115 time=261 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=115 time=162 ms
^C
--- 8.8.8.8 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2002ms
rtt min/avg/max/mdev = 46.900/157.255/261.976/87.895 ms
```

```console
$ ping marcosruiz.github.io
PING marcosruiz.github.io (185.199.109.153) 56(84) bytes of data.
64 bytes from cdn-185-199-109-153.github.com (185.199.109.153): icmp_seq=1 ttl=56 time=202 ms
64 bytes from cdn-185-199-109-153.github.com (185.199.109.153): icmp_seq=2 ttl=56 time=77.2 ms
64 bytes from cdn-185-199-109-153.github.com (185.199.109.153): icmp_seq=3 ttl=56 time=62.5 ms
^C
--- marcosruiz.github.io ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2003ms
rtt min/avg/max/mdev = 62.597/114.209/202.812/62.935 ms
```

{:.section}
### traceroute

Traceroute es un comando que sirve para determinar la ruta que toma un paquete de protocolo de Internet (IP) para alcanzar su destino.
Su sintaxis es la siguiente: `traceroute <ipOURl>`.

```console
$ traceroute xataka.com
traceroute to xataka.com (52.85.187.44), 30 hops max, 60 byte packets
 1  _gateway (10.0.2.2)  0.510 ms  0.494 ms  0.462 ms
 2  * * *
 3  * * *
 4  * * *
...
```

## Bibliografía

- [34 comandos básicos de Linux que todo usuario debe saber](https://www.hostinger.es/tutoriales/linux-comandos#11-comando-locate)
- [Los 42 comandos más importantes en GNU/Linux](https://www.ochobitshacenunbyte.com/2018/12/04/los-42-comandos-mas-importantes-en-gnu-linux/)
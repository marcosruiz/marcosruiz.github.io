---
title: "Tutorial: RAID"
date: 2022-12-01 09:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, seguridad pasiva, raid, tutorial]
img_path: /assets/img/tutorial-raid/
---

## Introducción

En este artículo se va a explicar como montar un RAID 0, RAID 1, RAID 5.

Para montar un RAID hay que hacer 3 cosas:

1. Conectar los discos que vayamos a usar e iniciar la máquina.
1. Resetear los RAID existentes (opcional).
1. Crear el RAID/ARRAY.
1. Asignar un sistema de ficheros (FAT, NTFS, EXT4, etc.) al RAID y montarlo.
1. Hacer persistentes los cambios haciendo que en el inicio del sistema se cree el RAID  y se monte correctamente.

## Crear y añadir discos a la máquina virtual

En la máquina deseada, hacemos click en "Configuración":

![imgDescription](discosVm01.png)

Vamos al apartado "Almacenamiento" y hacemos click en "Añadir disco duro":

![imgDescription](discosVm02.png)

Hacemos click en "Crear imagen de disco":

![imgDescription](discosVm03.png)

Seleccionamos la opción por defecto:

![imgDescription](discosVm04.png)

Ponemos el tamaño deseado al disco, en mi caso 100 MB:

![imgDescription](discosVm05.png)

Observamos que se a añadido a la lista de discos. 

- Si queremos crear más discos le volveremos a dar a "Crear imagen de disco" y repetiremos el proceso.
- Si queremos añadir a la máquina virtual cualquier disco lo marcamos y hacemos click en "Seleccionar".

![imgDescription](discosVm06.png)

Repetimos este último paso por cada disco que queramos conectar a la máquina virtual hasta que tengamos un resultado similar al mio:

![imgDescription](discosVm07.png)

## RAID 0

Instalamos los programas que vamos a usar si no los tenemos ya instalados:

```console
$sudo apt-get install mdadm
```

> Las siglas MDADM vienen de Multiple Disk and Device Administration.
{:.prompt-info}

Nos aseguramos que no exista una configuración en sdb:

```console
$sudo mdadm -E /dev/sdb
mdadm: No md superblock detected on /dev/sdb.
```

Podemos hacer lo mismo con el resto de discos.

Se obtiene información sobre todos los discos que el sistema reconoce y que están debidamente montados:

```console
$sudo fdisk -l
```

Creamos la tabla de particionamiento:

```console
$sudo fdisk /dev/sdb
```

Seguimos la siguiente secuencia:

- `n` para crear una nueva partición
- `p` para indicar que la partición es primaria
- `1` para decir que es el número de la partición
- `enter` para los valores de los sectores y el tamaño de la partición a no ser que queramos especificarlo
- `p` si queremos imprimir ahora la tabla de particiones
- `l` para listar los tipos disponibles
- `t`  para cambiar a tipo RAID
- `fd`  para cambiar a RAID
- `w`  para escribir los cambios y poder salir

Esta misma secuencia hay que repetirla para cada disco que vaya a estar en el RAID. Otra opción es copiar la configuración directamente de un disco a otro:

```console
#sfdisk -d /dev/sdb | sfdisk /dev/sdc
```

Una vez tengamos todos los discos configurados podemos crear el RAID:

```console
$sudo mdadm --create /dev/md0 --level=0 --raid-devices=2 /dev/sdb1 /dev/sdc1
mdadm: Defaulting to version 1.2 metadata
mdadm: array /dev/md0 started.
```

Observamos el estado del raid md0:

```console
$cat /proc/mdstat
```

o

```console
$watch -n1 cat /proc/mdstat
```

Comprobamos el estado del RAID:

```console
$sudo mdadm -E /dev/sd[b-c]1
$sudo mdadm --detail /dev/md0
```

> El comando `mdadm -E /dev/sd[b-c]1` hace lo mismo que `mdadm -E /dev/sdb1 /dev/sdc1` pero utilizando una expresión regular.
{:.prompt-info}

Creamos el sistema de ficheros:

```console
$sudo mkfs.ext4 /dev/md0
```

Creamos la carpeta donde vamos a montar el RAID:

```console
$sudo mkdir /mnt/raid0
```

Montamos el sistema de ficheros en la carpeta creada:

```console
$sudo mount /dev/md0 /mnt/raid0/
```

Hacemos persistentes los cambios añadiendo al fichero `/etc/fstab`{: .filepath} la siguiente línea al final:

```plaintext
/dev/md0 /mnt/raid0 ext4 defaults,nofail,discard 0 0
```

Guardamos la configuración del RAID en `/etc/mdadm/mdadm.conf`{: .filepath} siendo el usuario root:

```console
#mdadm --detail --scan --verbose >> /etc/mdadm/mdadm.conf
```

> ¡Cuidado! Con el comando `mdadm --detail --scan --verbose >> /etc/mdadm/mdadm.conf` cargaremos toda la configuración actual en el fichero `/etc/mdadm/mdadm.conf`{: .filepath}. Si solo queremos añadir la configuración de un RAID deberemos borrar la configuración anterior o hacer `mdadm --detail --scan --verbose /dev/md<númeroDeRaid> >> /etc/mdadm/mdadm.conf`.
{:.prompt-warning}

Actualizamos para evitar que se nos actualize el nombre del RAID en siguientes inicios:

```console
$sudo update-initramfs -u
```

Apagamos para comprobar que el montado es persistente:

```console
$sudo reboot
```

> Al reiniciar, a veces se cambia el nombre del RAID de md0 a md127. Por lo que habrá que volver a cambiar el fichero `/etc/fstab`{: .filepath} y el fichero `/etc/mdadm/mdadm.conf`{: .filepath} para que haga referencia al nuevo nombre.
{:.prompt-warning}

Para probar que estamos usando el RAID y está montado correctamente:

```console
$df -h -x devtmpfs -x tmpfs
```

o de un RAID en específico:

```console
$sudo mdadm --detail /dev/md0
```

### Hacer que falle un disco en el RAID 0

Para hacer que una partición falle podemos desconectarlo directamente o podemos ejecutar el siguiente comando:

```console
$sudo mdadm --manage /dev/md0 --fail /dev/sdb1
```

El disco que falle se marcará con una "(F)".

> No podemos hacer que falle un disco que haga que falle el sistema RAID.
{:.prompt-info}

Opcionalmente podemos quitarlo del todo:

```console
$sudo mdadm --manage /dev/md0 --remove /dev/sdb1
```

Para deshacer esto podemos volver a añadirlo:

```console
$sudo mdadm --manage /dev/md0 --add /dev/sdb1
```

> Deberíamos hacer una copia de seguridad antes para evitar perder información.
{:.prompt-warning}

### Hacer crecer el RAID 0 y añadir disco

Si queremos incorporar discos al RAID solo tenemos que hacer lo siguiente:

```console
$sudo mdadm --grow /dev/md0 --level=0 --raid-devices=3 --add /dev/sdd
```

> Deberíamos hacer una copia de seguridad antes para evitar perder información añadiendo la opción  `--backup-file=/backupdelraid`.
{:.prompt-warning}

## RAID 1

Se crearán dos discos y se usarán para el nuevo RAID. A diferencia de la solución para un RAID 0, se usará el nivel 1 en el comando:

```console
$sudo mdadm --create /dev/md1 --level=1 --raid-devices=2 /dev/sdb1 /dev/sdc1
```

### Hacer crecer el RAID 1 y añadir disco

Añadimos un nuevo disco al raid1 y se deja a la espera:

```console
$sudo mdadm --manage /dev/md1 --add /dev/sdd1
```

Lo añadimos al sistema raid1:

```console
$mdadm --grow /dev/md1 --raid-disk=3
```

> Deberíamos hacer una copia de seguridad antes para evitar perder información añadiendo la opción  `--backup-file=/backupdelraid`.
{:.prompt-warning}

Comprobamos el estado del RAID 1:

```console
$sudo mdadm --detail /dev/md1
/dev/md1:
           Version : 1.2
     Creation Time : Mon Dec 19 12:44:21 2022
        Raid Level : raid1
        Array Size : 100352 (98.00 MiB 102.76 MB)
     Used Dev Size : 100352 (98.00 MiB 102.76 MB)
      Raid Devices : 3
     Total Devices : 3
       Persistence : Superblock is persistent

       Update Time : Mon Dec 19 12:52:23 2022
             State : clean
    Active Devices : 3
   Working Devices : 3
    Failed Devices : 0
     Spare Devices : 0

Consistency Policy : resync

              Name : mrugserver:1  (local to host mrugserver)
              UUID : 59c306f7:8c65734d:2136f333:cd0c3cf8
            Events : 41

    Number   Major   Minor   RaidDevice State
       0       8       17        0      active sync   /dev/sdb1
       1       8       33        1      active sync   /dev/sdc1
       2       8       48        2      active sync   /dev/sdd1
```

### Pruebas con el RAID 1 de tres discos

Actualmente tengo 3 discos en el RAID 1 como se puede ver en la salida del último comando del apartado anterior.

Hacemos que falle la partición `sdb1` y vemos que seguimos pudiendo acceder a mrug.txt:

```console
$sudo mdadm --manage /dev/md1 --fail /dev/sdb1
$sudo mdadm --manage /dev/md1 --remove /dev/sdb1
$sudo mdadm --detail /dev/md1
$cat /mnt/raid1/mrug.txt
```

Hacemos que falle la partición `sdc1` y vemos que seguimos pudiendo acceder a mrug.txt:

```console
$sudo mdadm --manage /dev/md1 --fail /dev/sdc1
$sudo mdadm --manage /dev/md1 --remove /dev/sdc1
$sudo mdadm --detail /dev/md1
$cat /mnt/raid1/mrug.txt
```

Hacemos que falle la partición `sdd1` y vemos que no nos deja:

```console
$sudo mdadm --manage /dev/md1 --fail /dev/sdd1
mdadm: set device faulty failed for /dev/sdd1:  Device or resource busy
```

Volvemos a añadir las particiones sdb1 y sdc1.

```console
$sudo mdadm --manage /dev/md1 --add /dev/sdb1
$sudo mdadm --manage /dev/md1 --add /dev/sdc1
```


## RAID 1+0

Una vez tenemos 4 nuevos discos conectados iniciamos le sistema. Una vez hemos hecho login con nuestro usuario (del grupo sudoers), nos logeamos como root:

```console
$sudo su
```

$sudo mdadm --manage /dev/md1 --fail /dev/sdb1

### Creamos el RAID 1+0

Copiamos la configuración del disco sdb al resto de discos:

```console
#sfdisk -d /dev/sdb | sfdisk /dev/sde
#sfdisk -d /dev/sdb | sfdisk /dev/sdf
#sfdisk -d /dev/sdb | sfdisk /dev/sdg
#sfdisk -d /dev/sdb | sfdisk /dev/sdh
```

Creamos el RAID, en mi caso le he puesto el identificador md10:

```console
#mdadm --create /dev/md10 --level=raid10 --raid-devices=4 /dev/sde1 /dev/sdf1 /dev/sdg1 /dev/sdh1
```

Comprobamos el estado del RAID 1+0 y todos los discos por los que está compuesto el mismo:

```console
#cat /proc/mdstat
#mdadm -E /dev/sd[e-h]1
#mdadm --detail /dev/md10
```

### Asignamos el sistema de ficheros al RAID 1+0 y montamos

Creamos el sistema de ficheros

```console
#mkfs.ext4 -F /dev/md10
```

Creamos la carpeta donde vamos a montar el RAID:


```console
#mkdir -p /mnt/raid10
```

Montamos el RAID en la ruta creada:

```console
#mount /dev/md10 /mnt/raid10
```

Comprobamos el espacio disponible:

```console
#df -h -x devtmpfs -x tmpfs
```

### Hacemos persistentes los cambios

Guardamos la configuración del RAID:

```console
#mdadm --detail --scan | sudo tee -a /etc/mdadm/mdadm.conf
```

> Comprobar que en el fichero `/etc/mdadm/mdadm.conf`{: .filepath} no hay nada duplicado.
{:.prompt-warning}

```console
#update-initramfs -u
```

Hacemos que se monte en el inicio del sistema:

```console
#echo '/dev/md10 /mnt/raid10 ext4 defaults,nofail,discard 0 0' | sudo tee -a /etc/fstab
```

> Comprobar que en el fichero `/etc/fstab`{: .filepath} no hay nada duplicado.
{:.prompt-warning}

Reiniciamos:

```console
#reboot
```

Comprobamos que todo está bien:

```console
$sudo df -h -x devtmpfs -x tmpfs
Filesystem                         Size  Used Avail Use% Mounted on
/dev/mapper/ubuntu--vg-ubuntu--lv  9,8G  4,3G  5,0G  47% /
/dev/sda2                          1,8G  247M  1,4G  15% /boot
/dev/md10                          166M   24K  153M   1% /mnt/raid10
```

### Eliminar el RAID 1+0

>Este proceso destruirá el RAID y cualquier dato escrito en él. Asegúrate de que estás trabajando con el RAID correcto y que has copiado todos los datos que necesites preservar. 
{:.prompt-warning}

Listamos los RAIDs que tenemos mirando el contenido del fichero `/proc/mdstat`{: .filepath}:

```console
$cat /proc/mdstat
Personalities : [raid0] [raid10] [linear] [multipath] [raid1] [raid6] [raid5] [raid4]
md10 : active raid10 sdh1[3] sdg1[2] sdf1[1] sde1[0]
      198656 blocks super 1.2 512K chunks 2 near-copies [4/4] [UUUU]

unused devices: <none>
```

Desmontamos el RAID del sistema de ficheros:

```console
$sudo umount /dev/md10
```

Paramos y eliminamos el RAID:

```console
$sudo mdadm --stop /dev/md10
```

Eliminamos la configuración e inicio del ARRAY:

```console
$sudo nano /etc/mdadm/mdadm.conf
```

Averiguamos que discos son los que forman parte del RAID:


> Ten en cuenta que los nombres de los discos `/dev/sd<letra>`{: .filepath} pueden cambiar cada vez que reinicias por lo que deberías asegurarte de que seleccionas los dispositivos correctos.
{:.prompt-warning}

```console
$lsblk -o NAME,SIZE,FSTYPE,TYPE,MOUNTPOINT
NAME                       SIZE FSTYPE            TYPE   MOUNTPOINT
sde                        100M                   disk
└─sde1                      99M linux_raid_member part
  └─md10                   194M ext4              raid10 /mnt/raid10
sdf                        100M                   disk
└─sdf1                      99M linux_raid_member part
  └─md10                   194M ext4              raid10 /mnt/raid10
sdg                        100M                   disk
└─sdg1                      99M linux_raid_member part
  └─md10                   194M ext4              raid10 /mnt/raid10
sdh                        100M                   disk
└─sdh1                      99M linux_raid_member part
  └─md10                   194M ext4              raid10 /mnt/raid10
sr0                       1024M                   rom
```

Y quitamos la metainforamción de los discos:

```console
$sudo mdadm --zero-superblock /dev/sde1
$sudo mdadm --zero-superblock /dev/sdf1
$sudo mdadm --zero-superblock /dev/sdg1
$sudo mdadm --zero-superblock /dev/sdh1
```

Elimina o comenta toda referencia que haya del raid en `/etc/fstab`{: .filepath}.


```console
$sudo nano /etc/fstab
```

Actualiza el `initramfs` de nuevo para que el sistema de ficheros no intente montar el RAID al inicio:

```console
$sudo update-initramfs -u
```

Reiniciamos con `sudo reboot` y comprobamos que todo está limpio:

```console
$lsblk -o NAME,SIZE,FSTYPE,TYPE,MOUNTPOINT
NAME                       SIZE FSTYPE      TYPE MOUNTPOINT
loop0                      103M squashfs    loop /snap/lxd/23541
loop1                     63,2M squashfs    loop /snap/core20/1738
loop2                     49,6M squashfs    loop /snap/snapd/17883
loop3                     79,9M squashfs    loop /snap/lxd/22923
loop4                     63,2M squashfs    loop /snap/core20/1695
sda                         20G             disk
├─sda1                       1M             part
├─sda2                     1,8G ext4        part /boot
└─sda3                    18,2G LVM2_member part
  └─ubuntu--vg-ubuntu--lv   10G ext4        lvm  /
sdb                        100M             disk
└─sdb1                      99M             part
sdc                        100M             disk
└─sdc1                      99M             part
sdd                        100M             disk
└─sdd1                      99M             part
sde                        100M             disk
└─sde1                      99M             part
sdf                        100M             disk
└─sdf1                      99M             part
sdg                        100M             disk
└─sdg1                      99M             part
sdh                        100M             disk
└─sdh1                      99M             part
sr0                       1024M             rom
```

Como podemos ver no queda rastro de ningún md.

## RAID 5

Se crearán tres discos y se usarán para el nuevo RAID. A diferencia de la solución para un RAID1 se usará el nivel 5 en el comando:

```console
$sudo mdadm --create /dev/md0 --level=5 --raid-devices=3 /dev/sdd1 /dev/sde1 /dev/sdf1
```

## Comandos para comprobar estado del RAID

```console
$sudo mdadm --detail /dev/md<número>
$df -h -x devtmpfs -x tmpfs
$cat /proc/mdstat
$sudo lsblk -o NAME,SIZE,FSTYPE,TYPE,MOUNTPOINT
```

## Bibliografía

- [Configurar cualquier RAID en cualquier distro en Linux](https://www.nosolohacking.info/configurar-cualquier-raid-en-cualquier-distro-de-linux/)
- [How To Create RAID Arrays with mdadm on Ubuntu 22.04](https://www.digitalocean.com/community/tutorials/how-to-create-raid-arrays-with-mdadm-on-ubuntu-22-04)
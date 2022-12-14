---
title: "Tutorial: RAID"
date: 2022-12-01 09:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, seguridad pasiva, raid, tutorial]
img_path: /assets/img/tutorial-raid/
---

## Introducción

En este artículo se va a explicar como montar un RAID 0, RAID 1, RAID 5.

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
watch -n1 cat /proc/mdstat
```

Comprobamos el estado del RAID:

```console
$sudo mdadm -E /dev/sd[b-c]1
$sudo mdadm --detail /dev/md0
```

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

Apagamos para comprobar que el montado es persistente:

```console
$sudo reboot
```

> Al reiniciar, a veces se cambia el nombre del RAID de md0 a md127 por una razón que desconozco. Por lo que habrá que volver a cambiar el fichero `/etc/fstab`{: .filepath} y el fichero `/etc/mdadm/mdadm.conf`{: .filepath} para que haga referencia al nuevo nombre.
{:.prompt-warning}

Para probar que estamos usando el RAID y está montado correctamente:

```console
$df
```

o de un RAID en específico:

```console
$sudo mdadm --detail /dev/md0
```

### Hacer que falle un disco en el RAID0

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

### Hacer crecer el RAID0

Si queremos incorporar discos al RAID solo tenemos que hacer lo siguiente:

```console
$sudo mdadm --grow /dev/md0 --level=0 --raid-devices=3 --add /dev/sdd
```

> Deberíamos hacer una copia de seguridad antes para evitar perder información.
{:.prompt-warning}

## RAID 1

Se crearán dos discos y se usarán para el nuevo RAID. A diferencia de la solución para un RAID1, se activará el módulo raid5 con modprobe raid5 y se usará el nivel 5 en el comando:

```console
$sudo mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sdd1 /dev/sde1
```

## RAID 1+0

```console
#mdadm --create /dev/md0 --level=raid10 --raid-devices=4 /dev/sde1 /dev/sdf1 /dev/sdg1 /dev/sdh1
```

```console
#mdadm --detail --scan --verbose >> /etc/mdadm/mdadm.conf
```

```console
$
```

```console
$
```

```console
$
```

```console
$
```

```console
$
```

```console
$
```

```console
$
```


## RAID 5

Se crearán tres discos y se usarán para el nuevo RAID. A diferencia de la solución para un RAID1, se activará el módulo raid5 con modprobe raid5 y se usará el nivel 5 en el comando:

```console
$sudo mdadm --create /dev/md0 --level=5 --raid-devices=3 /dev/sdd1 /dev/sde1 /dev/sdf1
```


## Bibliografía

- [Configurar cualquier RAID en cualquier distro en Linux](https://www.nosolohacking.info/configurar-cualquier-raid-en-cualquier-distro-de-linux/)
- [How To Create RAID Arrays with mdadm on Ubuntu 22.04](https://www.digitalocean.com/community/tutorials/how-to-create-raid-arrays-with-mdadm-on-ubuntu-22-04)
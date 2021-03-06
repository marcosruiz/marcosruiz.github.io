---
title: "Tutorial: Configuración de OpenMediaVault"
date: 2022-02-17 21:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [gnu linux, comandos, terminal, bash, seguridad informática]
---

## Cambiar contraseña del usuario admin

Cambia la contraseña del usuario admin.

![img-description](/assets/img/tutorial-configuracion-openmediavault/omv-password.png)
_Pasos para cambiar la contraseña al usuario admin_

## Añadir discos en VirtualBox

A continuación se muestran los pasos para añadir un disco nuevo a OpenMediaVault:

![img-description](/assets/img/tutorial-configuracion-openmediavault/anadirDisco1.png)
_Pasos para añadir un disco nuevo de 100MB_

![img-description](/assets/img/tutorial-configuracion-openmediavault/anadirDisco2.png)
_Pasos para añadir un disco nuevo de 100MB_

![img-description](/assets/img/tutorial-configuracion-openmediavault/anadirDisco3.png)
_Pasos para añadir un disco nuevo de 100MB_

![img-description](/assets/img/tutorial-configuracion-openmediavault/anadirDisco4.png)
_Pasos para añadir un disco nuevo de 100MB_

![img-description](/assets/img/tutorial-configuracion-openmediavault/anadirDisco5.png)
_Pasos para añadir un disco nuevo de 100MB_

Esto lo repetiremos 3 veces más y nos deberá quedar algo tal que así:

![img-description](/assets/img/tutorial-configuracion-openmediavault/anadirDisco6.png)
_4 discos añadidos a la máquina OpenMediaVault_

![img-description](/assets/img/tutorial-configuracion-openmediavault/anadirDisco7.png)
_4 discos añadidos a la máquina OpenMediaVault_

## Crear RAID5 en OpenMediaVault

Para crear un RAID5 es necesario haber añadido varios discos a la máquina virtual (ver apartado anterior). Una vez tenemos los discos conectados deberemos crear el RAID5, crear el sistema de ficheros y montarlo como se muestra en las siguientes capturas.

### Crear RAID5

![img-description](/assets/img/tutorial-configuracion-openmediavault/raid1.png)
_Pasos para crear un RAID5_

![img-description](/assets/img/tutorial-configuracion-openmediavault/raid2.png)
_Pasos para crear un RAID5_

![img-description](/assets/img/tutorial-configuracion-openmediavault/raid3.png)
_Pasos para crear un RAID5_

![img-description](/assets/img/tutorial-configuracion-openmediavault/raid4.png)
_Pasos para crear un RAID5_

![img-description](/assets/img/tutorial-configuracion-openmediavault/raid5.png)
_Pasos para crear un RAID5_

![img-description](/assets/img/tutorial-configuracion-openmediavault/raid6.png)
_Pasos para crear un RAID5_

Si lo hemos hecho todo bien, deberemos tener un RAID5 con una capacidad de 196MB como se ve a continuación.

![img-description](/assets/img/tutorial-configuracion-openmediavault/raid7.png)
_Resultado final de crear un RAID5_

### Montar en el sistema de ficheros

Una vez tenemos el dispositivo creado debemos montarlo en una ruta específica. A continuación se explican los pasos con capturas.

![img-description](/assets/img/tutorial-configuracion-openmediavault/raid8.png)
_Pasos para montar RAID5 en el sistema de ficheros_

![img-description](/assets/img/tutorial-configuracion-openmediavault/raid9.png)
_Pasos para montar RAID5 en el sistema de ficheros_

![img-description](/assets/img/tutorial-configuracion-openmediavault/raid10.png)
_Pasos para montar RAID5 en el sistema de ficheros_

![img-description](/assets/img/tutorial-configuracion-openmediavault/raid11.png)
_Pasos para montar RAID5 en el sistema de ficheros_

![img-description](/assets/img/tutorial-configuracion-openmediavault/raid13.png)
_Pasos para montar RAID5 en el sistema de ficheros_

Si lo hemos hecho todo bien, deberemos ver algo similar a esto:

![img-description](/assets/img/tutorial-configuracion-openmediavault/raid12.png)
_Pasos para montar RAID5 en el sistema de ficheros_

## Habilitar servicio SSH

Comprueba que el servicio SSH está habilitado.

![img-description](/assets/img/tutorial-configuracion-openmediavault/omv-ssh.png)
_Servicio SSH_

Comprueba que te puedes conectar desde un cliente Zorin OS que esté en la misma red local. ⚠️ Dicho usuario debe estar en el grupo ssh.

![img-description](/assets/img/tutorial-configuracion-openmediavault/conexionSshDesdeCliente.png)
_Conexión SSH a través de terminal desde cliente Zorin OS_

Si hemos creado nuestro RAID5 y lo hemos montado deberá estar montado en la ruta /srv/dev-disk-by-uuid-\<uuid\>/.

![img-description](/assets/img/tutorial-configuracion-openmediavault/raid14.png)
_Conexión SSH a traves del navegador de ficheros_

Como vemos se utiliza el protocolo SFTP ya que funciona sobre SSH.

![img-description](/assets/img/tutorial-configuracion-openmediavault/raid15.png)
_Conexión SSH a traves del navegador de ficheros_

## Crear directorio compartido

Lo primero debemos crear un directorio en el dispositivo que queramos, en mi caso, el RAID5 anteriormente montado.

![img-description](/assets/img/tutorial-configuracion-openmediavault/shared1.png)
_Creación del directorio compartido public_

Lo segundo es indicarle el Propietario, Grupo y Otros. En mi caso:

- El propietario es usuario root el cual tendrá permisos rwx.
- El grupo es users (todos mis usuarios pertenecen a este grupo), los cuales tendrán permisos rwx también.
- El resto de usuarios (por ejemplo usuarios anónimos) tendrán permisos r-x para que solo puedan descargar.

![img-description](/assets/img/tutorial-configuracion-openmediavault/shared2.png)
_Creación del directorio compartido public_

Con esto hecho, ahora podremos conectarnos con un usuario cualquiera (que esté en el grupo ssh) a través de SSH y podremos crear, borrar y descargar ficheros como se puede ver a continuación.

![img-description](/assets/img/tutorial-configuracion-openmediavault/shared3.png)
_Prueba de carpeta public desde cliente Zorin OS Lite_

![img-description](/assets/img/tutorial-configuracion-openmediavault/shared4.png)
_Prueba de carpeta public desde cliente Zorin OS Lite_

## Habilitar servicio FTP

Habilita el servicio FTP.

![img-description](/assets/img/tutorial-configuracion-openmediavault/omv-ftp.png)
_Pasos para activar el servicio FTP_

## Habilitar servicio FTPS

Primero debemos crear un certificado:

Hacemos click en Certificados > Pestaña SSL > Añadir > Añadir como se puede ver a continuación:

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftps2.png)
_Pasos para crear un certificado SSL_

Rellenamos los datos y pulsamos en Salvar:

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftps3.png)
_Pasos para crear un certificado SSL_

Añadimos el certificado al servidor FTP.

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftps8.png)
_Habilitar conexiones SSL en el servicio FTP_

## Añadir carpetas compartidas al servicio FTP

En Servicios > FTP > Pestaña Compartidos podemos añadir carpetas compartidas (en el caso de que las tengamos) como se muestra a continuación.

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftps5.png)
_Pestaña Compartidos del servicio FTP_

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftps6.png)
_Añadir disco compartido al servicio FTP_

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftps7.png)
_Permisos de la carpeta compartida public_

## Conexión a servidor FTPS desde cliente Zorin OS (Filezilla)

A continuación se muestran los pasos para conectarse al servicio FTPS de OMV a través del cliente FTP de Filezilla.

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftpsCliente1.png)
_Pasos para conectarse a servidor FTPS de OMV_

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftpsCliente2.png)
_Pasos para conectarse a servidor FTPS de OMV_

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftpsCliente4.png)
_Pasos para conectarse a servidor FTPS de OMV_

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftpsCliente5.png)
_Pasos para conectarse a servidor FTPS de OMV_

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftpsCliente6.png)
_Pasos para conectarse a servidor FTPS de OMV_

## Conexión a servidor FTPS desde cliente Zorin OS (Gestor de archivos)

A continuación se muestran los pasos para conectarse al servicio FTPS de OMV a través del cliente FTP incorporado en el gestor de archivos Thunar.

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftpsCliente7.png)
_Pasos para conectarse a servidor FTPS de OMV_

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftpsCliente8.png)
_Pasos para conectarse a servidor FTPS de OMV_  

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftpsCliente10.png)
_Pasos para conectarse a servidor FTPS de OMV_


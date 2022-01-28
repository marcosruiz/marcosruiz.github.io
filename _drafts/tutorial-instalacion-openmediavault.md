---
title: "Tutorial: Instalación OpenMediaVault"
date: 2022-01-27 09:50:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [gnu linux, comandos, terminal, bash, seguridad informática]
---

## Introducción

OpenMediaVault (OMV) es una distribución linux gratuita diseñada para su uso como almacenamiento conectado a la red (NAS). OMV está basado en el sistema operativo Debian y está licenciado bajo la Licencia Pública General GNU v3.

OpenMediaVault proporciona una interfaz de usuario basada en la web para la administración y personalización.

OpenMediaVault se distribuye como una imagen ISO y como código fuente.

OpenMediaVault tiene los siguientes servicios integrados: 

- FTP
- NFS
- rsync
- SMB/CIFS ( Samba )
- SNMP
- SSH
- Autenticación de usuario local
- Software RAID (en muchas variaciones)
- Etc.

## Pasos para instalar el servidor de OpenMediaVault

Descarga [aquí](https://www.openmediavault.org/?page_id=77) la imagen iso de OpenMediaVault 5.

Creamos una máquina en VirtualBox con las siguientes características:

- Nombre: OpenMediaVault
- Tipo: Linux
- Versión: Debian (64-bit)
- RAM: 4096 MB
- Disco duro: 20 GB

![img-description](/assets/img/tutorial-instalacion-openmediavault/vbox-openmediavault-recien-creado.png)
_Máquina OpenMediaVault creada e iniciada_

Haz click en "➡️ Iniciar"

Selecciona en el disco de inicio la ISO de OpenMediaVault:

![img-description](/assets/img/tutorial-instalacion-openmediavault/seleccion-iso-openmediavault.png)
_Selección de fichero ISO como CD de inicio_

Haz click en Install:

![img-description](/assets/img/tutorial-instalacion-openmediavault/1.png)
_Instalación OpenMediaVault: GRUB_

Selecciona Spanish Español:

![img-description](/assets/img/tutorial-instalacion-openmediavault/2.png)
_Instalación OpenMediaVault: Selección de idioma_

Selecciona España:

![img-description](/assets/img/tutorial-instalacion-openmediavault/3.png)
_Instalación OpenMediaVault: Selección de ubicación_

Selecciona Español:

![img-description](/assets/img/tutorial-instalacion-openmediavault/4.png)
_Instalación OpenMediaVault: Selección de configuración de teclado_

Aparecerá una pantalla de carga:

![img-description](/assets/img/tutorial-instalacion-openmediavault/5.png)
_Instalación OpenMediaVault: Pantalla de carga_

Indica "openmediavault" como nombre de la máquina:

![img-description](/assets/img/tutorial-instalacion-openmediavault/6.png)
_Instalación OpenMediaVault: Configurar la red_

Indica "local" como nombre de dominio:

![img-description](/assets/img/tutorial-instalacion-openmediavault/7.png)
_Instalación OpenMediaVault: Configurar la red_

Escribe "chabacier" como clave del usuario root:

![img-description](/assets/img/tutorial-instalacion-openmediavault/8.png)
_Instalación OpenMediaVault: Configurar usuarios y contraseñas_

Vuelve a escribir "chabacier" como clave para verificarla:

![img-description](/assets/img/tutorial-instalacion-openmediavault/9.png)
_Instalación OpenMediaVault: Configurar usuarios y contraseñas_

Selecciona "Península" como ubicación.

![img-description](/assets/img/tutorial-instalacion-openmediavault/10.png)
_Instalación OpenMediaVault: Configurar reloj_

Selecciona España para el gestor de paquetes de Debian. El gestor de paquetes es el servidor de donde se descargarán futuras actualizaciones.

![img-description](/assets/img/tutorial-instalacion-openmediavault/11.png)
_Instalación OpenMediaVault: Configurar el gestor de paquetes_

Elige "deb.debian.org".

![img-description](/assets/img/tutorial-instalacion-openmediavault/12.png)
_Instalación OpenMediaVault: Configurar el gestor de paquetes_

Deja en blanco la información del proxy HTTP:

![img-description](/assets/img/tutorial-instalacion-openmediavault/13.png)
_Instalación OpenMediaVault: Configurar el gestor de paquetes_

Selecciona "/dev/sda".

![img-description](/assets/img/tutorial-instalacion-openmediavault/14.png)
_Instalación OpenMediaVault: Instalar el GRUB_

Selecciona "Continuar".

![img-description](/assets/img/tutorial-instalacion-openmediavault/15.png)
_Instalación OpenMediaVault: Terminar la instalación_

El equipo se reiniciará y deberás elegir la opción "Debian GNU/Linux"

![img-description](/assets/img/tutorial-instalacion-openmediavault/16.png)
_GRUB de arranque de OpenMediaVault_

Inicia sesión como usuario root, es decir, como superusuario. Te recuerdo que la contraseña que hemos usado es "chabacier".

![img-description](/assets/img/tutorial-instalacion-openmediavault/17.png)
_Inicio de sesión en OpenMediaVault_

Apaga la máquina OpenMediaVault. Conecta la máquina OpenMediaVault a la máquina virtual IPCOP que hará de NAT.

![img-description](/assets/img/tutorial-instalacion-openmediavault/vbox-enrutardor.png)
_Adaptadores de red del enrutador IPCOP_

![img-description](/assets/img/tutorial-instalacion-openmediavault/vbox-openmediavault.png)
_Adaptadores de red de OpenMediaVault_

Crea una máquina Zorin que actuará como cliente y conéctala a la misma máquina virtual IPCOP.

![img-description](/assets/img/tutorial-instalacion-openmediavault/vbox-zorin-cliente.png)
_Adaptadores de red de la máquina cliente Zorin OS_

Averigua la dirección IP de OpenMediavault, en mi caso es 192.168.1.36.

![img-description](/assets/img/tutorial-instalacion-openmediavault/omv-ifconfig.png)
_Ejecución de ifconfig en la máquina OpenMediaVault_

Comprueba que desde el cliente Zorin OS tienes conexión a la máquina OpenMediavault haciendo un `ping` a su dirección IP.

Entra en la interfaz web de OpenMediavault.

![img-description](/assets/img/tutorial-instalacion-openmediavault/omv-login.png)
_Acceso web desde el cliente Zorin OS en OpenMediaVault_

Utiliza las credenciales "admin" y "openmediavault" para hacer login.

![img-description](/assets/img/tutorial-instalacion-openmediavault/omv-dashboard.png)
_Dashboard web de OpenMediaVault_

## Configuración de OpenMediaVault

Cambia la contraseña del usuario admin.

![img-description](/assets/img/tutorial-instalacion-openmediavault/omv-password.png)
_Pasos para cambiar la contraseña al usuario admin_

Habilita el servicio FTP.

![img-description](/assets/img/tutorial-instalacion-openmediavault/omv-ftp.png)
_Pasos para activar el servicio FTP_

Comprueba que el servicio SSH está habilitado.

![img-description](/assets/img/tutorial-instalacion-openmediavault/omv-ssh.png)
_Servicio SSH_


## Vídeos

<iframe width="100%" height="315" src="https://www.youtube.com/embed/wg3vsJDm6T8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="100%" height="315" src="https://www.youtube.com/embed/eBqin7ngD2Y" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

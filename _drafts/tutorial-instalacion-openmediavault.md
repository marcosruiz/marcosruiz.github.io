---
title: "Tutorial: Instalación OpenMediaVault"
date: 2022-01-27 09:50:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [gnu linux, comandos, terminal, bash, seguridad informática]
---

## Introducción

OpenMediaVault (OMV) es una distribución linux gratuita diseñada para su uso como almacenamiento conectado a la red (NAS). OMV está basado en el sistema operativo Debian y está licenciado bajo la Licencia Pública General GNU v3.

OpenMediaVault proporciona una interfaz de usuario basada en la web para la administración y personalización.

![img-description](/assets/img/tutorial-instalacion-openmediavault/OpenMediaVault-Dashboard.webp)
_Dashboard de OpenMediaVault_

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
_Figura_

Haz click en "➡️ Iniciar"

Selecciona en el disco de inicio la ISO de OpenMediaVault:

![img-description](/assets/img/tutorial-instalacion-openmediavault/seleccion-iso-openmediavault.png)
_Figura_

Haz click en Install:

![img-description](/assets/img/tutorial-instalacion-openmediavault/1.png)
_Figura_

Selecciona Spanish Español:

![img-description](/assets/img/tutorial-instalacion-openmediavault/2.png)
_Figura_

Selecciona España:

![img-description](/assets/img/tutorial-instalacion-openmediavault/3.png)
_Figura_

Selecciona Español:

![img-description](/assets/img/tutorial-instalacion-openmediavault/4.png)
_Figura_

Aparecerá una pantalla de carga:

![img-description](/assets/img/tutorial-instalacion-openmediavault/5.png)
_Figura_

Indica "openmediavault" como nombre de la máquina:

![img-description](/assets/img/tutorial-instalacion-openmediavault/6.png)
_Figura_

Indica "local" como nombre de dominio:

![img-description](/assets/img/tutorial-instalacion-openmediavault/7.png)
_Figura_

Escribe "chabacier" como clave del usuario root:

![img-description](/assets/img/tutorial-instalacion-openmediavault/8.png)
_Figura_

Vuelve a escribir "chabacier" como clave para verificarla:

![img-description](/assets/img/tutorial-instalacion-openmediavault/9.png)
_Figura_

Selecciona "Península" como ubicación.

![img-description](/assets/img/tutorial-instalacion-openmediavault/10.png)
_Figura_

Selecciona España para el gestor de paquetes de Debian. El gestor de paquetes es el servidor de donde se descargarán futuras actualizaciones.

![img-description](/assets/img/tutorial-instalacion-openmediavault/11.png)
_Configurar el gestor de paquetes_

Elige "deb.debian.org".

![img-description](/assets/img/tutorial-instalacion-openmediavault/12.png)
_Configurar el gestor de paquetes_

Deja en blanco la información del proxy HTTP:

![img-description](/assets/img/tutorial-instalacion-openmediavault/13.png)
_Configurar el gestor de paquetes_

Selecciona "/dev/sda".

![img-description](/assets/img/tutorial-instalacion-openmediavault/14.png)
_Figura_

Selecciona "Continuar".

![img-description](/assets/img/tutorial-instalacion-openmediavault/15.png)
_Figura_

El equipo se reiniciará y deberás elegir la opción "Debian GNU/Linux"

![img-description](/assets/img/tutorial-instalacion-openmediavault/16.png)
_Figura_

Inicia sesión como usuario root, es decir, como superusuario. Te recuerdo que la contraseña que hemos usado es "chabacier".

![img-description](/assets/img/tutorial-instalacion-openmediavault/17.png)
_Figura_

Apaga la máquina OpenMediaVault. Conecta la máquina OpenMediaVault a la máquina virtual IPCOP que hará de NAT.

![img-description](/assets/img/tutorial-instalacion-openmediavault/vbox-enrutardor.png)
_Figura_

![img-description](/assets/img/tutorial-instalacion-openmediavault/vbox-openmediavault.png)
_Figura_

Crea una máquina Zorin que actuará como cliente y conéctala a la misma máquina virtual IPCOP.

![img-description](/assets/img/tutorial-instalacion-openmediavault/vbox-zorin-cliente.png)
_Figura_



## Vídeos

<iframe width="100%" height="315" src="https://www.youtube.com/embed/wg3vsJDm6T8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="100%" height="315" src="https://www.youtube.com/embed/eBqin7ngD2Y" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

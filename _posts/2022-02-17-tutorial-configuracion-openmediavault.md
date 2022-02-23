---
title: "Tutorial: Instalación de OpenMediaVault"
date: 2022-02-17 21:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [gnu linux, comandos, terminal, bash, seguridad informática]
---

## Cambiar contraseña del usuario admin

Cambia la contraseña del usuario admin.

![img-description](/assets/img/tutorial-instalacion-openmediavault/omv-password.png)
_Pasos para cambiar la contraseña al usuario admin_

## Habilitar servicio FTP

Habilita el servicio FTP.

![img-description](/assets/img/tutorial-instalacion-openmediavault/omv-ftp.png)
_Pasos para activar el servicio FTP_

## Habilitar servicio FTPS

Primero debemos crear un certificado:

Hacemos click en Certificados > Pestaña SSL > Añadir > Añadir como se puede ver a continuación:

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftps2.png)
_Pasos para crear un certificado SSL_

Rellenamos los datos y pulsamos en Salvar:

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftps3.png)
_Pasos para crear un certificado SSL_

## Añadir carpetas compartidas al servicio FTP

En Servicios > FTP > Pestaña Compartidos podemos añadir carpetas compartidas (en el caso de que las tengamos) como se muestra a continuación.

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftps4.png)
_Pestaña Compartidos del servicio FTP_

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftps5.png)
_Añadir disco compartido al servicio FTP_

![img-description](/assets/img/tutorial-configuracion-openmediavault/ftps6.png)
_Permisos de la carpeta compartida public_

## Habilitar servicio SSH

Comprueba que el servicio SSH está habilitado.

![img-description](/assets/img/tutorial-instalacion-openmediavault/omv-ssh.png)
_Servicio SSH_


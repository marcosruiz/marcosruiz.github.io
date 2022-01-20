---
title: Clientes FTP
date: 2022-01-20 08:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [gnu linux, comandos, terminal, bash, smr, seguridad informática, ftp, teoría, filezilla]
---

## Línea de comandos

### Login y cierre de sesión

Para conectarnos a cualquier servidor FTP desde linea de comandos en GNU Linux deberemos ejecutar la instrucción `ftp [<host> [<puerto>]]`[^ftp]. A continuación se muestra un ejemplo de conexión al servidor VsFTPD desde el propio servidor con el usuario mruizg.

[^ftp]: Todo lo que está comprendido entre los símbolos "[" y "]" es opcional.

```console
$ ftp localhost
Connected to localhost.
220 (vsFTPd 3.0.3)
Name (localhost:smr): mruizg
331 Please specify the password.
Password:
230 Login successful.
Remote system type is UNIX.
Using binary mode to transfer files.
ftp> 
```

Como puedes observar se abre un nuevo terminal cuyo prompt es `ftp>`, esto quiere decir que no podemos usar los comandos habituales de la consola de GNU Linux, aunque algunos puedan llamarse igual.

Para cerrar sesión o salir del cliente FTP deberemos escribir `exit`.

```console
ftp> exit
221 Goodbye.
$
```

### Comandos del cliente FTP

Una vez estamos conectados al servidor FTP podemos ejecutar una serie de comandos que se pueden ver si ejecutamos la siguiente instrucción:

```console
ftp> help
Commands may be abbreviated.  Commands are:

!		dir		mdelete		qc		site
$		disconnect	mdir		sendport	size
account		exit		mget		put		status
append		form		mkdir		pwd		struct
ascii		get		mls		quit		system
bell		glob		mode		quote		sunique
binary		hash		modtime		recv		tenex
bye		help		mput		reget		tick
case		idle		newer		rstatus		trace
cd		image		nmap		rhelp		type
cdup		ipany		nlist		rename		user
chmod		ipv4		ntrans		reset		umask
close		ipv6		open		restart		verbose
cr		lcd		prompt		rmdir		?
delete		ls		passive		runique
debug		macdef		proxy		send
```

A continuación se explican los más útiles:

- `ls`: Listar ficheros y directorios
- `pwd`: Mostrar por pantalla el directorio actual.
- `mkdir`: Crear carpeta
- `chmod`: Cambiar permisos
- `delete`: Eliminar fichero
- `put`: Subir fichero
- `get`: Descargar fichero

## Filezilla

FileZilla es una aplicación FTP libre y de código abierto que consta de un cliente y un servidor. Soporta los protocolos FTP, SFTP y FTP sobre SSL/TLS (FTPS).

![img-description](/assets/img/clientes-ftp/filezilla.png)
_Cliente FTP Filezilla_

## Bibliografía

- [How to Use the Command-Line FTP Client in Linux Distributions](https://www.dummies.com/article/technology/computers/operating-systems/linux/how-to-use-the-command-line-ftp-client-in-linux-distributions-255823)
- [FileZilla](https://es.wikipedia.org/wiki/FileZilla)
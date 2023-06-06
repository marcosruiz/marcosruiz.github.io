---
title: "Tutorial: Instalar Moodle en Ubuntu Server 22.04"
date: 2022-11-02 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, práctica, moodle, tutorial]
img_path: /assets/img/tutorial-moodle/
---

## Instalar Ubuntu Server 22.04 con servidor SSH

Antes de nada debes tener un Ubuntu Server 22.04 instalado. Puedes seguir los pasos de mi artículo [Tutorial: Instalar Ubuntu Server 22.04](/posts/tutorial-ubuntu-server-22-04/).

## Instalar la pila LAMP

Instala la pila LAMP (Apache, MySQL y PHP) siguiendo mis pasos.

### Instalamos dependencias

Actualizamos el sistema:

```console
$sudo apt update
```

Instalamos los paquetes necesarios:

```console
$sudo apt install -y apache2 libapache2-mod-php mariadb-server php-mysql
```

Comprobamos que el estado de Apache y MariaDB es activo:

```console
$systemctl status apache2 mariadb -n 0
```

Permitimos las conexiones http y https desde el firewall UFW:

```console
$sudo ufw allow http
$sudo ufw allow https
```

### Configurar pila LAMP

Comprobamos que versión tenemos:

```console
$php --version
```

En mi caso, tengo la versión 8.1 y tú deberás tener la misma:

```console
PHP 8.1.2-1ubuntu2.9 (cli) (built: Oct 19 2022 14:58:09) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.1.2, Copyright (c) Zend Technologies
    with Zend OPcache v8.1.2-1ubuntu2.9, Copyright (c), by Zend Technologies
```

Editamos el fichero de configuración de PHP:

```console
$sudo nano /etc/php/8.1/apache2/php.ini
```

Buscamos la línea con Ctrl + W:

```plaintext
;date.timezone =
```
{: file="/etc/php/8.1/apache2/php.ini" }

Y sustituimos por:

```plaintext
date.timezone = Europe/Madrid
```
{: file="/etc/php/8.1/apache2/php.ini" }

Una vez guardado y cerrado el archivo aplicamos los cambios recargando la configuración del servicio web:

```console
$sudo systemctl reload apache2
```

El servicio de bases de datos viene listo para usar sin necesidad de configuraciones adicionales. El único usuario que se incluye es el administrador root y para conectar al servicio desde consola habrá que usar sudo:

```console
$ sudo mysql
```

Puedes cerrar la conexión al servicio con el comando exit:

```console
> exit
```

### Probando que todo funciona

Creamos el archivo en un lugar que pueda ser accedido por el servicio web:

```console
$sudo nano /var/www/html/info.php
```

Con el contenido:

```php
<?php phpinfo();
```

Y vamos a la dirección web "\<túIP\>/info.php", en mi caso, "http://192.168.56.102/info.php". Deberíamos ver lo siguiente:

![Sitio web con Apache, PHP y MariaDB](capturaWebPhp.png)
_Sitio web con Apache, PHP y MariaDB funcionando_


## Instalar Moodle 4.1

Para instalar Moodle 4.1 deberás seguir los siguientes pasos.

### Descargamos y copiamos el código de Moodle

Seguramente ya lo tendrás instalado pero necesitaremos tener instalado el programa Git:

```console
$sudo apt install git
```

Descargamos el código fuente de Moodle 4.1 de la web oficial:

```console
$wget https://download.moodle.org/download.php/direct/stable401/moodle-4.1.tgz
```

Si hacemos `ls` deberemos ver el fichero comprimido que acabamos de descargar:

```console
$ ls
moodle-4.1.tgz
```
Descomprimiremos el paquete que acabamos de descargar directamente en la ubicación que nos interese:

```console
$sudo tar xf moodle-4.1.tgz -C /var/www/html/
```

Como Moodle necesita escribir en su propio directorio de instalación, cambiamos el propietario de este directorio al usuario con el que corre el servicio web en Ubuntu 22.04 (www-data):

```console
$sudo chown -R www-data: /var/www/html/moodle/
```

Necesitamos también un directorio para datos de Moodle, que crearemos fuera del alcance de la navegación web:


```console
$sudo mkdir /var/www/moodledata
```

Cambiamos el propietario de este directorio al usuario con el que corre el servicio web en Ubuntu 22.04 (www-data) para que Moodle pueda escribir:

```console
$sudo chown www-data: /var/www/moodledata/
```

### Base de datos MariaDB/MySQL

Usaremos el cliente de consola mysql y el usuario con el que administremos:

```console
$sudo mysql
```

Creamos la base de datos:

```console
>create database moodle charset utf8mb4 collate utf8mb4_unicode_ci;
```

En MariaDB o MySQL 5 creamos el usuario de la siguiente forma:

```console
>create user moodle@localhost identified by 'tiempos';
```

Otorgamos los permisos necesarios al usuario sobre la base:

```console
>grant all privileges on moodle.* to moodle@localhost;
```

Y cerramos la conexión:

```console
>exit
```

### PHP 8.1

Moodle requiere la presencia en Ubuntu 22.04 LTS de ciertas extensiones que instalaremos desde los repositorios de la distribución, por lo que actualizaremos la información de los mismos:

```console
$sudo apt update
```

Ya podemos instalar los paquetes necesarios.

Si se trata de la versión nativa de PHP para Ubuntu 22.04:

```console
$sudo apt install -y php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
```

También editaremos el archivo php.ini para realizar algún ajuste:

```console
$sudo nano /etc/php/8.1/apache2/php.ini
```

Buscamos la directiva max_input_vars, que está comentada:

```plaintext
;max_input_vars = 1000
```

Suprimimos el carácter ; al inicio de línea y cambiamos el valor por el que requiere Moodle:


```plaintext
max_input_vars = 5000
```

Hecho esto, podemos guardar y cerrar el archivo.

Al usar Apache y su módulo de PHP será necesario recargar la configuración del servicio web:

```console
$sudo systemctl reload apache2
```

### Instalador web de Moodle 4.1

Vamos a "\<túIP\>/moodle/install.php", en mi caso "http://192.168.56.102/moodle/install.php" y deberemos ver lo siguiente:

![Inicio web para configurar Moodle 4.1](capturaConfiguracionWebMoodle.png)
_Inicio web para configurar Moodle 4.1_

Seleccionamos el idioma:

![imgDescription](confMoodle01.png)

Añadimos los directorios:

![imgDescription](confMoodle02.png)

Indicamos que vamos a usar MariaDB:

![imgDescription](confMoodle03.png)

Añadimos información de la base de datos MariaDB:

![imgDescription](confMoodle04.png)

Aceptamos el Copyright:

![imgDescription](confMoodle05.png)

Vemos las comprobaciones y continuamos:

![imgDescription](confMoodle06.png)

Esperamos a que finalice la instalación:

![imgDescription](confMoodle07.png)

Creamos el usuario de Moodle que va a ser el administrador:

![imgDescription](confMoodle08.png)

Le ponemos nombre a nuestro Moodle:

![imgDescription](confMoodle09.png)

Añadimos un correo de soporte:

![imgDescription](confMoodle10.png)

Entramos en la Bienvenida:

![imgDescription](confMoodle11.png)

En Administración del sitio, Usuarios, Cuentas podremos crear y administrar los usuarios que creemos:

![imgDescription](confMoodle12.png)


### Post instalación

#### Mantenimiento en segundo plano

Moodle necesita realizar tareas de mantenimiento de la plataforma en segundo plano, utilizando el servicio Cron de Ubuntu 22.04. Para ello crearemos una nueva tarea programada:

```console
$sudo nano /etc/cron.d/moodle
```

La configuración constará de la siguiente línea:

```console
*/1 * * * * www-data /usr/bin/php /var/www/html/moodle/admin/cli/cron.php
```

#### Ghostscript

Instalaremos Ghostscript para el soporte PDF en Moodle:

```console
$sudo apt install -y ghostscript
```

#### Unoconv (no necesario)

Para poder realizar la conversión de formatos de archivo procedentes de distintas aplicaciones de ofimática una solución puede ser utilizar Unoconv como complemento de Moodle. Por tanto instalaremos el paquete unoconv:

```console
$sudo apt install -y unoconv
```

Unoconv se instala como herramienta de línea de comandos, pero no como servicio, así que crearemos un archivo de configuración para Systemd:

```console
$sudo nano /etc/systemd/system/unoconv.service
```

Con el siguiente contenido:

```plaintext
[Unit]
Description=Unoconv listener para Ubuntu 22.04 LTS
After=network.target remote-fs.target nss-lookup.target
[Service]
Type=fork
Environment="UNO_PATH=/usr/lib/libreoffice/program"
ExecStart=/usr/bin/unoconv --listener
[Install]
WantedBy=multi-user.target
```

Una vez guardado y cerrado el archivo, disponemos del servicio unoconv o unoconv.service que podemos habilitar para su inicio automático junto a Ubuntu 22.04:

```console
$sudo systemctl enable unoconv
```

Para no esperar al siguiente inicio del sistema, podemos iniciar el servidor Unoconv por primera vez:

```console
$sudo systemctl start unoconv
```

Se puede comprobar el estado del servicio con la opción status de systemctl:

```console
$systemctl status unoconv
```

![Estado de unoconv en la consola](postInst01.png)
_Estado de unoconv en la consola_


```console
$sudo mkdir /var/www/.cache
```


```console
$sudo chown www-data: /var/www/.cache/
```

Es el momento de acceder al área personal de Moodle para comprobar si Unoconv funciona.

## Bibliografía

- [Cómo instalar la pila LAMP en Ubuntu 22.04 LTS](https://comoinstalar.me/como-instalar-la-pila-lamp-en-ubuntu-22-04-lts/)
- [Cómo instalar Moodle en Ubuntu 20.04 LTS](https://comoinstalar.me/como-instalar-moodle-en-ubuntu-20-04-lts/) ➡️ El enlace proporcionado usa Ubuntu 20.04 por lo que la versión por defecto de PHP también cambiará:
  - Ubuntu 20.04 ➡️ PHP 7.4
  - Ubuntu 22.04 ➡️ PHP 8.1
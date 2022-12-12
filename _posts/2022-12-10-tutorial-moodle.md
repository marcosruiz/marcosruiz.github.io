---
title: "Tutorial: Instalar Moodle en Ubuntu Server 22.04"
date: 2022-11-02 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Aplicaciones Web]
tags: [aplicaciones web, smr, práctica]
img_path: /assets/img/tutorial-moodle/
---

## Instalar Ubuntu Server 22.04 con servidor SSH

Antes de nada debes tener un Ubuntu Server 22.04 instalado. Puedes seguir los pasos de mi artículo [Tutorial: Instalar Ubuntu Server 22.04](/posts/tutorial-ubuntu-server-22-04/).

## Instalar la pila LAMP

Instala la pila LAMP (Apache, MySQL y PHP). Puedes seguir los pasos del artículo [Cómo instalar la pila LAMP en Ubuntu 22.04 LTS](https://comoinstalar.me/como-instalar-la-pila-lamp-en-ubuntu-22-04-lts/) o puedes seguir mis pasos.

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

En mi caso:

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


## Instalar Moodle 4

Siguiendo los pasos de la [documentación oficial de Moodle](https://comoinstalar.me/como-instalar-moodle-en-ubuntu-20-04-lts/) podemos instalar Moodle. Otra opción es seguir mis pasos.

### Descargamos y copiamos el código de Moodle

Seguramente ya lo tendrás instalado pero necesitaremos tener instalado el programa Git:

```console
$sudo apt install git
```

Descargamos el código fuente de Moodle 4:

```console
$wget https://download.moodle.org/download.php/direct/stable400/moodle-latest-400.tgz
```

Si hacemos `ls` deberemos ver el fichero comprimido que acabamos de descargar:

```console
$ ls
moodle-latest-400.tgz
```




```console
$sudo tar xf moodle-latest-400.tgz -C /var/www/html/
```



```console
sudo chown -R www-data: /var/www/html/moodle/
```



```console
sudo mkdir /var/www/moodledata
```


```console
sudo chown www-data: /var/www/moodledata/
```



```console
sudo mysql
```



```console
create database moodle charset utf8mb4 collate utf8mb4_unicode_ci;
```


```console
create user moodle@localhost identified by 'tiempos';
```



```console
grant all privileges on moodle.* to moodle@localhost;
```



```console
exit
```


```console
$sudo apt update
```



```console
$sudo apt install -y php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
```



```console
$sudo apt install -y php-pgsql
```



```console
sudo nano /etc/php/8.1/apache2/php.ini
```

```plaintext
;max_input_vars = 1000
```


```plaintext
max_input_vars = 5000
```

```console
$sudo systemctl reload apache2
```

Vamos a "\<túIP\>/moodle/install.php", en mi caso "http://192.168.56.102/moodle/install.php" y deberemos ver lo siguiente:

Falta imagen

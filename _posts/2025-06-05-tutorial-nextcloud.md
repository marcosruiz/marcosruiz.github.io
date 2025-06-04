---
title: "Tutorial: Monta tu propio Google Drive con NextCloud"
date: 2025-04-02 9:00:00 +0100
categories: [General]
tags: [openmediavault, omv, nextcloud, docker, compose]
img_path: /assets/img/wcag/
---

{:.section}
## Introducción

Para desplegar este contenedor primero debes tener un servidor con Docker instalado. En mi caso yo tengo un OpenMediaVault sobre un Debian, pero es irrelevante. Lo que si es relevante es tener un Ngnix Proxy Manager funcionando para poder acceder a los datos desde Internet.

{:.section}
## Crear contenedor de NextCloud

El Docker compose es el siguiente:

```yaml
services:
  db:
    image: mariadb:10.11
    restart: always
    command: --transaction-isolation=READ-COMMITTED --log-bin=binlog --binlog-format=ROW
    volumes:
      - db:/var/lib/mysql
    environment:
      - MARIADB_RANDOM_ROOT_PASSWORD=yes
      - MYSQL_PASSWORD=${MYSQL_PASSWORD}
      - MYSQL_DATABASE=nextcloud
      - MYSQL_USER=nextcloud

  redis:
    image: redis:alpine
    restart: always

  app:
    image: nextcloud:apache
    restart: always
    ports:
      - 8080:80
    volumes:
      - ${STORAGE_LOCATION}:/var/www/html/data
      - nextcloud:/var/www/html
    environment:
      - VIRTUAL_HOST=${DOMAIN_NAME}
      - MYSQL_PASSWORD=${MYSQL_PASSWORD}
      - MYSQL_DATABASE=nextcloud
      - MYSQL_USER=nextcloud
      - MYSQL_HOST=db
      - REDIS_HOST=redis
    depends_on:
      - db
      - redis
    networks:
      - default

  cron:
    image: nextcloud:apache
    restart: always
    volumes:
      - nextcloud:/var/www/html:z
    entrypoint: /cron.sh
    depends_on:
      - db
      - redis

volumes:
  nextcloud:
  db:

networks:
  proxy-tier:
```

Las variables de entorno son las siguientes (deberás modificarlas según tu caso):

```plaintext
MYSQL_PASSWORD=<pon aquí tu contraseña>
STORAGE_LOCATION=/srv/dev-disk-by-uuid-7ba5953f-3094-44b9-9875-98f1dac73873/elements1/nextcloud
DOMAIN_NAME=<pon aquí tu dominio aunque creo que no vale para nada>
```

Con esto ya deberías poder ir al navegador y acceder a través de la IP y el puerto `<IP>:8080`, por ejemplo `192.168.1.140:8080`.

En mi caso he copiado varios datos a `/srv/dev-disk-by-uuid-7ba5953f-3094-44b9-9875-98f1dac73873/elements1/nextcloud/mruizg/files` y para que se vean en la web he tenido que ejecutar el siguiente comando:

```console
$docker exec -u www-data <id del contenedor> php occ files:scan --all
```

{:.section}
## Configurar Nginx Proxy Manager

Crear un Proxy Host nuevo.

{:.section}
## Habilitar nuevo dominio

En la máquina host debes ir a `/var/lib/docker/volumes/nextcloud_nextcloud/_data/config/config.php` y añadir la siguiente línea dentro de la array de `trusted_domains`:

```php
  1 => '<dominio>'
```

En mi caso queda tal que así:

```php
'trusted_domains' =>
  array (
    0 => 'nipogi:8080',
    1 => 'nextcloud.chirihop.duckdns.org'
  ),
```

Posteriormente se reinicia el contenedor con `docker restart <id del contenedor>`. El id del contenedor se saca con `docker ps`.

## Bibliografía

- <https://pimylifeup.com/nextcloud-docker/>

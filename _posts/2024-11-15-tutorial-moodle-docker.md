---
title: "Tutorial: Instalar Moodle con Docker"
date: 2022-11-02 9:00:00 +0100
categories: [General]
tags: [gift, moodle, aeducar, profesor, adistanciafp, fpvirtual, fpvirtualaragon, adistanciafparagon]
img_path: /assets/img/tutorial-moodle-docker/
---

{:.section}
## Instalar Moodle

Podemos instalar Moodle haciendo uso de Docker compose:

```yaml
# Copyright Broadcom, Inc. All Rights Reserved.
# SPDX-License-Identifier: APACHE-2.0

services:
  mariadb:
    image: docker.io/bitnami/mariadb:11.4
    environment:
      # ALLOW_EMPTY_PASSWORD is recommended only for development.
      - ALLOW_EMPTY_PASSWORD=yes
      - MARIADB_USER=bn_moodle
      - MARIADB_DATABASE=bitnami_moodle
      - MARIADB_CHARACTER_SET=utf8mb4
      - MARIADB_COLLATE=utf8mb4_unicode_ci
    volumes:
      - 'mariadb_data:/bitnami/mariadb'
  moodle:
    image: docker.io/bitnami/moodle:4.5
    ports:
      - '8080:8080'
      - '8443:8443'
    environment:
      - MOODLE_DATABASE_HOST=mariadb
      - MOODLE_DATABASE_PORT_NUMBER=3306
      - MOODLE_DATABASE_USER=bn_moodle
      - MOODLE_DATABASE_NAME=bitnami_moodle
      # ALLOW_EMPTY_PASSWORD is recommended only for development.
      - ALLOW_EMPTY_PASSWORD=yes
      - MOODLE_USERNAME=admin
      - MOODLE_PASSWORD=adminpassword
    volumes:
      - 'moodle_data:/bitnami/moodle'
      - 'moodledata_data:/bitnami/moodledata'
    depends_on:
      - mariadb
volumes:
  mariadb_data:
    driver: local
  moodle_data:
    driver: local
  moodledata_data:
    driver: local
```
{: file="docker-compose.yml" }

En el directorio donde este el fichero `docker-compose.yml`{: .filepath} ejecutamos la siguiente instrucción para iniciar los dos contenedores:

```console
$ docker-compose up -d
```

Ahora accedemos a `localhost:8080` en el navegador y entramos con la cuenta de administrador `admin` `adminpassword` como se ve a continuación.

![alt text](newSite.png)
_Paso 1_

![alt text](logIn.png)
_Paso 2_

![alt text](hiAdmin.png)
_Paso 3_

{:.section}
## Ampliar el límite de ficheros de subida

Si tenemos backups de cursos de más de 500 MB necesitamos ampliar el límite de subida de ficheros en Moodle.

> Sección en construcción.
{:.prompt-warning}

## Bibliografía

- <https://hub.docker.com/r/bitnami/moodle>
- <https://github.com/bitnami/containers/blob/main/bitnami/moodle/docker-compose.yml>

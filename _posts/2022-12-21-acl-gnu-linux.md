---
title: "ACL en GNU Linux"
date: 2022-12-21 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría, seguridad activa]
img_path: /assets/img/acl-gnu-linux/
---

## Introducción

Antes de profundizar en las ACL es necesario entender los permisos nativos de GNU Linux. Para ello, puedes leer el artículo [Permisos en GNU Linux](/posts/permisos-gnu-linux/).

> Este mismo concepto de las listas de control de acceso se usa en redes pero su uso y configuración es totalmente diferente. Puedes leer artículo [ACL en Packet Tracer](/posts/acl-packet-tracer/) si quieres saber más.
{:.prompt-warning}

## Limitaciones de los permisos nativos

Estos permisos tienen algunas limitaciones. Consideremos el siguiente ejemplo:

```console
drwxr-xr--  1 diego usuarios  916 Jun  7 20:51 miarchivo.sh
```

Aquí el usuario dueño, diego, tiene permisos de lectura, escritura y ejecución sobre el archivo `miarchivo.sh`, los usuarios que pertenecen al grupo usuarios pueden leer y ejecutar este archivo, y el resto de los usuarios del sistema solamente pueden leer dicho archivo.

Si quisiéramos que el usuario juan pueda modificar este archivo podríamos tomar varios cursos de acción, entre ellos:

- Cambiar el dueño del archivo `miarchivo.sh` al usuario juan, con lo cual el usuario diego dejaría de tener permisos totales sobre el mismo.
- Podríamos agregar al usuario juan al grupo usuarios, pero deberíamos darle permiso de escritura a este grupo, por lo que todos los demás usuarios del grupo también tendrían acceso de escritura, cosa que podría no ser conveniente.
- Podríamos darle permisos de escritura a la terna de los otros usuarios del sistema, con lo cual juan podría escribir el archivo, pero cualquier usuario del sistema también podría.
- Podríamos agregar permisos de escritura para el grupo, y cambiar el grupo por un grupo al cual pertenezca el usuario juan, como su grupo primario por ejemplo, pero los integrantes del grupo usuarios dejarían de tener acceso de lectura y ejecución.

La solución parece no ser sencilla. Lo mismo ocurriría si quisiéramos, por ejemplo, dar permisos de escritura a los usuarios del grupo sambausers, ya que no es el grupo al que pertenece el archivo, y nos ocasionaría problemas similares. Aquí es donde entran en juego las listas de control de acceso, o ACL (Access Control List), en la administración de privilegios en GNU/Linux.

## ¿Qué son las ACL?

Las ACL son representaciones de permisos para elementos del sistema de archivos, que extienden los permisos nativos POSIX.1 del sistema. De hecho, los permisos nativos también tienen su representación en ACL cuando éstas están activadas, es decir, los permisos nativos son representados por ACL’s, y además, podemos agregar ACL’s adicionales para otorgar permisos más granularizados a otras entidades del sistema de archivos.

{:.question}
¿Son compatibles el sistema de permisos nativos con las ACL?

{:.question}
¿Qué ventajas/desventajas tienen las ACL sobre los permisos tradicionales?

<iframe width="560" height="315" src="https://www.youtube.com/embed/7F30Aixu8HI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Bibliografía

- [ACL: Access Control Lists y los permisos en GNU/Linux](https://juncotic.com/acl-access-control-lists-y-los-permisos-en-gnu-linux/)
- [Listas de Control de Acceso ACL en Linux](https://www.ochobitshacenunbyte.com/2019/02/07/listas-de-control-de-acceso-acl-en-linux/)
- [Utilización de ACLs en el sistema de archivos](https://sites.google.com/site/vaisereso/tutoriales-y-trucos/acls-en-linux).

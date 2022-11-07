---
title: "Seguridad pasiva"
date: 2022-11-02 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría]
img_path: /assets/img/seguridad-pasiva/
---

{:.question}
¿Qué es la seguridad pasiva?

## Introducción

## Equipos

### CPD

Leer [¿Qué es un CPD?](/posts/que-es-un-cpd).

### Centro de respaldo

A pesar de tanta protección, debemos pensar en la posibilidad de que ocurra una catástrofe en nuestro CPD y quede inservible (inundación, terremoto, sabotaje). La continuidad de la empresa no puede depender de un punto único de fallo; si disponemos de presupuesto suficiente, debemos instalar un segundo CPD.

Este segundo CPD, también llamado centro de respaldo (CR), ofrece los mismo servicios del centro principal (CP). Por supuesto, debe estar físicamente alejado del CP;cuantos más kilómetro entre ambos, mejor.

En condiciones normales, el CR está parado (stand-by) esperando que, en cualquier momento, la empresa pueda necesitar detener el CP y activar el CR como nuevo CP. Los usuarios no deben notar cambios. Para ellos la información del CP también está en el CR.

Como hemos señalado con anterioridad en el plan de recuperación ante desastres, puede que las circunstancias que nos lleven a conmutar el CR al CP sean muy urgentes y no haya tiempo para descubrir cómo se hace: todo el procedimiento de conmutación debe estar documentado con el máximo detalle, así como la posterior recuperación del CP. Incluso conviene probarlo una vez al año para confirmar que los pasos están bien descritos y el personal está capacitado para ejecutar bien.

Los equipos del centro principal y el centro de respaldo constituyen los centros de producción  de la empresa: están en funcionamiento para dar servicio a los empleados, clientes y proveedores de la misma. Pero no son las únicas salas con servidores y equipamiento de res. Primero se prueba en un entorno controlado, llamado maqueta de preproducción, donde el personal de la empresa aplica el cambio.

Leer [Centro de respaldo y su importancia en la seguridad informática](https://protecciondatos-lopd.com/empresas/centro-respaldo/)

### SAI / UPS

Leer [¿Qué es un SAI?](/posts/que-es-un-sai).

## Almacenamiento

### Estrategias de almacenamiento

Leer artículo [RAID](/posts/raid/).

### Backup de datos

Herramientas de gestión de eventos:

- **Awk** Búsqueda de patrones en archivos log de texto. 
- **Grep** Búsqueda de patrones en archivos log de texto. 
- **Sed** Extraer y analizar archivos log de texto. 
- **Rsyslog** Recoge logs de muchas fuentes y las centraliza en un servidor. 
- **Syslog** Recoge logs de muchas fuentes y las centraliza en un servidor.

Herramientas de backup:

- Rsync
- Bacula
- UrBackup
- Cronopete

{:.question}
¿Qué es un cluster?

{:.question}
¿Qué es la alta disponibilidad?

{:.question}
¿Qué es la alta confiabilidad?

{:.question}
¿Qué es el alto rendimiento?

{:.question}
¿Qué es el balanceo de carga?

{:.question}
¿Qué es un backup incremental?

<iframe width="560" height="315" src="https://www.youtube.com/embed/DywhgMht2jQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Bibliografía

- [SEGURIDAD PASIVA: EQUIPOS](http://aleogao.blogspot.com/2016/11/seguridad-pasiva-equipos.html)
- [UrBackup](https://www.urbackup.org/index.html)
- [Bacula](https://www.bacula.org/)
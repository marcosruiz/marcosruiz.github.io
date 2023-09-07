---
title: "Tutorial: Despliegue múltiple con DRBL"
date: 2023-07-08 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, tutorial, seguridad pasiva]
img_path: /assets/img/tutorial-despliegue-multiple-drbl/
---

## ¿Qué es DRBL?

DRBL (Diskless Remote Boot in Linux o arranque remoto sin disco en Linux) es un liveCD basado en Debian con entorno gráfico XFCE que nos permite tener un sistema operativo corriendo en varias máquinas a la vez sin necesidad de que estas tengan un disco duro conectado. Es decir, es una herramienta que permite arrancar un sistema operativo desde la red sin necesidad de tener ningún software instalado localmente, permitiendo el control del hardware local una vez iniciado el sistema operativo servido por el servidor.

También disponemos de la posibilidad de clonar o restaurar muchos equipos a la vez en muy poco tiempo mediante paquetes Multicast, por lo que nos da igual clonar o instalar una distro que 50, ya que la operación se ejecuta una sola vez en el equipo servidor.

Con esta distribución taiwanesa grabada en un dispositivo de almacenamiento externo, podríamos tener conectados a ella infinidad de ordenadores, independientemente de sus recursos de hardware, ya que las aplicaciones son ejecutadas en DRBL, que se comporta como si fuera un disco duro local que solo utiliza los recursos del servidor.

## Bibliografía

- <https://drbl.org/>
- <https://blog.desdelinux.net/manual-para-hacer-multicast-usando-drbl/>
- <https://www.ecured.cu/DRBL>

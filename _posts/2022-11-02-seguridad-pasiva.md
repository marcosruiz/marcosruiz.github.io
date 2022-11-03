---
title: "Seguridad pasiva"
date: 2022-11-02 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría]
img_path: /assets/img/seguridad-pasiva/
---

## Introducción

{:.question}
¿Qué es la seguridad pasiva?

## Equipos

### CPD

{:.question}
¿Qué es un CPD?

{:.question}
¿Cuál es la temperatura y humedad que debe haber en un CPD?

{:.question}
¿Qué diferencia hay entre un servidor rack y uno blade?

![Servidor tipo rack](rack.jpg)
_Servidor tipo rack_

![Servidor tipo blade](blade.jpg)
_Servidor tipo blade_

[Comprobar la temperatura de CPU en Linux](https://protegermipc.net/2021/02/08/comprobar-la-temperatura-de-cpu-en-ubuntu-linux/)

[Psensor, el interfaz gráfica para lm-sensors](https://ubunlog.com/psensor-interfaz-lm-sensors/#Configura_lm-sensors)

### Centro de respaldo

Leer [Centro de respaldo y su importancia en la seguridad informática](https://protecciondatos-lopd.com/empresas/centro-respaldo/)


### SAI / UPS

#### ¿Qué es un SAI?

Un SAI es un Sistema de Alimentación Ininterrumpida, son dispositivos que se utilizan para proporcionar protección contra problemas eléctricos y cortes de corriente también son conocidos por sus siglas en Ingles UPS (Uninterruptible Power Supply).

Los sistemas SAI son muy pesados, ya que están compuestos por robustas baterías, por lo que su ubicación es determinante. Cuanto mayor es su tamaño, mayor autonomía ofrecen.

![SAI](sai.jpg)
_SAI_

Un SAI nos protege de las siguientes anomalías de la red eléctrica:

- Cortes, microcortes, micropicos
- Distorsión y Ruido eléctrico
- Sobretensiones y subtensiones
- Variaciones en frecuencia

<iframe width="560" height="315" src="https://www.youtube.com/embed/Qr58qnz9Vks" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

#### Partes de un SAI

- Batería
- Bypass manual y automático
- Inversor
- Rectificador
- Filtro
- Panel, pulsadores, software

#### Tipos de SAI

Leer artículo [Qué es un SAI y tipos de  SAI ( Online, Interactivo, Offline,  AVR )](https://www.rackonline.es/content/que-es-un-sai-y-tipos-de-sai).

#### Calcular potencia de un SAI

<iframe width="560" height="315" src="https://www.youtube.com/embed/xjZJdI8DviY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Leer artículo [Potencia SAI: Así la podemos calcular con una enorme precisión](https://www.profesionalreview.com/2021/08/28/como-calcular-potencia-sai/)

## Almacenamiento

### Estrategias de almacenamiento

Leer artículo [RAID](/posts/raid/).

### Backup de datos

- Rsync
- Bacula
- UrBackup

## Bibliografía

- [Freguntas y respuestas comunes a SAIs](https://www.newsai.es/fqa.htm)
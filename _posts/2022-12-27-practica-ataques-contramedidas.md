---
title: "Práctica: Ataques y contramedidas"
date: 2022-12-21 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría, seguridad activa]
img_path: /assets/img/practica-ataques-contramedidas/
---

## Objetivo y duración

El objetivo de esta práctica es aprender a utilizar diversos sistemas de seguridad activa para controlar las redes.

Duración: 7 h

## Entrega y presentación

La entrega será en formato PDF. Leer [Entrega y presentación de prácticas](/posts/entrega-presentacion-practicas/).

## Actividades

A continuación se listan las actividades que se deben realizar.

{:.activity}
### Ataque ARP Spoofing

{:.activity}
### Ataque DNS Spoofing

{:.activity}
### Aircrack-ng

Realizar las tareas de [Wifi Hacking 101](https://tryhackme.com/room/wifihacking101).

{:.activity}
### WebGoat

<iframe width="560" height="315" src="https://www.youtube.com/embed/AFp7hG-8q0s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

```console
$sudo su
#apt get install aircrack-ng
#airmon-ng start wlan0
#service network-manager stop
#airodump-ng wlan0
#airodump-ng --ivs --write captura --bssid 00:13:49:XX:XX:34 --channel 9 wlan0
#aircrack-ng *.ivs
```

## Bibliografía


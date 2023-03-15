---
title: "Práctica: Seguridad activa de control de redes"
date: 2022-12-21 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría, seguridad activa]
img_path: /assets/img/practica-seguridad-activa-control-redes/
---

## Objetivo y duración

El objetivo de esta práctica es aprender a utilizar diversos sistemas de seguridad activa para controlar las redes.

Duración: 7 h

## Entrega y presentación

La entrega será en formato PDF. Leer [Entrega y presentación de prácticas](/posts/entrega-presentacion-practicas/).

## Actividades

A continuación se listan las actividades que se deben realizar.

{:.activity}
### Tcpdump

{:.activity}
### Wireshark

{:.activity}
### Snort

```console
#apt-get install snort
#snort –i eth1
```

```
preprocessor sfportscan: proto { all }
memcap { 10000000 } sense _ level { low }
include $PREPROC _ RULE _ PATH/preprocessor.rules
```
{: file="/etc/snort/snort.conf" }


```
ipvar HOME _ NET 10.0.1.0/24
```
{: file="/etc/snort/snort.conf" }

```console
#snort –i eth1 –c /etc/snort/snort.conf
```

```console
#cd /var/log/snort
#ls
```


```console
#tcpdump –r
```

```
alert tcp any any -> any any (msg:"no te conozco"; content:"hola"; classtype:shellcode-detect; sid:310; rev:1;)
```
{: file="/etc/snort/rules/local.rules" }


```console
#nc –l 1234
```

```console
#nc 10.0.1.4 1234
```

<iframe width="560" height="315" src="https://www.youtube.com/embed/ap6TGO6PyIM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.activity}
### UFW

Seguir los pasos del artículo [Cómo configurar un firewall con UFW en Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-with-ufw-on-ubuntu-20-04-es) para instalar y configurar el firewall UFW.

{:.activity}
### Proxy Squid

{:.activity}
### SpamAssasin

## Bibliografía


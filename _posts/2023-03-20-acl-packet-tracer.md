---
title: "ACL en Packet Tracer"
date: 2023-03-20 13:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, teoría]
img_path: /assets/img/acl-packet-tracer/
---

## Introducción

> Este mismo concepto de las listas de control de acceso se usa en sistemas operativos GNU Linux pero su uso y configuración es totalmente diferente. Puedes leer artículo [ACL en GNU Linux](/posts/acl-gnu-linux/) si quieres saber más.
{:.prompt-warning}

<iframe width="560" height="315" src="https://www.youtube.com/embed/QFxn656YhSA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Comandos:

```console
Router(config)#access-list <número de ACL> <deny|permit> <@ de red> <máscara inversa>
Router(config)#access-list <número de ACL> <deny|permit> any
Router(config)#interface <tipo de interfaz> <número de interfaz>
Router(config-if)#ip access-group <número de ACL> <in|out>
```

Por ejemplo:

```console
Router(config)#access-list 1 deny 192.168.0.0 0.0.255.255
Router(config)#access-list 1 permit any
Router(config)#interface fa 0/0
Router(config-if)#ip access-group 1 out
```

## Bibiografía

- [Propósito de las ACL](https://ccnadesdecero.es/proposito-acl/)
- [Listas de Control de Acceso (ACL): Funcionamiento y Creación](https://ccnadesdecero.es/listas-control-acceso-acl-router-cisco/)
- [Configuración ACL de IPv4 Estándar](https://ccnadesdecero.es/configuracion-acl-ipv4-estandar/)


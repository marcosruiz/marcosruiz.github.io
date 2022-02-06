---
title: (No definitiva) Servicio de EMAIL
date: 2022-02-06 19:05:00 +0100
categories: [Sistemas Microinformáticos y Redes, Servicios en Red]
tags: [gnu linux, comandos, terminal, bash, servicios en red, ssh, seguridad informática, smr, teoría]
---

{:.section}
## Cuentas de correo, alias y buzones

Leed sección 5.1

{:.section}
## Descripción general

Leed sección 5.2

{:.section}
## Formato de los mensajes de correo electrónico

Leed sección 5.3

{:.section}
## Protocolos de servicio de descarga de correo electrónico (POP/IMAP)

Leed sección 5.4

{:.section}
## Protocolo SMTP

Leed sección 5.5

{:.section}
## Extensiones MIME

Leed sección 5.6

{:.section}
## Servidores de correo electrónico en sistemas libres

Leed sección 5.9

Instalación:

```consola
# apt install dovecot-postfix
```

El archivo de configuración principal es /etc/postfix/main.cf.

Porpiedades importantes:

- luser_relay
- message_size_limit
- mydomain
- mydestinantion
- myhostname
- mynetworks
- proxy_interfaces

## Preguntas que debes saber contestar tras esta unidad

- ¿Qué es una cuenta de correo?
- ¿Qué es un buzón de correo?
- ¿Qué es un alias de correo?
- ¿Para qué sirve SMTP?
- ¿Qué es IMF?
- ¿Qué es MIME?
- ¿Para qué sirve IMAP?
- ¿Para qué sirve POP?
- ¿Qué es MUA?
- ¿Qué es MTA?
- ¿Qué es MDA?
- ¿Qué es el spam? ¿Qué tres tipos de spam existen?
- ¿Qué es Thunderbird?

## Bibliografía

- [Protocolo para transferencia simple de correo (Wikipedia)](https://es.wikipedia.org/wiki/Protocolo_para_transferencia_simple_de_correo)
- [Protocolo de oficina de correo (Wikipedia)](https://es.wikipedia.org/wiki/Protocolo_de_oficina_de_correo)
- [Protocolo de acceso a mensajes de Internet (Wikipedia)](https://es.wikipedia.org/wiki/Protocolo_de_acceso_a_mensajes_de_Internet)
- [¿Cómo funciona el sistema de correo?](https://altenwald.org/2009/04/06/como-funciona-el-sistema-de-correo/)
- [Multipurpose Internet Mail Extensions (Wikipedia)](https://es.wikipedia.org/wiki/Multipurpose_Internet_Mail_Extensions)


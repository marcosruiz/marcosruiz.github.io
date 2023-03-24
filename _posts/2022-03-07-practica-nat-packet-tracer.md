---
title: "Práctica: NAT con Packet Tracer"
date: 2022-03-07 14:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, nat, práctica]
---

## Objetivo

El objetivo de esta práctica es aprender que es un NAT y como configurarlo utilizando la herramienta Packet Tracer. Puedes obtener ayuda de los siguientes enlaces donde se explica como configurar el NAT estático, el NAT dinámico y el PAT:

- [Configuración de la NAT](https://ccnadesdecero.es/configuracion-nat-estatica-dinamica-pat)
- [Configuración de NAT Estática](https://ccnadesdecero.es/configuracion-nat-estatica/)
- [Configuración de NAT Dinámica](https://ccnadesdecero.es/configuracion-nat-dinamica/)
- [Configuración de PAT (NAT con sobrecarga)](https://ccnadesdecero.es/configuracion-pat-nat-sobrecarga/)

## Entrega y presentación

La entrega será en formato ZIP. La práctica puede ser realizada **por parejas**. Leer [Entrega y presentación de prácticas](/posts/entrega-presentacion-practicas/).

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Un router NAT estático

Seguir los pasos del siguiente vídeo para configurar un router NAT estático:

<iframe src="https://www.youtube.com/embed/dV9jK4g1uyw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Preguntas sobre el vídeo:

- ¿Para que usa el symbolo `?` en el CLI?
- ¿Podemos asignar una dirección IP externa diferente a la del router? ¿Qué problema puede tener hacer esto?
- Cuando realizamos los pasos que nos indica, ¿obtenemos un resultado diferente al enviar mensajes entre hosts? ¿Cuándo?

<details class="card mb-2">
  <summary class="card-header">Pasos a seguir</summary>
  <div class="card-body" markdown="1">

- Asignamos direccioness IP a todos los hosts.
- Definimos la parte inside y outside del router.

```console
Router>en
Router#config terminal
Router(config)#interface fa 0/0
Router(config-if)#ip nat outside
Router(config)#exit
Router(config)#interface fa 0/1
Router(config-if)#ip nat inside
```

- Comprobamos que no podemos hacer ping desde la parte inside a la parte outside.
- Comprobamos que el inside y outside están bien.

```console
Router#show ip nat statistics
```

- Comprobamos que las traducciones están vacías.

```console
Router#show ip nat translations
```

- Añadimos la primera traducción.

```console
Router(config)#ip nat inside source static 192.168.0.2 210.0.0.3
```

- Comprobamos que hay una traducción.

```console
Router#show ip nat translations
```

- Hacemos ping hacia el exterior. Sólo debería poder tener acceso al equipo exterior un host de la parte interna.
- Añadimos la segunda traducción.
- Opcionalmente podemos hacer que las direcciones IP privadas de tipo C no salgan de la zona inside utilizando una ACL (Access Control List).

```console
Router(config)#access-list 1 deny 192.168.0.0 0.0.255.255
Router(config)#access-list 1 permit any
Router(config)#interface fa 0/0
Router(config-if)#ip access-group 1 out
```

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

> 📷 Haz una o varias capturas para demostrar que la actividad ha sido realizada satisfactoriamente por ti. Deberá verse la topología junto al envío de mensajes.
{:.prompt-info}

{:.activity}
### Un router y un router NAT estático

Seguir los pasos del artículo [Tutorial: Configurar un NAT estático en Packet Tracer](/posts/tutorial-nat-estatico-packet-tracer).

{:.question}
¿Qué ventajas tiene utilizar una NAT estática sobre no utilizarla?

{:.question}
¿Cuáles son los rangos de las direcciones IPv4 privadas?

> 📷 Haz una o varias capturas para demostrar que la actividad ha sido realizada satisfactoriamente por ti. Deberá verse la topología junto al envío de mensajes.
{:.prompt-info}

{:.activity}
### Un router NAT dinámico

Seguir los pasos del siguiente vídeo para configurar un router NAT dinámico:

<iframe src="https://www.youtube.com/embed/rge-SwOx6Dg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

> 📷 Haz una o varias capturas para demostrar que la actividad ha sido realizada satisfactoriamente por ti. Deberá verse la topología junto al envío de mensajes.
{:.prompt-info}

{:.activity}
### Un router PAT

Seguir los pasos del siguiente vídeo para configurar un router PAT:

<iframe src="https://www.youtube.com/embed/I6MLqzfy6BI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

> 📷 Haz una o varias capturas para demostrar que la actividad ha sido realizada satisfactoriamente por ti. Deberá verse la topología junto al envío de mensajes.
{:.prompt-info}

{:.activity}
### Tres router

Seguir los pasos del artículo [Tutorial: NAT estático, NAT dinámico y PAT en Packet Tracer](/posts/tutorial-nat-pat-packet-tracer).

> Al finalizar cada parte del tutorial deberás guardar un fichero .pkt en el estado correspondiente del tutorial.
{:.prompt-info}

> 📷 Al finalizar cada parte del tutorial, haz una o varias capturas para demostrar que la actividad ha sido realizada satisfactoriamente por ti. Deberá verse la topología junto al envío de mensajes.
{:.prompt-info}

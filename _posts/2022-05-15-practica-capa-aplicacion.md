---
title: "Práctica: Capa de aplicación"
date: 2022-05-15 12:20:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, práctica]
img_path: /assets/img/practica-capa-aplicacion/
---

## Introducción y objetivo

El objetivo de esta práctica es entender cómo funciona un Internet en miniatura con una simulación de Packet Tracer.

## Entrega y presentación

La entrega será en formato ZIP. La práctica puede ser realizada **por parejas**. Leer [Entrega y presentación de prácticas](/posts/entrega-presentacion-practicas/).

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Vídeo sobre DNS de Academia de Redes IP

<iframe width="560" height="315" src="https://www.youtube.com/embed/gAstDaSaaWU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

{:.activity}
### Vídeo sobre DNS de NASeros

Mira el siguiente vídeo:

<iframe src="https://www.youtube.com/embed/7XjJqUM0dvg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Y responde a las siguientes preguntas sobre el mismo:

- 

{:.activity}
### Vídeo sobre DNS de NASeros

Mira el siguiente vídeo:

<iframe src="https://www.youtube.com/embed/VpTIvKhSUj4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Y responde a las siguientes preguntas sobre el mismo:

- 

{:.activity}
### Vídeo sobre DHCP de Academia de Redes IP

Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/K07wzpcKrsk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Y responde a las siguientes preguntas sobre el mismo:

- 

{:.activity}
### Vídeo sobre cómo funciona Internet de Antonio Sarosi

Mira el siguiente vídeo:

<iframe src="https://www.youtube.com/embed/T5ERzSRNaKw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Y responde a las siguientes preguntas sobre el mismo:

- 

{:.activity}
### Servicio DNS, DHCP y HTTP

Realiza una topología de red similar a la de la siguiente figura donde deberemos de ser capaces de navegar a la web que contiene el HTTPServer desde cualquier PC haciendo uso del servidor DNS.

![img-description](topologiaDhcpDnsHttp.png)
_Topolgía final de la actividad_

> Es OBLIGATORIO que la topología NO sea la misma. Deberás tener en cuenta que deberá tener al menos la misma cantidad de routers, switches, PCs y servidores. Estos componentes deberán estar distribuidos de manera que haya al menos 3 routers entre un PC y el DNSServer; 3 routers entre un PC y el HTTPServer; y 2 routers entre el HTTPServer y el DNSServer.
{: .prompt-info }

La página web deberá de ser accesible usando el navegador de cualquier PC a través de la url `http://<tuUsuario>.com`.

![img-description](navegacionWeb.png)
_Prueba de funcionamiento_

> Nótese que en la topología actual las redes privadas (192.168.1.0, 192.168.2.0, 192.168.3.0, 192.168.4.0 y 192.168.5.0) se comportan como una red pública ya que no se ha configurado ningún router en modo NAT. Si queremos usar redes privadas como redes privadas, la manera más sencilla es utilizar el router WRT300N o el Home Router y asignarles una IP pública a cada uno.
{:.prompt-info}

Explica todos los mensajes que se intercambian entre el cliente y los servidores cuando el cliente intenta acceder a la página web del servidor llamado HTTPServer.

> 📷 Haz una o varias capturas del escritorio al completo para demostrar que la actividad ha sido realizada satisfactoriamente por ti. Recuerda que también deberá verse la hora y el dia en la barra de inicio.
{:.prompt-info}

{:.activity}
### PAT con router WRT300N

Haz que las redes privadas sean realmente redes privadas usando el router WRT300N o Home Router en cada una de las redes locales (192.168.1.0, 192.168.2.0, 192.168.3.0, 192.168.4.0 y 192.168.5.0). Haz las capturas necesarias para demostrar el funcionamiento de todo.

![img-description](topologiaDhcpDnsHttpConPat.png)
_Topolgía final de la actividad_

> 📷 Haz una o varias capturas del escritorio al completo para demostrar que la actividad ha sido realizada satisfactoriamente por ti. Recuerda que también deberá verse la hora y el dia en la barra de inicio.
{:.prompt-info}

{:.activity}
### (Opcional) PAT con router genérico

Sustituye un router WRT300N por un router genérico y configúralo para que la topología de red siga funcionando exactamente igual.

> 📷 Haz una o varias capturas del escritorio al completo para demostrar que la actividad ha sido realizada satisfactoriamente por ti. Recuerda que también deberá verse la hora y el dia en la barra de inicio.
{:.prompt-info}

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

Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/gAstDaSaaWU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Y responde a las siguientes preguntas sobre el mismo:

1. ¿Qué significan las siglas DNS?
1. ¿Quién nos dice la dirección IP de google.es?
1. ¿Qué relaciona la BBDD del servidor DNS?
1. ¿La petición DNS se realiza antes o después de la petición a google.es?
1. ¿De dónde saca la dirección IP del servidor DNS el PC?
1. ¿Qué dirección DNS usa en el ejemplo del vídeo?
1. ¿A que capa pertenece el 3-Way-Handshake?
1. ¿En los servidores DNS se almacenan únicamente direcciones de páginas web?
1. ¿A que capa pertenece el protocolo DNS? ¿Por qué?
1. ¿Por qué DNS funciona normalmente sobre UDP?

{:.activity}
### Vídeo sobre DNS de NASeros 1

Mira el siguiente vídeo:

<iframe src="https://www.youtube.com/embed/VpTIvKhSUj4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Y responde a las siguientes preguntas sobre el mismo:

1. ¿Por qué existe el protocolo DNS?
1. ¿Cuándo se hace la petición DNS? ¿Antes o después de la petición HTTP?
1. ¿En que influye mucho un servidor DNS?
1. ¿Supone un problema de privacidad el uso de servidores DNS? ¿Por qué?
1. ¿Qué es el DNS spoofing?
1. ¿Se puede usar un DNS como control parental?
1. ¿Cuál es el mejor servidor DNS?
1. ¿Qué comando utilizarías para elegir el mejor servidor DNS?
1. ¿De qué varía el precio de un nombre de dominio disponible?

{:.activity}
### Precio dominio

Visita dos o más webs donde puedas comprar un dominio de `<tuUsuario>` y averigüa cuanto te costaría anualmente durante los 5 primeros años. Explica cual de las opciones escogerías y por qué.

> 📷 Haz una o varias capturas del escritorio al completo dónde se vean la webs con los precios del nombre que hayas buscado.
{:.prompt-info}

{:.activity}
### Vídeo sobre DNS de NASeros 2

Mira el siguiente vídeo:

<iframe src="https://www.youtube.com/embed/7XjJqUM0dvg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Y responde a las siguientes preguntas sobre el mismo:

1. ¿El servidor de NASeros tiene una dirección IP pública estática o dinámica? ¿Por qué?
1. ¿Por qué crees que cada operadora tiene un servidor DNS propio?
1. ¿Qué 3 direcciones DNS pone de ejemplo MacJosan?
1. ¿Podemos usar el servidor DNS para bloquear contenido de una web? ¿Y publicidad?

{:.activity}
### Vídeo sobre DHCP de Academia de Redes IP

Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/K07wzpcKrsk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Y responde a las siguientes preguntas sobre el mismo:

1. ¿Qué significan las siglas DHCP?
1. ¿Cuál es la principal ventaja de usar DHCP?
1. ¿En que casos NO es útil usar DHCP?
1. ¿Funciona el servicio DHCP sobre redes WiFi?
1. ¿El router doméstico tiene incorporado un servidor DHCP?
1. ¿Qué tipo de mensaje es DHCPDiscover? ¿Por qué?
1. ¿Puedo configurar el DNS por defecto de un equipo con DHCP?

{:.activity}
### Vídeo sobre cómo funciona Internet de Antonio Sarosi

Mira el siguiente vídeo:

<iframe src="https://www.youtube.com/embed/T5ERzSRNaKw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Y responde a las siguientes preguntas sobre el mismo:

1. ¿Las direcciones IP privadas son únicas dentro de nuestra red?
1. ¿Para qué sirve la máscara de red según Antonio Sarosi?
1. ¿Cuántas redes hay en la topología que se muestra en el vídeo?
1. ¿Qué tecnologías (de las que hemos dado en clase) usa la topología de Antonio Sarosi?
1. ¿Qué pone en el contenido de web.com?
1. ¿Qué hace el comando `ip address`?
1. ¿Qué hace el comando `ip link set dev enp1s0 up`?
1. ¿Cuál es el comando que se usa en GNU Linux para asignar una puerta de enlace predeterminada en nuestro equipo?
1. ¿Por qué no funciona el comando `ping www.google.com`?
1. ¿Qué es un puerto según Antonio Sarosi?
1. ¿A qué hace referencia la dirección IP 127.0.0.1?

{:.activity}
### Servicio DNS, DHCP y HTTP

Realiza una topología de red SIMILAR PERO NO IGUAL a la de la siguiente figura donde deberemos de ser capaces de navegar a la web que contiene el HTTPServer desde cualquier PC haciendo uso del servidor DNS.

Es OBLIGATORIO que la topología NO sea la misma. Deberás tener en cuenta que deberá tener al menos la misma cantidad de routers, switches, PCs y servidores. Estos componentes deberán estar distribuidos de manera que haya al menos 2 o más routers entre un PC y el DNSServer; 2 o más routers entre un PC y el HTTPServer; y 2 o más routers entre el HTTPServer y el DNSServer.

Explica todos los mensajes que se intercambian entre el cliente y los servidores cuando el cliente intenta acceder a la página web del servidor llamado HTTPServer.

La página web deberá de ser accesible usando el navegador de cualquier PC a través de la url `http://<tuUsuario>.com`.

![img-description](topologiaDhcpDnsHttp.png)
_Topología final de la actividad_

![img-description](navegacionWeb.png)
_Prueba de funcionamiento_

> Nótese que en la topología actual las redes privadas (192.168.1.0, 192.168.2.0, 192.168.3.0, 192.168.4.0 y 192.168.5.0) se comportan como una red pública ya que no se ha configurado ningún router en modo NAT. Si queremos usar redes privadas como redes privadas, la manera más sencilla es utilizar el router WRT300N o el Home Router y asignarles una IP pública a cada uno.
{:.prompt-tip}

> 📷 Haz una o varias capturas del escritorio al completo para demostrar que la actividad ha sido realizada satisfactoriamente por ti. Recuerda que también deberá verse la hora y el dia en la barra de inicio.
{:.prompt-info}

{:.activity}
### Añadir routers WRT300N

Haz que las redes privadas sean realmente redes privadas usando el router WRT300N o Home Router en cada una de las redes locales (192.168.1.0, 192.168.2.0, 192.168.3.0, 192.168.4.0 y 192.168.5.0). Para que esto sea más evidente deberás usar siempre la red privada 192.168.1.0/24.

![img-description](topologiaDhcpDnsHttpConPat.png)
_Topología final de la actividad_

> 📷 Haz una o varias capturas del escritorio al completo para demostrar que la actividad ha sido realizada satisfactoriamente por ti. Recuerda que también deberá verse la hora y el dia en la barra de inicio.
{:.prompt-info}

{:.question}
¿Tiene el router WRT300N un servidor DNS incorporado?

{:.question}
¿Tiene el router WRT300N un servidor DHCP incorporado?

{:.question}
¿El router WRT300N tiene un NAT incorporado? Si es así, ¿de qué tipo? ¿Cómo lo puedes comprobar?

{:.question}
¿Por qué crees que por defecto el router WRT300N empieza asignando direcciones IP a partir de la 192.168.1.100 en lugar de la 192.168.1.2?

{:.activity}
### (Opcional) PAT con router genérico

Sustituye un router WRT300N por un router genérico y configúralo para que la topología de red siga funcionando exactamente igual.

> 📷 Haz una o varias capturas del escritorio al completo para demostrar que la actividad ha sido realizada satisfactoriamente por ti. Recuerda que también deberá verse la hora y el dia en la barra de inicio.
{:.prompt-info}

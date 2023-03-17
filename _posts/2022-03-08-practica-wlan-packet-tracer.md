---
title: "Práctica: WLAN en Packet Tracer"
date: 2022-03-08 14:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, wlan, práctica]
---

## Objetivo

El objetivo de esta práctica es aprender que es una WLAN y como configurarla utilizando la herramienta Packet Tracer utilizando los sistemas de autenticación pertinentes WPA2 PSK y WPA2 ENTERPRISE.

## Entrega y presentación

La entrega será en formato ZIP. Leer [Entrega y presentación de prácticas](/posts/entrega-presentacion-practicas/).

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Un router WRT300N

Con ayuda de [Tutorial: WLAN con Packet Tracer](/posts/tutorial-wlan-packet-tracer) realizar el siguiente esquema de red de manera funcional.

Debes cumplir con los siguientes requisitos:

- El default gateway del PC1 debe ser el Router1.
- El default gateway del Server0 debe ser el Router0.
- El AccessPoint0 no debe usar autenticación.
- El router WRT300N debe usar autenticación WPA2-PSK.

![Esquema de red con un router WRT300N](/assets/img/practica-wlan-packet-tracer/esquemaRed1.png)
_Esquema de red con un router WRT300N_

{:.question}
¿Qué diferencias hay entre un Router-PT Generic y el router WRT300N?

{:.question}
¿Puedo enviar un mensaje del PC4 al PC2? ¿Y del PC2 al PC4? ¿Por qué?

> 📷 Haz una o varias capturas para demostrar que la actividad ha sido realizada satisfactoriamente por ti. Deberá verse la topología junto al envío de mensajes.
{:.prompt-info}

{:.activity}
### Tres router WRT300N

Añade dos routers WRT300N más a la topología anterior utilizando redes de tipo C como se ve en el siguiente esquema de red. Deberás usar redes tipo C privadas para la parte "interna" (azul) y redes tipo C públicas para la parte "externa" (otros colores).

![Esquema de red con tres routers WRT300N](/assets/img/practica-wlan-packet-tracer/esquemaRed2.png)
_Esquema de red con tres routers WRT300N_

{:.question}
¿Puedo usar la misma dirección tipo C privada en las tres partes "internas" sin que haya conflictos? ¿Por qué?

{:.question}
¿Puedo enviar un mensaje del PC7 al PC6? Compruébalo en el modo simulación.

{:.question}
¿Es correcto que el PC6 se conecte al Wireless Router0 mediante cable directo?

> 📷 Haz una o varias capturas para demostrar que la actividad ha sido realizada satisfactoriamente por ti. Deberá verse la topología junto al envío de mensajes.
{:.prompt-info}

{:.activity}
### Autenticación WPA2 ENTERPRISE

En el router Wireless Router1 (modelo WRT300N) implementa WPA2 ENTERPRISE.

![Esquema de red con tres routers WRT300N y WPA2 ENTERPRISE](/assets/img/practica-wlan-packet-tracer/esquemaRed3.png)
_Esquema de red con tres routers WRT300N y WPA2 ENTERPRISE_

{:.question}
¿Siempre es necesario un servidor RADIUS para implementar el sistema de autenticación WPA2 ENTERPRISE?

> 📷 Haz una o varias capturas para demostrar que la actividad ha sido realizada satisfactoriamente por ti. Deberá verse la topología junto al envío de mensajes.
{:.prompt-info}
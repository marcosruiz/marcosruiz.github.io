---
title: "Práctica: Criptografía clásica"
date: 2022-09-26 8:30:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, seguridad activa, smr]
---

## Objetivo

Aprender a encriptar y desencriptar con cada uno de los siguientes cifrados clásicos:

- Escítala
- César
- Polibio
- Francmason
- Vigenère

## Entrega y presentación

La entrega será en formato PDF. Leer [Entrega y presentación de prácticas](/posts/entrega-presentacion-practicas/).

## Actividades

A continuación se listan las actividades que se deben realizar.

{:.activity}
### Responde

¿Que diferencias hay entre la criptografía y el criptoanálisis?

{:.activity}
### Responde

¿Es lo mismo cifrar que encrpitar? Explica la diferencia.

{:.activity}
### Escítala

¿Cómo quedaría el cifrado del texto "send more troops to southern flank and…" con un número de giros de banda de 10 con una escítala?

{:.activity}
### Escítala

Desencripta el texto "Q   PEUQQER EUULOZ EE FAS  MERUTTESAEEEJOGRNNOROTGGR ZEOO DA" si tengo una escítala hexagonal.

{:.activity}
### Responde a mano

¿Cuál es el texto encriptado con el encriptado Cesar de "IES Tiempos Modernos" con un desplazamiento = 7 con el alfabeto español (27 letras)?

{:.activity}
### Responde

¿Para qué se usa el cifrado ROT13?

{:.activity}
### Responde a mano

¿Cómo quedaría la tabla de Polibio si usamos la palabra "MUESCA" para cifrar? ¿Cómo quedaría el texto "Polibio" cifrado con dicha clave? ¿Cómo quedaría el texto "IES Tiempos Modernos" cifrado con dicha clave?

{:.activity}
### Francmason

Escribir el texto "IES Tiempos Modernos" cifrado con el cifrado de Francmason.

{:.activity}
### Responde

¿Cuál es la principal debilidad de los cifrados monoalfabéticos?

{:.activity}
### Análisis de criptofrecuencia

Realiza un análisis de criptofrecuencia con un texto cualquiera en español con la aplicación [Cryptool 2](https://www.cryptool.org/en/ct2/downloads). Haz una o varias capturas.

{:.activity}
### Responde

¿Qué cifrados monoalfabéticos hemos visto? Investiga si existen más y explica su funcionamiento.

{:.activity}
### Responde

¿Cuáles de los algoritmos vistos en clase tiene un cifrado polialfabético? ¿Qué quiere decir esto?

{:.activity}
### Responde

Busca un cifrado polialfabético que no hayamos visto en clase y explícalo.

{:.activity}
### Responde a mano

Cifra el mensaje "IES Tiempos Modernos" con la clave CPU usando el cifrado de Vigenère.

{:.activity}
### Vídeo de Nate Gentile sobre hackear

Ver el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/FhP9DkdCPQo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

y responder a las siguientes preguntas:

1. ¿Qué diferencia hay entre un hacker y un cracker?
1. ¿Qué diferencia hay entre los hackers white hat, grey hat y black hat?
1. ¿Qué es un exploit?
1. ¿En qué consiste la inyección SQL?
1. ¿Qué es un zero day vulnerability?
1. ¿Qué es WordPress? ¿Es popular?
1. ¿Quién es el experto en ciberseguridad más famoso de España?

{:.activity}
### Vídeo de Nate Gentile sobre ciberataques

Ver el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/8iJLbYNsIYQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

y responder a las siguientes preguntas:

1. ¿Es lo mismo un servidor lo mismo que un PC?
2. ¿Qué es un ataque DoS?
3. ¿Qué es un ataque DDoS?
4. ¿Qué es una botnet? ¿Para qué se utilizan?
5. ¿Por qué funcionó Mirai?
6. ¿Que hacia el software de Mirai para no ser detectado?
7. ¿Qué es el IoT?
8. ¿Para qué crearon Mirai?
9. ¿Cómo encontraron a los creadores de Mirai?

{:.activity}
### Herramienta Cryptool

Usa la herramienta Cryptool 2 para encriptar el texto de una canción (o de una estrofa según creas conveniente) en español con los siguientes cifrados (cada alumno debe usar una canción diferente):

- Cifrado con la escítala y desencríptalo con un ataque de fuerza bruta.
- Cifrado César con desplazamiento 15 y desencríptalo con fuerza bruta y con un análisis de frecuencia. En este caso, usa el alfabeto inglés.
- Cifrado de ADFGVX Cipher. ¿Cuál es la diferencia entre el cifrado ADFGVX y el cifrado de Polibio?.
- Cifrado de Vigenère y descifralo con el analizador Vigenère. Debes usar como clave el nombre de tu email del centro.

Haz capturas que demuestren la realización de la actividad.

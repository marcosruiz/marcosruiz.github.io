---
title: "Práctica: Seguridad activa de acceso a redes"
date: 2022-12-21 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría, seguridad activa]
img_path: /assets/img/practica-seguridad-activa-acceso-redes/
---

## Objetivo y duración

El objetivo de esta práctica es aprender a utilizar diversos sistemas de seguridad activa para controlar las redes.

Duración: 7 h

## Entrega y presentación

La entrega de esta práctica debe ser un documento PDF con un nombre en el siguiente formato: "\<Apellidos\>_\<Nombre\>_P\<NúmeroDeLaPrácticaConDosDígitos\>.pdf". Por ejemplo, en mi caso el nombre del documento PDF sería "RuizGarcía_Marcos_P\<NúmeroDeLaPrácticaConDosDígitos\>.pdf".

1. Debe contener una portada con título, nombre de la asignatura, curso, autor y fecha de realización.
2. Debe tener un índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
3. Debe tener cada página numerada.
4. Las actividades deberán estar numeradas y ordenadas de manera que se ignore el "3.". Por ejemplo, la sección "3.1. Actividad" será "1. Actividad" o "Actividad 1" en la entrega del alumno.
5. Cada actividad debe tener **el enunciado en negrita** y la respuesta en texto normal.
6. Cada imagen debe tener un pie de foto la cual tenga el siguiente formato: "Figura \<número\>: \<BreveDescripciónDeLaFigura\>".
7. El documento no debe contener faltas ortográficas.
8. Los comandos y ficheros de configuración que hayas utilizado deben quedar reflejados en el PDF de la entrega en texto para permitirte copiar y pegar el día del examen todos los comandos de una manera rápida.
9. Los comandos y documentos de configuración que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$ sudo apt install neofetch`.
10. Para las actividades a mano se deberá hacer una foto a la resolución del ejercicio y añadirla al PDF.

## Actividades

A continuación se listan las actividades que se deben realizar.

{:.activity}
## Vídeo sobre antivirus

Ver el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/SbdO7BAsGq8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Responde a las siguientes preguntas:

1. ¿Dónde trabaja Marc Rivero?
2. ¿Los virus están hechos por las empresas de antivirus? ¿Por qué?
3. Después de ver este vídeo, ¿recomendarías a tu primo instalarse un crack para tener Photoshop de forma gratuita? ¿Por qué? En caso de que no, ¿Qué alternativa le darías?
4. ¿Puede ser un malware de dos tipos al mismo tiempo?
5. ¿Qué es Wannacry?
6. ¿Es más seguro GNU Linux que Windows? ¿Cómo se acabarían más del 90% de los problemas que hay en Windows?
7. ¿Porque Google Chrome no es detectado como virus por un antivirus?
8. ¿Cómo podemos saber si tenemos un virus en nuestro PC?
9. ¿Cómo se financian los antivirus gratuitos?

Para finalizar, escribe una pregunta para el siguiente vídeo de Nate Gentile con Marc Rivero.

> 📷 Haz una captura de pantalla de la pregunta realizada.
{:.prompt-info}

{:.activity}
## Instalar Metasplotaible3

Descargar e instala Metasplotaible3 en VirtualBox. Cambia la distribución de teclado para que coincida con la de España.

{:.activity}
## Instalar Kali Linux

Descarga e instala Kali Linux en VirtualBox así como las Guest Additions para facilitarnos el trabajo de aquí en adelante. Crea un usuario que sea `<tuUsuario>` y úsalo para las capturas.

{:.activity}
## Conectar las dos máquinas en una red interna

Conecta las dos máquinas a través de una red interna.

{:.activity}
## Nmap

Utiliza la herramienta nmap para descubrir la máquina Metasploitable3 desde Kali.

<iframe width="560" height="315" src="https://www.youtube.com/embed/apvgul-8UsM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.activity}
## Netstat

## (Opcional) Servidor RADIUS

https://howtoforge.es/como-instalar-freeradius-y-daloradius-en-ubuntu-18-04-lts/

https://techexpert.tips/es/freeradius-es/instalacion-de-freeradius-en-ubuntu-linux/

## Video sobre usos de las VPN

Ver el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/2Dao6N0jWEs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Responde a las siguientes preguntas:

1. ¿Cuál es el principal uso de una VPN a nivel profesional?
2. ¿Todo el mundo que teletrabaja requiere una VPN?
3. ¿Es recomendable usar una VPN si estamos usando una red de un aeropuerto?
4. ¿Se puede evitar la censura de páginas web que visitamos usando una VPN?
5. ¿Se puede usar una VPN para acceder a contenido (de Netflix, por ejemplo) que solo esta disponible en otro país?
6. ¿Cuál es la principal desventaja de usar una VPN?

## Vídeo sobre protocolos VPN

Ver el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/1ISXmbcZAm4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Responde a las siguientes preguntas:

1. ¿Qué protocolos VPN existen en el mercado?
2. ¿Cuál es el protocolo VPN más popular?
3. De todas las opciones VPN del mercado (ExpressVPN, Surfshark, NordVPN, CyberGhost, ProtonVPN, Windscribe, IPVanish, Mullvad, Hide.me, TunnelBear, etc.) ¿que protocolos usa cada una de ellas?

## Servidor OpenVPN

Instala un servidor OpenVPN

## Bibliografía


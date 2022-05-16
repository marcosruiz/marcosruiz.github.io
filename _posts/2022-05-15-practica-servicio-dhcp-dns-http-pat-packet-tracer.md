---
title: "Práctica: Servicio DHCP, DNS, HTTP y PAT en Packet Tracer"
date: 2022-05-15 12:20:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, práctica]
img_path: /assets/img/practica-servicio-dhcp-dns-http-pat-packet-tracer/
---

## Introducción y objetivo

El objetivo de esta práctica es entender cómo funciona un Internet en miniatura con una simulación de Packet Tracer.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Servicio DNS, DHCP y HTTP en Packet Tracer

Realiza la siguiente topología de red donde deberemos de ser capaces de navegar a la web que contiene el HTTPServer desde cualquier PC haciendo uso del servidor DNS. 

> No es necesario que la topología sea la misma, pero deberá tener al menos la misma cantidad de routers, switches, PCs y servidores. Estos componentes deberán estar distribuidos de manera que haya al menos 3 routers entre un PC y el DNSServer, 3 routers entre un PC y el HTTPServer y 2 routers entre el HTTPServer y el DNSServer.
{: .prompt-info }

![img-description](topologiaDhcpDnsHttp.png)
_Topolgía final de la actividad_

La página web deberá de ser accesible usando el navegador de cualquier PC a través de la url http://\<tu nombre y tu primer apellido\>.io.

![img-description](navegacionWeb.png)
_Prueba de funcionamiento_


> Nótese que en la topología actual las redes privadas (192.168.1.0, 192.168.2.0, 192.168.3.0, 192.168.4.0 y 192.168.5.0) se comportan como una red pública ya que no se ha configurado ningún router en modo NAT. Si queremos usar redes privadas como redes privadas, la manera más sencilla es utilizar el router WRT300N o el Home Router y asignarles una IP pública a cada uno.
{: .prompt-info }

Explica todos los mensajes que se intercambian entre el cliente y los servidores cuando el cliente intenta acceder a la página web del servidor llamado HTTPServer.

{:.activity}
### PAT

Haz que las redes privadas sean realmente redes privadas usando el router WRT300N o Home Router en cada una de las redes locales (192.168.1.0, 192.168.2.0, 192.168.3.0, 192.168.4.0 y 192.168.5.0). Haz las capturas necesarias para demostrar el funcionamiento de todo.

![img-description](topologiaDhcpDnsHttpConPat.png)
_Topolgía final de la actividad_

## Entrega y presentación

La entrega de esta práctica debe ser un fichero ZIP con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.zip". Por ejemplo, en mi caso el nombre del fichero ZIP sería "RuizGarcía_Marcos_Práctica12.zip".

En la raíz del fichero ZIP deben encontrarse el documento PDF con el nombre "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.pdf" y las actividades de Packet Tracer en formato PKT con el nombre "\<NúmeroDeActividad\>_actividad.pkt".

Asegúrate de que el documento PDF cumple con los siguientes parámetros:

1. Debe contener una portada con título, nombre de la asignatura, curso, autor y fecha de realización.
2. Debe tener un índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
3. Debe tener cada página numerada.
4. Cada actividad debe estar numerada. 
5. Cada actividad debe tener el enunciado en negrita y la respuesta en texto normal.
6. Cada imagen debe tener un pie de foto la cual tenga el siguiente formato: "Figura \<número\>: \<BreveDescripciónDeLaFigura\>".
7. El documento no debe contener faltas ortográficas.
8. Los comandos y ficheros de configuración que hayas utilizado deben quedar reflejados en el PDF de la entrega en texto para permitirte copiar y pegar el día del examen todos los comandos de una manera rápida.
9. Los comandos y documentos de configuración que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$ sudo apt install neofetch`.


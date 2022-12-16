---
title: "Práctica: Seguridad activa"
date: 2022-01-27 00:30:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [gnu linux, comandos, terminal, bash, seguridad informática, seguridad activa, smr, packet tracer, práctica]
---

## Objetivo

El objetivo de esta práctica es:

- Proteger los sistemas BIOS y GRUB.
- Hacer uso de VLANs, VPNs, DMZs, cortafuegos, etc.
- Hacer uso de ACL y TCP Wrappers.
- Instalar y configurar fail2ban.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Habilitar contraseñas en el sistema de entrada y salida (Actividad propuesta 5.1)

Habilita una contraseña en la BIOS de la máquina virtual Zorin OS. Antes, puedes hacer pruebas en el simulador que se ofrece en [esta web](https://www.grs-software.de/sims/bios/phoenix/pages). Debes utilizar la contraseña "chabacier".

{:.activity}
### Proteger el GRUB

Protege el gestor de arranque GRUB con la contraseña "chabacier". 

Puedes utilizar el artículo [Como poner contraseña al Grub 2](https://www.megamanuales.es/como-poner-contrasena-al-grub-2/) de manual.

{:.activity}
### Segmentación de redes (Actividad resuelta 5.1)

Usando el programa Packet Tracer, configura una red que disponga d dos conmutadores. En la red uno, hay cinco ordenadores, llamados pc11, pc12, pc13, pc14 y pc15, conectados al switch0 en las interfaces de la 0 a la 4. En la red dos, hay tres ordenadores, dos conmutadores están conectados entre sí a través de sus dos interfaces Gigabit. Cre dos redes virtuales, donde la red VLAN1 esté compuesta por los equipos pc11, pc13, pc21 y pc23. La red VLAN2 estará compuesta por los equipos pc12, pc14, pc14 y pc22.

{:.activity}
### Contraseñas de acceso en un router (Actividad resuelta 5.2)

Usando Packet Tracer de Cisco, configura el router a través de la consola para que las interfaces vty, aux0 y con0 dispongan de una contraseña de acceso.

{:.activity}
### Contraseñas de acceso cifradas en un router (Actividad resuelta 5.3)

En la siguiente actividad se aumenta la seguridad en el router, haciendo uso del comando `username secret`. Este comando usa un algoritmo más fuerte, MD5. Indica la secuencia de comandos para configurar la interfaz con esta metodología.

{:.activity}
### Configuración de ACL en un router Cisco (Actividad resuelta 5.4)

Para las siguientes premisas, indica cuál sería el comando que usar en un router Cisco para su configuración de control y filtrado de mensajes:

- Permitir que cualquier máquina de la red 192.168.143.0/24 pueda enviar mensajes SSH.
- Permitir todo el tráfico ICMP.
- Permitir el tráfico de la red 192.168.1.0/24 a puertos conocidos de la red 192.168.3.0/24.
- Denegar todos los mensajes que vienen de la red 192.168.43.64/26.

{:.activity}
### Uso de TCP Wrapper (Actividad resuelta 5.5)

Indica las reglas TCP Wrappers que se deberían incluir en el fichero /etc/hosts.allow para conseguir los siguientes objetivos:

- Permitir a todas las máquinas el servicio ssh.
- Permitir el servicio de correo a las máquinas del subdominio informatica.ejemplo.es excepto a la máquina con IP 192.168.1.143.
- Permitir a todas las máquinas de la red utilizar todos los servicios, exceptuando a la máquina server.venta.ejemplo.es el uso del servicio ftp.
- Permitir el uso de servicio Telnet proporcionado por in.tftpd a todos los equipos del dominio informática.ejemplo.es, excepto a las máquinas prueba1 y prueba2 de dicho dominio. 
- Registrar la hora, la dirección IP, el nombre de la máquina origen y el servicio al que quiere acceder a las máquinas de preproducción (se encuentran en el subdominio preproduccion.ejemplo.es).


{:.activity}
### Instalar configurar y usar fail2ban para evitar ataques de fuerza bruta

En un servicio SSH instala y configura fail2ban. 

Puedes seguir el artículo [Instalar configurar y usar fail2ban para evitar ataques de fuerza bruta](https://geekland.eu/instalar-configurar-y-usar-fail2ban-para-evitar-ataques-de-fuerza-bruta/) de manual.

## Entrega y presentación

La entrega de esta práctica debe ser un documento PDF con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.pdf". Por ejemplo, en mi caso el nombre del documento PDF sería "RuizGarcía_Marcos_Práctica\<NúmeroDeLaPráctica\>.pdf".

Asegúrate de que el documento PDF cumple con los siguientes parámetros:

1. Debe contener una portada con título, nombre de la asignatura, curso, autor y fecha de realización.
2. Debe tener un índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
3. Debe tener cada página numerada.
4. Cada actividad debe estar numerada. 
5. Cada actividad debe tener el enunciado en negrita y la respuesta en texto normal.
6. Cada imagen debe tener un pie de foto la cual tenga el siguiente formato: "Figura \<número\>: \<BreveDescripciónDeLaFigura\>".
7. El documento no debe contener faltas ortográficas.
8. Los comandos y ficheros de configuración que hayas utilizado deben quedar reflejados en el PDF de la entrega en texto para que permitirte copiar y pegar el día del examen todos los comandos de una manera rápida.
9. Los comandos y documentos de configuración que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$ sudo apt install neofetch`.
---
title: "Práctica: Seguridad activa de control de redes"
date: 2022-12-21 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría, seguridad activa]
img_path: /assets/img/practica-seguridad-activa-control-redes/
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
### Tcpdump

{:.activity}
### Wireshark

{:.activity}
### Snort

```console
#apt-get install snort
#snort –i eth1
```

```
preprocessor sfportscan: proto { all }
memcap { 10000000 } sense _ level { low }
include $PREPROC _ RULE _ PATH/preprocessor.rules
```
{: file="/etc/snort/snort.conf" }


```
ipvar HOME _ NET 10.0.1.0/24
```
{: file="/etc/snort/snort.conf" }

```console
#snort –i eth1 –c /etc/snort/snort.conf
```

```console
#cd /var/log/snort
#ls
```


```console
#tcpdump –r
```

```
alert tcp any any -> any any (msg:"no te conozco"; content:"hola"; classtype:shellcode-detect; sid:310; rev:1;)
```
{: file="/etc/snort/rules/local.rules" }


```console
#nc –l 1234
```

```console
#nc 10.0.1.4 1234
```

<iframe width="560" height="315" src="https://www.youtube.com/embed/ap6TGO6PyIM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.activity}
### UFW

Seguir los pasos del artículo [Cómo configurar un firewall con UFW en Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-with-ufw-on-ubuntu-20-04-es) para instalar y configurar el firewall UFW.

{:.activity}
### Proxy Squid

{:.activity}
### SpamAssasin

## Bibliografía

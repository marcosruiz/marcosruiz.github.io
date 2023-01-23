---
title: "Tutorial: Nessus"
date: 2023-01-01 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría, seguridad activa]
img_path: /assets/img/tutorial-nessus/
---

## ¿Qué es Nessus?

Nessus es un programa de escaneo de vulnerabilidades en diversos sistemas operativos. Consiste en un demonio o diablo, nessusd, que realiza el escaneo en el sistema objetivo, y nessus, el cliente (basado en consola o gráfico) que muestra el avance e informa sobre el estado de los escaneos. Desde consola nessus puede ser programado para hacer escaneos programados con cron. 

En operación normal, nessus comienza escaneando los puertos con nmap o con su propio escáner de puertos para buscar puertos abiertos y después intentar varios exploits para atacarlo. Las pruebas de vulnerabilidad, disponibles como una larga lista de plugins, son escritos en NASL (Nessus Attack Scripting Language, Lenguaje de Scripting de Ataque Nessus por sus siglas en inglés), un lenguaje scripting optimizado para interacciones personalizadas en redes. 
Opcionalmente, los resultados del escaneo pueden ser exportados como informes en varios formatos, como texto plano, XML, HTML, y LaTeX. Los resultados también pueden ser guardados en una base de conocimiento para referencia en futuros escaneos de vulnerabilidades. 

Algunas de las pruebas de vulnerabilidades de Nessus pueden causar que los servicios o sistemas operativos se corrompan y caigan. El usuario puede evitar esto desactivando "unsafe test" (pruebas no seguras) antes de escanear. 

## Instalar Nessus en Kali

Leer [¿Cómo instalar Nessus en Kali Linux?](https://keepcoding.io/blog/como-instalar-nessus-en-kali-linux/).

## Arranque de nesus


```console
#service nessusd start
#service nessusd status
```

En un navegador ir a `https://localhost:8834/`. El usuario y contraseña son nessus/nessus.

Primero deberemos escanear la red para descubrir los equipos que hay.

```console
#
```


## Bibliografía

- [Web oficial de Nessus](https://www.tenable.com/products/nessus)
- 
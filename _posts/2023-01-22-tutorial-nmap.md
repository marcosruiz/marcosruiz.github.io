---
title: "Tutorial: NMAP"
date: 2023-01-01 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, tutorial, seguridad activa]
img_path: /assets/img/tutorial-nmap/
---

## ¿Qué es NMAP?

NMAP (de Network MAPper) es una **herramienta de escaneo de redes y detección de hosts, cuyo funcionamiento se basa en el uso del protocolo TCP dela capa de Transporte** (se basa en el envío de un tipo de paquetes definidos por la aplicación a otros equipos, con los que recopila información y posteriormente analiza sus respuestas). Básicamente NMAP permite obtener información valiosa sobre los equipos de una red TCP/IP. Alguno de los típicos usos de esta herramienta es averiguar qué servicios de red (HTTP, FTP, SSH, etc.) se están ejecutando en un ordenador, el sistema operativo de cualquier dispositivo, descubrir los equipos conectados a la misma red que el auditor, detectar proxys, firewalls, etc.

En algunos casos, también se usa en pruebas de pentesting en redes, y no se limita a la mera recopilación y enumeración de información, sino que también es una potente utilidad que puede utilizarse como detector de vulnerabilidades o como escáner de seguridad.

En resumen, NMAP es una herramienta fundamental en el análisis de la seguridad en redes, ya que permite obtener información muy valiosa para analizar cómo de expuesto está un equipo en una red.Esta utilidad de redes se suele utilizar para:

- Detectar un host activo en la red (detección de hosts).
- Detectar los puertos abiertos en un host (descubrimiento o enumeración de puertos).
- Detectar el software y la versión en el puerto correspondiente (detección de servicios).
- Detectar el sistema operativo, la dirección hardware y la versión de software de los equipos de una red.
- Detección de vulnerabilidades y agujeros de seguridad (mediante scripts Nmap).

<details class="card mb-2">
  <summary class="card-header question">¿La herramienta nmap viene preinstalada en Kali Linux? ¿Esta disponible la herramienta nmap para Windows?</summary>
  <div class="card-body" markdown="1">

En sistemas operativos específicos del campo de la seguridad informática como Kali Linux o Parrot Security, Nmap está preinstalada, pero también puede instalarse de manera manual en cualquier otra distribución de Linux (y también en Windows). Se puede usar mediante CLI o mediante GUI (mediante la herramienta Zenmap para Windows).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Conoces alguna distribución similar a Kali Linux?

<details class="card mb-2">
  <summary class="card-header question">¿Qué es NSE (Nmap Scripting Engine)?</summary>
  <div class="card-body" markdown="1">

NMAP por sí sola ya es una herramienta bastante potente (como veremos tiene una amplia variedad de opciones). Sin embargo, tiene una "ampliación" conocida como NSE, que no es más que una forma avanzada de utilizar nmap, para añadirle más potencia; las funcionalidades que añade el NSE permiten que Nmap pueda ejecutar tareas adicionales al mero escaneo de puertos, identificación de servicios, sistemas operativos y versiones.  

El NSE consiste en la posibilidad de utilizar diferentes scripts específicos, en las diferentes fases de un Pentest. De acuerdo al libro de Nmap Network Scanning, NSE fue desarrollado con el fin de mejorar el descubrimiento de redes, sistema de detección de versiones más sofisticado, detección de vulnerabilidades, detección de puertas traseras (backdoor) y explotación de vulnerabilidades.

<details class="card mb-2">
  <summary class="card-header question">¿Dónde están almacenados los scripts NSE?</summary>
  <div class="card-body" markdown="1">

Los scripts NSE están almacenados en la ruta /usr/share/nmap/scripts (se pueden encontrar aproximadamente 589 scripts diferentes, de 14 categorías diferentes: authbroadcast, brute, default, discovery, dos, exploit, external, fuzzer, intrusive, malware, safe, versión, vuln.

Si se usan estos scripts en un entorno real, hay que tener en cuenta que pueden ocasionar alguna interrupción, daño o denegación de servicio, por lo que es necesario realizar las acciones pertinentes según un acuerdo previo con el cliente, empresa o poseedor del sistema de información en el que se ejecuten Scripts con NMap. 

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<iframe width="560" height="315" src="https://www.youtube.com/embed/CTmLLHGbvPs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Escanéos básicos con nmap

Para buscar equipos en una red podemos utilizar el siguiente comando:

```console
#nmap –sP <dirección de red>/<máscara de red en formato prefijo>
```

La opción `s` significa scan y la opción `P` significa ping. Esta opción realiza lo que se llama escaneo tipo ping o escaneo Ping Sweep[En seguridad informática, un "pingSweep" es un tipo de análisis en el que se envían peticiones de eco ICMP, "pings", a un rango de direcciones IP, con el objetivo de encontrar anfitriones que se pueden probar en busca de vulnerabilidades.]), a todas las máquinas indicadas.

Por ejemplo si queremos escanear la red de tipo C 192.168.1.0 ejecutaremos:

```console
#nmap –sP 192.168.1.0/24
```

También podemos especificar un rango de direcciones IP:

```console
#nmap –sP 192.168.1.1-50
```

{:.question}
¿Qué información obtienes con la opción `-sP`?

Podemos redirigir la salida con la opción `-oN <nombre de fichero>`. Por ejemplo:

```console
#nmap –sP 192.168.1.0/24 -oN salida.txt
```

Una vez hemos encontrado equipos en nuestra red analizamos uno a uno con:

```console
#nmap <dirección IP del equipo>
```

Como por ejemplo:

```console
#nmap 192.168.1.3
```

{:.question}
¿Qué información obtienes interrogando directamente al equipo? ¿Consideras que es útil esta información?

Para cada puerto, la herramienta ofrece cuatro posibles estados:

- **open (abierto)**: la máquina acepta paquetes dirigidos a ese puerto, donde algún servidor
está escuchando y los procesará adecuadamente.
- **closed (cerrado)**: no hay ningún servidor escuchando.
- **filtered**: Nmap no puede decir si ese puerto está abierto o cerrado porque alguien
está bloqueando el intento de conexión (router, firewall).
- **unfiltered**: el puerto no está bloqueado, pero no se puede concluir si está abierto o
cerrado.

{:.question}
¿Qué quiere decir que el puerto está en estado (open|filtered)?

Con el atributo `–T`, puedes elegir realizar un escaneo de menor a más "agresivo", y puede tomar valores entre 0 y 5, siendo 5 el más agresivo y el más rápido. Por ejemplo:

```console
#nmap -T4 192.168.1.3
```

{:.question}
¿Obtienes información adicional respecto a anteriores escaneos?

Para averiguar la información del sistema operativo podemos usar la opción `-O`. Por ejemplo:

```console
#nmap -O 192.168.1.3
```

Otra opción interesante de la herramienta NMAP es `–sA` (Ack scan) (se puede usar junto con `–Pn`). Esta opción permiten comprobar si existe algún firewall en el equipo objeto de análisis.

{:.question}
¿Cómo puedes saber si existe un firewall activado en el equipo escaneado?

{:.question}
¿Qué información devuelve la opción de NMAP `–sA`?

<iframe width="560" height="315" src="https://www.youtube.com/embed/6-E6b1CX1Cc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Más opciones de NMAP

### Escaneo TCP Connect

Fiable, pero ruidoso.

```console
#nmap -sT -O -v <dirección IP objetivo>
```

{:.question}
¿Qué problema podría suponer realizar un escáner de puertos usando la opción –sT?

### Escaneo SYN o Stealth Scan

```console
#nmap -sS -O –v <dirección IP objetivo>
```

{:.question}
¿Para qué sirve la opción `-v`?

<details class="card mb-2">
  <summary class="card-header question">¿Para qué sirve la opción `-sS`?</summary>
  <div class="card-body" markdown="1">

Realiza un análisis de puertos abiertos típico (TCP SYN Scanner).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
Interpreta los resultados e indica todos los datos que has obtenido.

{:.question}
Vuelve a ejecutar el comando añadiendo la opción `–Pn`. ¿Qué es lo que hace en este caso?

{:.question}
¿Cómo podríamos indicar un puerto o rango de puertos concreto a escanear?

### Escaneo UDP

```console
#nmap -sU -O –v <dirección IP objetivo>
```

### Escaneo ACK o método de detección de Firewalls

```console
#nmap -Pn -sA -v –p 1-443 <dirección IP objetivo>
```

### Escaneo de servicios que están detrás de los puertos abiertos

```console
#nmap -sV <dirección IP objetivo>
```

<details class="card mb-2">
  <summary class="card-header question">¿Qué hace la opción `-sV`?</summary>
  <div class="card-body" markdown="1">

Detecta de la versión de los servicios instalados en el objetivo.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Más información

Leer artículo [Realiza escaneos de puertos con Nmap a cualquier servidor o sistema](https://www.redeszone.net/tutoriales/configuracion-puertos/nmap-escanear-puertos-comandos/).

## Chuleta NMAP

![Chuleta NMAP](nmapCheatSheet.jpg)
_Chuleta NMAP en inglés_

## Más vídeos interesantes

<iframe width="560" height="315" src="https://www.youtube.com/embed/EqjkozRZ8_U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/har1It-lW2A" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/apvgul-8UsM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Bibliografía

- [MYTCPIP](https://mytcpip.com/?s=nmap)
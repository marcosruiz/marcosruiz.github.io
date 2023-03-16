---
title: "Práctica: VLAN en Packet Tracer"
date: 2022-02-16 14:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, vlan, práctica]
---

## Objetivo

El objetivo de esta práctica es:

- Aprender que son las VLAN.
- Aprender como configurar VLAN en switches utilizando la herramienta Packet Tracer 6.2.
- Verificar la conectividad extremo a extremo.
- Aprender a enrutar paquetes entre VLANs.

## Entrega y presentación

La entrega será en formato ZIP. Leer [Entrega y presentación de prácticas](/posts/entrega-presentacion-practicas/).

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica. Cada actividad debe tener al menos una captura del sistema funcionando para demostrar la realización de dicha actividad. Además deberás indicar los pasos que has seguido junto con los comandos de terminal en texto plano como se indica en el apartado anterior.

{:.activity}
### Tres VLAN, un switch y un router

Seguir los pasos del artículo [Tutorial: VLAN con Packet Tracer](/posts/tutorial-vlan-packet-tracer).

{:.activity}
### Tres VLAN y dos switches

Configurar tres VLAN con dos switches como se ve en la siguiente figura:

![img-description](/assets/img/practica-vlan-packet-tracer/tresVlanDosSwitches.png)
_Distribución de red_

Cada VLAN deberá tener el siguiente nombre:

- VLAN 2: INFORMATICA
- VLAN 3: SISTEMAS
- VLAN 4: MECATRÓNICA

Pasos para resolver la tarea:

1. Configurar Switch 0
1. Configurar Switch 1
1. Configurar las tres VLAN en el Switch 0
1. Configurar las tres VLAN en el Switch 1
1. Asignar interfaces a las VLAN
1. Verificar la implementación de las VLAN

{:.question}
¿Se puede configurar el modo troncal desde la interfaz gráfica?

{:.question}
¿Se podría hacer esta actividad sin usar el modo troncal?

{:.activity}
### Dos VLAN, tres switches y un router

El esquema de la red que queremos emular, es el que se ve en la imagen siguiente. Tenemos 2 oficinas o aulas con N equipos conectados en cada una de ellas (en este caso hay 2 equipos en cada oficina). En cada oficina hay un switch, y cada switch se conecta a un switch central. Por último, el switch central se conecta al router de acceso a Internet. Cada oficina está en una VLAN, y a diferencia de otros ejemplos, queremos que los equipos de una VLAN se puedan conectar con equipos de otra VLAN por el motivo que sea.

El esquema de red es el siguiente:

![img-description](/assets/img/practica-vlan-packet-tracer/enrutamientoEntreVlans.png)
_Esquema de red_

En al siguiente tabla se muestra el direccionamiento que se ha usado para cada uno de los equipos del esquema de red. Hay que prestar especial atención a las VLANs en las que está cada uno de los elementos del esquema:

| Equipo | IPs | Máscara de red | Gateway | VLAN |
|:---|:---:|:---:|:---:|:---:|
| PC0 | 192.168.0.2 | 255.255.255.0 | 192.168.0.1 | 10 |
| PC1 | 192.168.0.3 | 255.255.255.0 | 192.168.0.1 | 10 |
| PC2 | 192.168.1.2 | 255.255.255.0 | 192.168.1.1 | 20 |
| PC3 | 192.168.1.3 | 255.255.255.0 | 192.168.1.1 | 20 |
| Switch1 | --- | --- | --- | 10 |
| Switch2 | --- | --- | --- | 20 |
| Switch central | --- | --- | --- | 10 y 20 |
| Router0 | 192.168.0.1 | 255.255.255.0 | --- | 10 y 20 |
| Router0 | 192.168.1.1 | 255.255.255.0 | --- | 10 y 20 |

#### Switch1

```console
Switch>
Switch> en
Switch# conf t
Switch(config)# vlan 10
Switch(config-vlan)# name VLAN10
Switch(config-vlan)# int r f0/1-24
Switch(config-if-range)# switchport mode access
Switch(config-if-range)# switchport access vlan 10
```

{:.question}
¿Se pueden acortar los comandos en el CLI del switch? ¿Cuándo?

{:.question}
¿Qué significa y para que sirve el comando `en`?

{:.question}
¿Qué significa y para que sirve el comando `conf t`?

{:.question}
¿Qué significa y para que sirve el comando `int r f0/1-24`?

#### Switch2

```console
Switch>
Switch> en
Switch# conf t
Switch(config)# vlan 20
Switch(config-vlan)# name VLAN20
Switch(config-vlan)# int r f0/1-24
Switch(config-if-range)# switchport mode access
Switch(config-if-range)# switchport access vlan 20
```

#### Switch central

```console
Switch> en
Switch# conf t
Switch(config)# vlan 10
Switch(config-vlan)# name VLAN10
Switch(config-vlan)# vlan 20
Switch(config-vlan)# name VLAN20
Switch(config-vlan)# int f0/24
Switch(config-if)# switchport mode access
Switch(config-if)# switchport access vlan 10
Switch(config-if)# int f0/23
Switch(config-if)# switchport mode access
Switch(config-if)# switchport access vlan 20
Switch(config-if)# int f0/1
Switch(config-if)# switchport mode trunk
Switch(config-if)# switchport nonegotiate
```

#### Router

```console
Router# en
Router# conf t
Router(config)# int f0/0.10
Router(config-subif)# encapsulation dot1Q 10
Router(config-subif)# ip add 192.168.0.1 255.255.255.0
Router(config-subif)# no sh
Router(config-subif)# int f0/0.20
Router(config-subif)# encapsulation dot1Q 20
Router(config-subif)# ip add 192.168.1.1 255.255.255.0
Router(config-subif)# no sh
Router(config-subif)# int f0/0
Router(config-if)# no sh
```

{:.question}
¿Qué significa y para que sirve el comando `no sh`?

{:.activity}
### Subredes y VLAN

A partir de la red 118.0.0.0 y a partir de la topología de red calculad los siguientes elementos:

- Nº de subredes útiles necesarias.
- Nº de subredes totales necesarias.
- Clase.
- Máscara de (sub)red por defecto.
- Máscara de subred adaptada (en decimal punteado).
- Nº total de subredes.
- Nº de subredes útiles.
- Nº total de direcciones de host.
- Nº de direcciones de host útiles.
- Nº de bits prestados a la subred.

![img-description](/assets/img/practica-vlan-packet-tracer/topologiaRed4Routers.png)
_Topología de red con 4 routers_

## Bibliografía

- [Ejercicios resueltos con Cisco Packet Tracer parte 2: VLAN y enlaces troncales](https://parzibyte.me/blog/2018/05/22/ejercicios-resueltos-cisco-vlan-enlaces-troncales/)
- [Configuración de VLANs en Packet Tracer](https://www.raulprietofernandez.net/blog/packet-tracer/configuracion-de-vlans-en-packet-tracer)
- [Enrutamiento entre VLANs con Packet Tracer](https://www.raulprietofernandez.net/blog/packet-tracer/enrutamiento-entre-vlans-con-packet-tracer)
- [Packet Tracer: Configuración de redes VLAN](https://examenredes.com/3-3-12-packet-tracer-configuracion-de-redes-vlan-respuestas/)

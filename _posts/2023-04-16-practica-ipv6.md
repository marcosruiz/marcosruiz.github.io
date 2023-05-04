---
title: "Práctica: IPv6 en Packet Tracer"
date: 2022-05-15 12:20:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, práctica]
img_path: /assets/img/practica-ipv6/
---

## Introducción y objetivo

El objetivo de esta práctica es entender cómo usar IPv6 junto a IPv4 en Packet Tracer.

## Entrega y presentación

La entrega será en formato ZIP. La práctica puede ser realizada **por parejas**. Leer [Entrega y presentación de prácticas](/posts/entrega-presentacion-practicas/).

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

> ¡Recuerda! Cada vez que aparezca mi código de usuario "mruizg" deberás sustituirlo por el tuyo.
{:.prompt-warning}

{:.activity}
### Vídeo de IPv6 de NASeros

Mira el siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/LQf1azzcG7s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Y responde a las siguientes preguntas sobre el mismo:

1. ¿Por qué existe IPv6?
1. ¿Es necesario el uso de NATs en IPv6?
1. ¿Por qué se sigue usando IPv4?
1. ¿Cuál es el porcentaje de adopción de IPv6 en España según MacJosan?
1. ¿Qué países son líderes en la implantación de IPv6? ¿Por qué?

{:.activity}
### Artículo de tipos de direcciones IPv6

Lee el artículo [Tipos de Direcciones IPv6](https://ccnadesdecero.es/tipos-direcciones-ipv6/) y contesta a las siguientes preguntas sobre el mismo:

1. ¿Cuál es la longitud de prefijo recomendada para la mayoría de las subredes IPv6?
   1. /32
   1. /48
   1. /64
   1. /128
1. ¿Qué parte de un GUA es asignada por el ISP?
   1. Prefijo de routing global
   1. Prefijo de enrutamiento global e ID de subred
   1. Prefijo
   1. Prefijo RIR
1. ¿Qué tipo de dirección de unidifusión IPv6 no se puede enrutar entre redes?
   1. dirección local única
   1. GUA
   1. dirección IPv4 incrustada
   1. LLA
1. Verdadero o Falso: el campo ID de subred de un GUA debe tomar prestados bits del ID de interfaz.
   1. Verdadero
   1. Falso
1. ¿Qué tipo de dirección IPv6 comienza con fe80?
   1. GUA
   1. LLA
   1. dirección de multidifusión
   1. Ninguno. Una dirección IPv6 debe comenzar con 2001

{:.activity}
### Dos redes y un router

Sigue los pasos del siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/K9GgC5EX2io" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

{:.question}
¿Cuál es la parte de red y la parte de host de las dos redes IPv6 utilizadas en el vídeo?

{:.question}
Entra en modo simulación y haz un `ping` desde el terminal a la dirección `FF02::1` y `FF02::2` y observa que ocurre pulsando en el botón "Capture / Forward". ¿Qué ocurre? ¿Por qué?. En el artículo [Direcciones Multicast IPv6](https://ccnadesdecero.es/direcciones-multicast-ipv6/) encontrarás la respuesta.

> Indica los comandos que has utilizado en texto plano. 📷 Haz una captura del escritorio al completo para demostrar que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}

{:.activity}
### Artículo de división de subredes de una red IPv6

Lee el artículo [División de Subredes de una Red IPv6](https://ccnadesdecero.es/dividir-redes-ipv6/) y contesta a las siguientes preguntas sobre el mismo:

1. ¿Verdadero o falso? IPv6 se diseñó teniendo en cuenta las subredes.
   1. Verdadero
   1. Falso
1. ¿Qué campo de un GUA IPv6 se utiliza para subredes?
   1. Prefijo
   1. Red
   1. Prefijo de routing global
   1. ID de subred
   1. ID de interfaz
1. Dado un prefijo de enrutamiento global /48 y un prefijo /64, ¿cuál es la parte de subred de la siguiente dirección: 2001:db8:cafe:1111:2222:3333:4444:5555
   1. cafe
   1. 1111
   1. 2222
   1. 3333
   1. 4444
1. Dado un prefijo de enrutamiento global /32 y un prefijo /64, ¿cuántos bits se asignarían para el ID de subred?
   1. 8
   1. 16
   1. 32
   1. 48
   1. 64

{:.activity}
### Enrutamiento estático con IPv6

Implementa la siguiente topología de red usando redes IPv6 y enrutamiento estático:

![imgDescription](topologiaEnrutamientoDinamico2.png)
_Topología objetivo_

> Indica los comandos que has utilizado en texto plano. 📷 Haz una captura del escritorio al completo para demostrar que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}

#### Añadimos direcciones IPv6

Añadimos las direcciones IPv6 a los equipos finales a través de la interfaz gráfica.

Configuramos las interfaces de R1:

```console
Router(config)#interface fastEthernet 0/0
Router(config-if)#ipv6 address 2001:DB8:CAFE:1::1/64
Router(config-if)#no shutdown
Router(config)#interface serial 0/0/0
Router(config-if)#ipv6 address 2001:DB8:CAFE:A001::1/64
Router(config-if)#no shutdown
```

Comprobamos si IPv6 está activo en las interfaces:

```console
Router#show ipv6 interface
```

O comprobamos como está el fichero de configuración actual:

```console
Router#show running-config
```

Hacemos lo mismo con las interfaces de R2 y R3.

> Un vez configuradas las direcciones IPv6 de todos los dispositivos te recomiendo guardar una copia de este PKT para la siguiente actividad.
{:.prompt-tip}

#### Indicamos las tablas de enrutamiento IPv6

Para enseñar a un router las redes que no conoce utilizamos el siguiente comando:

```console
Router(config)#ipv6 route <Red destino>/<máscara de subred> <Next Hop>
```

En el caso del router R1 sería así:

```console
Router(config)#ipv6 unicast-routing
Router(config)#ipv6 route 2001:db8:CAFE:2::/64 2001:DB8:CAFE:A001::2
Router(config)#ipv6 route 2001:DB8:CAFE:3::/64 2001:DB8:CAFE:A001::2
```

Comprobamos que se ha añadido a la tabla de enrutamiento:

```console
Router#show ipv6 route
```

Hacemos lo mismo con R2 y R3.

{:.activity}
### Enrutamiento dinámico con IPv6

Implementa la siguiente topología de red usando redes IPv6 y enrutamiento dinámico:

![imgDescription](topologiaEnrutamientoDinamico2.png)
_Topología objetivo_

> Indica los comandos que has utilizado en texto plano. 📷 Haz una captura del escritorio al completo para demostrar que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}

#### Pasos a seguir para completar la actividad

Configuramos las interfaces como en la actividad anterior.

Para configurar el enrutamiento dinámico primero debemos indicar que vamos a usar enrutamiento IPv6:

```console
Router(config)#ipv6 unicast-routing
```

Seleccionamos la interfaz y activamos el IPv6:

```console
Router(config)#interface <interfaz>
Router(config-if)#ipv6 enable
```

```console
Router(config-if)#ipv6 rip <identificador> enable
```

En este caso, configuramos el enrutamiento dinámico de R1 de la siguiente manera:

```console
Router(config)#ipv6 unicast-routing

Router(config)#interface fastEthernet 0/0
Router(config-if)#ipv6 enable
Router(config-if)#ipv6 rip RED_MRUIZG enable

Router(config)#interface serial 0/0/0
Router(config-if)#ipv6 enable
Router(config-if)#ipv6 rip RED_MRUIZG enable
```

Comprobamos que se ha añadido a la tabla de enrutamiento:

```console
Router#show ipv6 route
```

Hacemos lo mismo con R2 y R3.

{:.activity}
### (Opcional) Tunelización IPv4 IPv6

Implementa la siguiente topología de red:

![imgDescription](topologiaTunelizacion.png)
_Topología con 4 redes IPv6 (+1 para el túnel) y 2 redes IPv4_

Para ello puedes seguir los pasos del siguiente vídeo:

<iframe width="560" height="315" src="https://www.youtube.com/embed/5mWMjAIPA8o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Las redes que debes usar son las siguientes:

- RED: 2001:DB8:A:1::/64
- RED: 2001:DB8:B:1::/64
- RED: 192.168.1.0. MR: 255.255.255.252
- RED: 192.168.1.4. MR: 255.255.255.252
- RED: 2001:DB8:B:2::/64
- RED: 2001:DB8:A:2::/64

> Indica los comandos que has utilizado en texto plano. 📷 Haz una captura del escritorio al completo para demostrar que la actividad ha sido realizada satisfactoriamente por ti.
{:.prompt-info}

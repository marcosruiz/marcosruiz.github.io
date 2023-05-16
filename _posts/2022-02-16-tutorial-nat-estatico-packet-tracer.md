---
title: "Tutorial: Configurar un NAT estático en Packet Tracer"
date: 2022-02-16 10:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [smr, tutorial, nat, packet tracer]
---

## Introducción y objetivo

Nuestro objetivo es crear una NAT estática con los elementos que ya conocíamos; PCs, switches y routers. Usaremos el sistema operativo de estos elementos que podemos ver en la pestaña CLI.

En nuestro caso dejaremos con NAT estática el servidor y la impresora de la derecha, que tendrán una dirección IP interna (10.0.0.2 y 10.0.0.3) y una dirección IP externa por la que se les conocerá (5.5.5.5 y 5.5.5.6, respectivamente).

Para esta primera práctica usaremos este modelo:

![img-description](/assets/img/tutorial-nat-estatico-packet-tracer/esquemaDeRouterYRouterNat.png)
_Modelo router (a la izquierda) y router NAT (a la derecha)_

Es decir tendremos 3 Redes, con las siguientes características:

| RED |	DIRECCIÓN DE RED |
|---|---|
| LOCAL IZDA | 192.168.0.0/24 | 
| ENTRE ROUTERS | 1.2.3.0/30 |
| LOCAL DCHA | 10.0.0.0/24 |
| NAT EXTERNO | 5.5.5.0/24 |

Estas serán las instrucciones modelo a usar:

```console
Router(config)#ip nat inside source static <dirección IP local> <dirección IP externa>
Router(config)#interface <interfaz>
Router(config-if)#ip nat outside
Router(config-if)#ip nat inside
Router(config)#ip route 0.0.0.0 0.0.0.0 <interfaz de salida>
```

## Configuración del router NAT

### Paso 0

Ir a la pestaña CLI del router que queramos configurar el NAT:

```console
Router>enable
Router#config ter
Router(config)#
```

### Paso 1

Configuramos las interfaces que salen del router derecho, el de la NAT, indicándoles tanto la interfaz que es, como la dirección IP que le damos y su máscara (es decir lo mismo que hacemos por pestaña).

```console
interface <tipo de interfaz> <numeración del interfaz>
```

En nuestro ejemplo:

```console
Router(config)#interface fa 0/0
```

```console
Router(config-if)#ip address <dirección interna> <máscara de red>
```

En nuestro caso:

```console
Router(config-if)#ip address 1.2.3.1 255.255.255.0
```

Y por último indicamos que esta interfaz será el de NAT de salida.

```console
Router(config-if)#ip nat outside
```

Para activar la interfaz por comando:

```console
Router(config-if)#no shutdown
```

### Paso 2

Configuramos la otra interfaz que estamos usando.

```console
Router(config)#interface <tipo de interfaz> <numeración del interfaz>
```

En nuestro ejemplo:

```console
Router(config)#interface fa 0/1
```

```console
Router(config-if)#ip address <dirección interna> <máscara de red>
```

En nuestro caso:

```console
Router(config-if)#ip address 10.0.0.1 255.255.255.0
```

Y por último indicamos que esta interfaz será el de nat inside (red interna).

```console
Router(config-if)#ip nat inside
```

### Paso 3

Indicamos las direcciones fijas que tendrán las máquinas fuera de la red interna.

```console
Router(config)#ip nat inside source static <@ IP interna> <@ IP externa>
```

En nuestro ejemplo:

```console
Router(config)#ip nat inside source static 10.0.0.2 5.5.5.5
Router(config)#ip nat inside source static 10.0.0.3 5.5.5.6
Router(config)#exit
```

### Paso 4

Indicamos el enrutamiento estático para ello usaremos esta forma especial.

```console
Router(config)#ip route 0.0.0.0 0.0.0.0 <interfaz de salida>
```

En nuestro ejemplo:

```console
Router(config)#ip route 0.0.0.0 0.0.0.0 fa0/0
```

Y finalmente grabaremos los cambios con la instrucción:

```console
Router#copy run start
```

Y pulsaremos enter para aceptar el guardado.

Si queremos ver cómo ha quedado la tabla de NAT usaremos esta instrucción:

```console
Router#show ip nat translations
```

Obteniendo algo similar a esto:

```console
Router#sh ip nat translations
Pro  Inside global     Inside local       Outside local      Outside global
---  5.5.5.5           10.0.0.2           ---                ---
---  5.5.5.6           10.0.0.3           ---                ---
```

## Configuración del router normal

Igual que como hacemos siempre, con la excepción de que configuraremos la ruta estática como hemos hecho en el otro router.

Indicamos el enrutamiento estático para ello usaremos esta forma especial.

```console
Router(config)#ip route 0.0.0.0 0.0.0.0 <interfaz de salida>
```

En nuestro ejemplo:

```console
Router(config)#ip route 0.0.0.0 0.0.0.0 fa0/0
```

Y finalmente grabaremos los cambios con la instrucción:

```console
Router#copy run start
```

y pulsaremos enter para aceptar el guardado.

---
title: "Tutorial: Configurar una VLAN con Packet Tracer" 
date: 2022-02-16 12:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, vlan, tutorial, packet tracer]
---

## Introducción y objetivo

Nuestro objetivo es crear una serie de VLAN con los elementos que ya conocíamos, a saber, pcs, switches, routers. Usaremos por primera vez el sistema operativo de estos elementos que podemos ver en la pestaña CLI.

Para esta primera práctica usaremos este modelo:

![img-description](/assets/img/tutorial-vlan-packet-tracer/modeloVlan.png)
_Modelo de red_

Es decir tendremos 3 VLAN, con las siguientes características:

| VLAN | DIRECCIÓN DE RED | SWITCH PUERTO INICIO | SWITCH PUERTO FIN |
|---|---|---|---|
| VLAN 5 | 192.168.1.0 | Fa 0/1 | Fa 0/7 |
| VLAN 8 | 192.168.2.0 | Fa 0/8 | Fa 0/15 |
| VLAN 11 | 192.168.3.0 | Fa 0/16 | Fa 0/23 |

El puerto Fa 0/24 lo usaremos para conectar posteriormente el router.

## Configuración del Switch

Vamos a configurar el SWITCH usando el sistema operativo que lleva incorporado, para ello entraremos en la pestaña CLI. (Normalmente nos pedirá que pulsemos Enter para poder iniciar la escritura en el mismo).

![img-description](/assets/img/tutorial-vlan-packet-tracer/consolaSwitch.png)
_Interfaz de línea de comandos_

En la línea de comando escribiremos lo siguiente:

- `enable` (este comando indica al SO que vamos a entrar en la zona de escritura de órdenes)
- Veremos que cambia el texto de la raíz a `Switch#>`.
- `config ter` (este comando prepara el switch para ser configurado vía teclado).
- Veremos que cambia de nuevo el texto de la raíz `Switch(config)#>`.

### Paso 1

Empezamos a configurar cada VLAN que necesitamos, para ello escribiremos: `vlan <númeroVlan>`, en nuestro ejemplo: `vlan 5`.

### Paso 2

Cambiará de nuevo la raíz indicando ahora: `Switch(config-vlan)#>`.

Deberemos darle un nombre, para ello teclearemos `name <nombre identificativo de la vlan>`.

Por ejemplo: `vlan ClaseSMR1`.

Escribiremos `exit`, para salir de esta zona de la configuración.

### Paso 3

Y ahora vamos a indicar los puertos del switch que van a usar esa primera VLAN, para ello tecleamos: `interface range <tipo de puerto> <número del puerto inicio> - <número de puerto final>`.

Ejemplo: `interface range fa 0/1-7`

### Paso 4

Hecho lo cual añadiremos en la línea de comando: `Switchport Access vlan <número de vlan>`.

En nuestro ejemplo:

```console
Switchport Access vlan 5
exit
```

Este proceso desde el paso 1 hasta el 4 hay que repetirlo para cada una de las VLAN que queramos configurar. 

De este modo indicamos qué puertos del switch son para cada VLAN.
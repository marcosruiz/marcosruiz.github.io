---
title: Protocolo IPv6
date: 2022-02-13 13:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [gnu linux, comandos, terminal, bash, redes locales, teoría]
---

## IPv4 vs IPv6

El protocolo IPv4 está formado por direcciones IP de 32 bits por lo que da un total de 2<sup>32</sup>= 4.294.967.296 que no cubría todas las posibles conexiones de dispositivos a nivel mundial. Teniendo en cuenta que muchos usuarios se conectan con varios dispositivos necesitan una gran cantidad de IP.

En febrero de 2011 la IANA (Internet Assigned Numbers Authority) asignó el último bloque de 33 millones de direcciones a la APNIC, que es la encargada de proporcionar direcciones en Asia. Precisamente, la entrada de este mercado, que posee una gran cantidad de densidad de población, es lo que ha precipitado el final de IPv4 y el uso de IPv6.

Las direcciones IPv6 están formadas por 128 bits. Para facilitar su anotación se expresan en números hexadecimales agrupados de cuatro en cuatro y cada grupo está separado por dos puntos (:). Las IPv6 se expresan con 32 números hexadecimales. Si encontramos un grupo nulo, es decir, todo ceros, podemos comprimir la dirección colocando el  símbolo de dos puntos. Por ejemplo, 

`abcd:ac50:11bf:0000:f3e4:a1b2:0000:1220:61de`

equivale a:  

`abcd:ac50:11bf::f3e4:a1b2::1220:61de`

Los ceros iniciales de un grupo también se pueden omitir. Por ejemplo,

`abcd:ac50:01bf:0000:f3e4:01b2:0000:1220:61de`

equivale a 

`abcd:ac50:1bf::f3e4:1b2::1220:61de`

Las direcciones IPv6 también separan en parte de red y parte de host. 

También pueden usar la notación CIDR, es decir, después de una barra inclinada se especifican los bits que pertenecen al prefijo de red. Por ejemplo

- la dirección 2010:abcd:ef12::/48 define la red que comienza en el número `2010:abcd:ef12:0000:0000:0000:0000:0000` y finaliza en el número `2010:abcd:ef12:ffff:ffff:ffff:ffff:ffff`

## Direcciones IPv6 especiales

Dentro de las direcciones unicast existen algunas que deben utilizarse nunca:

- La dirección de loopback `0:0:0:0:0:0:0:1` que también puede expresarse como `::1/128`.
- La dirección indefinida `::/128`. Se usa cuando aún no se conoce la dirección IP real de la propia interfaz.
- La dirección local única, expresada como `fc00::/7`. Su uso es similar a las direcciones privadas ipv4.

La IANA es la organización encargada de distribuir el espacio de direcciones de IPv6. Su función principal es la asignación de grandes bloques a los RIR (Registro Regional de Internet), que son unas organizaciones que supervisan la asignación y el registro de recursos de números de Internet dentro de una región particular del mundo. Los recursos incluyen direcciones IP y números de sistemas autónomos.

Las direcciones IPv6 se asignan a las organizaciones en bloques mucho mayores que los de direcciones IPv4.

Debido al formato de número tan grande que utiliza IPv6, se asegura que prácticamente siempre haya direcciones disponibles y, por tanto, el uso de NAT se convierte en innecesario, es decir, que no se hace necesario que los routers tengan que traducir las direcciones de la red interna por otras direcciones en el exterior.

## Coexistencia de IPv4 e IPv6

Actualmente ambas versiones consisten en Internet. Por este motivo, se necesitan mecanismos que permitan dicha coexistencia y una migración progresiva de un protocolo al otro. En general, estos mecanismos pueden clasificarse en tres grupos: 

- **Pila dual**: esta solución implementa tanto IPv4 como IPv6 en cada nodo de la red. Cada nodo tendrá dos direcciones de red.
- **Túneles**: permite enviar paquetes IPv6 sobre una infraestructura IPv4. Consiste en encapsular paquetes IPv6 en paquetes IPv4.
- **Traducción**: esta solución es necesaria cuando un nodo que solo soporta IPv4 necesita comunicarse con otro que sólo soporta IPv6. Se realiza una traducción de la cabecera IPv4 a una cabecera IPv6 y viceversa. 

## Memes

![No sé cuando empezaré a usar IPv6, pero a estas alturas tengo demasiado miedo de preguntar](/assets/img/protocolo-ipv6/ipv6Meme.jpg)
_No sé cuando empezaré a usar IPv6, pero a estas alturas tengo demasiado miedo de preguntar_

![Traducción de direcciones privadas a públicas](/assets/img/protocolo-ipv6/memeRedes1.png)
_Tamaño del libro de redes vs tamaño del libro de redes si solo se usara IPv6 desde el comienzo_
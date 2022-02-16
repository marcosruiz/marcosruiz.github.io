---
title: Direcciones IPv4
date: 2022-01-30 20:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, subnetting, subredes, vslm]
---

{:.section}
## Introducción

<iframe width="100%" height="315" src="https://www.youtube.com/embed/gVUE2IDwWA0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.section}
## Protocolo IPv4

Para organizar el tráfico de paquetes por una red se requiere de un protocolo para el nivel de red.

En esta unidad trabajaremos el protocolo IP (Internet Protocol, protocolo de interred), que se encarga de la entrega no confiable de paquetes utilizando técnicas de encaminamiento (o enrutamiento). Luego veremos qué es ésto.

Para que IP funcione, es necesario que los equipos de una red tengan una dirección IP, que identifica de forma única a un equipo dentro de una red TCP/IP.

{:.section}
## Formato de las direcciones IPv4

- Secuencia de 32 bits (4 octetos)
- Por ejemplo: 192.30.72.49 (<primerOcteto>.<segundoOcteto>.<tercerOcteto>.<cuartoOcteto>).
- Cada número es un octeto (8 bits) que se suele representar con un número en decimal. El valor de cada octeto va de 0 a 255, es decir, hay 256 (2<sup>8</sup> valores posibles). Este formato se llama formato decimal punteado.
- Permite 2<sup>32</sup> direcciones de red en total.
- También se puede representar en formato binario separados por puntos en bloques de 8 bits: 11000000.10101000.00000000.01001011.

{:.section}
## Máscaras de red/subred

Las direcciones IP de forma similar a lo que ocurre con los números de teléfono, están organizadas jerárquicamente. La parte más a la izquierda de la dirección IP es lo que se llama el identificador de red, y la parte más a la derecha es el identificador de equipo dentro de esa red. 

Por ejemplo: 192.168.0.75 (equipo número 75 de la red cuyo identificador es 192.168.0) 

Todos los equipos que formen parte de la misma red deben tener el mismo identificador de red, pero distintos identificadores de equipo. 

La cantidad de octetos destinados al identificador de red y, por tanto, al de equipo, es una cantidad variable que depende de la máscara de red/subred: Un número-patrón similar a la IP en estructura y que nos indica qué parte de la IP es identificador de red y qué parte es identificador de equipo. 

Se puede trabajar de dos maneras:

- Con redes con clase, es decir, los octetos de la máscara sólo van a ser 0 ó 255. En este caso, los octetos de la IP que se correspondan con aquellos octetos de la máscara que lleven el valor 255 formarán el identificador de red, y los que lleven el valor 0 formarán el identificador de equipo. 

Ejemplos de uso de máscaras de red:

| IP | Clase | Máscara |
|---|---|
| 80.9.108.62 | A | 255.0.0.0 |
| 172.16.35.107 | B | 255.255.0.0 |
| 216.157.2.1 | C | 255.255.255.0 |

- Con redes sin clase (es decir, con máscaras de red de longitud variable o VLSM), se verá más adelante.

{:.section}
## Tipos de notaciones 

Las direcciones con sus máscaras de subred se pueden expresar de varias formas. Usando el mismo ejemplo para las tres formas, tenemos:

- **Notación decimal punteada:** Cuatro octetos decimales acompañando a la dirección IP: 172.16.3.45/255.255.255.0 
- **Notación binaria:** Octetos binarios separados por puntos (no suele usarse para representar, pero sí para hacer cálculos con ela): 10101100.00010000.00000011.00101101/11111111.11111111.11111111.00000000 
- **Notación prefija:** Un número decimal que indica el número de "unos" que tendría la máscara de subred si la expresáramos en binario: 172.16.3.45/24.

{:.section}
## Clases

Existen cinco clases de direcciones IPv4, tal como muestra la siguiente Figura.

![img-description](/assets/img/direcciones-ipv4/clases-ipv4.png)
_Clases IPv4_

Todo el espacio de direcciones IPy4 está inicialmente dividido en diferentes clases según su primer octeto. Si la máscara de subred de los equipos de una red es distinta a éstas, diremos que la red no tiene clase (red sin clase).

| Clase | Bits de mayor peso | Nº de bits para la @ de red | Nº de redes | Nº de bits para el host | Nº de host por red | Valores del primer octeto | Máscara de red | 
|:---:|:---|---:|---:|---:|---:|:---:|:---:| 
| A | 0 | 8 | 126 | 24 | 16777214 | 0-127 | 255.0.0.0 (/8) | 
| B | 10 | 16 | 16384 | 16 | 65534 | 128-191 | 255.255.0.0 (/16) | 
| C | 110 | 24 | 2097152 | 8 | 254 | 192-223 | 255.255.255.0 (/24) | 
| D | 1110 | No aplicable | No aplicable | No aplicable | No aplicable | 224-239 | No aplicable |
| E | 1111 | No aplicable | No aplicable | No aplicable | No aplicable | 240-255 | No aplicable |

<div class="card mb-2">
  <div class="card-header">
    <a data-toggle="collapse" data-target="#preguntaRedesClaseA" class="question" href="#">¿Cuántas redes de clase A hay en total?</a>
  </div>
  <div class="collapse card-body" id="preguntaRedesClaseA">
    <p class="card-text">2<sup>7</sup></p>
  </div>
</div>

<div class="card mb-2">
  <div class="card-header">
    <a data-toggle="collapse" data-target="#preguntaRedesClaseB" class="question" href="#">¿Cuántas redes de clase B hay en total?</a>
  </div>
  <div class="collapse card-body" id="preguntaRedesClaseB">
    <p class="card-text">2<sup>14</sup></p>
  </div>
</div>

<div class="card mb-2">
  <div class="card-header">
    <a data-toggle="collapse" data-target="#preguntaRedesClaseC" class="question" href="#">¿Cuántas redes de clase C hay en total?</a>
  </div>
  <div class="collapse card-body" id="preguntaRedesClaseC">
    <p class="card-text">2<sup>21</sup></p>
  </div>
</div>

<div class="card mb-2">
  <div class="card-header">
    <a data-toggle="collapse" data-target="#preguntaRango" class="question" href="#">¿Podemos calcular los valores del primer octeto de una red de clase A, B o C? ¿Cómo?</a>
  </div>
  <div class="collapse card-body" id="preguntaRango">
    <p class="card-text">
      Si. Por ejemplo, en el caso de las redes de clase A sabemos que el primer bit del primer octeto SIEMPRE es 0, así que podremos jugar con los 7 bits restantes. Con estos bits con los que podemos jugar les damos su valor mínimo y máximo, es decir, todo ceros y todo unos.
    </p>
    <ul>
      <li>Valor mínimo: 0 0000000 = 0</li>
      <li>Valor máximo: 0 1111111 = 127</li>
    </ul>
    <p class="card-text">Con esto obtenemos que el rango de direcciones IP de las redes de clase A es [0-127].</p>
  </div>
</div>


{:.section}
## Direcciones IPv4 reservadas

{:.subsection}
### Dirección de red

Es la primera dirección IP de una red/subred, representa a esa red entera y no puede ser asignada a un equipo de la misma. Todos los equipos de una red física cuya dirección de subred sea la misma, estarán en la misma red. 

Se calcula de la siguiente forma (ejemplo):

| Dirección IP y máscara | 192.168.3.45/24 |
| Dirección IP (en binario) | 11000000.10101000.00000011.00101101 |
| Máscara (en binario) | 11111111.11111111.11111111.00000000 |
| Operación AND (bit a bit) | 11000000.10101000.00000011.00000000 |
| (o sea) | \<identificador de red\>.\<ceros\> |
| Dirección de subred | 192.168.3.0 (es la anterior en decimal) |

{:.subsection}
### Dirección de difusión o broadcast

Es la última dirección IP de una red/subred, y no puede ser asignada a un equipo. 

Sirve para cuando un equipo quiere enviar un paquete de difusión a todos los equipos de su subred. Todos los equipos de una misma subred tienen la misma dirección de difusión.

Se calcula de la siguiente forma (ejemplo):

| Dirección IP y máscara | 192.168.3.45/24  |
| Dirección de subred | 192.168.3.0 (calculada antes) |
| Dirección de difusión | 192.168.3.255 (en vez de 0) |

{:.subsection}
### Direcciones IPv4 reservadas para redes privadas

<iframe width="100%" height="315" src="https://www.youtube.com/embed/HeZWcZmrQUY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Para evitar conflicto de IP con los equipos que ofrecen servicios en internet, existen unos rangos de direcciones reservados para los equipos de redes privadas, en las que sus equipos no forman parte de internet aunque tengan acceso a la misma a través de routers:

| Clase A | 10.0.0.0 a 10.255.255.255 | 1 red |
| Clase B | 172.16.0.0 a 172.31.255.255 | 16 redes |
| Clase C | 192.168.0.0 a 192.168.255.255 | 255 redes |

{:.subsection}
### Direcciones IPv4 reservadas para direcciones de enlace local

Se asignan al azara equipos en una LAN en la que no hay servidor DHCP para autoconfiguración de IPs. El proceso lo realiza el sistema operativo tras 30'. Se les llaman también direcciones APIPA (Automatic Private IP Address):

169.254.0.0 - 169.254.255.255 (/16)

{:.subsection}
### Direcciones IPv4 reservadas para el localhost

Existe un rango de direcciones reservado para hacer referencia al propio equipo en la red o localhost. El rango, llamado rango de direcciones loopback (de bucle de retorno), es el siguiente:

127.0.0.0 - 127.255.255.255

Aunque en la práctica sólo se utilice la dirección 127.0.0.1/32 para localhost.

{:.section}
## Configuración IP en GNU Linux

Tradicionalmente, la configuración de red en GNU Linux se guarda en el archivo /etc/network/interfaces. Una vez hemos modificado este fichero de configuración deberemos reiniciar el servicio llamado networking de la siguiente manera:

```console
$ sudo service networking restart
```

o 

```console
$ sudo /etc/init.d/networking restart
```

En versiones de Linux actuales la configuración de la red se guarda en un archivo del directorio /etc/netplan/. El archivo es de extensión yam1, un lenguaje de marcas normalizado. NetPlan incluye netplan, una utilidad para gestionar la configuración, además de aplicaciones adicionales que sustituyen a las antiguas NetTools (ifconfig, ifup, etc.). Permite realizar una configuración de red más avanzada: crear puentes, enlaces (bonds), etc.

## Preguntas

- ¿Son 192.168.1.15 y 192.168.2.15 direcciones IP pertenecientes a la misma red?
- ¿Es la red 192.168.3.0/24 una red subneteada?

## Bibliografía

- [MC Educativa](http://mceducativa.blogspot.com/2015/03/apuntes-para-el-modulo-redes-locales.html)
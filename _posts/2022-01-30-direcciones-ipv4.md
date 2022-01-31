---
title: Direcciones IPv4
date: 2022-01-30 20:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, subnetting, subredes, vslm]
---

## Introducción

<iframe width="100%" height="315" src="https://www.youtube.com/embed/gVUE2IDwWA0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Protocolo IPv4

Para organizar el tráfico de paquetes por una red se requiere de un protocolo para el nivel de red.

En esta unidad trabajaremos el protocolo IP (Internet Protocol, protocolo de interred), que se encarga de la entrega no confiable de paquetes utilizando técnicas de encaminamiento (o enrutamiento). Luego veremos qué es ésto.

Para que IP funcione, es necesario que los equipos de una red tengan una dirección IP, que identifica de forma única a un equipo dentro de una red TCP/IP.

## Formato de las direcciones IPv4

- Secuencia de 32 bits (4 octetos)
- Por ejemplo: 192.30.72.49 (<primerOcteto>.<segundoOcteto>.<tercerOcteto>.<cuartoOcteto>).
- Cada número es un octeto (8 bits) que se suele representar con un número en decimal. El valor de cada octeto va de 0 a 255, es decir, hay 256 (2<sup>8</sup> valores posibles). Este formato se llama formato decimal punteado.
- Permite 2<sup>32</sup> direcciones de red en total.
- También se puede representar en formato binario separados por puntos en bloques de 8 bits: 11000000.10101000.00000000.01001011.

## Máscaras de subred

Las direcciones IP de forma similar a lo que ocurre con los números de teléfono, están organizadas jerárquicamente. La parte más a la izquierda de la dirección IP es lo que se llama el identificador de red, y la parte más a la derecha es el identificador de equipo dentro de esa red. 

Ejemplo: 192.168.0.75 (equipo número 75 de la red cuyo identificador es 192.168.0) 

Todos los equipos que formen parte de la misma red deben tener el mismo identificador de red, pero distintos identificadores de equipo. 

La cantidad de octetos destinados al identificador de red y, por tanto, al de equipo, es una cantidad variable que depende de la máscara de subred: un número-patrón similar a la IP en estructura y que nos indica qué parte de la lP es identificador de red y qué parte es identificador de equipo.

En esta unidad trabajaremos sólo con redes con clase, es decir, los octetos de la máscara sólo van a ser 0 ó 255. En este caso, los octetos de la IP que se correspondan con aquellos octetos de la máscara que lleven el valor 255 formarán el identificador de red, y los que lleven el valor formarán el identificador de equipo. 

Ejemplos de uso de máscaras de subred:

| IP | Clase | Máscara |
|---|---|
| 80.9.108.62 | A | 255.0.0.0 |
| 172.16.35.107 | B | 255.255.0.0 |
| 216.157.2.1 | C | 255.255.255.0 |

Trabajaremos con redes sin clase (es decir, con máscaras de subred de longitud variable o VLSM) más adelante, en una unidad específica para ello.

## Tipos de notaciones 

Las direcciones con sus máscaras de subred se pueden expresar de varias formas. Usando el mismo ejemplo para las tres formas, tenemos:

- **Notación decimal punteada:** Cuatro octetos decimales acompañando a la dirección IP: 172.16.3.45/255.255.255.0 
- **Notación binaria:** Octetos binarios separados por puntos (no suele usarse para representar, pero sí para hacer cálculos con ela): 10101100.00010000.00000011.00101101/11111111.11111111.11111111.00000000 
- **Notación prefija:** Un número decimal que indica el número de "unos" que tendría la máscara de subred si la expresáramos en binario: 172.16.3.45/24.

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

{:.question}
¿Cuántas redes de clase A hay en total?

{:.question}
¿Cuántas redes de clase B hay en total?

{:.question}
¿Cuántas redes de clase C hay en total?

{:.question}
¿Podemos calcular los valores del primer octeto de una red de clase A, B o C? ¿Cómo?

## Dirección de red

Es la primera dirección IP de una red, representa a esa red entera y no puede
ser asignada a un equipo de la misma. Todos los equipos de una red física
cuya dirección de subred sea la misma, estarán en la misma red. Se calcula de
la siguiente forma (ejemplo):

| Dirección IP y máscara | 192.168.3.45/24 |
| Dirección IP (en binario) | 11000000.10101000.00000011.00101101 |
| Máscara (en binario) | 11111111.11111111.11111111.00000000 |
| Operación AND (bit a bit) | 11000000.10101000.00000011.00000000 |
| (o sea) | \<identificador de red\>.\<ceros\> |
| Dirección de subred | 192.168.3.0 (es la anterior en decimal) |

## Dirección de difusión o broadcast

Es la última dirección IP de una subred, y no puede ser asignada a un equipo.
Sirve para cuando un equipo quiere enviar un paquete de difusión a todos los
equipos de su subred. Todos los equipos de una misma subred tienen la
misma dirección de difusión.
Se calcula de la siguiente forma (ejemplo):

| Dirección IP y máscara | 192.168.3.45/24  |
| Dirección de subred | 192.168.3.0 (calculada antes) |
| Dirección de difusión | 192.168.3.255 (en vez de 0) |

## Direcciones IPv4 reservadas para redes privadas

<iframe width="100%" height="315" src="https://www.youtube.com/embed/HeZWcZmrQUY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Para evitar conflicto de IP con los equipos que ofrecen servicios en internet, existen unos rangos de direcciones reservados para los equipos de redes privadas, en las que sus equipos no forman parte de internet aunque tengan acceso a la misma a través de routers:

| Clase A | 10.0.0.0 a 10.255.255.255 | 1 red |
| Clase B | 172.16.0.0 a 172.31.255.255 | 16 redes |
| Clase C | 192.168.0.0 a 192.168.255.255 | 255 redes |

## Direcciones IPv4 reservadas para direcciones de enlace local

Se asignan al azara equipos en una LAN en la que no hay servidor DHCP para autoconfiguración de IPs. El proceso lo realiza el sistema operativo tras 30'. Se les llaman también direcciones APIPA (Automatic Private IP Address):

169.254.0.0 - 169.254.255.255 (/16)

## Direcciones IPv4 reservadas para el localhost

Existe un rango de direcciones reservado para hacer referencia al propio equipo en la red o localhost. El rango, llamado rango de direcciones loopback (de bucle de retorno), es el siguiente:

127.0.0.0 - 127.255.255.255

Aunque en la práctica sólo se utilice la dirección 127.0.0.1/32 para localhost.

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

## ¿Qué es un router?

Un router (también llamado enrutador o encaminador) es un equipo que conecta entre sí dos o más redes distintas.

{:.question}
¿Cuántas redes ves a continuación?

![img-description](/assets/img/direcciones-ipv4/cuantas-redes.png)

Hay 15 LAN convencionales + 4 resdes formadas por pares de routers conectados entre sí.

![img-description](/assets/img/direcciones-ipv4/cuantas-redes-solucion.png)

Cada una de las redes que hay tras un router o entre dos routers se les llama dominios de difusión, y tienen distintas puertas de enlace. Cuando se envía un paquete a una dirección de difusión (broadcast) perteneciente a otro dominio de difusión, por regla general, el router descarta ese paquete. 

Esto se debe a una cuestión de seguridad: los routers no dejan que una red que no es la propia se inunde (flood) de paquetes de difusión, provocando caídas de servicio en esa red o bajando drásticamente su rendimiento. 

Para que los routers sepan por qué interfaz (NIC) deben sacar los paquetes de información se utilizan tablas de encaminamiento en las que se indica cuáles son las rutas que deben seguir los paquetes para intentar llegar alas diferentes redes de destino.

## Encaminamiento estático

Para rellenar el contenido de la tabla de encaminamiento de un router, se puede hacer manualmente. Este encaminamiento estático se suele utilizar en routers corporativos organizados jerárquicamente o en redes donde se emplea un único ISP para salir a internet. Es un método muy eficiente, no sobrecarga al router con tareas de procesamiento, pero es costoso de programar.

En GNU Linux, podemos utilizar el comando `netstat` para consultar la tabla de encaminamiento del router al que la máquina está conectado.

## Encaminamiento dinámico

El contenido de las tablas se programa automáticamente; el router realiza una tarea de descubrimiento utilizando un algoritmo de encaminamiento. Existen varios protocolos, pero los más empleados son:

- **RIP v1:** bastante eficiente, pero sólo funciona en redes con clase.
- **RIP v2:** menos eficiente que RIP v1, pero válido en redes sin clase.

## Caso 1: Dos redes LAN unidas por un router

- Asignaremos IP a los adaptadores del router (interfaces Fa0/0 y Fa0/1).
activaremos los adaptadores (por defecto, los NIC están desactivados).
- Configuraremos en las estaciones la puerta de enlace predeterminada con la
dirección IP del interfaz del router correspondiente.

![img-description](/assets/img/direcciones-ipv4/caso1.png)


## Caso 2: Dos redes, cada una con su propio router

- Asignaremos IP a los adaptadores de los routers. Para este caso hemosconsiderado que las interfaces Fa0/0 serán las correspondientes a las LAN, ylas interfaces Fa0/1 para la conexión entre routers.
- Activaremos los adaptadores (como siempre, los NIC de los routers Ciscoestán desactivados por defecto).
- Configuraremos en las estaciones la puerta de enlace predeterminada con ladirección IP del router correspondiente en su interfaz LAN (la interfaz Fa0/0).- tendremos tres dominios de difusión: el 10.0.0.0/8 (red de portátiles), el172.16.0.0/16 (red de sobremesas) y el 192.168.0.0/24 (red entre los dosrouters).
- Tendremos que configurar también el encaminamiento que vamos a usar.Veremos un ejemplo de encaminamiento dinámicoy otro de encaminamientoestático.

![img-description](/assets/img/direcciones-ipv4/caso2.png)

### Encaminamiento dinámico con RIPv1

- Pulsar sobre el router a configurar.
- En el apartado Enrutamiento - RIP, indicar las direcciones de subred de los dominios de difusión con los que está conectado el router.
- Desde ese momento, el router aplicaráun algoritmo de encaminamiento para descubrir el camino que deben seguir los paquetes.

![img-description](/assets/img/direcciones-ipv4/caso2-encaminamiento-dinamico.png)

### Encaminamiento estático

- Pulsar sobre el router a configurar
- En el apartado Enrutamiento - Estática, indicar las direcciones de subred de aquellas subredes a las que se puede acceder desde los routers inmediatamente conectados al actual, y a través de qué IP se llega a esas subredes.
- Quedará definida esta ruta estática en la tabla de encaminamiento del router, sin necesidad de aplicar algoritmo alguno.

![img-description](/assets/img/direcciones-ipv4/caso2-encaminamiento-estatico.png)
_Desde este router se puede llegar a la red 10.50.0.0/16 a través de la interfaz del router cuya IP es 192.168.0.200_

## Caso 3: Routers unidos con conexiones serie

- Daremos IP a los adaptadores de los routers. Dejaremos las interfaces Serial0/1 para la conexión entre routers, y los activaremos y configuraremos en las estaciones la puerta de enlace predeterminada como siempre.
- Importantísimo: la velocidad de las comunicaciones serie va controlada con un reloj. Para que la comunicación se produzca, los dos routers tendrán que ir configurados a la misma velocidad de reloj.
- Las interfaces que suelen emplearse en comunicaciones serie con routers Cisco son los interfaces DTE V.35. Conectores DB-60 en los routers y Winchester en el otro extremo.

![img-description](/assets/img/direcciones-ipv4/caso3.png)


## Bibliografía

- [MC Educativa](http://mceducativa.blogspot.com/2015/03/apuntes-para-el-modulo-redes-locales.html)
---
title: "¿Qué es un SAI?"
date: 2022-11-03 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría]
img_path: /assets/img/que-es-un-sai/
---

## ¿Qué es un SAI?

La corriente eléctrica es vital para cualquier ordenador. ¿Podemos confiar en que la empresa que nos suministra corriente eléctrica nunca nos va a fallar?

Un SAI es un Sistema de Alimentación Ininterrumpida, son dispositivos que se utilizan para proporcionar protección contra problemas eléctricos y cortes de corriente también son conocidos por sus siglas en Ingles UPS (Uninterruptible Power Supply).

{:.question}
¿Es lo mismo un SAI que un UPS?

Los sistemas SAI son muy pesados, ya que están compuestos por robustas baterías, por lo que su ubicación es determinante. Cuanto mayor es su tamaño, mayor autonomía ofrecen.

![SAI](sai.jpg)
_SAI_

![Conexiones SAI](conexionesSai.png)
_Conexiones SAI_

Un SAI nos protege de las siguientes anomalías de la red eléctrica:

- Cortes, microcortes, micropicos
- Distorsión y Ruido eléctrico
- Sobretensiones y subtensiones
- Variaciones en frecuencia

En el caso de corte de la corriente, los equipos conectados al SAI siguen funcionando porque consiguen la electricidad de las baterías.

La capacidad de estas baterías es reducida y depende del SAI elegido y del consumo de los equipos, aunque el mínimo garantizado suele ser de 10 minutos.

Factor más importante a la hora de adquirir un SAI: ¿cuántos vatios consumen los equipos a proteger y cuánto tiempo necesitamos que los proteja?

![VA y precio de un SAI](vaSai.png)
_VA y precio de un SAI_

Al igual que con los equipos de climatización, si el presupuesto lo permite, conviene aplicar redundancia e instalar un doble juego de equipos SAI.

Estaremos cubiertos en caso de que uno de los SAI falle.

La mayoría de los servidores vienen con doble fuente de alimentación por lo que conectaríamos cada fuente a un SAI distinto.

<iframe width="560" height="315" src="https://www.youtube.com/embed/Qr58qnz9Vks" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Qué tipos de SAI hay en el mercado?

{:.question}
¿Qué capacidad voy a necesitar?

## Partes de un SAI

- Batería
- Bypass manual y automático
- Inversor
- Rectificador
- Filtro
- Panel, pulsadores, software

## Tipos de SAI

Los fabricantes, suelen definir en sus especificaciones 3 grados de protección, asociados a 3 niveles:

- Protección básica / Offline (Nivel 3)
- Protección media / Interactivo (Nivel 5)
- Protección alta / Online (Nivel 7)

Leer artículo [SAI: Qué es, para qué sirve y que tipos hay en el mercado](https://www.profesionalreview.com/2019/02/23/que-es-sai/) o leer artículo [Qué es un SAI y tipos de  SAI ( Online, Interactivo, Offline,  AVR )](https://www.rackonline.es/content/que-es-un-sai-y-tipos-de-sai).

### Protección básica / Offline (Nivel 3)

Un SAI dotado con tecnología Off-Line suministra la corriente eléctrica sin ningún filtro a los dispositivos conectados (este tipo de tecnología carece de regulador de voltaje). 

Solamente empezará a funcionar cuando detecte un fallo de corriente eléctrica (Es en este momento preciso cuando el SAI conmuta a modo baterías, es decir, se comenzará a suministrar la energía que ha ido almacenando en sus baterías a los dispositivos conectados). 

Estos SAIs necesitan un tiempo de conmutación (normalmente 2-10 ms) para pasar a modo baterías, es preciso tener este dato en cuenta a la hora de conectar dispositivos sensibles que pudieran verse afectados en el proceso de conmutación. 

Es importate indicar que este tipo de SAIs son solo recomendables para las zonas que disponen de una red estable (Al no realizar ningún filtrado de la corriente, solo protegen ante un corte de suministro eléctrico).

**Aplicaciones Sai Off-Line**: Dispositivos poco sensibles como ordenadores personales de gama baja, televisores, monitores, router, etc... es recomendable utilizar este tipo de SAIs en zonas con pocas anomalías eléctricas y buena calidad de red.


### Protección media / Interactivo (Nivel 5)

Un SAI Interactivo o In-Line ofrece una protección eléctrica intermedia, su tecnología es similar a la de los SAIs Off-Line pero incorpora una serie de filtros activos  (Microprocesador que controla las fluctuaciones de la red eléctrica en ±15%, regulando la tensión de salida).

Este proceso de filtrado y mejora de la corriente que llega a los dispositivos conectados al SAI se realiza sin que entren a funcionar las baterías, (La protección con un SAI interactivo es superior aún sin sufrir apagones). 

¡¡PROBLEMA!! Al igual que los SAI Off-line tienen un pequeño tiempo de conmutación en el que no hay suministro eléctrico, (normalmente de 2-10 ms). 

Es por este motivo por el que se tiene que tener especial cuidado a la hora de conectar dispositivos sensibles que pudieran verse afectados en el tiempo de conmutación a modo baterías.

**Aplicaciones SAI Interactivo In-Line**: Ordenadores de  gama media y baja, consolas de juegos, pequeños servidores de redes, equipos de oficina, router, cámaras de seguridad, videograbadores, etc… Los SAIs de línea interactiva son especialmente silenciosos por lo que pueden estar indicados para entornos de trabajo que requieran una protección eléctrica de calidad con mínimo ruido.


### Protección alta / Online (Nivel 7)

Realizan una doble conversión de la energía eléctrica que recibe, transformándola en continua y después a alterna de nuevo, eliminando de esta manera todos los problemas que pueda tener. 

Un Sai On-Line siempre proporciona energía eléctrica directamente desde sus baterías mientras estas se van cargando de la red, y esto es lo que garantiza que la protección contra cualquier problema de la red eléctrica sea total. 

Debido a su alta fiabilidad, la tecnología On-Line ocupa el sector profesional en el mercado de SAIs y está generalmente destinada a proteger servidores, equipos industriales o cualquier instalación informática que por su importancia o coste necesite la seguridad de no verse afectados por problemas derivados de la red eléctrica.

**Aplicaciones SAI Online**: servidores, clusters de equipos, y en general instalaciones informáticas críticas o imprescindible (redes de datos, servidores ,telecomunicaciones, industria…).

> ¡Ten cuidado! Las impresoras laser no deben formar parte de los equipos protegidos en un SAI. Utilizan resistencias de alto consumo para calentar el rodillo tóner. Este elevado consumo instantáneo, generando ruido a los otros equipos protegidos, que esperaban que el SAI les librara de estos problemas.
{:.prompt-warning}

## Calcular potencia de un SAI


Leer artículo [Potencia SAI: Así la podemos calcular con una enorme precisión](https://www.profesionalreview.com/2021/08/28/como-calcular-potencia-sai/)

<iframe width="560" height="315" src="https://www.youtube.com/embed/xjZJdI8DviY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Unidades de medida eléctricas

**Corriente eléctrica o intensidad** en amperios (A): cantidad de corriente eléctrica (I) que circula por un conductor. Por ejemplo, por un conductor de 1,5 mm<sup>2</sup> pueden circular hasta 11 amperios sin riesgo de calentamiento excesivo.

**Potencial eléctrico o tensión o diferencia de potencial** en voltios (V): la magnitud que define la diferencia de potencial eléctrico entre 2 puntos es la tensión (V), cuya unidad de medida es el voltio (v). En instalaciones de baja tensión la tensión es de 230 a 400 voltios, pero en alta tensión puede llegar a 10.000v.

**Potencia eléctrica** en vatios (W): la potencia eléctrica (P) se mide en vatios (W) y resulta del producto de la tensión (V) y la intensidad (I). Por ejemplo, en una instalación eléctrica doméstica si se encuentra instalado un limitador ICP de 20 amperios, la potencia contratada será de:

> P = U x I = 230 voltios x 20 amperios = 
> 4600 vatios = 4,6 KW.

<iframe width="560" height="315" src="https://www.youtube.com/embed/8g2PUJB48as" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

INTENSIDAD ➡️ NÚMERO DE CORREDORES
TENSIÓN ➡️ MOTIVACIÓN DE LOS CORREDORES

## Tipos de potencia eléctrica

Lo primero que debemos tener en cuenta es que la potencia que suelen marcas los SAI es diferente de la potencia que consume un ordenador. 

Para ello antes debemos saber los siguientes conceptos sobre la potencia eléctrica:

1. Potencia eléctrica o activa
1. Potencia reactiva
1. Potencia aparente
1. Factor de potencia

![Tipos de potencia eléctrica](cervezaPotenciaElectrica.jpg)
_Tipos de potencia eléctrica_

### Potencia activa (eficaz o eléctrica)

Es toda aquella energía que realiza un trabajo útil. Por ejemplo, la consumida por una bombilla para iluminar. 

Su fórmula es: 

> P = V * I * cos(φ)

Donde:

- «P» es la potencia eléctrica cuya unidad es el vatio (W)
- «V» es la tensión eléctrica (V)
- «I» es la corriente eléctrica (A)
- «cos(φ)» es el factor de potencia y no tiene unidad.

### Potencia reactiva

Hablamos de una energía que realmente no realiza un trabajo útil. Este tipo de energía aparece en instalaciones donde existen una gran cantidad de bobinas (normalmente motores). 

Su fórmula es: 

> Q = V * I * sin(φ)

Donde:

- «Q» es la potencia reactiva cuya unidad son los volitamperios reactivos (VAr)
- «V» es la tensión eléctrica (V)
- «I» es la corriente eléctrica (A)
- «sin(φ)» es la inversa del factor de potencia y no tiene unidad.


### Potencia aparente

Suma vectorial de las potencias activa y reactiva. 

La fórmula es: 

> S = V * I

Donde:

- «S» es la potencia eléctrica total cuya unidad es el voltiamperio (VA)
- «V» es la tensión eléctrica (V)
- «I» es la corriente eléctrica (A)


### Factor de potencia

Es la relación entre la energía suministrada (potencia aparente) y la energía realmente consumida (potencia activa). 

Se calcula así: 

> FP = P / S 

Donde:

- «FP» es la relación entre la potencia activa y la potencia aparente y carece de unidad). Este valor es el parámetro «φ»
- «P» es la potencia activa (W)
- «S» es la potencia aparente (VA)

## Capacidad del SAI

La autonomía de un SAI es el tiempo, medido en minutos, durante el cual el SAI puede alimentar a las cargas que se conectan a su salida en ausencia de suministro externo.

Este parámetro dependerá de la carga (a mayor carga, menor será el tiempo que durará el suministro desde las baterías). Esta es la razón por la que suele estandarizarse la carga (cuando el SAI tiene conectada el 50% de la potencia máxima que aguanta)

Potencia aparente (se mide en voltoamperios VA): es el producto de la tensión nominal (voltaje V) por la intensidad (amperaje A) nominal máximas.

Potencia aparente = Tensión * Intensidad

> S (voltoamperios) = V (voltios) * I (amperios)

Por ejemplo, si un SAI suministra 200 voltios (V) y 10 amperios (A), entonces su potencia aparente será de 2.000 VA o 2 KVA (léase “kabeas”).

Potencia eficaz (activa o eléctrica): El vatio (W), es la unidad de potencia eficaz, es decir, la realmente consumida (y la que facturan los distribuidores de energía eléctrica).

Suele tomarse que la potencia eficaz (vatios) es la potencia aparente (VA) multiplicado por 0,75.

> Potencia eficaz = Potencia aparente * 0,75
> P = S * 0,75

Respecto a la a fórmula que acabas de observar...

Si buscas ejercicios por internet, alguna veces encontrarás que el valor de 0,75 puede ser 0,7.

Otras veces podrás encontrar que para calcular la potencia aparente, no se divide por 0,7 sino que se puede multiplicar por 1,43, es decir:

> S = P * 1,43; (VA = W * 1,43)
> S = P / 0,7; (VA = W / 0,7)

## Bibliografía

- [Freguntas y respuestas comunes a SAIs](https://www.newsai.es/fqa.htm)
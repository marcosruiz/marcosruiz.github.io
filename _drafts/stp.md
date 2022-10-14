---
title: "STP (Spanning Tree Protocol)"
date: 2022-10-14 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, smr, teoría]
img_path: /assets/img/stp/
---

## 4. Introducción

Cuando la topología global de la red se hace compleja es posible que se formen bucles en la red, ya que una trama puede alcanzar sU destino por varios caminos. Estas situaciones son muy interesantes porque proveen redundancia de caminos, lo que hace a la red menos sensible trente a averías en el sistema de cableado, pero también son una fuente de problemas puesto que se pueden generar tormentas de broadcast. 

Por un lado, hay una necesidad de bucles para que haya redundancia pero, por otro lado, hay que impedir que se produzcan tormentas de broadcast. Para conseguir esto la IEEE ha propuesto un protocolo que impide los bucles en un nivel lógico, evitando las tormentas de broadcast, pero que reconfigura la red cuando algún segmento talla para utilizar las ventajas de la redundancia de segmentos físicos. Se trata del protocolo IEEE 802.1D o STP (Spanning Tree Protocol, Protocolo de árbol de expansión).

### 4.1. Ejemplo de STP

En la siguiente Figura se puede ver la representación gráfica de una red conmutada con tres Switches con caminos redundantes que será útil para estudiar el modo de operación básica de SIP. Efectivamente, para que una trama con origen en PCI legue a PC3, caben dos caminos: el camino más sencillo consiste en enviar la trama por el camino 2 hacia el conmutador C y él se encargará de conducirla hacia su destino en PC3. El segundo camino tiene un mayor coste y consiste en transmitir la trama por el camino hacia el conmutador B y que este redirija la trama por el camino 3 hacia el conmutador C que es quien tiene la conexión física con el destino PC3.

![img-description](stp.png)
_Ejemplo de redundancia de caminos en una red conmutada para el estudio del protocolo STP._

La red reúne todos los elementos para que se genere una tormenta de broadcast puesto que tiene bucles. Por ello, es necesario habilitar en los tres conmutadores el protocolo STP o RSTP. Una vez habilitados los conmutadores negociarán quién debe tomar la función de root bridge. Supongamos que esta función sea asumida por el conmutador A, como aparece en la figura. 

Una vez que haya convergido el proceso de confección del árbol de caminos de STP, el protocolo habrá decidido anular el camino 3. Esto no quiere decir que haya que quitar el latiguillo de conexión de este segmento, sencillamente, STP anulará ese camino impidiendo que por él pasen tramas de datos. 

De este modo, PC1 podrá comunicar con PC2 a través el camino 1, PCl podrá comunicarse con PC3 mediante el camino 2, mientras que PC2 se comunicará con PC3 utilizando los caminos 1 y 2 a través del conmutador A. 

Si en un momento dado el camino 1 deja de estar disponible, entonces quedarán incomunicadas todas las estaciones que tienen que utilizar este camino l en sus comunicaciones. STP se da cuenta del fallo de red y genera un nuevo árbol anulando el camino 1. 

En este caso, STP elegirá los caminos 2 y 3 para asegurar sus comunicaciones y así, PCI podrá comunicarse con PC3 a través del camino 2, PC2 se comunicará con PC3 por el camino 3 y PCI lo hará con PC2 a través de los caminos 2 y 3. 

Por tanto, STP ha sido capaz de utilizar la redundancia física de la topología de la red, impidiendo que se tomen bucles lógicos que causen tormentas de broadcast.
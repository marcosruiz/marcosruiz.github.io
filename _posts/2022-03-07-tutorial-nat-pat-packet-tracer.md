---
title: "Tutorial: NAT estático, NAT dinámico y PAT en Packet Tracer"
date: 2022-03-07 20:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [smr, tutorial, nat, pat, packet tracer]
---

## Objetivos

- Controlar el acceso a redes privadas desde Internet.
- Hacer uso de un proveedor de acceso a Internet (ISP) para que los equipos de una red privada accedan a la Nube (Internet).
- Configurar en el router de Borde de un Sistema Autónomo al proceso NAT estático, NAT dinámico y NAT dinámico con sobrecarga (PAT).

## Parte 1: Preparación de la topología base

{:.step}
### Paso

Implementar ahí la siguiente topología:

![img-description](/assets/img/tutorial-nat-pat-packet-tracer/tresRoutersEstáticoDinamicoSobrecargado.png)
_Topología base_

> En esta configuración ambas interfaces seriales del router ISP usarán cables DCE.
{:.prompt-tip}

> En esta práctica se usan subredes VLSM explicadas en el artículo [VLSM](/posts/vlsm/). Este tipo de subredes pueden tener máscaras de red diferentes unas de otras.
{:.prompt-tip}

> Los comandos en el CLI de los nodos de red se pueden acortar. Por ejemplo, el comando `configure terminal` es el mismo que `configure ter` y que `configure t`.
{:.prompt-tip}

{:.step}
### Paso

Proceda a realizar la configuración de cada router indicada a continuación.

Configuración para Empresa1 :

```console
Router# configure terminal
Router(config)# hostname Empresa1
Empresa1(config)# interface f0/0
Empresa1(config-if)# ip address 192.168.1.1 255.255.255.0
Empresa1(config-if)# no shutdown
Empresa1(config-if)# exit
Empresa1(config)# interface s0/0
Empresa1(config-if)# ip address 168.243.3.130 255.255.255.252
Empresa1(config-if}# no shutdown
Empresa1{config-if)# exit
```

Configuración para Empresa2:

```console
Router# configure terminal
Router(config)# hostname Empresa2
Empresa2(config)# interface f0/0
Empresa2(config-if)# ip address 172.18.0.65 255.255.255.192
Empresa2(config-if)# no shutdown
Empresa2(config-if)# exit
Empresa2(config)# interface s0/0
Empresa2(config-if)# ip address 168.243.3.134 255.255.255.252
Empresa2(config-if)# no shutdown
Empresa2(config-if)# exit
Empresa2# copy running-config startup-config
```

Configuración para ISP:

```console
Router# configure terminal
Router(config)# hostname ISP
ISP(config)# interface f0/0
ISP(config-if)# ip address 10.0.0.1 255.255.255.0
ISP(config-if)# no shutdown
ISP(config-if)# exit
ISP(config)# interface s0/0
ISP(config-if)# ip address 168.243.3.129 255.255.255.252
ISP(config-if)# clock rate 9600
ISP(config-if)# no shutdown
ISP(config if)# exit
ISP(config)# interface s0/1
ISP(config-if)# ip address 168.243.3.133 255.255.255.252
ISP(config-if)# clock rate 9600
ISP(config-if)# no shutdown
ISP(config-if)# exit
ISP# copy running-config startup-config
```

{:.step}
### Paso

Configure las estaciones de trabajo y los servidores con el siguiente direccionamiento IP:

| | Dirección IP | Máscara de subred | Gateway |
|---|---|---|---|
| PC11 | 192.168.1.2 | 255.255.255.0 | 192.168.1.1 |
| FTPserver | 172.18.0.66 | 255.255.255.192 | 172.18.0.65 |
| WebServer | 10.0.0.2 | 255.255.255.0 | 10.0.0.1 |

{:.step}
### Paso

Comprobación de direccionamiento IP

- Visualice la tabla de enrutamiento de los enrutadores Empresa1 y Empresa2, ejecutando al comando `show ip route`.
- Verificar la tabla de enrutamiento del enrutador ISP. Observe que debido al carácter de redes privadas que tienen las redes de sus 2 clientes (Empresa1 y Empresa2), la red 192.168.1.0/24 y el conjunto de redes 172.18.0.0/20 no deben aparecer en la tabla de ISP.

{:.step}
### Paso

Realizar las siguientes pruebas con el comando `ping` (usando el Command Prompt del Desktop de cada PC) desde las estaciones de trabajo y el web server. 

Se anotan a continuación de cada prueba el resultado que debería obtenerse, compárelo con sus propios resultados:

| Ping desde | hacia | resultado |
|---|---|---|
| PC11 | 192.168.1.1 | prueba exitosa ✅ |
| FTPserver | 172.18.0.65 | prueba exitosa ✅ |
| PC11 | 10.0.0.2 | host de destino inaccesible ❌ |
| FTPserver | 10.0.0.2 | host de destino inaccesible ❌ |
| WebServer | 10.0.0.1 | prueba exitosa ✅ |
| WebServer | 168.243.3.129 | prueba exitosa ✅ |
| WebServer | 168.243.3.133 | prueba exitosa ✅ |
| WebServer | 192.168.1.2 | host de destino inaccesible ❌ |
| WebServer | 192.168.2.2 | host de destino inaccesible ❌ |

Nuevamente se hace la aclaración. Los fallos al realizar las pruebas `ping` entre las estaciones de trabajo y el servidor, y viceversa, son un **comportamiento normal**, ya que el **enrutador ISP desconoce la existencia de las redes locales privadas de Empresa1 y Empresa2**. La comunicación entre estas redes se logrará usando NAT o PAT.

## Parte 2: Configuración de NAT estático en enrutador Empresa1

{:.step}
### Paso

Asignación de una red IP pública para realizar el proceso de traducción. Las direcciones de carácter público (globales) para su cliente 1 (Empresa1) que configurara el proveedor en su equipo ISP serán las IP host contenidas en la red: 199.6.13.8/29. 

Estas IP globales serán configuradas en los siguientes pasos.

{:.step}
### Paso

Proceda a crear en ISP a la siguiente ruta estática, dirigida al rango de ip público asignado para Empresa1 (ver paso anterior) y referenciando a la ip del próximo paso (La ip 168.243.3.130, configurada en la interfaz de conexión con su cliente Empresa1).

```console
ISP(config)# ip route 199.6.13.8 255.255.255.248 168.243.3.130
```

{:.step}
### Paso

Configure una ruta estática por defecto en el enrutador Empresa1: 

```console
Empresa1(config)# ip route 0.0.0.0 0.0.0.0 serial 0/0
```

Este comando crea una entrada en la tabla de enrutamiento del enrutador Empresa1. Este comando define la puerta de enlace predeterminada de el enrutador Empresa1, es decir, TODOS los mensajes que vayan a una dirección IP destino que no conozca los enviará por la interfaz serial 0/0. Un enrutador SOLO conoce las redes a las qu está directamente conectado, es decir, las que aparecen con letra C en la tabla de enrutamiento cuando ejecutamos el comando `show ip route`.

{:.step}
### Paso

Ejecute el siguiente código para configurar NAT estático en Empresa1, que permitirá que la dirección privada de PC11 se traduzca a la primera IP global (199.6.13.9) del rango asignado por ISP para este Cliente 1 (Empresa1). Además, se definen aquí a las interfaces de entrada y de salida para el proceso de traducción NAT:

```console
Empresa1# configure terminal
Empresa1(config)# ip nat inside source static 192.168.1.2 199.6.13.9
Empresa1(config)# interface f0/0
Empresa1(config-if)# ip nat inside
Empresa1(config-if)# exit
Empresa1(config)# interface s0/0
Empresa1(config-if)# ip nat outside
Empresa1(config-if)# exit
Empresa1(config)# do write
```

Con los comandos anteriores se logra que cada vez que un paquete de la ip local de host PC1
llegue a la interface f0/0 de Empresa1, y este necesite ser enviado a redes externas (por medio de la s0/0), se traducirá su dirección privada a la ip pública 199.6.13.9.

{:.step}
### Paso

Pruebas de conectividad.

Realizar las siguientes pruebas y evaluar sus resultados.

| Ping desde | hacia | resultado |
|---|---|---|
| PC11 | dirección del WebServer (10.0.0.2) | prueba exitosa ✅ |
| WebServer | ip privada de PC1 (192.168.1.2) | host de destino inaccesible ❌ |
| WebServer | ip publica asignada a PC1 (199.6.13.9) | prueba exitosa ✅ |

Tal como se ve en las pruebas anteriores, con el uso de NAT ya no es posible hacer `ping` directamente a direcciones locales (este es uno de los objetivos de la práctica), por lo que, si desea acceder a la PC11 desde Internet, deberá hacer referencia a su dirección pública asignada con NAT.

{:.step}
### Paso

Finalmente, desde el enrutador Empresa1, revise el estado de la traducción de direcciones IPs privadas publicas, ejecutando el comando: 

```console
Empresa1# show ip nat translations
```

## Parte 3: Configuración de traducciones dinámicas en enrutador Empresa1

{:.step}
### Paso

Desconecte a PC11 de Empresa1. En su lugar, agregue un Hub a la red local del Cliente1 y conecte uno de sus puertos a la Fa0/0 de Empresa1. Conecte a PC11 a uno de los puertos libres del Hub. Agregue una nueva PC (llamada PC12) a la red del Cliente1 y configure la siguiente dirección IP: 192.168.1.3/24. Luego conectarlo al HUB, para expandir así a la red local de Empresa1.

{:.step}
### Paso

Desde el nuevo host, repita las pruebas de conectividad del último paso de la parte anterior de este procedimiento.

Notará que aun es imposible acceder a redes externas desde otra dirección local que no sea la IP 192.168.1.2.

{:.step}
### Paso

Si se mantiene este esquema de traducción estática de direcciones, se haría necesario crear una traducción para cada dirección privada de manera manual e individual. 

Para solventar esta situación, activaremos una traducción basada en un grupo de direcciones públicas (pool), que serán asignadas dinámicamente por orden de llegada con respecto a las direcciones privadas.

{:.step}
### Paso

Elimine las traducciones desarrolladas por NAT y luego vuelva a ver los procesos de traducción de IPs:

```console
Empresa1# clear ip nat translation *
Empresa1# show ip nat translations
Pro  Inside global     Inside local       Outside local      Outside global
---  199.6.13.9        192.168.1.2        ---                ---
```

El comando `clear ip nat translation *` elimina el contenido actual de la tabla de traducción NAT. Al ejecutar el comando `show` de la última línea podrá verificar que la traducción anterior aun existe, porque esta traducción ha sido definida de manera estática. 

{:.step}
### Paso

Cree el siguiente pool[^pool] (grupo1), que reservara las próximas 2 de las direcciones públicas disponibles para usarlas en un futuro proceso NAT dinámico:

[^pool]: Asociación de personas o entidades con un fin común.

```console
Empresa1# configure terminal
Empresa1(config)# ip nat pool grupo1 199.6.13.10 199.6.13.11 netmask 255.255.255.248
Empresa1(config)# do write
```

{:.step}
### Paso

Crear la lista de acceso estándar 1 a continuación, que permite comparar las direcciones de origen (privadas), para decidir si luego estas serán traducidas a direcciones públicas (globales). En esta demostración, incluiremos en el derecho a ser traducidas a todas las direcciones IP de la red 192.168.1.0/24.

```console
Empresa1# configure terminal
Empresa1(config)# access-list 1 permit 192.168.1.0 0.0.0.255
```

En el comando `access-list` usamos máscaras de red inversas que se obtienen cambiando los unos por ceros y viceversa.

{:.step}
### Paso

La lista de acceso anterior NO SE DEBE APLICAR a ninguna interface del router. Recuerde que esta ACL 1 se usa solo para efectos de comparar el origen de los paquetes y tomar la decisión sobre la traducción. No se usa la lista de acceso para afectar al tráfico entrante o saliente en las interfaces involucradas en la traducción.

{:.step}
### Paso

Ahora se configurará la traducción dinámica con base en el pool y la lista de acceso creada previamente.

```console
Empresa1(config)# ip nat inside source list 1 pool grupo1
```

No es necesario volver a definir el sentido de la traducción (inside/outside), ya que si recuerda eso ya se ha configurado en la traducción estática y no debe cambiarse (f0/0 inside; s0/0 outside).

{:.step}
### Paso

Haga una prueba con el comando `ping` desde PC12 hacia la ip 10.0.0.2. En este caso la traducción se llevará a cabo correctamente y se obtendrá una respuesta exitosa. Revise de nuevo el estado de las traducciones usando el comando:

```console
Empresa1# show ip nat translation
```

{:.step}
### Paso

Veamos que sucede cuando las traducciones requeridas exceden el número de direcciones públicas que comprenden el pool. Hacer los siguientes cambios en la red local de Empresa1:

- Expanda la red, agregando 3 PCs más. Asignarles las direcciones IP 192.168.1.4, 192.168.1.5 y 192.168.1.6, respectivamente.
- Desde host 192.168.1.4, haga `ping` a la ip 10.0.0.2.
- Desde host 192.168.1.5, haga `ping` a la ip 10.0.0.2.
- Revise las traducciones nat en Empresa1. Notará que por cada ip privada de los host anteriores, se crea un a nueva traducción para acceder a redes externas.
- Desde el host con ip 192.168.1.6; haga `ping` a: 10.0.0.2. En este último caso podrá notar que el comando `ping` no tiene éxito. Esto se debe a que el pool de direcciones públicas (de 199.6.13.10 hasta 199.6.13.11) se ha agotado.
- Espere unos 10 segundos, para intentar nuevamente la comunicación desde el host 192.168.1.6 hacia la ip 10.0.0.2. La prueba deberá ser exitosa, debido a que el router Empresa1 retiro la asignación de la ip publica a uno de los primeros host que accedieron a Internet y que ya no la volvieron a utilizar.

{:.step}
### Paso

Limpie las traducciones nat en Empresa1 con el comando siguiente:

```console
Empresa1# clear ip nat translation *
```

{:.step}
### Paso

Ejecute nuevamente el comando `ping` desde la PC que dio resultado no exitoso en el paso anterior. Ahora si se tendrá éxito. Revise el estado de las traducciones, para confirmar que las anteriores fueron eliminadas y ahora solo queda la ip publica que se utilizo para el host de esta prueba.

{:.step}
### Paso

Guarde los últimos cambios de configuración en Empresa1 y reinicie su IOS (Internetwork Operating System), con el comando `reload`.

## Parte 4: Configuración de NAT Sobrecargado en enrutador Empresa2

{:.step}
### Paso

Modificar router Empresa2 con las siguientes características y configuraciones:

- Conectar una nueva interface FastEthernet, configurarle la dirección 172.18.0.129/27 y levantarla. Conectar a esta interface un nuevo host, asignándole la ip 172.18.0.130/27 y su respectiva ip de gateway.
- Crear una red de manera virtualizada con la Loopback3[^loopback], asignándole la dirección 172.18.0.161/28.
- Desde FTPserver, comprobar con `ping` que saluda exitosamente al nuevo host y también a la ip de Lo3.

[^loopback]: Un loopback es una interfaz lógica que permite asignar direcciones IP a un router que no están ligadas a una interfaz física.

```console
Empresa2(config)# interface loopback 3
Empresa2(config-if)# ip add 172.18.0.161 255.255.255.240
Empresa2(config-if)# no shutdown
Empresa2# show ip inter br
Interface              IP-Address      OK? Method Status                Protocol 
FastEthernet0/0        172.18.0.65     YES manual up                    up 
FastEthernet1/0        172.18.0.129    YES manual up                    up 
Serial6/0              168.243.3.134   YES manual up                    up 
Loopback3              172.18.0.161    YES manual up                    up
```

{:.step}
### Paso

Ahora analice el siguiente escenario que describirá la topología de red privada del Cliente2 a implementar en los pasos restantes.

- Este Cliente2, tendrá un router de borde denominado Empresa2 y usará el mismo ISP. 
- Se expandirá su red interna mostrada en la Figura del principio a un total de 3 redes diferentes:
    - Red 1: 172.18.0.64/26 (de FTPserver, ya configurada)
    - Red 2: 172.18.0.128/27
    - Red 3: 172.18.0.160/28
- El server FTPserver debe ser alcanzado desde el exterior (Internet).
- El host de la red 3, implementado en la Lo 3, virtualizará a un Server, el cual deberá ser visto desde Internet.
- Solamente la mitad superior del rango de ip de los host de la red 2 tendrán acceso a Internet. Al resto de host se les permitirá solamente comunicación interna con el resto de redes privadas del mismo cliente.
- Este cliente ha comprado de su ISP solamente 3 direcciones públicas (100.0.0.33/28 100.0.0.34/28 y 100.0.0.35/28).

{:.step}
### Paso

Según el escenario anterior, las condiciones se vuelven muy críticas, ya que las direcciones públicas adquiridas, deben ser distribuidas entre los 2 servidores y las estaciones de trabajo de la LAN que deberán acceder a Internet por medio de router Empresa2.

{:.step}
### Paso

Para iniciar la solución, a continuación, se describe la configuración de NAT estático en Empresa2, que asigna la primera ip publica (100.0.0.33/28) al FTPserver, para que este pueda tener acceso hacia/desde Internet. 

Y de igual manera, se asigna la segunda ip publica (100.0.0.34/28) al server virtualizado con la Lo3. 

Y se definen las interfaces de entrada (direcciones privadas) de NAT y la interface de salida (direcciones públicas).

```console
Empresa2(config)# ip nat inside source static 172.18.0.66 100.0.0.33
Empresa2(config)# ip nat inside source static 172.18.0.161 100.0.0.34
Empresa2(config)# interface fastEthernet 0/0
Empresa2(config-if)# ip nat inside
Empresa2(config-if)# exit
Empresa2(config)# interface fastEthernet 1/0
Empresa2(config-if)# ip nat inside
Empresa2(config-if)# exit
Empresa2(config)# interface Lo 3
Empresa2(config-if)# ip nat inside
Empresa2(config-if)# exit
Empresa2(config)# inter serial 0/1
Empresa2(config-if)# ip nat outside
Empresa2(config-if)# do write
Empresa2(config-if)# exit
```

Observe como la Lo 3 se convierte en una interface de entrada de NAT.

{:.step}
### Paso

Configure una ruta por defecto en Empresa2, que utilice la interface de salida Serial 0/1 con la que se conecta al ISP. Es decir, debes configurar la tabla de enrutamiento del enrutador Empresa2 como ya se hizo con el enrutador de Empresa1.

{:.step}
### Paso

En ISP, configure la manera de cómo este dispositivo deberá alcanzar la red privada de su cliente 2, referenciando con rutas estáticas a solamente las 3 ip publicas que este proveedor le vendió.

```console
ISP(config)# ip route 100.0.0.32 255.255.255.252 168.243.3.134
ISP(config)# ip route 100.0.0.35 255.255.255.255 168.243.3.134
```

La dirección IP 100.0.0.35 pertenece a la red 100.0.0.32/30 pero se trata de un mensaje broadcast por lo que el enrutador no lo propagaría. Debido a esto, es necesaria la segunda línea. De todos modos, no estoy 100% seguro de esto.

{:.step}
### Paso

Haga pruebas de `ping` desde WebServer dirigidos a la ip pública (100.0.0.33) asignada al FTPserver. La prueba debe ser exitosa.

De igual forma, desde host PC11, ejecute el comando `ping` dirigido a la ip pública (100.0.0.34) asignada para la Lo3. La prueba también debe ser satisfactoria.

{:.step}
### Paso

Hasta este momento, ya solo queda disponible una ip publica (100.0.0.35) adquirida al proveedor ISP, y con ella debe darse acceso a Internet a solamente a la mitad superior de las direcciones IP de la Red2 (172.18.0.128/27). 

Este rango de ip que tendrán Internet incluye desde la ip 172.18.0.144 hasta la 172.18.0.158. Veamos cómo es posible solventar este problema usando PAT.

{:.step}
### Paso

Ejecute la siguiente configuración de PAT (NAT Overloaded) en Empresa2. Analice los comentarios previos en cada bloque. 

Configura una pila, formada por una "única dirección" 100.0.0.35 como inicio y final del rango de ip publicas aun disponibles para NAT.

```console
Empresa2(config)# ip nat pool cliente2 100.0.0.35 100.0.0.35 netmask 255.255.255.240
```

Crea la ACL 2 para determinar las redes que tendrán acceso al proceso NAT y alcanzar así Internet.
En este caso, solo se aceptarán IPs de la mitad superior del rango de IPs de la Red 2.

```console
Empresa2(config)# access-list 2 permit 172.18.0.144 0.0.0.15
Empresa2(config)# access-list 2 deny any
```

Crea a NAT de manera sobrecargada (overload), utilizando la pila de direcciones públicas cliente2 y como filtro a la ACL 2.

```console
Empresa2(config)# ip nat inside source list 2 pool cliente2 overload
```

{:.step}
### Paso

Desde el PC de la Red 2 ejecute un `ping` hacia la ip 10.0.0.2; resultado: falla, porque su ip actual (172.18.0.130/27) no tiene acceso a Internet. 

Cambiar su ip asignada a 172.18.0.153/27 y repetir la prueba de comunicación. Esta vez si se le permitirá acceder a Internet.

{:.step}
### Paso

Notará que al usar la sobrecarga en la traducción de direcciones de forma dinámica, ya no hay mayores problemas si nuestro pool de direcciones públicas es más pequeño que el número real de direcciones privadas a traducir.

Añade un PC más a la red 2 y haz dos `ping` al mismo tiempo con ambos PCs. Debería funcionar.

Es importante resaltar que aunque **la red 10.0.0.0/24 forma parte del rango de direcciones privadas en esta práctica funciona como una red pública** ya que el enrutador ISP no tiene la funcionalidad de NAT configurada.

A continuación se muestra la topología final a la que se debe llegar.

![img-description](/assets/img/tutorial-nat-pat-packet-tracer/resultadoFinalParte4Detallada.png)
_Topología final_

## Bibliografía

- [GUIA DE LABORATORIO #9](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjIkJPNwbb3AhW_7rsIHVsCCroQFnoECCMQAQ&url=http%3A%2F%2Fwww.udb.edu.sv%2Fudb_files%2Frecursos_guias%2Finformatica-tecnologico%2Fredes-de-comunicacion%2F2020%2Fi%2Fguia-9.pdf&usg=AOvVaw1jfw3cpfTQS2W2VUaod2VR)
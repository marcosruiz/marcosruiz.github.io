---
title: "(En proceso) Práctica: NAT con Packet Tracer"
date: 2022-03-07 14:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, nat, práctica]
---

## Objetivo

El objetivo de esta práctica es aprender que es un NAT y como configurarlo utilizando la herramienta Packet Tracer.

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Un router y un router NAT estático

Seguir los pasos del artículo [Tutorial: Configurar un NAT estático en Packet Tracer](/posts/tutorial-nat-packet-tracer).

{:.question}
¿Qué ventajas tiene utilizar una NAT estática sobre no utilizarla?

{:.question}
¿Cuales son los rangos de las direcciones IPv4 privadas?

{:.activity}
### Tres router 

#### Parte 1: Preparación de la topología base

1. Implementar ahí la siguiente topología:

![img-description](/assets/img/practica-nat-packet-tracer/tresRoutersEstáticoDinamicoSobrecargado.png)
_Topología base_

NOTA: En esta configuración ambas interfaces seriales d el router ISP usarán cables DCE.

2. Proceda a realizar la configuración de cada router indicada a continuación.

Configuración para Empresa1 :

```console
Router# configure terminal
Router(config)# hostname Empresa1
Empresa1(config)# interface f0/0
Empresa1(config-if)# ip address 192.168.1.1 255.255.255.0
Empresa1(config-if)# no shutdown
Empresa1(config-if)# exit
Empresa1(config)# interface s0/0
Empresa1(config-if# ip address 168.243.3.130 255.255.255.252
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
ISP(config-if)# clockrate 9600
ISP(config-if)# no shutdown
ISP(config if)# exit
ISP(config)# interface s0/1
ISP(config-if)# ip address 168.243.3.133 255.255.255.252
ISP(config-if)# clockrate 9600
ISP(config-if)# no shutdown
ISP(config-if)# exit
ISP# copy running-config startup-config
```

3. Configure las estaciones de trabajo y los servidores con el siguiente direccionamiento IP:

- PC11: Dirección IP: 192.168.1.2, máscara de subred: 255.255.255.0, gateway: 192.168.1.1
- FTPserver: Dirección IP: 172.18.0.66, máscara de subred: 255.255.255.192, gateway: 172.18.0.65
- WebServer: Dirección IP: 10.0.0.2, máscara de subred: 255.255.255.0, gateway: 10.0.0.1

4. Comprobación de direccionamiento IP

- Visualice la tabla de enrutamiento de los enrutadores Empresa1 y Empresa2, ejecutando al comando `show ip route`.
- Verificar la tabla de enrutamiento del enrutador ISP. Observe que debido al carácter de redes privadas que tienen las redes de sus 2 clientes (Empresa1 y Empresa2), la red 192.168.1.0/24 y el conjunto de redes 172.18.0.0 /20 no deben aparecer en la tabla de ISP.

5. Realizar las siguientes pruebas con la herramienta PING desde las estaciones de trabajo y el web server (se anotan a continuación de cada prueba el resultado que debería obtenerse, compárelo con sus propios resultados:

- Ping desde: P C11; hacia: 192.168.1 .1; resultado: prueba exitosa.
- Ping desde: FTPserver; hacia: 172.18.0.65; resultado: prueba exitosa.
- Ping desde: PC11; hacia: 10.0.0.2; resultado: host de destino inaccesible.
- Ping desde: FTPserver; hacia: 10.0.0.2; resultado: host de destino inaccesible.
- Ping desde: WebServer; hacia: 10.0.0.1; resultado: host de destino inaccesible.
- Ping desde: WebServer; hacia: 168.243.3.129; resultado: prueba exitosa.
- Ping desde: WebServer; hacia: 168.243.3.133; resulta do: prueba exitosa.
- Ping desde: WebServer; hacia: 192.168.1.2; resultado: host de destino inaccesible.
- Ping desde: WebServer; hacia: 192.168.2.2; resultado: host de destino inaccesible.

Nuevamente se hace la aclaración. Los fallos al realizar las pruebas Ping entre l as estaciones de trabajo y el servidor, y viceversa, son un comportamiento normal, ya que el enrutador ISP desconoce la existencia de las redes locales privadas de Empresa1 y Empresa2. La comunicación entre estas redes se logrará usando NAT o PAT.

#### Parte 2: Configuración de NAT estático en enrutador Empresa1

6. Asignación de una red IP pública para realizar el proceso de traducción. Las direcciones de carácter público (Globales) para su cliente 1 que configurara el proveedor en su equipo ISP serán las IP host contenidas en la red: 199.6.13.8/29. Estas IP globales serán configuradas en el procedimiento restante.

7. Proceda a crear en ISP a la siguiente ruta estática, dirigida al rango de ip público asignado para
Empresa1 (ver paso anterior) y referencia ndo a la ip del próximo paso (La ip 168.243.3.130,
configurada en la interfaz de conexión con su cliente Empresa1).

```console
ip route 199.6.13.8 255.255.255.248 168.243.3.130
```

8. Configure una ruta estática por defecto en el enrutador Empresa1: `ip route 0.0.0.0 0`.
0.0.0 serial 0/0

9. Ejecute el siguiente código para configurar NAT estático en Empresa1, que permitirá que la dirección privada de PC11 se traduzca a la 1er ip global (199.6.13.9) del rango asignado por ISP para este Cliente 1. Además, se definen aquí a las interfaces de entrada y de salida para el proceso de traducción NAT:

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

10. Pruebas de conectividad.

Realizar las siguientes pruebas y evaluar sus resultados.

- Ping desde: PC11; hacia dirección del WebServer (10.0.0.2); resultado: prueba exitosa
- Ping desde: WebServer; hacia ip privada de PC1 (192.168.1.2); resultado: host de destino
inaccesible
- Ping desde: WebServer; hacia ip publica asignada a PC1 (199.6.13.9); resultado: prueba
exitosa

Tal como se ve en las pruebas anteriores, con el uso de NAT ya no es posible hacer
ping directamente a direcciones locales (este es uno de los objetivos de la práctica), por lo que, si desea acceder a la
PC11 de sde Internet, deberá hacer referencia a su dirección pública asignada con NAT.

11. Finalmente, desde el enrutador Empresa1, revise el estado de la traducción de direcciones IPs
privadas publicas, ejecutando al comando: `show ip nat translation`.

#### Parte 3: Configuración de traducciones dinámicas en enrutador Empresa1

12. Desconecte a PC11 de Empresa1. En su lugar, agregue un Hub a la red local del Cliente1 y conecte uno de sus puertos a la Fa0/0 de Empresa 1. Conecte a PC11 a uno de los puertos libres del Hub. Agregue una nueva PC (llamada PC12 ) a la red del Cliente 1 y configure la siguiente dirección IP: 192.168.1.3/24. Luego conectarlo al HUB, para expandir así a la red local de Empresa1.

13. Desde el nuevo host, repita las pruebas de conectividad del último paso de la part e anterior de este procedimiento.

Notará que aun es imposible acceder a redes externas desde otra dirección local que no sea la ip 192.168.1.2.

14. Si se mantiene este esquema de traducción estática de direcciones, se haría necesario crear una traducción para cada dirección privada de manera manual e individual. Para solventar esta situación, activaremos una traducción basada en un grupo de direcciones públicas, que serán asignadas dinámicamente por orden de llegada con respecto a las direcciones privadas.

15. Elimine las traducciones desarrolladas por NAT y luego vuelva a ver los procesos de traducción de IPs:

```console
Empresa1# clear ip nat translation *
Empresa1# show ip nat translations
Pro Inside global Inside local Outside l
ocal Outside glo bal
---
199.6.13.9 192.168.1.2
Empresa1#
```

El comando crear ip nat translation * elimina el contenido actual de la tabla de traducción NAT. Al ejecutar el comando show de la última línea podrá verificar que la traducción anterior aun existe, porque esta traducción ha sido definida de manera estática. 

16. Cree el siguiente pool ( grupo1 ), que reservara las próximas 2 de las direcciones públicas disponibles para usarlas en un futuro proceso NAT dinámico:

```console
Empresa1# configure terminal
Empresa1(config)# ip nat pool grupo1 199.6.13.10 199.6.13.11 netmask 255.255.255.248
Empresa1(config)# do write
```

17. Crear la lista de acceso estándar 1 a continuación, que permite comparar las direcciones de origen(privadas), para decidir si luego estas serán traducidas a direcciones públicas (globales). En esta demostración, incluiremos en el derecho a ser traducidas a toda la red 192.168.1.0/24.

```console
Empresa1# configure terminal
Empresa1(config)# access list 1 permit 192.168.1.0 0.0.0.255
Empresa1(config)# CTRL+Z
```

18. La lista de acceso anterior NO SE DEBE APLICAR a ninguna interface del router. Recuerde que esta ACL 1 se usa solo para efectos de comparar el origen de los paquetes y tomar la decisión sobre la traducción. No se usa la li sta de acceso para afectar al tráfico entrante o saliente en las interfaces involucradas en la traducción.

19. Ahora se configurará la traducción dinámica con base en el pool y la lista de acceso creada previamente.

```console
EMPRESA1(config)# ip nat inside source list 1 pool grupo1
```

No es necesario volver a definir el sentido de la traducción (inside / outside), ya que si recuerda eso ya se ha configurado en la traducción estática y no debe cambiarse (f0/0 inside; s0/0 outside).

20. Haga una prueba Ping desde PC 12 hacia la ip 10.0.0.2. En este caso la traducción se llevará a cabo correctamente y se obtendrá una respuesta exitosa. Revise de nuevo el estado de las traducciones usando el comando `show ip nat translation`.

21. Veamos que sucede cuando las traducciones requeridas exceden el número de direcciones públicas que comprenden el pool. Hacer los siguientes cambios en la red local de Empresa1:

- Expanda la red, agregando 3 PC mas, para conectarlas al Hub. Asignarle s la s ip 192.168.1.4 ,
192. 168.1.5 y 192.168.1.6 , respectivamente
- Desde host 192.168.1.4, haga ping a la ip 10.0.0.2
- Desde host 192.168.1.5, haga ping a la ip 10.0.0.2
- Revise las traducciones nat en Empresa1. Notará que por cada ip privada de los host anteriores, se
crea un a nueva traducción pa ra acceder a redes externas
- Desde el host con ip 192.168.1.6 ; haga ping a: 10.0.0.2
En este último caso podrá notar que la prueba Ping no tiene éxito. Esto se debe a que el pool de
direcciones públicas (de 199.6.13.10 hasta 199.6.13.11) se ha agotado.
- Espere unos 10 segundos, para intentar nuevamente la comunicación desde el host 192.168.1.6 hacia la ip 10.0.0.2. La prueba deberá ser exitosa, debido a que el router Empresa1 retiro la asignación de la ip publica a uno de los prim eros host que accedieron a internet y que ya no la volvieron a utilizar.

22. Limpie las traducciones nat en Empresa1 con el comando siguiente:

```console
EMPRESA1# clear ip nat translation *
```

23. Ejecute nuevamente la prueba ping desde la PC que dio resultado no exitoso en el paso anterior. Ahora si se tendrá éxito. Revise el estado de las traducciones, para confirmar que las anteriores fueron eliminadas y ahora solo queda la ip publica que se utilizo para el host de esta prueba.

24. Guarde los últimos cambios de configuración en Empresa1 y reinicie su IOS, con el comando reload.

#### Parte 4: Configuración de NAT Sobrecargado en enrutador EMPRESA2

25. Modificar router Empresa2 con las siguientes características y configuraciones:

- Conectar una nueva interface fastethernet, configurarle la dirección 172.18.0.129 /27 y levantarla. Conectar a esta interface un nuevo host, asignándole la ip 172.18.0.130 /27 y su respectiva ip de gateway.
- Crear una red de manera virtualizada con la Loopback 3 , asignándole la dirección 172.18.0.161 /28
- Desde FTPserver, comprobar con ping que saluda exitosamente al nuevo host y también a la ip de Lo3.

26. Ahora analice el siguiente escenario que describirá la topología de red privada del Cliente 2 a
implementar en los pasos restantes.

- Este Cliente 2, tendrá un router de borde denominado Empresa2 y usará el mismo ISP. 
- Se expandirá su red interna mostrada en la Figura 12.1 (al inicio de este proc.) a un total de 3 redes diferentes:
    - Red 1: 172.18.0.64 /26 (de FTPserver, ya configurada
    - Red 2: 172.18.0.128 /27
    - Red 3: 172.18.0.160 /28
- El server FTPserver debe ser alcanzado desde el exterior (internet).
- El host de la red 3, implementado en la Lo 3, virtualizara a un Server, el cual deberá ser visto desde internet.
- Solamente la mitad superior del rango d e ip de los host de la red 2 tendrán acceso a internet. Al resto de host se les permitirá solamente comunicación interna con el resto de redes privadas del mismo cliente.
- Este cliente ha comprado de su ISP solamente 3 direcciones públicas ( 100.0.0.33/28 100.0.0.34/28 y 100.0.0.35/28).

27. Según el escenario anterior, las condiciones se vuelven muy críticas, ya que las direcciones
públicas adquiridas, deben ser distribuidas entre los 2 servidores y las estaciones de trabajo de la LAN
que deberán acceder a internet por medio de router EMPRESA2.

28. Para iniciar la solución, a continuación, se describe la configuración de NAT estático en Empresa2, que asigna la 1er ip publica ( 100.0.0.33/28) al FTPserver, para que este pueda tener acceso hacia/desde internet. 

Y de igual manera, se asigna la 2da ip publica (100.0.0.34 /28 ) al server virtualizado con la Y se definen las interfaces de entrada (direcciones privadas) de NAT y la interface de salida (direcciones públicas).

```console
Empresa2(config)# ip nat inside sour ce static 172.18.0.66 100.0.0.33
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
Empresa2(config)#inter serial 0/1
Empresa2(config-if)# ip nat outside
Empresa2(config-if)# do write
Empresa2(config-if)# exit
```

Observe como la Lo 3 se convierte en una interface de entrada de NAT.

29. Configure una ruta por defecto en Empresa2, que utilice la interface de salida Serial 0/1 con la que se conecta al ISP.

30. En ISP, configure la manera de cómo este dispositivo deberá alcanzar la red privada de su cliente 2, referenciando con rutas estáticas a solamente las 3 ip publicas que este proveedor le vendió.

```console
ISP(config)# ip route 100.0.0.32 255.255.255.252 168.243.3.134
ISP(config)# ip route 100.0.0.35 255.255.255.255 168.243.3.134
```

31. Haga pruebas de ping desde WebServer dirigidos a la ip pública (100.0.0.33) asignada al FTPserver.La prueba debe ser exitosa.De igual forma, desde host PC11, ejecute ping dirigido a la ip pública (100.0.0.34) asignada p ara laLo3. La prueba también debe ser satisfactoria.32. Hasta este momento, ya solo queda disponible una ip publica (100.0.0.35) adquirida al proveedorISP, y con ella debe darse acceso a internet a solamente a la mitad superior de ip’s de la Red2( 18.0.128/27).Este rango de ip que tendrán internet incluye desde la ip 172.18.0.144 hasta la 172.18.0.158.Veamos cómo es posible solventar este problema usando PAT.

33. Ejecute la siguiente configuración de PAT (NAT Overloaded) en Empresa2. Analice los comentarios previos en cada bloque. 

Configura una pila, formada por una "única dirección" 100.0.0.35 como inicio y final del rango de ip publicas aun disponibles para NAT.

```console
Empresa2(config)# ip nat pool cliente2 100.0.0.35 100.0.0.35 netmask 255.255.255.2 40
```

Crea la ACL 2 para determinar las redes que tendrán acceso al proceso NAT y alcanzar así internet.
En este caso, solo se aceptaran ip de la mitad superior del rango de ip’s de la Red 2.

```console
Empresa2(config)# access list 2 permit 172.18 .0.144 0.0.0.15
Empresa2(config)# access list 2 deny any
```

Crea a NAT de manera sobrecargada (overload), utilizando la pila de direcciones públicas cliente2 y
como filtro a la ACL 2.

```console
Empresa2(config)# ip nat inside source list 2 pool cliente2 overload
```

34. Desde la PC de la Red 2 ejecute un ping hacia la ip 10.0.0.2; resultado: falla, porque su ip actual 172.18.0.130/27) no tiene acceso a Internet. Cambiar su ip asignada a 172.18.0.153/27 y repetir la prueba de comunicación. Esta vez si se le permitirá acceder a Internet.

35. Notara que al usar la sobrecarga en la traducción de direcciones de forma dinámica, ya no hay mayores problemas si nuestro pool de direcciones públicas es más pequeño que el número real de direcciones privadas a traducir.

#### Parte 5: Expandiendo la red del proveedor ISP

36. Guardar las configuraciones actuales de cada router y la simulación en general. Luego, hacer una copia de la simulación actual bajo el nombre RECprocNATextra.

37. Agregue un router y cambiarle de nombre a Borde3 Este enrutador hará las funciones del router de borde de un tercer cliente (Cliente 3) del mismo proveedor propietario del router ISP inicial. Modificar los módulos de interfaces de Borde3 para permitir un enlace de fibra óptica y los módulos FastEthernet y/o Ethernet que considere necesarios para implementar las redes indicadas en la Tabla 1. 

| # | Dirección de red Red |
|---|---|
| Red 1 | 180.0.0.0/29 |
| Red 2 | 180.0.0.16/28 | 
| Red 3 | 180.0.0.32/28 | 
| Red 4 | 180.0.0.64/27 |
| Red 5 | 180.0.0.128/25 |

Tabla 1 : Redes a implementar en Borde3

38. Proceda a configurar en Borde3 a c/u de las interfaces agregas en la subred que le corresponda. Conecte una nueva PC por cada interface configurada y modifique su ip para integrarla a la subred correspondiente. Luego genere la tabla de enrutamiento de Borde3 y confirme la li sta de redes solicitadas en la Tabla 1.

39. Agregar un nuevo router y configurarlo con el hostname como ISP2 . Este equipo es de la misma empresa proveedora de internet del router ISP. Ahora desarrolle las siguientes tareas sobre este ISP2:

- Agregue un módulo de interface para conexión de fibra óptica.
- Implemente un enlace T1 entre ambos router (ISP e ISP2) del proveedor y configurar los extremos de este enlace bajo la red 168.244.0.0 /30.
- Para que ambos router intercambien a las redes públicas de su s diferentes clientes, levante en ambos al protocolo EIGRP bajo el SA 500.

A continuación se muestra la configuración que deberá ejecutar en cada router del proveedor de internet:


```console
ISP(config)# router eigrp 500
ISP(config-router)# network 168.244.0.0
ISP(config router)# network 10.0.0.0
ISP(config-router)# passive interface fastEthernet 0/0
ISP(config-router)# redistribute static
ISP(config-router)# do write
```

```console
ISP2(config)#-router eigrp 500
ISP2(config-router)# network 168.244.0.0
ISP2(config-router)# do write
```

Observe que ISP no publica a ISP2 la red privada de su Cliente 1 ni la ip red física compartida con el router de borde Empresa1. Solamente redistribuye las rutas estáticas con el rango de ip públicas que le asigno a su cliente para que sus usuarios accedan a internet

40. Genere la tabla de enrutamiento de ISP2, para identificar cuáles son las redes que este conoce para alcanzar la red privada de Empresa1 De igual forma, determine si este alcanzaría a ver a las redes del otro cliente (Empresa2). Guardar las configuraciones de cada router modificado.

Demuestra en el documento PDF el resultado de cada una de las siguientes pruebas de comunicación:

a) Desde ISP2, enviar ping hacia la ip publica asignada a PC11 (el cliente publicado desde Empresa1).
b) Desde WebServer, ping hacia la ip publica asignada a la Lo3 de Empresa2
c) Desde PC11, ping hacia la ip de la interface de conexión serial de ISP2.

41. Tome de ejemplo la configuración ejecutada entre router (ISP y Empresa2), para
luego hacer las configuraciones indicadas a continuación que permitan conectar al Cliente 3 (cuyo router de borde es Borde3) al ISP2, para acceder a la red pública (internet) administrada por este proveedor de Internet:

- Hacer la conexión entre ISP2 y Borde3 con fibra óptica , configurando la ip 168.243.3.137/30 en el extremo de ISP2 y la otra ip en el puerto de conexión de Borde3.
- El proveedor ha vendido un total de 4 ip’s publicas a su cliente 3, iniciando en la 102.0.0.97/28 hasta 102.0.0.100/28.
- Cliente 3 usara la 1 er ip asignada por el proveedor de internet para publicar el host conectado a su Red 5. Configurar NAT dinámico sobrecargado con las siguientes 2 direcciones públicas disponibles para que los usuarios de las redes restantes, excepto la Red 2, puedan accede r a internet.
- Hacer los cambios necesarios en ISP2, para que redistribuya a ISP las ip públicas de su cliente 3.

42. Llamar a su instructor, para que este ejecute las pruebas necesarias que demuestren que cada uno de los 3 clientes del proveedor de internet se comunican haciendo uso de NAT.

#### Parte 6: Traducción estática de Puertos (PAT), ejemplo 2

43. Reemplazar al host conectado a la Red 2 por un Server. Configurar a este Server con la misma ip
que tenía el host que sustituyo, y cambiar su nombre a ServerHTTP.

44. Ingresar a ficha Config del nuevo Server y confirmar que tiene activados todos los servicios.

45. Ahora, se publicara a Internet este Server utilizando la última ip pública disponible. Pero se restringirá su acceso desde internet para acceder solamente a su servicio de páginas web (protocolo http, puerto 80). Ingresar al modo global de Borde3 y ejecutar el siguiente comando:

```console
ip nat inside source static tcp 180.0.0.18 80 102.0.0.100 80
```

46. Luego, observe las traducciones de nat registradas en Borde3. Vera que existen solamente las 2
traducciones estáticas ya configuradas.

47. Desde un host de Empresa1 que tenga acceso a internet, envíe un ping dirigido a la ip publica asignada a ServerHTTP. Vera que no se obtiene respuesta alguna. Ver las estadísticas de NAT en Borde3 y confirme que no hay traducciones NAT ejecutadas

48. Desde el host seleccionado en el paso anterior, ingresar a ficha Desktop y seleccionar WebBrowser.
Escribir ahí a la ip publica de ServerHTTP. Se cargara la pág. Web predeterminada.
Ver nuevamente las estadísticas de NAT en Borde3 y confirme que esta vez, se tradujo la ip publica de ServerHTTP a su ip privada.

49. Expanda la red 2, agregando un Hub y otro Server. Cambiar nombre de este nuevo Server a ServerFTP y asignarle la ultima ip disponible de la Red 2 y su respectivo Gateway. Conectar ambos servidores al Hub y este ultimo al puerto de la Red en Borde3.

50. Ingresar al modo global de Borde3 y ejecutar el siguiente comando:

```console
ip nat inside source stat ic tcp 180.0.0.30 21 102.0.0.100 21
```

Observe que se utiliza la misma ip global asignada al ServerHTTP, pero la ip local es la del ServerFTP y también, ambos puertos son del servicio FTP (puerto 21) bajo el protocolo TCP.

51. Ingresar a ficha Config de ServerFTP y ver la cuenta de usuario predeterminada el servicio FTP. Ir a la red de la Empresa2 y seleccionar un host que tenga derecho a acceder a Internet, ingresar a su Command Prompt y digitar comando:

```console
ftp 102.0.0.100
```

Observe que se intenta acceder al ServerFTP, pero usan do la misma ip publica asignada al ServerHTTP. La clave de funcionamiento radica en la sobrecarga de puertos (PAT). Se usa la misma ip global en ambas traducciones estáticas, pero referenciando a una ip interna
diferente y usando un puerto público especifico en cada traducción.

## Entrega y presentación

La entrega de esta práctica debe ser un fichero ZIP con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.zip". Por ejemplo, en mi caso el nombre del fichero ZIP sería "RuizGarcía_Marcos_Práctica\<NúmeroDeLaPráctica\>.zip".

En la raíz del fichero ZIP deben encontrarse el documento PDF con el nombre "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.pdf" y las actividades de Packet Tracer en formato PKT con el nombre "\<NúmeroDeActividad\>_actividad.pkt".

Asegúrate de que el documento PDF cumple con los siguientes parámetros:

1. Debe contener una portada con título, nombre de la asignatura, curso, autor y fecha de realización.
2. Debe tener un índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
3. Debe tener cada página numerada.
4. Cada actividad debe estar numerada. 
5. Cada actividad debe tener el enunciado en negrita y la respuesta en texto normal.
6. Cada imagen debe tener un pie de foto la cual tenga el siguiente formato: "Figura \<número\>: \<BreveDescripciónDeLaFigura\>".
7. El documento no debe contener faltas ortográficas.
8. Los comandos y ficheros de configuración que hayas utilizado deben quedar reflejados en el PDF de la entrega en texto para que permitirte copiar y pegar el día del examen todos los comandos de una manera rápida.
9. Los comandos y documentos de configuración que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$ sudo apt install neofetch`.
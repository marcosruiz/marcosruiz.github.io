---
title: "NAT estático, NAT dinámico y PAT en Packet Tracer (Parte 2)"
date: 2022-03-07 23:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [smr, tutorial, nat, pat, packet tracer]
---

## Objetivos

- Controlar el acceso a redes privadas desde Internet.
- Hacer uso de un proveedor de acceso a Internet (ISP) para que los equipos de una red privada accedan a la Nube (Internet).
- Configurar en el router de Borde de un Sistema Autónomo al proceso NAT estático, NAT dinámico y NAT dinámico con sobrecarga (PAT).

## Parte 5: Expandiendo la red del proveedor ISP

{:.step}
### Paso

Guardar las configuraciones actuales de cada router y la simulación en general. Luego, hacer una copia de la simulación actual bajo el nombre 5_parte_tutorial_nat_pat.

{:.step}
### Paso

Agregue un router y cambiarle de nombre a Borde3 Este enrutador hará las funciones del router de borde de un tercer cliente (Cliente 3) del mismo proveedor propietario del router ISP inicial. Modificar los módulos de interfaces de Borde3 para permitir un enlace de fibra óptica y los módulos FastEthernet y/o Ethernet que considere necesarios para implementar las redes indicadas en la Tabla 1. 

| # | Dirección de red Red |
|---|---|
| Red 1 | 180.0.0.0/29 |
| Red 2 | 180.0.0.16/28 | 
| Red 3 | 180.0.0.32/28 | 
| Red 4 | 180.0.0.64/27 |
| Red 5 | 180.0.0.128/25 |

Tabla 1 : Redes a implementar en Borde3

{:.step}
### Paso

Proceda a configurar en Borde3 a c/u de las interfaces agregas en la subred que le corresponda. Conecte una nueva PC por cada interface configurada y modifique su ip para integrarla a la subred correspondiente. Luego genere la tabla de enrutamiento de Borde3 y confirme la li sta de redes solicitadas en la Tabla 1.

{:.step}
### Paso

Agregar un nuevo router y configurarlo con el hostname como ISP2 . Este equipo es de la misma empresa proveedora de Internet del router ISP. Ahora desarrolle las siguientes tareas sobre este ISP2:

- Agregue un módulo de interface para conexión de fibra óptica.
- Implemente un enlace T1 entre ambos router (ISP e ISP2) del proveedor y configurar los extremos de este enlace bajo la red 168.244.0.0 /30.
- Para que ambos router intercambien a las redes públicas de su s diferentes clientes, levante en ambos al protocolo EIGRP bajo el SA 500.

A continuación se muestra la configuración que deberá ejecutar en cada router del proveedor de Internet:


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

Observe que ISP no publica a ISP2 la red privada de su Cliente 1 ni la ip red física compartida con el router de borde Empresa1. Solamente redistribuye las rutas estáticas con el rango de ip públicas que le asigno a su cliente para que sus usuarios accedan a Internet

{:.step}
### Paso

Genere la tabla de enrutamiento de ISP2, para identificar cuáles son las redes que este conoce para alcanzar la red privada de Empresa1 De igual forma, determine si este alcanzaría a ver a las redes del otro cliente (Empresa2). Guardar las configuraciones de cada router modificado.

Demuestra en el documento PDF el resultado de cada una de las siguientes pruebas de comunicación:

1. Desde ISP2, enviar ping hacia la ip publica asignada a PC11 (el cliente publicado desde Empresa1).
1. Desde WebServer, ping hacia la ip publica asignada a la Lo3 de Empresa2
1. Desde PC11, ping hacia la ip de la interface de conexión serial de ISP2.

{:.step}
### Paso

Tome de ejemplo la configuración ejecutada entre router (ISP y Empresa2), para
luego hacer las configuraciones indicadas a continuación que permitan conectar al Cliente 3 (cuyo router de borde es Borde3) al ISP2, para acceder a la red pública (Internet) administrada por este proveedor de Internet:

- Hacer la conexión entre ISP2 y Borde3 con fibra óptica , configurando la ip 168.243.3.137/30 en el extremo de ISP2 y la otra ip en el puerto de conexión de Borde3.
- El proveedor ha vendido un total de 4 ip’s publicas a su cliente 3, iniciando en la 102.0.0.97/28 hasta 102.0.0.100/28.
- Cliente 3 usara la 1 er ip asignada por el proveedor de Internet para publicar el host conectado a su Red 5. Configurar NAT dinámico sobrecargado con las siguientes 2 direcciones públicas disponibles para que los usuarios de las redes restantes, excepto la Red 2, puedan accede r a Internet.
- Hacer los cambios necesarios en ISP2, para que redistribuya a ISP las ip públicas de su cliente 3.

{:.step}
### Paso

Llamar a su instructor, para que este ejecute las pruebas necesarias que demuestren que cada uno de los 3 clientes del proveedor de Internet se comunican haciendo uso de NAT.

## Parte 6: Traducción estática de Puertos (PAT), ejemplo 2

{:.step}
### Paso

Reemplazar al host conectado a la Red 2 por un Server. Configurar a este Server con la misma ip que tenía el host que sustituyo, y cambiar su nombre a ServerHTTP.

{:.step}
### Paso

Ingresar a ficha Config del nuevo Server y confirmar que tiene activados todos los servicios.

{:.step}
### Paso

Ahora, se publicara a Internet este Server utilizando la última ip pública disponible. Pero se restringirá su acceso desde Internet para acceder solamente a su servicio de páginas web (protocolo http, puerto 80). Ingresar al modo global de Borde3 y ejecutar el siguiente comando:

```console
ip nat inside source static tcp 180.0.0.18 80 102.0.0.100 80
```

{:.step}
### Paso

Luego, observe las traducciones de nat registradas en Borde3. Vera que existen solamente las 2
traducciones estáticas ya configuradas.

{:.step}
### Paso

Desde un host de Empresa1 que tenga acceso a Internet, envíe un ping dirigido a la ip publica asignada a ServerHTTP. Vera que no se obtiene respuesta alguna. Ver las estadísticas de NAT en Borde3 y confirme que no hay traducciones NAT ejecutadas

{:.step}
### Paso

Desde el host seleccionado en el paso anterior, ingresar a ficha Desktop y seleccionar WebBrowser.
Escribir ahí a la ip publica de ServerHTTP. Se cargara la pág. Web predeterminada.
Ver nuevamente las estadísticas de NAT en Borde3 y confirme que esta vez, se tradujo la ip publica de ServerHTTP a su ip privada.

{:.step}
### Paso

Expanda la red 2, agregando un Hub y otro Server. Cambiar nombre de este nuevo Server a ServerFTP y asignarle la ultima ip disponible de la Red 2 y su respectivo Gateway. Conectar ambos servidores al Hub y este ultimo al puerto de la Red en Borde3.

{:.step}
### Paso

Ingresar al modo global de Borde3 y ejecutar el siguiente comando:

```console
ip nat inside source stat ic tcp 180.0.0.30 21 102.0.0.100 21
```

Observe que se utiliza la misma ip global asignada al ServerHTTP, pero la ip local es la del ServerFTP y también, ambos puertos son del servicio FTP (puerto 21) bajo el protocolo TCP.

{:.step}
### Paso

Ingresar a ficha Config de ServerFTP y ver la cuenta de usuario predeterminada el servicio FTP. Ir a la red de la Empresa2 y seleccionar un host que tenga derecho a acceder a Internet, ingresar a su Command Prompt y digitar comando:

```console
ftp 102.0.0.100
```

Observe que se intenta acceder al ServerFTP, pero usan do la misma ip publica asignada al ServerHTTP. 
La clave de funcionamiento radica en la sobrecarga de puertos (PAT). 
Se usa la misma ip global en ambas traducciones estáticas, pero referenciando a una ip interna diferente y usando un puerto público especifico en cada traducción.
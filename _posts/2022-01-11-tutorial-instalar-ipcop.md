---
title: "Tutorial: Instalar y configurar IPCOP"
date: 2022-01-11 13:10:00 +0100
categories: [gnu linux]
tags: [gnu linux, comandos, terminal, bash, seguridad informática, servicios en red]
---

## Configuración del enrutador

- Nombre: Enrutador
- 265 MB de RAM
- Red
    - Adaptador 1:
        - Conectado a: Red interna 
        - Nombre: enrutador
        - Modo promiscuo: Permitir todo
        - ✅ Cable conectado
    - Adaptador 2:
        - Conectado a: NAT
        - Tipo de adaptador: Intel PRO/1000 MT

Usuarios y contraseñas:

- root/chabacier
- admin/chabacier

## Configuración de la máquinas conectadas

- Red
    - Adaptador 1:
        - Conectado a: Red interna 
        - Nombre: enrutador
        - ✅ Cable conectado

Dentro de Zorin OS Lite ir a Inicio > Conexiones de red > Conexión cableada 1 > ⚙️ > Ajustes de IPv4 y en **mi caso** la configuración es la siguiente:

- Nombre: ZOSL UrBackup Cliente
    - Dirección: 192.168.1.116
    - Máscara de red: 24
    - Puerta de enlace: 192.168.1.1
    - Servidor DNS: 8.8.8.8
- Nombre: ZOSL UrBackup Servidor
    - Dirección: 192.168.1.117
    - Máscara de red: 24
    - Puerta de enlace: 192.168.1.1
    - Servidor DNS: 8.8.8.8

## Descargar e instalar IPCOP

- [Descargar IPCOP aquí](https://www.ipcop.org/download.html)

<iframe width="560" height="315" src="https://www.youtube.com/embed/rrWLBBQr5iw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Una vez instalado deberías poder conectarte en 192.168.1.1:8443.

## Soluciones a problemas habituales

- Comprueba que la red interna tiene el modo promiscuo en permitir todo.
- Comprueba que los equipos tienen IP y es diferente. Si no es diferente el servidor DHCP no está funcionando bien. La solución más sencilla es dar las IP de manera manual en cada cliente.

---
title: Instalar y configurar IPCOP
date: 2022-01-10 11:20:00 +0100
categories: [gnu linux]
tags: [gnu linux, comandos, terminal, bash, seguridad informática, servicios en red]
---

## Crear máquina

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

```
root/chabacier
admin/chabacier
```

## Descargar e instalar IPCOP

- [IPCOP](https://www.ipcop.org/download.html)

Una vez instalado deberías poder conectarte en 192.168.1.1:8443.

## Soluciones a problemas habituales

- Comprueba que la red interna tiene el modo promiscuo en permitir todo.
- Comprueba que los equipos tienen IP y es diferente. Si no es diferente el servidor DHCP no está funcionando bien. La solución más sencilla es dar las IP de manera manual en cada cliente.

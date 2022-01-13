---
title: "Tutorial: Instalar y configurar IPCOP"
date: 2022-01-11 13:10:00 +0100
categories: [Sistemas Microinformáticos y Redes]
tags: [gnu linux, comandos, terminal, bash, seguridad informática, servicios en red, smr]
---

## Crear máquina IPCOP en Virtual Box

1. Haz click en **Siguiente**.
1. Nombre: Enrutador.
1. Sistema operativo: Linux.
1. Versión: Linux 2.6.
1. Haz click en **Siguiente**.
1. Tamaño de memoria base: 256 MB.
1. Haz click en **Siguiente**.
1. ✅ Disco duro de arranque.
1. 🟢 Crear disco virtual nuevo.
1. Haz click en **Siguiente**.
1. 🟢 VDI (Virtual Disk Image).
1. Haz click en **Siguiente**.
1. 🟢 Reservado dinámicamente.
1. Haz click en **Siguiente**.
1. Tamaño: 8,00 GB.
1. Haz click en **Siguiente**.
1. Haz click en **Crear**.
1. Haz click en **Crear**.

## Configurar IPCOP

1. Selecciona la máquina virtual con nombre Enrutador
1. Click en **⚙ Configuración**
1. En el menú izquierdo haz click en **General**.
1. Click en en la pestaña **Avanzado**.
1. Compartir portapapeles: Bidireccional
1. Descripción: indicar las credenciales que vamos a usar
    - usuario/chabacier
    - root/chabacier
    - admin/chabacier
1. En el menú izquierdo haz click en **Red**.
1. Click en la pestaña **Adaptador 1**.
    - ✅ Habilitar adaptador de red
    - Conectado a: Red interna 
    - Nombre: intnet
    - Click en **▶ Avanzadas**
    - Tipo de adaptador: Intel PRO/1000 MT
    - Modo promiscuo: Permitir todo
    - ✅ Cable conectado
1. Click en la pestaña **Adaptador 2**.
    - ✅ Habilitar adaptador de red
    - Conectado a: NAT
    - Click en **▶ Avanzadas**
    - Tipo de adaptador: Intel PRO/1000 MT
    - ✅ Cable conectado
1. [Descarga IPCOP aquí](https://www.ipcop.org/download.html)
1. En el menú izquierdo haz click en **Almacenamiento**.
1. En **Dispositivos de almacenamiento** haz click en 💿 Vacío
1. En **Atributos** > **Unidad optica:** haz click en el 💿 de la derecha y selecciona la opción "Seleccionar un archivo de disco" y selecciona el fichero .iso de IPCOP descargado.
1. Haz click en **Aceptar**

## Instalar IPCOP

1. Pulsa **Enter/return**.
1. Selecciona **Spanish**.
1. Haz click en **Ok**.
1. Haz click en **Aceptar**.
1. Selecciona **es**.
1. Haz click en **Aceptar**.
1. Selecciona **Europe/Madrid**.
1. En "Fecha - Hora" haz click en **Aceptar**.
1. En "Instalación en disco" haz click en **Aceptar**.
1. Haz click en **Aceptar**.
1. Haz click en **Disco duro**.
1. En "Reestablecer" haz click en **Saltar**.
1. Haz click en **Felicidades!**.
1. En "Nombre de host" escribe "enrutador" y click en **Aceptar**.
1. En "Nombre de dominio" escribe "dominio20.edu" y click en **Aceptar**.
1. En "RED interfaz" marca (*) DHCP y click en **Aceptar**.
1. En "Asignación de tarjetas" click en el priemro y click en **Seleccione**.
1. Haz click en GREEN y haz click en **Asignar**
1. En "Asignación de tarjetas" click en el segundo y click en **Seleccione**.
1. Haz click en RED y haz click en **Asignar**
1. Haz click en **Hecho**.
1. En "GREEN interfaz" escribe:
    - Dirección IP: 192.168.120.1
    - Máscara de red: 255.255.255.0
1. Haz click en **Aceptar**.
1. En "RED interfaz" escribe:
    - Nombre de host de: enrutador
1. En "Opciones de DNS y puerta de enlace" haz click en **Saltar**.
1. En "Configuración del servidor DHCP" nos aseguramos que está desactivado ([ ] Activado).
1. En "Definir contraseñas" escribimos "chabacier" para el usuario root.
1. Haz click en **Aceptar**.
1. En "Definir contraseñas" escribimos "chabacier" para el usuario admin.
1. Haz click en **Aceptar**.
1. En "Definir contraseñas" escribimos "chabacier" para el usuario backup.
1. Haz click en **Aceptar**.
1. Haz click en **Aceptar**.

## Arranque y comprobación

1. Al arrancar selecciona la opción normal de arranque, es decir, la primera.
1. Haz login como root.
1. Ejecuta el comando `ifconfig` y comprueba que tu IP local (lan-1) es 192.168.120.1.
1. Déjalo encendido.

Si quieres cambiar la configuración deberás ejecutar la instrucción `setup` y navegar por los menús.


## Configuración de los PCs Zorin en Virtual Box

1. Haz click en una máquina virtual con Zorin OS Lite instalado.
1. Haz click en **⚙️ Configuración**.
1. En el menú lateral izquierdo haz click en **Red**.
1. Click en **Adaptador 1**:
    - Conectado a: Red interna 
    - Nombre: intnet
1. Inicia la máquina virtual con Zorin OS Lite
1. Ir a Inicio > Conexiones de red > Conexión cableada 1 > ⚙️ > Ajustes de IPv4 y escribir esta configuración:
    - Dirección: 192.168.120.100
    - Máscara de red: 24
    - Puerta de enlace: 192.168.1.1
    - Servidor DNS: 8.8.8.8
1. Inicia un navegador y escribe la URL https://192.168.120.1:8443/.
1. Haz login como admin.
1. Comprueba que está en estado **Conectado**.

## Soluciones a problemas habituales

- Comprueba que la red interna tiene el modo promiscuo en permitir todo.
- Comprueba que los equipos tienen una IP asignada y es diferente. Si no es diferente el servidor DHCP no está funcionando bien. La solución más sencilla es dar las IP de manera manual en cada cliente.
- Comprueba que tienes conexión a Internet desde la máquina IPCOP.
- Comprueba que tienes acceso a la configuración del router a través de 192.168.1.1:8443. Comprueba que estás conectado. Si no estas conectado desconecta y vuelve a conectar.
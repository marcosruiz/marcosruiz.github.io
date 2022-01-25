---
title: Servicio SSH
date: 2022-01-25 10:30:00 +0100
categories: [Sistemas Microinformáticos y Redes, Servicios en Red]
tags: [gnu linux, comandos, terminal, bash, servicios en red, ssh, seguridad informática, smr]
---

Pila TCP/IP:

| Aplicación | SSH |
| Transporte | TCP |
| Red | IP (IPv4 y IPv6)  |

El **puerto** TCP asignado es el **22**.

Tipo de servicio: Administración.

## ¿Qué es SSH?

SSH (o Secure SHell) es el nombre de un protocolo y del programa que lo implementa cuya principal función es el **acceso remoto a un servidor** por medio de un canal seguro en el que toda la información está cifrada. 

Proporciona:
- Un mecanismo para autenticar un usuario remoto
- Transferir entradas desde el cliente al host
- Retransmitir la salida de vuelta al cliente

El servicio se creó como un reemplazo seguro para el Telnet sin cifrar y utiliza técnicas criptográficas para garantizar que todas las comunicaciones hacia y desde el servidor remoto sucedan de manera encriptada.

La imagen de abajo muestra una ventana típica de SSH. Cualquier usuario de Linux o macOS puede usar SSH en su servidor remoto directamente desde la ventana del terminal. Los usuarios de Windows pueden aprovechar los clientes SSH como Putty. **Puedes ejecutar comandos shell de la misma manera que lo harías si estuvieras operando físicamente el equipo remoto**.

![img-description](/assets/img/servicio-ssh/ejemplo-ssh.jpg)
_Ejemplo de conexión mediante SSH_

## ¿Cómo funciona SSH?

Si usas Linux o Mac, entonces usar el protocolo SSH es muy fácil. Si utilizas Windows, deberás utilizar un cliente SSH para abrir conexiones SSH. El cliente SSH más popular es PuTTY.

Para usuarios de Mac y Linux, dirígete a tu programa de terminal y sigue este procedimiento:

El comando SSH consta de 3 partes distintas: `ssh <user>@<host>`. `<user>` representa la cuenta a la que deseas acceder. Por ejemplo, puede que quieras acceder al usuario root, que es básicamente para el administrador del sistema con derechos completos para modificar cualquier cosa en el sistema. `<host>` hace referencia al equipo al que quieres acceder. Esto puede ser una dirección IP (por ejemplo, 244.235.23.19) o un nombre de dominio (por ejemplo, www.xyzdomain.com).

Al pulsar enter, se te pedirá que escribas la contraseña de la cuenta solicitada. Al escribirla, nada aparecerá en la pantalla, pero tu contraseña, de hecho, se está transmitiendo. Una vez que hayas terminado de escribir, pulsa enter una vez más. Si tu contraseña es correcta, verás una ventana de terminal remota.

## Comprendiendo las diferentes técnicas de cifrado

La ventaja significativa ofrecida por el protocolo SSH sobre sus predecesores es el uso del cifrado para asegurar la transferencia segura de información entre el host y el cliente. Host se refiere al servidor remoto al que estás intentando acceder, mientras que el cliente es el equipo que estás utilizando para acceder al host. Hay tres tecnologías de cifrado diferentes utilizadas por SSH:

1. Cifrado simétrico
2. Cifrado asimétrico
3. Hashing

Si estás cursando la asignatura de Seguridad Informática también debes leer el artículo [¿Cómo funciona el SSH?](https://www.hostinger.es/tutoriales/que-es-ssh).

## Bibliografía

- [¿Cómo funciona el SSH?](https://www.hostinger.es/tutoriales/que-es-ssh)
- [Secure Shell (Wikipedia)](https://es.wikipedia.org/wiki/Secure_Shell)
- [Ataque de REPLAY (Wikipedia)](https://es.wikipedia.org/wiki/Ataque_de_REPLAY)
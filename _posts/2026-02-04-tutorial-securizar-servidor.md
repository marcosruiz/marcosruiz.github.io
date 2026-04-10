---
title: "Tutorial: Securiza tu servidor"
date: 2025-04-02 9:00:00 +0100
categories: [General]
tags: [openmediavault, omv, nextcloud, docker, compose]
img_path: /assets/img/wcag/
---

{:.section}
## Introducción

Esto es una guía de como asegurar que todos mis servidores son seguros.


{:.section}
## Actualizar sistema

```bash
sudo apt update
sudo apt update -y
sudo apt install unattended-upgrades apt-listchanges -y
sudo dpkg-reconfigure unattended-upgrades
```

Comprobar estado:

```bash
sudo systemctl status unattended-upgrades
```

{:.section}
## Configurar acceso por clave SSH

{:.section}
## Crear usuario administrador

Es recomendable crear un usuario con un nombre que no sea el típico.

```bash
sudo adduser admin_mruizg
sudo usermod -aG sudo admin_mruizg
```

{:.subsection}
### Equipo local

En el equipo local necesitamos generar una clave publica privada:

```bash
ssh-keygen -t ed25519
```

Estas claves se guardan en `~/.ssh/`.

> RECUERDA que `~` es lel diretorio de tu usuario.
{:.prompt-info}

Y la enviamos al servidor:

```bash
ssh-copy-id admin_mruizg@IP_DEL_SERVIDOR
```

{:.subsection}
### Equipo remoto o servidor

Si no tienes acceso directo por `ssh` al servidor a través de contraseña, puedes copiar la clave pública (la que no tiene extensión) al final del fichero `~/.ssh/authorized_keys`.

{:.section}
## Configurar acceso por clave SSH

> ¡CUIDADO! Si quitas la autenticación por contraseña más vale que tengas tu clave privada a buen recaudo.
{:.prompt-warning}

Editar configuración:

```bash
sudo nano /etc/ssh/sshd_config
```

Asegurar que contiene:


```plaintext
PermitRootLogin no
PasswordAuthentication no
PubkeyAuthentication yes
```

Reiniciar servicio:

```bash
sudo systemctl restart ssh
```

{:.section}
## Configurar firewall

> ¡CUIDADO! Si bloqueas todos los puertos asegurate de tener abiertos los puertos que usas en el servicio SSH y el acceso a la interfaz web principal.
{:.prompt-warning}


```bash
sudo apt install ufw -y
```

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

```bash
sudo ufw allow 22987/tcp
sudo ufw allow 9999/tcp
```

{:.section}
## Fail2Ban

Instalar Fail2Ban:

```bash
sudo apt install fail2ban -y
```

Comprobar estado:

```bash
sudo fail2ban-client status
```

{:.section}
## Instalar herramientas básicas de auditoría


```bash
sudo apt install lynis rkhunter chkrootkit logwatch -y
```


```bash
sudo lynis audit system
```

{:.section}
## Backup con rsync



{:.section}
## AppArmor

Comprobar estado de AppArmor:

```bash
sudo aa-status
```

Si no está activo:

```bash
sudo systemctl enable apparmor
sudo systemctl start apparmor
```

{:.section}
## Monitorizar accesos SSH

```bash
sudo journalctl -u ssh
```

Intentos fallidos:

```bash
sudo grep "Failed password" /var/log/auth.log
```


```bash

```


```bash

```


```bash

```


```bash

```





{:.section}
## 

{:.section}
## 

{:.section}
## 

## Bibliografía

- 

---
title: "Tutorial: Metasploitable"
date: 2023-01-01 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría, seguridad activa]
img_path: /assets/img/tutorial-metasploitable/
---

## ¿Qué es Metasploitaible?

Metasploitable es una máquina virtual preconfigurada, desarrollada por la compañía de ciberseguridad Rapid7, que sirve para ejecutar prácticas de hacking ético. Es decir, Metasploitable ha sido configurada de tal forma que cuenta con diferentes vulnerabilidades públicas de software. Así, los pentesters pueden practicar diferentes técnicas de hacking y cómo explotar dichas vulnerabilidades.

Actualmente, existen tres versiones de Metasploitable. La versión más reciente se conoce como Metasploitable 3 y la diferencia con las dos anteriores es la cantidad y el tipo de vulnerabilidades públicas con las que cuenta. Si quieres practicar con la mayor cantidad de vulnerabilidades conocidas posibles, te recomendamos instalar la última versión.

<details class="card mb-2">
  <summary class="card-header question">¿Qué es Metasploit?</summary>
  <div class="card-body" markdown="1">

Metasploit es un framework con versiones de código abierto y de pago, que reúne un gran conjunto de herramientas para ejecutar diferentes procesos de explotación de vulnerabilidades. La versión gratuita de Metasploit funciona con vulnerabilidades públicas, es decir, que ya han sido reportadas en el pasado. Por eso, funciona a la perfección con Metasploitable, que incluye la mayor cantidad de estos fallos posibles.

Si quieres saber más puedes leer el artículo [Tutorial: Metasploit](/posts/tutorial-metasploit).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Instalación de Metasploitable2

Descarga [Metasploitable2](https://sourceforge.net/projects/metasploitable/files/Metasploitable2/).

## Instalación de Metasploitable3 con Vagrant

Ir a [Install Vagrant](https://developer.hashicorp.com/vagrant/downloads) y descarga instala Vagrant para tu sistema.

Ir al [GitHub de Metasploitable3](https://github.com/rapid7/metasploitable3) y seguir las instrucciones del `README.md`{: .filepath}.

Una vez instalado cargamos el teclado en español:

```console
#loadkeys es
```

Para hacer el cambio permanente:

```console
#setxkbmap es
#dpkg-reconfigure console-setup
```

Y comprobamos que versión de SO estamos usando:

```console
#lsb_release -a
```

{:.question}
¿Qué versión de SO te aparece a ti?

### Configuración de la red interna

La red interna no tiene un servidor DCHP por lo tanto debemos añadir la configuración de red a mano. En el caso de Metasploitable 3, añadimos en el fichero `/etc/network/interfaces` las siguientes líneas:

```
auto eth2
iface eth2 inet static
      address 192.168.1.3
      netmask 255.255.255.0
      gateway 192.168.1.1
```
{: file="/etc/network/interfaces" }

## Instalación de Kali Linux

Ir a [Get Kali](https://www.kali.org/get-kali/) y descarga la última versión de Kali Linux.

### Configuración de la red interna

La red interna no tiene un servidor DCHP por lo tanto debemos añadir la configuración de red a mano. Vamos al menú de inicio y escribimos "Advanced Network Configuration" y creamos una nueva conexión con las siguientes opciones:

- Address: 192.168.1.2
- Netmask: 255.255.255.0
- Gateway: 192.168.1.1

## Bibliografía

- [¿Qué es Metasploitable?](https://keepcoding.io/blog/que-es-metasploitable/)
- [Conoce Metasploitable, un entorno para aprender hacking ético](https://www.redeszone.net/tutoriales/seguridad/metasploitable-hacking-etico/)
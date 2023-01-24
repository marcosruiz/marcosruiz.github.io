---
title: "Tutorial: Vagrant"
date: 2023-01-01 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría, seguridad activa]
img_path: /assets/img/tutorial-metasploit/
---

## ¿Qué es Vagrant?

## Antes de nada

Antes de nada debemos crear una carpeta que llamaremos "<nombreDeLaMáquina>-workspace" donde trabajaremos.

## Uso de Vagrant

Iniciar/levantar máquina virtual:

```console
$vagrant up
```

Recargar configuración de la máquina virtual:

```console
$vagrant reload
```

Apagar la máquina virtual:

```console
$vagrant halt
```

Conectar mediante SSH:

```console
$vagrant ssh
```

## VA

```
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.vm.define "ub1404" do |ub1404|
    ub1404.vm.box = "rapid7/metasploitable3-ub1404"
    ub1404.vm.hostname = "metasploitable3-ub1404-2"
    config.ssh.username = 'vagrant'
    config.ssh.password = 'vagrant'

    ub1404.vm.network "private_network", ip: '172.28.128.3'
    ub1404.vm.network "private_network", ip: "192.168.50.5", virtualbox__intnet: true

    ub1404.vm.provider "virtualbox" do |v|
      v.name = "Metasploitable3-ub1404-2"
      v.memory = 2048
    end
  end
end

```
{: file="Vagrantfile" }

```
Vagrant.configure("2") do |config|
    # Synced folder
    config.vm.synced_folder '.', '/media/vagrant'
    config.vm.box = "kalilinux/rolling"
    config.ssh.username = 'vagrant'
    config.ssh.password = 'vagrant'
    # VirtualBox Host-Only Networks
    config.vm.network "private_network", type: "dhcp"
    # VirtualBox Internal Network
    config.vm.network "private_network", ip: "192.168.50.4", virtualbox__intnet: true
end
```
{: file="Vagrantfile" }

## Guest additions


Si estamos en Windows:

```console
$vagrant plugin install vagrant-winnfsd
```

Instalamos el plugin:

```console
$vagrant plugin install vagrant-vbguest
```


Comprobamos que está instalado:

```console
$vagrant plugin list
```

## Bibliografía


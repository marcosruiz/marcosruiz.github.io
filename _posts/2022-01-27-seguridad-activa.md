---
title: "Seguridad activa"
date: 2022-01-27 01:20:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [gnu linux, comandos, terminal, bash, seguridad informática, smr, seguridad activa, teoría, bios, grub, uefi, vpn, ssh, dmz, vlan, tcp wrapper, ids]
---

{:.section}
## ¿Qué es una DMZ?

Leer el artículo [DMZ: utiliza la zona desmilitarizada y protege tu red interna](https://www.ionos.es/digitalguide/servidores/seguridad/en-que-consiste-una-zona-desmilitarizada-dmz/).

- ¿Qué es una DMZ? ¿Para qué sirve?
- ¿Qué dos tipos de DMZ existen?

<iframe src="https://www.youtube.com/embed/8e2OY6ou3l0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

- ¿Qué es un DDNS?
- ¿Qué diferencia hay entre un DNS y un DDNS?
- ¿Sabrías poner un ejemplo de servicio DDNS?
- ¿Qué problemas puede tener un DDNS?
- ¿Qué es un socket?
- ¿Qué significa exactamente abrir un puerto?
- ¿Podemos tener dos servidores FTP en el mismo puerto y misma LAN de cara a Internet si las direcciones IP privadas son diferentes?
- ¿Cuál es el rango de los puertos bien conocidos?
- ¿Qué ocurrirá si pongo my PlayStation en una DMZ?
- ¿Qué es un firewall?
- ¿Qué sería el portero de un finca en una red local?
- ¿Cuál es el inconveniente de usar un CG-NAT?


{:.section}
## ¿Qué es la red perimetral?

Se conoce como perímetro de la red a la "frontera" entre el exterior y los ordenadores y servidores internos. Los elementos que la componen son:

- **Routers frontera**: Es un dispositivo situado entre la red interna de y las redes de otros proveedores que intercambian el tráfico con nosotros y que se encarga de dirigir el tráfico de datos de un lado a otro. El último router que controlamos antes de Internet. Primera y última línea de defensa. Filtrado inicial y final. 
- **Cortafuegos (firewalls)**: Es una herramienta diseñada para controlar las conexiones. Este puede permitir, limitar, cifrar, descifrar, el tráfico entre equipos o redes sobre la base de un conjunto de normas y otros criterios.

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo una DMZ y una red perimetral?</summary>
  <div class="card-body" markdown="1">

No

  </div>
</details>

### Origen del término

El término zona desmilitarizada (DMZ, por sus siglas en inglés), aplicado a la seguridad informática procede probablemente de la franja de terreno neutral que separa a los países inmersos en un conflicto bélico. Es una reminiscencia de la Guerra de Corea, aún vigente y en tregua desde 1953. Paradójicamente, a pesar de que esta zona desmilitarizada es terreno neutral, es una de las más peligrosas del planeta, pues la franja no pertenece formalmente a ningún país, y cualquier inmersión en ella causará fuego de ambos bandos.

{:.section}
## ¿Qué es un TCP Wrapper?

Leer el artículo [TCP Wrappers: qué son y cómo se utilizan en Linux](https://juncotic.com/tcp-wrappers-se-utilizan-linux/).

## Preguntas que debes saber contestar

- ¿Qué diferencia hay entre la seguridad en la red local y la seguridad perimetral?
- En el contexto de DMZ ¿A qué se le llama bastión?
- En el contexto de DMZ ¿En que consiste la configuración SOHO, multi-homed, screened host y screened subnet?
- ¿Qué es un TCP Wrapper?
- ¿Qué es una auditoria de seguridad?
- ¿Qué es un test de intrusión?
- ¿Qué es un análisis forense?
- ¿Qué diferencia hay entre una copia de disco duro en frío y una en caliente?
- ¿En que consiste la destrucción lógica de datos?
- ¿En qué consiste la técnica Stak space de eliminación de datos del SO?
- ¿Cómo se llama al proceso que identifica y recupera archivos eliminados?
- ¿Cuándo debe realizarse un análisis forense?

## Bibliografía

- [¿Qué es un IDS?](https://www.clavei.es/blog/que-es-un-ids-o-intrusion-detection-system/)
- [Zona desmilitarizada (informática) (Wikipedia)](https://es.wikipedia.org/wiki/Zona_desmilitarizada_(inform%C3%A1tica))
- [¿Cómo funciona el SSH?](https://www.hostinger.es/tutoriales/que-es-ssh)
- [Secure Shell (Wikipedia)](https://es.wikipedia.org/wiki/Secure_Shell)
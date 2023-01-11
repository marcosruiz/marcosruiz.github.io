---
title: "John the Ripper"
date: 2023-01-01 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría, seguridad activa]
img_path: /assets/img/john-the-ripper/
---

## ¿Qué es John The Ripper?

John the Ripper es un programa de criptografía que aplica fuerza bruta para descifrar contraseñas. Es capaz de romper varios algoritmos de cifrado o hash, como DES, SHA-1 y otros. Es una herramienta de seguridad muy popular, ya que permite a los administradores de sistemas comprobar que las contraseñas de los usuarios son suficientemente buenas. John the Ripper es capaz de autodetectar el tipo de cifrado de entre muchos disponibles, y se puede personalizar su algoritmo de prueba de contraseñas.

![Icono de John the Ripper](jtrIcono.png)
_Icono de John the Ripper_

Leer el artículo [¿Qué es John The Ripper?](https://keepcoding.io/blog/que-es-john-the-ripper/).

## ¿Cómo usar John The Ripper en modo por defecto?

Copia el fichero `/etc/passwd` y el fichero `/etc/shadow` en la máquina Kali:

```console
# unshadow ./passwd ./shadow > <ficheroDeHashes>
```

Puedes usar John The Ripper de manera predeterminada sobre un fichero de hashes de la siguiente manera:

```console
#john <ficheroDeHashes>
```

{:.question}
¿Qué hace el modo por defecto de John the Ripper?

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un ataque de fuerza bruta? ¿Cómo protegerse de un ataque de fuerza bruta?</summary>
  <div class="card-body" markdown="1">

Leer el artículo [¿Qué es un ataque de fuerza bruta?](https://keepcoding.io/blog/que-es-un-ataque-de-fuerza-bruta/).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<!-- 

## ¿Cómo usar John The Ripper en modo fuerza bruta?

En mi caso he usado el siguiente comando para romper la contraseña con fuerza bruta:

```console
#john --incremental=Lower --length=7 <ficheroDeHashes>
```
-->

## ¿Cómo usar John The Ripper en modo diccionario?

Si necesitas más información sobre los modos de John the Ripper, puedes leer en el artículo en inglés [John the Ripper's cracking modes](https://www.openwall.com/john/doc/MODES.shtml) para saber que parámetros necesitarás para conseguir un ataque de fuerza bruta que termine en un tiempo razonable para la contraseña "tiempos".

También puedes usar John the Ripper para un ataque de diccionario de la siguiente manera:

```console
#john --wordlist="<ficheroDiccionario>" <ficheroDeHashes> 
#john --show <ficheroHashes>
```

Para ello primero deberás descargar un diccionario de palabras en español:

```console
$curl -O http://snowball.tartarus.org/algorithms/spanish/voc.txt
```

O si no funciona puedes usar [este enlace](/assets/img/practica-seguridad-activa-sistemas-operativos/diccionario.txt) directamente.

## Bibliografía

- [¿Qué es John The Ripper?](https://keepcoding.io/blog/que-es-john-the-ripper/)
- [John the Ripper's cracking modes](https://www.openwall.com/john/doc/MODES.shtml)
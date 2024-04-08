---
title: "Imprimir a doble cara"
date: 2023-04-17 12:20:00 +0100
categories: [General]
tags: [imprimir]
img_path: /assets/img/imprimir-doble-cara/
math: true
---

En algunas circustancias nuestra impresora no tiene la función de imprimir a doble cara de forma manual por lo que a continuación se listan una serie de pasos para imprimir a doble cara en impresoras que no tienen dicha función.

## Paso 1

Imprimir las caras impares:

```plaintext
1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47,49,51,53,55,57,59,61,63,65,67,69,71,73,75,77,79,81,83,85,87,89,91,93,95,97,99
```

## Paso 2

Girar la hoja por el borde largo y volver a introducir los papeles.

## Paso 3

Imprimir las caras pares:

```plaintext
2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74,76,78,80,82,84,86,88,90,92,94,96,98,100
```

## Paso 4

Reordenar las hojas ya que habrán salido en orden inverso.

## Resetear tambor

En mi caso tengo la impresora OKI C5900 y he probado el truco del siguiente video y me ha funcionado. Aunque en mi caso he tenido que intentarlo varias veces dándome varios errores hasta que lo conseguí hacer de manera satisfactoria.

<iframe width="560" height="315" src="https://www.youtube.com/embed/27gfCzkqUdo?si=N99c5W2taz5a6OTT" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Pasos del vídeo:

1. Abrir la tapa.
1. Sacar el tambor que haya terminado su vida útil.
1. Conectar dos cables a la derecha del tambor.
1. Conectar al multímetro en COM y V$\Omega$mA.
1. Girar la ruleta del multimetro en 200mA.
1. Cerrar la tapa.
1. Encender impresora.
1. Esperar a que el multimetro indique que hay intensidad.
1. Separar cables.
1. Esperar a que inicie la impresora. En mi caso me dio un error.
1. Apagar la impresora.
1. Conectar el tambor con el toner.
1. Encender la impresora.

> No le recomendaría haces esto a nadie. Si haces esto es bajo tu propia responsabilidad.
{:.prompt-warning}

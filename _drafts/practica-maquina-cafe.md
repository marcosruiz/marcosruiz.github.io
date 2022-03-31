---
title: "Práctica: TDD con BlueJ"
date: 2022-02-04 12:20:00 +0100
categories: [Bachillerato, Tecnologías de la Información y Comunicación II]
tags: [tic ii, práctica, programación, tests]
---

## Introducción y objetivo

El objetivo es construir el software para una máquina dispensadora de café haciendo pruebas.

## Descripción general de uso de la máquina de café

- Se podrá seleccionar el tamaño del vaso de café y cantidad de café.
    - Vaso pequeño: 8 gramos de café.
    - Vaso mediano: 15 gramos de café.
    - Vaso grande: 20 gramos de café.
- Se podrán seleccionar de 0 a 5 cucharaditas de azúcar. Cada cucharada son 2,5 gramos.
- Si todo ha ido bien se podrá el usuario deberá recoger el vaso.
- Si ha habido algún problema se le notificará al usuario.
    - Si la máquina no tiene el azúcar que se ha pedido.
    - Si la máquina no tiene el café que se ha pedido.
    - Si la máquina no tiene el vaso que se ha pedido.

## Clases

- PantallaMáquinaCafe.
- MaquinaDeCafe.
- DispensadorDeCafe.
- DispensadorDeAzucar.
- DispensadorDeVasos.

## Pruebas

- Prueba donde te sirves un café y no hay ningún problema.
- Prueba donde te sirves un café y no hay café suficiente.
- Prueba donde te sirves un café y no hay vasos pequeños.
- Prueba donde te sirves un café y no hay vasos medianos.
- Prueba donde te sirves un café y no hay vasos grandes.
- Prueba donde te sirves un café y no hay azúcar suficiente.

## Trabajo futuro

- Añadir agua.
- Añadir pago.
- Añadir las vueltas.

## Casos de uso

- Pedir café indicando tipo de vaso y cucharadas de azúcar.
- Rellenar café.
- Rellenar azúcar.
- Rellenar vasos pequeños, medianos o grandes.
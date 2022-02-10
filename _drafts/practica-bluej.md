---
title: "Práctica: BlueJ"
date: 2022-02-04 12:20:00 +0100
categories: [Bachillerato, Tecnologías de la Información y Comunicación II]
tags: [tic ii, práctica, programación, bluej]
---

{:.activity}
## Hola mundo

Crea un programa que escriba por pantalla "Hola mundo!".

{:.activity}
## Año bisiesto

Algoritmo que dado un año, nos diga si es bisiesto o no. Un año es bisiesto bajo las siguientes condiciones:

- Un año divisible por 4 es bisiesto y no debe ser divisible entre 100.
- Si un año es divisible entre 100 y además es divisible entre 400, también resulta bisiesto.

Nota: esta es la Actividad 23 de PSeInt.

{:.activity}
## Indios vs Vaqueros

Crea la clase Indio con atributos privados que indiquen lo siguiente:

- Edad
- Nombre
- Vidas. Por defecto un indio tiene 20 vidas.
- Arma. Por defecto, arco.

Y las siguientes acciones:

- Saludar.
- Recibir balazo. Recibir un balazo quita 2 vidas a un indio.
- Disparar flecha a un vaquero.

Crea la clase Vaquero con atributos privados que indiquen lo siguiente:

- Edad
- Nombre
- Vidas. Por defecto un indio tiene 15 vidas.
- Arma. Por defecto, bayoneta.

Y las siguientes acciones.

- Saludar.
- Recibir flechazo. Recibir un flechazo quita 1 vida a un vaquero.
- Disparar bala a un vaquero.

Crea un método principal en la que un vaquero se enfrente a dos indios hasta que un bando gane.
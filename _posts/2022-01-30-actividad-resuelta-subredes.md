---
title: Actividad resuelta de subredes
date: 2022-01-30 14:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, subnetting, subredes]
---

## Enunciado

Si tenemos una red de tipo C 194.168.100.0:

1. ¿Qué máscara que hay que aplicarle para dividirla en 16 subredes?
2. ¿Cuántos nodos podrán contener cada una de esas 16 subredes?
3. ¿Cuáles serían los nombres de las subredes?
4. ¿Cuál sería la dirección IP del nodo con identificador 4 de cada una de estas subredes?
5. ¿A qué subred pertenece el nodo cuya dirección IP es la 194.168.100.107?

## Solución

### 1. ¿Qué máscara que hay que aplicarle para dividirla en 16 subredes?

Sabemos que las redes tipo C utilizan los tres bytes más significativos para la dirección de red y el menor para el identificador del nodo. También sabemos que para dividir una red en subredes se toman los bits más significativos del identificador del nodo. Como queremos formar 16 subredes tendremos que tomar 4 bits del identificador del nodo, concertadamente los 4 bits más significativos.

![img-description](/assets/img/actividad-resuelta-subredes/1.png)
_Máscara de subred que divide una red clase C en 16 subredes_


### 2. ¿Cuántos nodos podrán contener cada una de esas 16 subredes?

Si miramos la máscara de red que hemos obtenido vemos que nos quedan 4 bits para identificar los nodos (los 4 bits que están a 0). Esos 4 bits nos permitirán formar 16 (2<sup>4</sup>) posibles identificadores de nodo, sin embargo, 4 a 0 o a 1 no se pueden utilizar para identificar los nodos, ya que son el identificador de la subred  y la dirección de broadcast respectivamente, por este motivo podemos afirmar que cada una de estas 16 subredes obtenidas podrían contener un máximo de 14 nodos cada una.

### 3. ¿Cuáles serían los nombres de las subredes?

Los nombres de las subredes se obtienen dando a los 4 bits que hemos tomado para formar el identificador de subred todos los posibles valores, dejando los bits de identificador de nodo a cero. Así, obtendríamos los nombres de subred mostrados en la siguiente Figura.

![img-description](/assets/img/actividad-resuelta-subredes/2.png)
_Nombre de todas las subredes_

### 4. ¿Cuál sería la dirección IP del nodo con identificador 4 de cada una de estas subredes?
Para obtener la dirección IP del nodo con identificador cuatro de cada una de estas subredes vamos a dar el valor 4  ( 0100 en binario ) a los 4 bits correspondientes al identificador de nodo en cada una de estas subredes. Las direcciones IP que nos piden serían las mostradas en la siguiente Figura. 

![img-description](/assets/img/actividad-resuelta-subredes/3.png)
_Dirección IP del nodo 4 en cada una de las subredes obtenidas_


### 5. ¿A qué subred pertenece el nodo cuya dirección IP es la 194.168.100.107?

Para saber a qué subred pertenece el nodo  IP 194.168.100.107 le aplicamos la máscara de red obtenida en el apartado A de esta actividad. Aplicar la máscara significa hacer la operación AND lógica entre la máscara y la IP del nodo, o lo que es lo mismo, quedarse con los bits de la dirección IP están a1 en la máscara.

![img-description](/assets/img/actividad-resuelta-subredes/4.png)
_Subred del nodo con direccción IP 194.168.100.107_

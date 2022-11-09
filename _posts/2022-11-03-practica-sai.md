---
title: "Práctica: SAI"
date: 2022-11-03 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, práctica]
img_path: /assets/img/practica-sai/
---

## Objetivo y duración

El objetivo de esta práctica es aprender a comprar SAI dependiendo de nuestras necesidades y presupuesto.

Duración: 3 horas.

## Entrega y presentación

La entrega de esta práctica debe ser un fichero PDF con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_P\<NúmeroDeLaPráctica\>.pdf". Por ejemplo, en mi caso el nombre del fichero PDF sería "RuizGarcía_Marcos_P04.pdf".

Asegúrate de que el documento PDF cumple con los siguientes parámetros:

1. Debe contener una portada con título, nombre de la asignatura, curso, autor y fecha de realización.
2. Debe tener un índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
3. Debe tener cada página numerada.
4. Las actividades deberán estar numeradas y ordenadas de manera que se ignore el "3.". Por ejemplo, la sección "3.1. Actividad" será "1. Actividad" o "Actividad 1" en la entrega del alumno.
5. Cada actividad debe tener **el enunciado en negrita** y la respuesta en texto normal.
6. Cada imagen debe tener un pie de foto la cual tenga el siguiente formato: "Figura \<número\>: \<BreveDescripciónDeLaFigura\>".
7. El documento no debe contener faltas ortográficas.
8. Los comandos y ficheros de configuración que hayas utilizado deben quedar reflejados en el PDF de la entrega en texto para permitirte copiar y pegar el día del examen todos los comandos de una manera rápida.
9. Los comandos y documentos de configuración que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$sudo apt install neofetch`.
10. Para las actividades a mano se deberá hacer una foto a la resolución del ejercicio y añadirla al PDF.

## Actividades

A continuación se listan las actividades que se deben realizar.

### Actividad 1

Supongamos que un sistema informático consume 5 amperios a 220 voltios.

Determina la potencia aparente, los voltiamperios informáticos (Vapc) y la potencia activa que debería tener el SAI que necesitaríamos adquirir suponiendo un factor de potencia de 0,7.

> Vapc (voltiamperios informáticos) = S * 1,6
{:.prompt-info}

### Actividad 2

Tenemos que comprar un SAI para un switch de 100W, un ordenador de sobremesa de 57 W y un monitor de 25 W. 

Calcular los VoltAmperios informáticios (Vapc) que necesita el SAI.

### Actividad 3

La empresa Scripting S.L. necesita comprar un sistema de alimentación ininterrumpida. El responsable de la  empresa nos indica que disponen de 2 PCs de escritorio con sus monitores, 2 portátiles HP, 1 impresora láser y 1 router inalámbrico (Contamos con la siguiente tabla). Determina los VApc que necesita el SAI a adquirir.

| DISPOSITIVO | CONSUMO | 
|---|---|
| PC escritorio | 75 W | 
| Portátil | 32 W | 
| Impresora láser | 180 W | 
| Router | 0,1 A | 
| Monitor | 30 W | 

### Actividad 4

¿A cuantos equipos de 250W cada uno podría dar servicio de forma adecuada un SAI de 6000VA?

Ten en cuenta que se ha seguido la recomendación de comprar un SAI que es un 30% más potente que la potencia necesitada (Potencia aparente).

### Actividad 5

Calcula los VA de un SAI que debe tener conectados a tomas de batería los siguientes equipos: 

- 3 torres de 180 w c/u[^cu]
- 2 monitores LED de 10 w c/u
- 1 router de 0,2 A
- 2 switches de 0,1 A
- 1 impresora de 200 VA

[^cu]: cada unidad.

Es necesario indicar que se recomienda dejar un margen de potencia sin usar en el SAI, por lo que se recomienda que el consumo de todos los equipos conectados no sobrepase el 70% de la capacidad total del SAI.

### Actividad 6

Un equipo informático domestico está compuesto por un ordenador de 200W de consumo, un monitor (50W), un router (10W) y una impresora de 10W. 

Queremos instalar un SAI que proteja toda esa instalación y vamos a una tienda donde nos enseñan un modelo de 300 VA por 78€ y otro de 500 VA por 118€. Ambos tienen un factor de potencia del 60%

¿Cuál deberíamos elegir?

¿Cuanto tiempo de autonomía nos ofrece el SAI elegido con la carga que necesitan nuestros dispositivos suponiendo que es el [siguiente](/assets/img/practica-sai/actividad6Sai.pdf)? En la pág. 9 puedes encontrar información de la batería. ¿Cuál es el factor de potencia de este SAI?

![Precio SAI](salicruSai.png)
_Precio SAI_

### Actividad 7

Encuentra un SAI, justificando tu respuesta, para un equipo que tiene una fuente de alimentación ATX de 450W (80 PLUS) y un monitor de 17”, que consume 75W, teniendo en cuenta que se quiere dimensionar para que el consumo de equipos alcance el 75% de la potencia suministrada por el SAI.

¿Cuanto tiempo de autonomía nos ofrece el SAI elegido con la carga que necesitan nuestros dispositivos?

### Actividad 8

Nos han asignado la tarea de decidir qué SAI se adapta mejor a nuestras necesidades, teniendo en cuenta que necesitamos ofrecer la posibilidad de conectar dispositivos que consuman 800 W en total. Los SAI que estamos estudiando son los siguientes:

![SAI 1, 2 y 3](actividad8.png)
_SAI 1, 2 y 3_

1. Indica el SAI que no se adapta nuestra necesidad de potencia máxima. Razona la respuesta.
2. Para una carga media de 400 W, necesito un tiempo de autonomía de como mínimo 8 minutos. ¿Qué SAI me da esas prestaciones? Razona la respuesta.
3. Para una carga media de 200 W, ¿qué tiempo de autonomía me da cada SAI?

### Actividad 9

Tenemos un SAI de 700VA, dos baterías, una tensión de batería de 9V y 5Ah. Suponemos además una eficiencia del 95%. ¿Cuánto tiempo?

### Actividad 10

¿Cuántos VA deberá tener como mínimo una SAI adecuada para dar servicio a 17
PCs (70W cada uno), 15 monitores (30W cada uno) y 2 routers (0,3A cada uno)?

### Actividad 11

Instala Lm-sensors y Psensors para comprobar la temperatura de tu máquina virtual Zorin OS Lite.

Puedes usar el artículo [Comprobar la temperatura de CPU en Linux](https://protegermipc.net/2021/02/08/comprobar-la-temperatura-de-cpu-en-ubuntu-linux/) y el artículo [Psensor, el interfaz gráfica para lm-sensors](https://ubunlog.com/psensor-interfaz-lm-sensors/#Configura_lm-sensors) como guía.

> 📷 Haz una captura de pantalla donde se demuestre la realización de esta actividad.
{:.prompt-info}
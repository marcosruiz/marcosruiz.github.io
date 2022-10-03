---
title: "Práctica: Modelos OSI y TCP/IP"
date: 2022-09-28 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, smr, práctica]
img_path: /assets/img/practica-modelos-red-osi-vs-tcp-ip/
---

## 1. Objetivo y duración

El objetivo de esta práctica es entender cómo funciona el modelo OSI y el modelo TCP/IP así como sus diferencias.

Duración: - horas.

## 2. Entrega y presentación

> ¡La presentación será igual siempre!
{:.prompt-warning}

La entrega de esta práctica debe ser un fichero PDF con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_P\<NúmeroDeLaPráctica\>.pdf". Por ejemplo, en mi caso el nombre del fichero PDF sería "RuizGarcía_Marcos_P03.pdf".

Asegúrate de que el documento PDF cumple con los siguientes parámetros:

1. Debe contener una portada con título, nombre de la asignatura, curso, autor y fecha de realización.
2. Debe tener un índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
3. Debe tener cada página numerada.
4. Las actividades deberán estar numeradas y ordenadas de manera que se ignore el "3.". Por ejemplo, la sección "3.1. Actividad" será "1. Actividad" o "Actividad 1" en la entrega del alumno.
5. Cada actividad debe tener **el enunciado en negrita** y la respuesta en texto normal.
6. Cada imagen debe tener un pie de foto la cual tenga el siguiente formato: "Figura \<número\>: \<BreveDescripciónDeLaFigura\>".
7. El documento no debe contener faltas ortográficas.
8. Los comandos y ficheros de configuración que hayas utilizado deben quedar reflejados en el PDF de la entrega en texto para permitirte copiar y pegar el día del examen todos los comandos de una manera rápida.
9. Los comandos y documentos de configuración que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$ sudo apt install neofetch`.
10. Para las actividades a mano se deberá hacer una foto a la resolución del ejercicio y añadirla al PDF. 

> ¡Hay una **plantilla** creada con el programa WPS Office que ya cumple con la mayoría de puntos! Deberéis descargar e instalar [WPS Office](https://www.wps.com/es-MX/download/) en vuestra máquina (deberíais poder sin necesidad de contraseña).
{:.prompt-info}

## 3. Actividades

A continuación se listan las actividades que se deben realizar.

### 3.1. Actividad

Ver el siguiente vídeo sobre el modelo OSI y responder a las siguientes preguntas:

<iframe width="560" height="315" src="https://www.youtube.com/embed/ODY4q4_3Acc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

1. Da tres ejemplos de dispositivos o protocolos de la capa de enlace de datos.
2. ¿El modelo TCP/IP es posterior al modelo OSI?
3. Los dos protocolos de la capa de \_\_\_\_\_\_ son TCP y UDP.
4. El protocolo 802.11 es un protocolo de la capa de \_\_\_\_\_\_.
5. Un router es un dispositivo de la capa de \_\_\_\_\_\_.
6. NetBIOS es un protocolo de la capa de \_\_\_\_\_\_.
7. Los puertos se definen en la capa de \_\_\_\_\_\_.
8.  El cifrado y descifrado de datos se realiza en la capa de \_\_\_\_\_\_.
9. HTTP y FTP son protocolo de la capa de \_\_\_\_\_\_.

### 3.2. Actividad

Ver el siguiente vídeo sobre el modelo OSI y responder a las siguientes preguntas:

<iframe width="560" height="315" src="https://www.youtube.com/embed/JQDCL17sARA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

1. ¿Cuál es la primera WAN de la historia?
2. ¿Se usa la arquitectura TCP/IP a día de hoy o está obsoleta?
3. ¿El protocolo IP nos garantiza que los mensajes lleguen en el mismo orden que los enviamos?

### 3.3. Actividad

Ver el siguiente vídeo sobre el modelo OSI y responder a las siguientes preguntas:

<iframe width="560" height="315" src="https://www.youtube.com/embed/iNh-62Mf0O4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

1. ¿Usamos el modelo de capas OSI a dia de hoy?
2. ¿Por qué existen las capas OSI?
3. ¿Cuántas capas OSI existen?
4. ¿Es el modelo OSI un sistema abierto o cerrado?
5. ¿Qué hace la capa 2 con la copa según Macjosan?
6. Escribe un ejemplo de la capa de aplicación que nombra Macjosan.
7. ¿Es TCP/IP un protocolo?
8. ¿En el modelo TCP/IP qué número tiene la capa de aplicación?

### 3.4. Actividad

Explica cómo se cumple el modelo cliente-servidor en el caso de que un usuario de Internet accede a un sitio web.

### 3.5. Actividad

Rellena la siguiente tabla retomando las características del las 3 capas primeras del modelo OSI:

| Capa | Bloques de información | Direccionamiento | Función principal |
|---|---|---|---|
| Física | No hay | | |
| Enlace | | | |
| Red | | | |

### 3.6. Actividad

¿Qué es una entidad par? Pon 3 ejemplos de entidades pares.

### 3.7. Actividad

Fíjate en la imagen. Enumera todas las cabeceras y colas que tienen los datos cuando se forma una trama.

![img-description](cabecerasOsi3.png)
_Cabeceras de las capas del modelo de referencia OSI_

### 3.8. Actividad

Si nos fijamos en la imagen siguiente, ¿Dónde tiene lugar la encapsulación (empaquetamiento)? ¿y la desencapsulación (desempaquetamiento)?

![img-description](envioYRecepcion.png)
_Envío y recepción de datos a través de las capas del modelo OSI_

### 3.9. Actividad

En el modelo referencia OSI:

1. Si la capa de transporte solicita un servicio ¿A qué capa se lo solicita?
2. ¿Qué es una cabecera de red?
3. ¿Qué capas tienen un campo de finalización o cola?
4. ¿Cómo se llama el PDU del nivel de enlace? ¿y el PDU del nivel de red?

### 3.10. Actividad

Señala la capa adecuada del modelo OSI que se encarga de las siguientes funciones:

1. Voltios de la señal
2. Encaminamiento de los paquetes
3. Tratamiento de errores en las tramas
4. Modulación de la señal
5. Compresión de datos
6. Eliminar tramas erróneas
7. Tratamiento de la congestión del tráfico de red
8. Establecimiento de sesiones 
9. Utilizar la codificación ASCII
10. Definir los protocolos que utilizarán los procesos de los usuarios

### 3.11. Actividad

Investiga y rellena la siguiente tabla de aplicaciones que hacen uso de los protocolos TCP/IP:

| Aplicación | Protocolos de aplicación | Protocolo de transporte |
|---|---|---|
| Internet Explorer |  |  |
| Servicio DNS |  |  |
| Mozilla Thunderbird |  |  |
| Servicio DHCP |  |  |
| Filezilla Server |  |  |
| Putty |  |  |

### 3.12. Actividad

Averigua cuál es el nombre del protocolo MAC en las redes LAN con IEEE 802.3 y en las redes LAN con IEEE 802.11.

### 3.13. Actividad

¿De qué se encarga el grupo IEEE 802.15?

### 3.14. Actividad

¿Qué es un CPD?

### 3.15. Actividad

Cada uno de los dispositivos de interconexión que hemos estudiado (repetidor, hub, switch y router) se corresponden con la operación de un nivel del modelo OSI. Nombra a qué nivel se corresponde cada uno de ellos y explica el por qué.

### 3.16. Actividad

¿Qué es TCP/IP?

1.  Un protocolo
1.  Dos protocolos
1.  Un conjunto de más de dos protocolos

### 3.17. Actividad

Indica los protocolos de cada nivel de la pila TCP/IP

### 3.18. Actividad

Identifica las semejanzas y diferencias entre el modelo OSI y la pila TCP/IP.

### 3.19. Actividad

Descubre cuál es la dirección IP de tu equipo y explica como la has averiguado.

### 3.20. Actividad

¿Cuál de las capas de la pila TCP/IP hace lo siguiente?

1. Toma los datos de la capa superior, los divide en paquetes y los envía al nivel de Internet.
1. Se comunica con los programa de usuario.
1. Envía información entre máquinas unidas por una comunicación extremo a extremo ya establecida.
1. Se encarga del direccionamiento de estaciones en Internet.
1. Sus protocolos dependen del tipo de red local en el que se está trabajando.

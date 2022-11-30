---
title: "Práctica: Capa de enlace"
date: 2022-10-23 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [redes locales, smr, práctica]
img_path: /assets/img/practica-capa-enlace/
---

## 1. Objetivo y duración

El objetivo de esta práctica es conocer el funcionamiento de la capa de enlace.

Duración: - horas.

## 2. Entrega y presentación

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
9. Los comandos y documentos de configuración que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$ sudo apt install neofetch`.
10. Para las actividades a mano se deberá hacer una foto a la resolución del ejercicio y añadirla al PDF. 

## 3. Evaluación


La realización de la práctica valdrá un 50% y el test sobre la misma el otro 50%.

## 4. Actividades

A continuación se listan las actividades que se deben realizar.

### 4.1. Actividad

¿Qué técnica de control de acceso al medio implementarías en las siguientes situaciones? Debes responder cuál es el protocolo que debemos seguir en caso de que todos queramos participar a la vez.

1. Un debate.
2. Gestionar la sala de estudio de una biblioteca.
3. Un examen oral a todos los alumnos de una clase.
4. Usar la impresora conectada a la red.

### 4.2. Actividad

¿Dónde se realiza el control de acceso al medio?

### 4.3. Actividad

¿Cómo se realiza el control de acceso al medio? Es decir, ¿cuáles son los protocolos que gestionan el control de acceso a un medio de comunicación como podría ser un cable en bus?

### 4.4. Actividad

En una topología en malla completa, el número de enlaces es elevado. Para 3 nodos hacen falta 3 enlaces, para 4 nodos hacen falta 6 enlaces, para 5 nodos hacen falta 10 enlaces. ¿Cuántos enlaces son necesarios si tenemos 8 nodos? ¿Cuál es la fórmula que nos resuelve esta  operación?

### 4.5. Actividad

¿Qué diferencias existen entre las normas IEE 802.3 y Ethernet-DIX?

### 4.6. Actividad

La trama Ethernet posee un campo para la detección de errores. Describe qué datos se protegen mediante este campo y explica donde y como se genera y se comprueba.

### 4.7. Actividad

¿De qué se encarga el grupo IEEE 802.15?

### 4.8. Actividad

¿Se puede falsificar una dirección MAC? ¿Cómo se llama esta falsificación en inglés? Investiga las posibles motivaciones para falsificar la dirección MAC.

### 4.9. Actividad

Identifica lo siguiente en el cable de pares de red de tu equipo:

1. Tipo de cable: UTP, FTP, STP.
1. Categoría del cable.
1. Norma de conexionado 568-A o 568-B.

> Esto debería estar en la práctica de la capa física
{:.prompt-warning}

### 4.10. Actividad

¿Qué hilos de los cables Ethernet se usan para la transmisión de datos y con que direccionalidad? En base a esto, ¿este tipo de comunicación es simplex, half-duplex o full-duplex?

> Esto debería estar en la práctica de la capa física
{:.prompt-warning}

### 4.11. Actividad

¿Cuáles son los dispositivos de la capa de enlace?

### 4.12. Actividad

Investiga sobre que subcapas y servicios suelen incorporar los protocolos del nivel de enlace de datos que gestionan la transmisión a través de un enlace inalámbrico en contraposición con uno de cableado de cobre de pares trenzados. Justifica tu respuesta.

### 4.13. Actividad

¿Qué información se puede extraer de la dirección MAC de un dispositivo?

### 4.14. Actividad

Averigua la dirección MAC de tu PC que usas para conectarte a Internet.

### 4.15. Actividad

¿Qué son las direcciones MAC localmente administradas? Instala una máquina virtual de Zorin OS Lite y cambia tu dirección MAC por una local dentro de la máquina virtual.

### 4.16. Actividad

Captura con tu PC una trama Ethernet con Wireshark y analiza e interpreta su cabecera. Si no lo tienes instalado en tu PC, descarga Wireshark de [aquí](https://www.wireshark.org/#download).

- Localiza la dirección MAC origen y destino
- Localiza el campo Length / Type e identifica si estamos usando el protocolo IEEE 802.3 o Ethernet-DIX II.
- ¿Por qué no vemos el preámbulo? ¿Y el campo FCS?

### 4.17. Actividad

¿Cuál es la dirección MAC de broadcast? ¿Qué propósito tiene?

### 4.18. Actividad

Instala Packet Tracer 6.2 y lee el artículo [Tutorial: Introducción a Packet Tracer](/posts/tutorial-introduccion-a-packet-tracer) para conocer la interfaz de usuario de este programa.

### 4.19. Actividad: Primera aplicación con Packet Tracer

Utilizando la herramienta de simulación PACKET TRACER, se desea implementar la siguiente estructura de red.

![imgDescription](paso0.png)
_Estructura de red_

#### 4.19.1. Paso 1

Ingresar a la herramienta Packet Tracer y seleccionar la referencia de Switch 2950-24 el cual se encuentra en el menú Switches, tal como se ilustra en la figura.

![imgDescription](paso1.png)

#### 4.19.2. Paso 2

En el menú End Devices, seleccionar la opción PC-PT y dibujar el primer PC, tal como se indica en la figura. 

![imgDescription](paso2-1.png)
_Seleccionando PC-PT_

Repetir el paso anterior dos veces, completando con ello los tres Pcs requeridos en el esquema.

![imgDescription](paso2-2.png)
_Seleccionando PC-PT dos veces más_

#### 4.19.3. Paso 3

En la opción Connections del menú de elementos, escoger la opción Copper Straight trhough, la cual corresponde a un cable de conexión directa requerido en éste caso para conectar un Pc a un Switch. 

Hecho esto, se debe seleccionar el primer PC, hacer click con el botón derecho del Mouse y escoger la opción Fastethernet, indicando con ello que se desea establecer una conexión a través de la tarjeta de red del equipo. 

![imgDescription](paso3.png)
_Estableciendo conexiones_

### 4.20. Paso 4

Después de seleccionar la opción Fastethernet en el primer Pc, arrastrar el Mouse hasta el Switch, hacer clic sobre él y seleccionar el puerto sobre el cual se desea conectar el Pc1, en nuestro caso corresponde al puerto Fastethernet 0/1.

![imgDescription](paso4-1.png)
_Estableciendo conexiones_

El resultado de lo anterior se refleja en la siguiente figura, lo cual se debe repetir con cada uno de los Pcs que hacen parte del diseño.

![imgDescription](paso4-2.png)
_Conexión establecida con un PC y un switch_

![imgDescription](paso4-3.png)
_Conexión establecida con tres PCs y un switch_

#### 4.20.1. Paso 5

Después de realizar cada una de las conexiones, se deben configurar cada una de las direcciones IP según los criterios de diseño. Para ello, se selecciona el primer PC y se hace doble clic sobre él. Apareciendo el formulario que se ilustra en la siguiente figura, el cual corresponde a la apariencia física de un computador.

![imgDescription](paso5-1.png)
_Pestaña física del dispositivo_

En la parte superior aparecen tres opciones, las cuales permiten realizar diversas funciones sobre el equipo en particular. La primera opción Physical, permite configurar parámetros físicos del PC, tales como la inclusión o exclusión de componentes hardware propios de red. La segunda opción Config, permite configurar parámetros globales tales como un direccionamiento estático o dinámico y la tercera opción Desktop, permite realizar operaciones de funcionamiento y configuración de la red tales como: Dirección IP, máscara de red, dirección de gateway, dirección DNS, ejecutar comandos como PING, TELNET, IPCONFIG, entre otras funciones más.

Como en éste paso se requiere la configuación de los parámetros lógicos de red tales como la dirección IP, máscara de red y dirección Gateway se escoge la opción 3 (Desktop), en donde posteriormente se selecciona la opción IP Configuration tal como se ilustra en la figura.

![imgDescription](paso5-2.png)
_Interfaz gráfica del PC_

Allí se definen la dirección IP del computador, la cual corresponde a la dirección 192.168.1.2; se toma como máscara de subred la máscara por defecto para una clase C la cual corresponde al valor 255.255.255.0 y finalmente se define la dirección de gateway o puerta de enlace, ésta dirección corresponde a la dirección sobre la cual los computadores de la red tratarán de acceder cuando requieran establecer comunicación con otras redes a través de un dispositivo capa 3 (Router), la cual por criterios de diseño corresponde a la primera dirección IP de la red: 192.168.1.1.

Adicionalmente, en éste caso se desea trabajar bajo el modelo de configuración IP estática y no bajo la alternativa del protocolo DHCP, el cual establece en forma automática la dirección IP a un host o computador de la red, acorde con la disponibilidad de direcciones IP existentes en la red a fin de optimizar su uso; ésta alternativa es muy utilizada en redes inalámbricas Wifi.

![imgDescription](paso5-3.png)
_Interfaz gráfica del PC0: Opción IP Configuration_

Este paso se repite para cada uno de los host o computadores que hacen parte del diseño, teniendo en cuenta que en cada uno de ellos, el único parámetro que varía será la dirección IP; la máscara de subred y la dirección de gateway permanecen constantes debido a que todos los equipos pertenecen a la misma subred. En las dos figuras siguientes se evidencia claramente esto.

![imgDescription](paso5-4.png)
_Interfaz gráfica del PC1: Opción IP Configuration_

![imgDescription](paso5-5.png)
_Interfaz gráfica del PC2: Opción IP Configuration_

#### 4.20.2. Paso 6

Si se desea verificar la configuración de un computador en particular, simplemente se selecciona el Host, se escoge la opción Desktop, seleccionamos la opción Command prompt, la cual visualiza un ambiente semejante al observado en el sistema operativo DOS. Allí escribimos `IPCONFIG` y pulsamos enter. 

![imgDescription](paso6-1.png)
_Interfaz gráfica del PC0: Command Prompt_

El resultado de ello se visualiza claramente en la siguiente figura, en donde se identifican los parámetros del host correspondientes a la dirección IP, la máscara de Subred y la dirección de Gateway.

![imgDescription](paso6-2.png)
_Comando `ipconfig` en Command Prompt_

Si el comando introducido es IPCONFIG /ALL, el resultado es el observado en la siguiente figura.

![imgDescription](paso6-3.png)
_Comando `ipconfig /all` en Command Prompt_

En donde se evidencia no solo los parámetros mencionados anteriormente, sino que además incluye la dirección física del equipo conocida como MAC y la dirección del servidor de dominio DNS.

#### 4.20.3. Paso 7

Para verificar que existe una comunicación entre los diferentes equipos que hacen parte de la red, simplemente se selecciona uno de ellos; en éste caso en particular se seleccionó el PC2 con el fin de establecer comunicación con el equipo que posee la dirección IP 192.168.1.2. 

![imgDescription](paso7-1.png)
_Comando `ping` en Command Prompt_

Para ello se ejecuta el comando PING acompañado de la dirección IP sobre la cual se desea establecer comunicación tal como se indica en la figura anterior.

El resultado de ello se observa en la siguiente figura, en donde se constata claramente que se enviaron 4 paquetes de información y 4 paquetes fueron recibidos a satisfacción.

![imgDescription](paso7-2.png)
_Comando `ping` finalizado en Command Prompt_

> 📷 Haz capturas con el sistema funcionando. Para ello se deberán ver que se envían varios mensajes con el código Successful.
{:.prompt-info}

## 5. Bibliografía

- [Uso del Packet Tracer y Aplicaciones
Resueltas](https://vochoa84.files.wordpress.com/2010/08/tutorial-uso-packet-tracer-y-aplicaciones-resueltas-corpocides.pdf)
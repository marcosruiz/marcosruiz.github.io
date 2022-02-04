---
title: "Práctica: Redireccionamiento estático con Packet Tracer"
date: 2022-02-04 12:20:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, práctica, enrutamiento estático]
---

## Objetivo

El objetivo de esta práctica es familiarizarse con el uso de Packet Tracer así como aprender el funcionamiento del enrutamiento estático.

Duración: - h

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica.

{:.activity}
### Dos redes y dos routers con enrutamiento estático

Utilizar dos router para conectar dos redes de clase C públicas entre sí a través de una red de clase A. En cada red debe haber al menos dos ordenadores que tengan las direcciones IP límite, un servidor y una impresora. El enrutamiento de los routers debe ser estático.

Pasos a realizar:

1. Insertamos los elementos que vamos a utilizar (ordenadores y switches).
2. Conectamos cada elemento con el switch.
3. Asignamos las direcciones a cada máquina dentro del mismo rango de red, incluida la de Gateway.
4. Verificamos las máquinas conectadas al mismo switch tienen conexión entre ellas (enviamos un mensaje de una máquina a otra).
5. Conectamos cada switch al router que tiene asignado y le damos su dirección en la red a la que lo hemos conectado.
6. Verificamos que las máquinas conectadas a los diferentes switches tienen puesto el GATEWAY con la dirección que tiene el router en cada red - normalmente x.x.x.1
7. Conectamos los dos routers entre si, formando una nueva red entre ellos. Les asignamos una IP a cada uno dentro de esa nueva red.
8. Para realizar el enrutamiento estático (pestaña Config -> Static) debemos indicar 3 direcciones:
    - Network: la red a la que queremos acceder desde este router
    - Mask: la máscara de red que tiene la red a la que queremos acceder desde el router
    - Next Hop: la IP por la que vamos a ir a esa red, es la IP que tiene asignada el otro router. Lo hacemos en ambos routers.
9. Verificamos que podemos comunicarnos de una red a otra

{:.activity}
### Tres redes y tres routers con enrutamiento estático

Utilizar tres router para conectar tres redes de clase C públicas entre sí **a través de tres redes** de clase C públicas. En cada red debe haber al menos dos ordenadores que tengan las direcciones IP límite, un servidor y una impresora. El enrutamiento de los routers debe ser estático.

Pasos a realizar:

1. Insertamos los elementos que vamos a utilizar (ordenadores y switches).
2. Conectamos cada elemento con el switch.
3. Asignamos las direcciones a cada máquina dentro del mismo rango de red, incluida la de Gateway.
4. Verificamos las máquinas conectadas al mismo switch tienen conexión entre ellas (enviamos un mensaje de una máquina a otra).
5. Conectamos cada switch al router que tiene asignado y le damos su dirección en la red a la que lo hemos conectado.
6. Verificamos que las máquinas conectadas a los diferentes switches tienen puesto el GATEWAY
 con la dirección que tiene el router en cada red - normalmente x.x.x.1
7. Conectamos los dos routers entre si, formando una nueva red entre ellos. Les asignamos una IP a cada uno dentro de esa nueva red.
8. Para realizar el enrutamiento estático (pestaña Config -> Static) debemos indicar 3 direcciones:
    - Network: la red a la que queremos acceder desde este router
    - Mask: la máscara de red que tiene la red a la que queremos acceder desde el router
    - Next Hop: la IP por la que vamos a ir a esa red, es la IP que tiene asignada el otro router. Lo hacemos en ambos routers.
9. Verificamos que podemos comunicarnos de una red a otra
 

## Entrega y presentación

La entrega de esta práctica debe ser un fichero ZIP con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.zip". Por ejemplo, en mi caso el nombre del fichero ZIP sería "RuizGarcía_Marcos_Práctica\<NúmeroDeLaPráctica\>.zip".

En la raíz del fichero ZIP deben encontrarse el documento PDF con el nombre "\<Apellidos\>_\<Nombre\>_Práctica\<NúmeroDeLaPráctica\>.pdf" y las actividades de Packet Tracer en formato PKT con el nombre "actividad_\<NúmeroDeActividad\>.pkt".

Asegúrate de que el documento PDF cumple con los siguientes parámetros:

1. Debe contener una portada con título, nombre de la asignatura, curso, autor y fecha de realización.
2. Debe tener un índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
3. Debe tener cada página numerada.
4. Cada actividad debe estar numerada. 
5. Cada actividad debe tener el enunciado en negrita y la respuesta en texto normal.
6. Cada imagen debe tener un pie de foto la cual tenga el siguiente formato: "Figura \<número\>: \<BreveDescripciónDeLaFigura\>".
7. El documento no debe contener faltas ortográficas.
8. Los comandos y ficheros de configuración que hayas utilizado deben quedar reflejados en el PDF de la entrega en texto para que permitirte copiar y pegar el día del examen todos los comandos de una manera rápida.
9. Los comandos y documentos de configuración que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$ sudo apt install neofetch`.
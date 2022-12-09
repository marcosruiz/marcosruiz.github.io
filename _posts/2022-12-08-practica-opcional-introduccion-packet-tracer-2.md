---
title: "Práctica opcional: Introducción a redes con Packet Tracer 2"
date: 2022-12-08 09:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [packet tracer, redes locales, smr, práctica]
img_path: /assets/img/practica-opcional-introduccion-packet-tracer-2/
---

## Objetivo

El objetivo de esta práctica opcional es que los alumnos que han entregado trabajos con retraso se les pueda quitar dichos retrasos. 

Duración: 6 h

## Entrega y presentación

La entrega de esta práctica debe ser un fichero ZIP con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_PO\<NúmeroDeLaPrácticaCon2Dígitos\>.zip". Por ejemplo, en mi caso el nombre del fichero ZIP sería "RuizGarcía_Marcos_PO01.zip".

En la raíz del fichero ZIP deben encontrarse el documento PDF con el nombre "\<Apellidos\>_\<Nombre\>_PO\<NúmeroDeLaPrácticaCon2Dígitos\>.pdf" y las actividades de Packet Tracer en formato PKT con el nombre "actividad_\<NúmeroDeActividadCon2Dígitos\>.pkt".

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

## Actividades

A continuación se listan las actividades que se deben realizar para esta práctica. En cada red con PCs, el primero de ellos deberá tener la primera dirección IP disponible (tras asignar las primeras direcciones IP al router) y el segundo deberá tener la última dirección IP disponible.

Las primeras 6 actividades son las mismas que en el artículo [Práctica: Introducción a redes con Packet Tracer](/posts/practica-introduccion-packet-tracer/) cambiando los tipos de las redes del siguiente modo:

- A ➡️ B
- B ➡️ C
- C ➡️ D

Además se ha añadido una actividad extra.

{:.activity}
### Una red y dos switches

Conectar dos switches con tres ordenadores cada uno. Todos los ordenadores deben estar en la misma red. Debe ser una red de clase A.

Pasos a realizar:

1. Insertamos los elementos que vamos a utilizar (6 ordenadores y 2 switches).
2. Conectamos cada elemento con el switch.
3. Asignamos las direcciones a cada máquina dentro del mismo rango de red.
4. Verificamos las máquinas conectadas al mismo switch tienen conexión entre ellas (enviamos un mensaje de una máquina a otra).
5. Conectamos los dos switches entre si.
6. Verificamos que las máquinas conectadas a los diferentes switches se comunican entre si.

{:.activity}
### Dos redes y dos switches

Conectar dos switches con tres ordenadores cada uno. Debe haber dos redes privadas de clase A. Tres ordenadores deben estar en una red y tres ordenadores en otra de la siguiente manera:

![img-description](dosRedesDosSwitches.png)
_Dos redes y dos switches: Distribución de redes_

Pasos a realizar:

1. Insertamos los elementos que vamos a utilizar (ordenadores y switches).
2. Conectamos cada elemento con el switch.
3. Asignamos las direcciones a cada máquina dentro del mismo rango de red.
4. Verificamos las máquinas conectadas al mismo switch tienen conexión entre ellas (enviamos un mensaje de una máquina a otra).
5. Conectamos los dos switches entre si.
6. Verificamos que las máquinas conectadas a los diferentes switches se comunican entre si y que las que no tienen la misma red no se comunican.

{:.activity}
### Tres redes y dos switches con cambio de máscara

Conectar dos switches con cuatro ordenadores cada uno. Debe haber dos redes públicas de clase A y una red pública de clase C. Deben estar distribuidos de la siguiente manera:

![img-description](tresRedesDosSwitches.png)
_Tres redes y dos switches: Distribución de redes. Nota: los switches pertenecen a las 3 redes aunque no estén rodeados_

Posteriormente cambiamos la máscara de la redes de clase A a 255.255.0.0. ¿Qué ocurre? ¿Por qué?

{:.activity}
### Dos redes y un router

Utilizar un router para conectar dos redes de clase A públicas entre sí a través de un router. En cada red debe haber al menos dos ordenadores que tengan las direcciones IP límite.

![img-description](dosRedesUnRouter.png)
_Dos redes y un router: Distribución de redes_

Pasos a realizar:

1. Insertamos los elementos que vamos a utilizar (ordenadores y switches).
2. Conectamos cada elemento con el switch.
3. Asignamos las direcciones a cada máquina dentro del mismo rango de red.
4. Verificamos las máquinas conectadas al mismo switch tienen conexión entre ellas (enviamos un mensaje de una máquina a otra).
5. Conectamos los dos switches al router y le damos cada puerto su dirección en la red a la que lo hemos conectado.
6. Verificamos que las máquinas conectadas a los diferentes switches tienen puesto el GATEWAY con la dirección que tiene el router en cada red - normalmente X.X.X.1
7. Verificamos que podemos comunicarnos de una red a otra.

{:.activity}
### Dos redes y dos routers con enrutamiento estático

Utilizar dos router para conectar dos redes de clase A públicas entre sí a través de una red pública de clase B. En cada red debe haber al menos dos ordenadores que tengan las direcciones IP límite, un servidor y una impresora. El enrutamiento de los routers debe ser estático.

![img-description](dosRedesDosRouter.png)
_Dos redes y dos router: Distribución de redes_

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
9. Verificamos que podemos comunicarnos de una red a otra.

{:.activity}
### Tres redes y tres routers con enrutamiento estático

Utilizar tres router para conectar tres redes de clase A públicas entre sí **a través de dos redes** de clase A públicas. En cada red debe haber al menos dos ordenadores que tengan las direcciones IP límite, un servidor y una impresora. El enrutamiento de los routers debe ser estático.

![img-description](tresRedestresRouters.png)
_Tres redes y tres routers: Distribución de redes_

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
9. Verificamos que podemos comunicarnos de una red a otra.


{:.activity}
### Tres redes y tres routers en triángulo con enrutamiento estático 2

Utilizar tres router para conectar tres redes de clase A públicas entre sí **a través de dos redes** de clase A públicas. En cada red debe haber al menos dos ordenadores que tengan las direcciones IP límite, un servidor y una impresora. El enrutamiento de los routers debe ser estático.

![img-description](tresRedestresRouters2.png)
_Tres redes y tres routers: Distribución de redes_

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
9. Verificamos que podemos comunicarnos de una red a otra.

---
title: Despliegue de cableado
date: 2022-02-10 22:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [gnu linux, redes locales, teoría]
---

{:.section}
## Despliegue de cableado

Cuando queremos realizar la instalación de una red local en un edificio se debe hacer considerando que por ocupar varias salas. Las mismas pueden estar en distintas plantas del edificio. La forma la cual hacemos el tendido del cableado viene recogido en varias normas internacionales, denominando a este problema como sistema de cableado estructurado (SCE).

La instalación de cables o repartidores se conoce como precableado. El diseño se iniciará en la roseta y se seguirá hacia la sala de comunicaciones. Este diseño se descompone en tres etapas: 

- Pre cableado horizontal
- Vertical
- Campus.

{:.subsection}
### Precableado horizontal

Partiendo del plano del edificio se representa los siguientes elementos: áreas de trabajo, situación de las canalizaciones que hacen llegar el cable de una zona u otro, situación de generadores de interferencias electromagnéticas por ejemplo generadores, fotocopiadoras etc.

En primer lugar se distribuyen las losetas de conexión en las zonas de trabajo debiendo ponerse al menos dos: una de voz y otra de datos, siendo la superficie útil 10 m².

En segundo lugar se ubicarán los distribuidores de planta, cumpliendo lo siguiente requisitos: 

- un distribuidor por cada mil m², 
- si la planta tiene poco espacio útil puede colocarse el distribuidor en el piso adyacente, 
- debe situarse lejos de las fuentes electromagnéticas y céntricos respecto al área que atienden,
- las ubicaciones deben estar cerradas y acondicionadas para albergar el equipo necesario.

En tercer lugar para que trazar la rutas entre los distribuidores y las tomas de red, siguiendo esta recomendaciones:

- Los cruces deben hacerse en ángulo recto, 
- Las paredes y los pisos deben atravesarse por sitios habilitados para ello,
- En la medida lo posible el tendido será a ras de suelo, para evitar interferencias electromagnéticas.

{:.subsection}
### Precableado vertical

El punto de partida que superó al edificio donde se presentan los siguientes elementos:

- Bajantes, canaletas y bandejas existentes que pueden usarse para hacer llegar los cables a su destino.
- Las fuentes de interferencias electromagnéticas.

En primer lugar situaremos el distribuidor del edificio y la sala principal de equipos, lejos de las fuentes interferencias, en lugar seguro y cerca de bajantes.

Posteriormente metimos las distancias a los distribuidores de la planta, comprobamos que se cumplen las limitaciones establecidas por la norma.

{:.subsection}
### Precableado de campus

De nuevo el punto de partida tiene que ser el plano distribución del campus (zona donde tenemos nuestras oficinas) donde ubicamos los edificios a comunicar así como los elementos que dificulten o ayuden a la distribución del tendido (carreteras, calles, cursos de agua, líneas de alta tensión, etc.).

En primer lugar situaremos el distribuidor en la sala principal de equipos del edificio mejor acondicionado o más céntrico.

A continuación se comprueban que nos encontramos en las distancias máximas.

{:.subsection}
### Recomendaciones generales

A la hora de realizar un diseño de un SCE tomamos las siguientes sugerencias:

- Diferenciar los elementos que pertenecen al equipamiento el edificio y que son permanentes de aquellos que se modifican a lo largo de la vida del edificio.
- El diseño debería enfocarse a los usuarios del edificio.
- Debe ponerse el cable siempre en formato de estrella.
- Hay que sobredimensionar sistema previendo el crecimiento de los equipos que debe soportar el SCE.
- Etiquetar los elementos que forman parte del SCE, es decir, rosetas de usuarios, un panel de parcheo, armarios, cableada vertical, etcétera.

{:.section}
## Acceso remoto

Al compartir recursos en una red, lo más básico en seguridad es protegerlo contra los accesos inadecuados. Para ello los usuarios deben identificarse de forma correcta asignando permisos sobre cada recurso.

{:.subsection}
### Cuentas de usuario y grupo

La cuenta de usuario es la forma habitual de personalizar el acceso a la red. Dos usuarios no deben compartir la misma cuenta.
Una cuenta de grupo es una colección de cuentas de usuario, al hacer que un usuario pertenezca a un grupo hacemos que se le asignen automáticamente las propiedades, derechos, características, permisos y privilegios de ese grupo.
Es una forma sencilla de configurar los permisos de red a un conjunto de usuarios.

{:.subsection}
### Derechos de acceso y permisos

Lee los siguientes puntos del artículo [Permisos en GNU Linux](/posts/permisos-gnu-linux/):

- Tipos de usuario
- Tipos de permisos sobre ficheros y directorios
- ¿Cómo ver los permisos de un fichero?
- Tipo de fichero y sus permisos

{:.section}
## Instalación de una red local cableada

Los principales pasos de la instalación de una red cableada serán los siguientes:

- Instalación del **hardware de red**: Lo que implica instalar los adaptadores de red bien PCI o bien USB, salvo que venga integrado la placa base del ordenador.
- Instalación del **hub** o del **switch** conectándolo a la corriente.
- Conectar el cable desde los adaptadores al dispositivo de interconexión.
- Instalación del **software de red**: Consistente en instalar los controladores, configuración de TCP/IP, dar nombre al equipo y el grupo de trabajo

## Bibliografía


---
title: Cumplimiento de las normas de prevención de riesgos laborales y protección medioambiental
date: 2022-05-09 10:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [gnu linux, comandos, terminal, bash, redes locales, teoría]
---

<details class="card mb-2">
  <summary class="card-header">Tabla de contenidos</summary>
  <div class="card-body" markdown="1">

- [1. Introducción](#1-introducción)
- [2. Legislación](#2-legislación)
  - [2.1. Ley de prevención de riesgos laborales (LPRL)](#21-ley-de-prevención-de-riesgos-laborales-lprl)
  - [2.2. Reglamento de servicios de prevención](#22-reglamento-de-servicios-de-prevención)
- [3. Identificación de riesgos](#3-identificación-de-riesgos)
  - [3.1. Riesgos derivados de las instalaciones eléctricas](#31-riesgos-derivados-de-las-instalaciones-eléctricas)
    - [3.1.1. Riesgo por contacto directo](#311-riesgo-por-contacto-directo)
    - [3.1.2. Riesgo por contacto indirecto](#312-riesgo-por-contacto-indirecto)
    - [3.1.3. Riesgo por quemadura](#313-riesgo-por-quemadura)
    - [3.1.4. Riesgo por fuego](#314-riesgo-por-fuego)
  - [3.2. Riesgos derivados de la exposición a ondas de radiofrecuencia](#32-riesgos-derivados-de-la-exposición-a-ondas-de-radiofrecuencia)
  - [3.3. Riesgos derivados de la utilización de equipos que incluyen pantallas de visualización](#33-riesgos-derivados-de-la-utilización-de-equipos-que-incluyen-pantallas-de-visualización)
- [4. Determinación de las medidas de prevención de riesgos laborales](#4-determinación-de-las-medidas-de-prevención-de-riesgos-laborales)
- [5. Prevención de riesgos laborales en los procesos de montaje de redes de ordenadores](#5-prevención-de-riesgos-laborales-en-los-procesos-de-montaje-de-redes-de-ordenadores)
  - [5.1. Prevención de los riesgos derivados de las instalaciones eléctricas](#51-prevención-de-los-riesgos-derivados-de-las-instalaciones-eléctricas)
    - [5.1.1. Prevención de riesgo por contacto directo.](#511-prevención-de-riesgo-por-contacto-directo)
    - [5.1.2. Prevención de riesgo por contacto indirecto](#512-prevención-de-riesgo-por-contacto-indirecto)
    - [5.1.3. Prevención de riesgo por fuego](#513-prevención-de-riesgo-por-fuego)
    - [5.1.4. Prevención de riesgo por deficiencia en la calidad del aire inhalado](#514-prevención-de-riesgo-por-deficiencia-en-la-calidad-del-aire-inhalado)
  - [5.2. Prevención de los riesgos derivados de la exposición a ondas de radiofrecuencia](#52-prevención-de-los-riesgos-derivados-de-la-exposición-a-ondas-de-radiofrecuencia)
  - [5.3. Prevención de los riesgos derivados de la utilización de pantallas de visualización](#53-prevención-de-los-riesgos-derivados-de-la-utilización-de-pantallas-de-visualización)
    - [5.3.1. Referidos al equipo de trabajo](#531-referidos-al-equipo-de-trabajo)
      - [5.3.1.1. Especificaciones para la pantalla.](#5311-especificaciones-para-la-pantalla)
      - [5.3.1.2. Especificaciones del teclado.](#5312-especificaciones-del-teclado)
      - [5.3.1.3. Especificaciones de la mesa de trabajo.](#5313-especificaciones-de-la-mesa-de-trabajo)
      - [5.3.1.4. Especificaciones del asiento de trabajo.](#5314-especificaciones-del-asiento-de-trabajo)
      - [5.3.1.5. Recomendaciones de ejercicios para evitar lesiones musculares o de la vista.](#5315-recomendaciones-de-ejercicios-para-evitar-lesiones-musculares-o-de-la-vista)
    - [5.3.2. Referidos al entorno de trabajo](#532-referidos-al-entorno-de-trabajo)
    - [5.3.3. Referidos a la interconexión ordenador/persona](#533-referidos-a-la-interconexión-ordenadorpersona)
- [6. Equipos de protección individual](#6-equipos-de-protección-individual)
- [7. Cumplimiento de la normativa de prevención](#7-cumplimiento-de-la-normativa-de-prevención)
  - [7.1. Organización de los recursos necesarios para el desarrollo de las actividades preventivas](#71-organización-de-los-recursos-necesarios-para-el-desarrollo-de-las-actividades-preventivas)
  - [7.2. Auditorías](#72-auditorías)
  - [7.3. Capacidades o aptitudes](#73-capacidades-o-aptitudes)
  - [7.4. Colaboración con Sistema Nacional de Salud](#74-colaboración-con-sistema-nacional-de-salud)
- [8. Cumplimiento de la normativa de protección medioambiental](#8-cumplimiento-de-la-normativa-de-protección-medioambiental)

&#8205; 

  </div>
</details>

## 1. Introducción

¿De qué vamos a hablar en este tema? En primer lugar vamos a conocer las distintas normas que existen en cuestión de prevención de riesgos laborales y también de protección medioambiental. Es por ello queremos echar un vistazo a la legislación española y también a legislación que viene de la Unión Europea, que son las normas jurídicas que nos indican qué debemos cumplir.

Una vez visto el marco, veremos cómo se aplica y en qué nos afecta como futuros trabajadores del ámbito de las telecomunicaciones.

## 2. Legislación

Existe una normalización en la prevención de riesgos laborales a distintos niveles tanto nacionales como internacionales.


### 2.1. Ley de prevención de riesgos laborales (LPRL)

Ya desde la Constitución Española en su artículo 40.2 se indica a los poderes públicos velar por la seguridad e higiene en el trabajo. Este mandato junto con la normativa europea hizo que se crease una Ley de Prevención de Riesgos Laborales, en el año 1995, con el objeto de garantizar la seguridad y la higiene en el trabajo frente a riesgos derivados de las condiciones del mismo. En el [BOE (Boletín Oficial del Estado)](https://www.boe.es/biblioteca_juridica/codigos/codigo.php?id=37&modo=2&nota=0&tab=2) podemos ver el cuerpo jurídico que nos atañe.

Así en el artículo 4º de la LPRL se realizan las siguientes definiciones que usaremos en esta unidad:

- **Prevención**: El conjunto de actividades destinadas a evitar o disminuir los riesgos al trabajo.
- **Riesgo laboral**: Que es la posibilidad de que un trabajador sufra un daño.
- **Daños derivados del trabajo**: Enfermedades, patologías y lesiones motivadas por el trabajo.
- **Riesgo laboral grave e inminente**: Aquel riesgo con posibilidad inmediata de realización con consecuencias graves para la salud.
- **Equipo de trabajo**: Cualquier dispositivo usado en el trabajo.
- **Condición de trabajo**: Características del trabajo que puedan ocasionar riesgos para la salud.

El artículo 8º nos habla del [Instituto Nacional de Seguridad e Higiene en el Trabajo (INSST)](https://www.insst.es/), que es el órgano científico técnico especializado de la administración General del estado para garantizar las condiciones de seguridad y salud.

En el artículo 16º habla de las obligaciones del empresario, entre las que deberíamos destacar:

- La realización de la evaluación inicial de riesgos para la seguridad y la salud de los trabajadores.
- Crear una relación de los trabajadores expuestos a riesgos especiales.
- La realización de la evaluación sobre los riesgos motivados por los equipos de trabajo.
- Realizar nuevas evaluaciones cuando cambien las condiciones de trabajo.
- Realizar controles periódicos de las condiciones de trabajo cuando sea necesario.
- Realizará actividades de prevención.
- Detectar las causas que han producido un riesgo o un daño en la salud de los trabajadores.
- Garantizar la vigilancia periódica del estado de salud de los trabajadores respetando el derecho a la intimidad y confidencialidad. Estas medidas serán realizadas por personal sanitario.

El artículo 23º especifica que todas esas tareas deben ser documentadas siguiendo las especificaciones dadas, cumpliendo los siguientes aspectos:

- El empresario debe elaborar y conservar la siguiente documentación:
    - Una evaluación de riesgos.
    - Medidas de protección y prevención adoptadas.
    - Resultados de los controles de seguridad.
    - Resultados de los controles de la salud de los trabajadores.
    - Informe de la relación de accidentes de trabajo y enfermedades profesionales que hayan motivado una incapacidad laboral superior a un día.
- El empresario debe remitir a la autoridad laboral dicha información y los daños para salud de los trabajadores que se hubiesen producido.
- Debe remitir también esta información a las autoridades sanitarias.


### 2.2. Reglamento de servicios de prevención

Este reglamento se aprobó en 1997 y constituye la [legislación laboral](https://www.boe.es/buscar/act.php?id=BOE-A-1997-1853). En el mismo se contemplan aspectos que hacen posible la prevención de los centros laborales desde la perspectiva de: ser una actividad integrada en el conjunto de actuaciones de la empresa y en todos los niveles jerárquicos de la misma. A partir de una planificación que incluya la técnica, la organización y las condiciones de trabajo.

Se aborda elaboración de los riesgos, esta evaluación es punto de partida de la planificación de la actividad preventiva que sea necesaria. Dicha planificación se hace a partir de una serie de modelos habitación definidos por esta ley. El escoger un modelo u otro se hace en función del tamaño de la empresa y de los riesgos o peligrosidad de las actividades desarrolladas en la misma.


## 3. Identificación de riesgos

Según la normativa se deben evitar los riesgos que entrañan daños en el trabajador. Pero si no es posible evitarlos éstos deben ser identificados y también los puestos de trabajo asociados a los mismos.

Un trabajador encargado de tareas relacionadas con la instalación de redes de ordenadores está expuesto a los siguientes riesgos laborales:

- Riesgos derivados de las instalaciones eléctricas.
- Riesgos derivados de la exposición a ondas de radiofrecuencia.
- Riesgos derivados de la utilización de equipos que incluyen pantallas de visualización.

Vamos a tratar cada uno de ellos de forma individualizada.


### 3.1. Riesgos derivados de las instalaciones eléctricas

Dada la gran cantidad dispositivos electrónicos que necesitan ser conectados a la red de suministro eléctrico es preciso conocer los riesgos que conlleva.

Los riesgos más probables son las descargas eléctricas producidas por contactos directos e indirectos. Los daños que puedan ocasionar estas descargas pueden ser:

- Paro respiratorio. 
- Fibrilación ventricular.
- Taquicardia.
- Infarto.
- Quemaduras.
- Contracción de los músculos

Además, el paso de corriente eléctrica por el cuerpo puede ocasionar los siguientes efectos secundarios: 

- Efectos funcionales: cicatrices, quemaduras y amputaciones.
- Efectos neurológicos.
- Secuencias oculares.
- Efectos secundarios del oído.
- Traumatismos indirectos.

Estos efectos dependen del valor de la intensidad y el tiempo exposición, también de la trayectoria seguida y de los órganos atravesados, pudiendo provocarse una parada cardiaca con consecuencias fatales.

Los principales riesgos existentes en las instalaciones eléctricas.


#### 3.1.1. Riesgo por contacto directo

Entendemos contacto directo cuando una persona toca directamente un conductor activo, bien usando las dos manos, bien usando manos y pie.


#### 3.1.2. Riesgo por contacto indirecto

Entendemos contacto indirecto cuando una persona a tocar la carcasa metálica de un equipo y el suelo. Normalmente los equipos tienen conectada la carcasa metálica a la referencia de tierra. Esto sucede en cuando la carcasa metálica se conecta accidentalmente a una línea de tensión en lugar de tierra. 


#### 3.1.3. Riesgo por quemadura

Un dispositivo alimentado por la red eléctrica de forma continuada experimenta un aumento en su temperatura. En algunas ocasiones la temperatura puede ser tan elevada que pueden producirse daños por quemaduras e incluso incendios.


#### 3.1.4. Riesgo por fuego

Además de calentamiento también existe el riesgo de fuego cuando se producen malos contactos o sobrecargas muy elevadas en la toma de corriente. Por ejemplo un cable mal estado, un contacto eléctrico, etc. 


### 3.2. Riesgos derivados de la exposición a ondas de radiofrecuencia

Este riesgo puede darse por dos causas diferentes:

Por un lado, a los dispositivos eléctricos poseen cables y pistas por los cuales circulan intensidades eléctricas. Estas pistas pueden constituir un sistema de radiación de ondas electromagnéticas, es decir, pueden comportarse como antenas.

Es un efecto no deseado y se conoce como interferencias electromagnéticas. Aunque por lo general no conllevan daños significativos sobre las personas sí que pueden afectar a dispositivos electrónicos como marcapasos, que afecten de forma indirecta a la salud de los trabajadores. 

Por otro lado las comunicaciones inalámbricas utilizan la propagación de ondas electromagnéticas en el medio aéreo como fundamento para las comunicaciones. Deben garantizar que la potencia de la señal emitida no daña las personas que se encuentran en las cercanías de estos dispositivos.

Los daños provienen del hecho de que los tejidos del cuerpo humano tiene la capacidad de absorber la potencia trasmitida con la onda electromagnética.

Así dependiendo de la energía y su frecuencia podemos calificar estas ondas en radiaciones ionizantes (de muy alta frecuencia suficiente energía como para romper los enlaces atómicos) y radiaciones no ionizantes (de menor frecuencia no tiene para romper enlaces atómicos que mantienen a las moléculas unidas a las células).


### 3.3. Riesgos derivados de la utilización de equipos que incluyen pantallas de visualización

El uso de pantallas de visualización así como teclados y ratones implica que las personas mantengan una determinada postura durante un tiempo largo. 

Estos aspectos se hayan contemplados por el [Real Decreto 488/1997](https://www.boe.es/buscar/pdf/1997/BOE-A-1997-8671-consolidado.pdf), que habla sobre las disposiciones mínimas de seguridad y salud relativas al trabajo con equipos que incluyen pantallas de visualización.

Así en el artículo 2 se define:

- Qué es una pantalla de visualización.
- Cómo es el puesto de trabajo.
- Quién es un trabajador de este tipo: una persona que habitualmente y durante una parte significativa de su tiempo usa un equipo con pantalla de visualización.


## 4. Determinación de las medidas de prevención de riesgos laborales

Una vez que hemos visto los posibles riesgos laborales, lo siguiente es decidir qué medidas vamos a tomar para prevenirlos. Dichas medidas dependerán de la evaluación que se haga del riesgo.

Para elaboración de riesgos se usa el método propuesto por William T. Fine, hay otro métodos pero usaremos éste, método de índices de Fine. 
Donde se define el factor de riesgo o grado de peligrosidad (Gp) como resultado del producto de las consecuencias (C), exposición (E) y la probabilidad de ocurrencia. (P). 

> Gp = C * E * P

Siendo:

- Consecuencias son el resultado más probable del accidente. 
- Exposición es la frecuencia con la que ocurren la situación de riesgo.
- Probabilidad esa posibilidad de que una secuencia del accidente se complete. 

Cada uno de los parámetros tiene una codificación. 

![img-description](/assets/img/prevencion-de-riesgos-laborales/consecuencias.png)
_Especificación de las consecuencias según el método de índices Fine_

![img-description](/assets/img/prevencion-de-riesgos-laborales/exposicion.png)
_Especificación de la exposición según el método de índices Fine_

![img-description](/assets/img/prevencion-de-riesgos-laborales/probabilidad.png)
_Especificación de la probabilidad según el método de índices Fine_

Dando como resultado:

![img-description](/assets/img/prevencion-de-riesgos-laborales/resultadoRiesgo.png)
_Cálculo del factor de riesgo según el método de índices de Fine_


## 5. Prevención de riesgos laborales en los procesos de montaje de redes de ordenadores

Veamos los métodos preventivos para cada riesgo específico del montaje de una red de ordenadores.


### 5.1. Prevención de los riesgos derivados de las instalaciones eléctricas


#### 5.1.1. Prevención de riesgo por contacto directo.

Para evitar los contactos directos se deben cumplir las 5 reglas de oro:

1. Desconexión de los aparatos. Corte efectivo de la electricidad.
2. Prevenir cualquier posible realimentación mediante el uso de bloqueos y señalizaciones.
3. Verificar que no hay tensión.
4. Poner a tierra y en cortocircuito todas las posibles fuentes de tensión.
Colocar las señales de seguridad adecuadas para delimitar la zona de trabajo.


#### 5.1.2. Prevención de riesgo por contacto indirecto

Para evitarlo es necesario medidas de protección mediante la conexión de las masas y las carcasas metálicas a tomas de tierra. 

En los cuadros eléctricos se usarán interruptores diferenciales para detectar este tipo de contactos y que aislarán el circuito eléctrico para evitar las descargas eléctricas a personas.


#### 5.1.3. Prevención de riesgo por fuego

Usaremos interruptores magneto térmicos y fusibles, dado que ambos soportan una intensidad máxima determinada. En caso de sobrepasarla se aísla la instalación.

Para evitar los incendios por el calentamiento de los equipos, se contempla la ventilación tanto de los equipos como de los lugares de trabajo. También la regulación sobre el material de los cables.


#### 5.1.4. Prevención de riesgo por deficiencia en la calidad del aire inhalado

La ventilación de los lugares de trabajo debe procurar que la introducción de aire fresco no contenga sustancias contaminantes en cantidades superiores a las permitidas por la norma vigente.

De igual manera la concentración de dióxido de carbono – el gas producido por la respiración de las personas – debe ser menor a 1000 partes por millón. 


### 5.2. Prevención de los riesgos derivados de la exposición a ondas de radiofrecuencia

Los riesgos pueden provenir de dos fuentes distintas: por un lado las interferencias electromagnéticas de aparatos eléctricos y electrónicos y por otro lado las comunicaciones inalámbricas.

Para los primeros hay una serie de normas que se deben cumplir según el [Real Decreto 444/94](https://www.boe.es/eli/es/rd/1994/03/11/444), donde se habla de los límites de emisiones y cómo deben emitir.

Para los segundos – las comunicaciones inalámbricas – existen diversos estándares y regulaciones de seguridad de exposición a radiaciones. Estos estándares limita la potencia de misión en los dispositivos transmisores. 



### 5.3. Prevención de los riesgos derivados de la utilización de pantallas de visualización

Dentro del anexo del Real Decreto 488/1997, que nos habla de las disposiciones mínimas de seguridad y salud relativas al trabajo con equipos que incluyen pantallas de visualización, se especifican las siguientes medidas: 


#### 5.3.1. Referidos al equipo de trabajo


##### 5.3.1.1. Especificaciones para la pantalla.

Caracteres de pantalla bien definidos, imagen estable, la posibilidad de ajustar la luminosidad y el contraste, pantalla orientable e inclinable a voluntad, el ángulo de línea de visión no superior a 40°.

![img-description](/assets/img/prevencion-de-riesgos-laborales/elementosMesaDeTrabajo.png)
_Elementos de la mesa de trabajo_

![img-description](/assets/img/prevencion-de-riesgos-laborales/anguloLineaVision.png)
_Ángulo de la línea de visión_

![img-description](/assets/img/prevencion-de-riesgos-laborales/anguloVision.png)
_Ángulo de visión_

##### 5.3.1.2. Especificaciones del teclado.

El teclado ha de ser inclinable e independiente de la pantalla, tiene que haber espacio suficiente para apoyar los brazos y las manos, la superficie del teclado será mate para evitar los reflejos, la disposición del teclado debe estar facilitando la utilización. 

##### 5.3.1.3. Especificaciones de la mesa de trabajo.

La mesa deberá ser poco reflectante, el soporte de los documentos será más estable y regulable. 

##### 5.3.1.4. Especificaciones del asiento de trabajo.

El asiento de trabajo debe ser estable, de altura regulable, respaldo reclinable y con el uso de reposapiés para quien lo precise. 

##### 5.3.1.5. Recomendaciones de ejercicios para evitar lesiones musculares o de la vista.

Ejercicios para relajar la vista:

![img-description](/assets/img/prevencion-de-riesgos-laborales/ejerciciosVista.png)

Para la espalda:

![img-description](/assets/img/prevencion-de-riesgos-laborales/ejerciciosEspalda.png)

Para las manos y la muñeca:

![img-description](/assets/img/prevencion-de-riesgos-laborales/posicionManosTunelCarpiano.png)
_Posición correcta de mano y muñeca para evitar el síndrome del túnel carpiano derivado de un mal uso del teclado o del ratón_

![img-description](/assets/img/prevencion-de-riesgos-laborales/ejerciciosMuneca.png)
_Ejercicios para ejercitar la muñeca_

![img-description](/assets/img/prevencion-de-riesgos-laborales/movimientosDedos.png)
_Movimientos de los dedos_


#### 5.3.2. Referidos al entorno de trabajo

- **Especificaciones sobre espacio de trabajo**. El puesto trabajo deberá tener una dimensión suficiente y estará condicionado de tal manera que haya el espacio suficiente para permitir los cambios de postura y movimientos de trabajo.
- **Especificaciones de la iluminación**. La iluminación general y la especial deberá garantizar unos niveles adecuados a iluminación y una relaciones adecuadas de luminosidad entre la pantalla es su entorno. Además el acontecimiento del lugar y del puesto de trabajo debe evitar deslumbramientos y reflejos molestos en la pantalla u otras partes del equipo.
- **Especificaciones relativas a reflejos y deslumbramientos**. Los puestos de trabajo deben instalarse de tal forma que las fuentes de luz no provoquen deslumbramientos directos ni produzcan reflejos molestos en la pantalla. De igual modo las ventanas deberán ir equipadas con un dispositivo de cobertura adecuada y regulable que atenúe la luz del día.
- **Especificaciones relativas al ruido**. El ruido producido por los equipos debe tenerse en cuenta a la hora de diseñar el puesto de trabajo de modo que no perturbe la atención ni la palabra.
- **Especificaciones relativas al calor**. Los equipos instalados no deberán producir calor adicional que ocasione molestias.
- **Especificaciones relativas a las emisiones**. Toda radiación que no sea de la parte visible el espectro electromagnético deberá reducirse a niveles insignificantes.
- **Especificaciones relativas a la humedad**. Deberán crearse mantenerse una humedad aceptable.


#### 5.3.3. Referidos a la interconexión ordenador/persona

A la hora de elegir un software con el que trabajar y que requieran pantallas de visualización, el empresario debía tener en cuenta los siguientes factores:

- Programa tiene que estar adaptado a la tarea que debe realizarse.
- El programa debe ser fácil de utilizar y con capacidad de adaptación al nivel de conocimientos y de experiencia del usuario.
- El sistema deberá mostrar información en un formato y a un ritmo adecuado para los operadores.
- Deberá aplicarse los principios de ergonomía.


## 6. Equipos de protección individual

A la hora de hablar de equipos de protección individual (EPI) hay que hablar del procedimiento a seguir. En primer lugar se debe seleccionar tanto al equipo como las herramientas necesarias que precisen la actividad a desarrollar.
En segundo lugar al ser selecciona el equipo de protección individual de acuerdo con los riesgos que la actividad conlleva.

Si se utiliza maquinaria o herramientas, el fabricante debe informar a los usuarios de los riesgos residuales debidos a la incompleta eficacia de las medidas de protección adoptadas, indicando si es pertinente el equipo de protección individual.

Así el EPI se convierte en la última barrera que proteja trabajador de los riesgos derivados de la actividad laboral desarrollada. Entendiendo como tal cualquier equipo destinado a ser llevado o sujetado por el trabajador para que le proteja de uno o varios riesgos que puedan amenazar su seguridad o su salud.

Dos factores influyen en la elección:

1. El lugar de trabajo.
2. El equipo de trabajo.

Los equipos se clasifican sea con tres categorías:

1. **Categoría 1**: Son los EPI destinados a proteger contra riesgos mínimos. Por ejemplo: guantes de jardinería, cascos ligeros, gafas de sol, etc.
2. **Categoría 2**: Aquellos destinados a proteger contra riesgos de grado medio o elevado, pero sin consecuencias mortales o irreversibles.
3. **Categoría 3**: Engloba a los equipos de protección encargados de proteger contra riesgos con consecuencias mortales ocurre reversibles, por ejemplo: Equipos de protección respiratoria que proteja contra aerosoles sólidos y líquidos, equipos de intervención en ambientes fríos, etc.


## 7. Cumplimiento de la normativa de prevención

En el Real Decreto 39/1997 se aprobó el Reglamento de los Servicios de Prevención, es mediante esta herramienta con la cual hacemos efectivo el cumplimiento de la Ley de Prevención de Riesgos Laborales. 

Esto se debe a que el reglamento indica que se deben cumplir los siguientes puntos:

**El plan de prevención de riesgos laborales**. Este documento escrito que describe la actividad preventiva la empresa debe incluir:

- La estructura organizativa.
- Las responsabilidades.
- Las funciones.
- Las prácticas.
- Los procedimientos.
- Los procesos.
- Los recursos necesarios para realizar la acción preventiva de riesgos en la empresa. 

Usando como instrumentos para la gestión y la planificación: 

 - La evaluación de riesgo inicial y sus actualizaciones.
 - La planificación de la actividad preventiva.



### 7.1. Organización de los recursos necesarios para el desarrollo de las actividades preventivas

El desarrollo de actividades preventivas será de obligado cumplimiento por parte del empresario ya bien porque asuma de forma personal la actividad preventiva o porque designe trabajadores para que desarrollen esta actividad, mediante un servicio de prevención propio o un servicio de prevención ajeno.


### 7.2. Auditorías

Estas evaluaciones externas son obligatorias y deben repetirse cada cinco años o cuando lo requiera la Autoridad Laboral, quedando excluidas aquellas empresas que tengan un servicio de prevención ajeno y empresas de 6 trabajadores que no están incluidas en el anexo 1 del Real Decreto. 


### 7.3. Capacidades o aptitudes

A la hora de realizar la evaluación de riesgos y desarrollar activa preventiva estas funciones se clasifican tres grupos: de nivel básico, de nivel intermedio, de nivel superior. Especificando las funciones de cada uno de estos grupos.


### 7.4. Colaboración con Sistema Nacional de Salud

Los servicios de prevención colaborarán con servicios de atención primaria de salud y de asistencia especializada así como con las administraciones sanitarias competentes en la actividad de salud laboral que se planifique.


## 8. Cumplimiento de la normativa de protección medioambiental

El Programa Medioambiental Europeo, aprobado en el año 2013, indicaba una serie de pautas para los estados miembros. Entre estas medidas podemos destacar:

- La integración de las políticas medioambientales en el resto de las políticas.
- Favorecer el trabajo conjunto entre empresas y consumidores para hacer una producción y un consumo más sostenible.
- Prestar una mayor atención al cambio climático, a la naturaleza y biodiversidad, el medio ambiente y la salud, la utilización sostenible de los recursos naturales y la gestión de los residuos.

En resumen, la creación de una política medioambiental de obligado cumplimiento en los estados. Promoviendo la creación de sistemas de gestión medioambiental dentro de una empresa. Para ello la empresa deberá superar las siguientes etapas:

- Realización de un análisis medioambiental.
- Llevar a cabo una auditoría medioambiental.
- Planificación e implantación.
- Documentar una declaración al respecto.
- Verificar los pasos realizados para presentar la información al organismo correspondiente. 

Englobándose todo esto en un proceso de mejora continua. ([Ver norma ISO 14000](https://es.wikipedia.org/wiki/ISO_14000)).

![img-description](/assets/img/prevencion-de-riesgos-laborales/modeloGestionAmbiental.png)
_Modelo de sistema de gestión ambiental_

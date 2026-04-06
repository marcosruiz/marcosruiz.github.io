---
title: "Análisis de impacto del negocio"
date: 2026-03-31 9:00:00 +0100
categories: [Seguridad Informática, Seguridad en equipos informáticos]
tags: [seguridad, informática, certificado, profesionalidad, mf0486_3, equipos, informáticos, ifct0109, inaem]
img_path: /assets/img/analisis-impacto-negocio/
---

## Introducción

El objetivo último de un SGSI asegurar la continuidad del negocio, minimizando los riesgos, y maximizando el retorno de la inversión en seguridad, a la vez que se permiten nuevas oportunidades para la empresa.

La continuidad del negocio está estrechamente relacionada con: la disponibilidad, la integridad y la confidencialidad.

Para asegurar la continuidad del negocio, hay que asegurar en todas sus dimensiones el sistema de información, empleando un criterio de evaluación de riesgos, con una etapa de análisis, y una etapa de gestión de riesgos.

También pueden concurrir circunstancias que obliguen a reducir el análisis a un conjunto mínimo de activos. En ese caso, ¿qué activos estudiar y cómo evaluar el impacto? El trabajo debe comenzar por lo más prioritario.

Para asegurar la continuidad del negocio, el punto de partida recomendado es un análisis de impacto del negocio (o BIA a partir de sus iniciales en inglés, Business Impact Analysis). En el BIA se estudian los procesos o funciones vitales del negocio, que dependan en cualquier medida de los sistemas de información. Una vez identificados, se determinará el coste que supone para el negocio una interrupción de esas funciones vitales.

{:.question}
¿Qué significan las siglas BIA en inglés?

{:.question}
¿Qué significan las siglas BIA en español?

<details class="card mb-2">
  <summary class="card-header question">¿Cuál es el objetivo de un BIA?</summary>
  <div class="card-body" markdown="1">

El objetivo del BIA es ordenar los procesos en función de su criticidad, valorar el daño de una interrupción, y ayudar a determinar si una estrategia de recuperación es adecuada. La valoración puede hacerse de manera cuantitativa, por ejemplo con las pérdidas económicas (€) generadas por la parada; o en términos cualitativos mediante niveles tipo bajo, medio o alto. El criterio debe mantenerse ,para que futuras revisiones del BIA sean coherentes.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Identificación de procesos de negocio soportados por sistemas de información

Para una función o proceso de la empresa, el activo esencial será la propia información, es decir, los datos. Pero los datos solo existen en dependencia con otros activos, como:

- los servicios (que se prestan gracias a los datos, o que son necesarios para producirlos), 
- las aplicaciones (que procesan los datos), 
- los equipos (que ejecutan las aplicaciones), 
- los soportes (que almacenan los datos), 
- las redes de comunicaciones (que transmiten los datos), 
- las instalaciones (que albergan los equipos), y 
- las personas (que operan los datos).

La evaluación de riesgos para los equipos informáticos que intervengan en esas funciones vitales, permitirá conocer el coste de recuperación del servicio.

Del BIA se obtienen resultados de muchísimo valor: 

- conocer cuáles son los activos informáticos que intervienen en los procesos críticos del negocio, 
- ser capaces de evaluar su impacto, y 
- conocer cuáles son los requisitos de seguridad para estos activos (tiempo objetivo de restablecimiento, qué salvaguardas planificadas que se deben aplicar, etc.).

<details class="card mb-2">
  <summary class="card-header question">Si en la empresa ya existe un análisis de riesgos, ¿debemos tenerlo en cuenta para realizar un BIA?</summary>
  <div class="card-body" markdown="1">

Si en la empresa ya existen análisis de riesgos, el BIA se realiza partiendo de esos datos.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué es el BIA?</summary>
  <div class="card-body" markdown="1">

El BIA es el estudio de las consecuencias que tendría en el negocio en una parada de sus procesos vitales por un determinado tiempo: 

- qué hay que recuperar, 
- cuánto cuesta hacerlo, y 
- cómo hay que recuperarlo.

Este en un enfoque muy adecuado para identificar riesgos, logrando aplicar recursos de manera proporcional, minimizando el riesgo, y con un óptimo retorno de la inversión.

El punto de partida del BIA es identificar los procesos de negocio y su criticidad. Una vez que se limite el estudio a las funciones vitales, se analizarán los activos involucrados, y de los que depende el desempeño de dichas funciones vitales. 

El BIA permite así descubrir componentes frecuentemente olvidados, pero importantes para las funciones o procesos críticos del negocio.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué es el BCP o Business Continuity Plan?</summary>
  <div class="card-body" markdown="1">

Un Business Continuity Plan (BCP) —o Plan de Continuidad del Negocio— es un documento estratégico que define cómo una empresa seguirá operando durante y después de una interrupción inesperada.

Estas interrupciones pueden ser de muchos tipos: ciberataques, fallos tecnológicos, desastres naturales, pandemias o incluso errores humanos.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


<details class="card mb-2">
  <summary class="card-header question">¿El BIA es una herramienta para elaborar el Business Continuity Plan?</summary>
  <div class="card-body" markdown="1">

Si.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


<details class="card mb-2">
  <summary class="card-header question">¿El BCP incluirá un plan para la recuperación de desastres (o DRP, por las iniciales de Disaster Recovery Plan)?</summary>
  <div class="card-body" markdown="1">

Si.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


<details class="card mb-2">
  <summary class="card-header question">En general, ¿qué 3 técnicas existen para enumerar los procesos de negocio soportados por sistemas de información, junto a su criticidad, y coste de interrupción?</summary>
  <div class="card-body" markdown="1">

- Formularios.
- Entrevistas a los usuarios avanzados o dueños de los procesos.
- Reuniones entre personal de TIC y los usuarios avanzados.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

### Antes de nada... RPO y RTO

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un RPO?</summary>
  <div class="card-body" markdown="1">

RPO es el objetivo de punto de recuperación, y representa el último instante de tiempo previo al incidente al que los sistemas son capaces de regresar. Vendrá dado. por ejemplo, por la frecuencia con que se realicen copias de seguridad.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


<details class="card mb-2">
  <summary class="card-header question">¿Qué es un RTO?</summary>
  <div class="card-body" markdown="1">

RTO es el objetivo de tiempo de recuperación, y representa el tiempo que se tarda en restablecer el servicio, al menos a los niveles mínimos acordados.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

![RPO y RTO](image-3.png)
_RPO y RTO_

Desde que se produce un incidente, hasta que se restablece el servicio, pasa un tiempo sin servicio (RTO). El servicio se recupera, pero con la información que se tenía un tiempo (RPO) previo a la ocurrencia del incidente. El periodo de tiempo total que retrocede la empresa es RPO+RTO.


### Formularios

Se puede distribuir un formulario a todos los trabajadores, o solo a los responsables de área, en los que respondan una serie de preguntas que ayuden a identificar las funciones clave para esa área.

IMPORTANTE: Es obligatorio considerar que, si se hubieran externalizado servicios de TI a proveedores, habría que considerar los contratos para dichos servicios, especialmente en lo referente a las obligaciones y compromisos adquiridos por el proveedor.

<details class="card mb-2">
  <summary class="card-header question">¿Existe un formulario único para un BIA (Business Impact Analysis)?</summary>
  <div class="card-body" markdown="1">

No. dependerá de cada empresa, o de lo exhaustivo que se quiera/pueda ser. Además, el método puede ser cualitativo o cuantitativo.

Peeeero, en todos los casos, la información recogida debe permitir evaluar los siguientes resultados del BIA:

- A. Cuáles son los procesos críticos, u ordenarlos por prioridad.
- B. Cuál es el daño/impacto, en función del tiempo que se tarde en restablecerse el servicio.
- C. Cuál es el coste de las diferentes estrategias de recuperación, que proporcionarán un tiempo y un punto objetivo de recuperación.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

A continuación, se dan ejemplos muy sencillos de formularios posibles:

![Formulario de ejemplo](image-1.png)
_Formulario de evaluación BIA 1_

El apartado A.2 permite evaluar la importancia que los usuarios entregan a la función dentro de la empresa. Sin embargo, la función podría no tener ninguna relación con los sistemas de información.

El apartado B.1 define el periodo de tiempo para el que el usuario está dispuesto a perder información, lo que será especialmente relevante a la hora de evaluar las posibles estrategias de recuperación. Esto indica el valor que la información, y por lo tanto de los sistemas de información que la procesan, representan en el proceso. Los procesos que tengan una valoración de ninguno para el periodo de tiempo total, son los que no tienen ninguna dependencia con los sistemas de información. En el otro extremo, cuanto mayor sea la valoración de la pérdida en cualquiera de los periodos, tanto mayor será la dependencia del proceso para con los sistemas de información.

![Formulario de ejemplo](image-2.png)
_Formulario de evaluación BIA 1_

El apartado B.2 ayuda a terminar de valorar la criticidad de la función, midiendo el daño que se le produce a la propia función a consecuencia de una interrupción, en función del tiempo que duren, y de 5 aspectos:

- El daño para cumplir la función principal. Por ejemplo, en un proceso de fabricación, pueden existir funciones que si se interrumpen más de un día, conlleven que no sea posible reiniciar la producción. Por ejemplo, en un sistema de alimentación ininterrumpido (SAI) basado en baterías de plomo cuya recarga controla un ordenador, si este no estuviera disponible durante más de 8 horas, el daño sería desastroso, ya que a las 8 horas las baterías se agotarían por completo y su capacidad se recarga quedaría extinguida. 
- El daño financiero para la función, en términos económicos. 
- El daño para otras funciones dependientes de esta. Esta valoración excede el ámbito de la propia área o departamento, ya que valora la dependencia general que de esta función tengan las demás funciones de la empresa. 
- El daño que causaría, para la reputación o imagen del área o departamento que desempeña la función, la interrupción de la misma. 
- El daño que generaría en la comodidad y nivel de satisfacción del área o departamento la interrupción de su función.- 

Para recoger las estrategias de recuperación se puede emplear un formulario similar al siguiente:

![Formulario de evaluación BIA](image-4.png)
_Formulario de evaluación BIA 2_

El análisis de estas tablas puede hacerse asignando valores cuantitativos a las respuestas cualitativas y calculando el nivel de criticidad con la formula que consideremos oportuna.

{:.question}
¿Cuál es el objetivo de un BIA?

> Actividad 01
{:.prompt-info}

> Actividad 02
{:.prompt-info}

### Entrevistas a usuarios clave

Una entrevista resulta adecuada cuando no haya certeza de que las preguntas previstas identifiquen todos los aspectos de valoración de la importancia de un proceso: las entrevistas dan cabida a recoger información bajo criterios desconocidos a priori.

Se debe disponer de un conjunto de preguntas preparadas, como las incluidas en el formulario anterior.

Como herramienta de toma de información, siempre conviene acotar las entrevistas para evitar tomar una excesiva cantidad de información o consumir recursos excesivos tanto al recabar datos como al analizarlos. Así conviene tener claro las personas a las que se les realiza la entrevista (usuarios clave), el alcance de la entrevista (limitándolo a un proceso de negocio concreto), e incluso la donación de la misma (por ejemplo limitándolo a una sesión de 30
minutos).

<details class="card mb-2">
  <summary class="card-header question">¿Es recomendable acotar una entrevista al máximo posible? ¿Por qué?</summary>
  <div class="card-body" markdown="1">

Si. Ya que puede consumir recursos excesivos fácilmente.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

> Actividad 03
{:.prompt-info}

### Reuniones entre personal de TIC y usuarios clave

Permite decidir el impacto de los diferentes procesos o funciones, y el tiempo de parada admisible en cada uno de ellos.

![alt text](image-5.png)

El coste de la parada, normalmente aumentará con el tiempo, de manera escalonada o gradual, como en la imagen. El coste de las medidas de recuperación se comporta al revés, de manera que las medidas que proporcionan una recuperación muy rápida, normalmente serán más caras que las que recuperan el proceso en más tiempo. Sumando ambos costes, se obtendrá una curva característica en “U”, cuyo mínimo indicará el coste mínimo del incidente, y el tiempo de recuperación del proceso (RTO).

#### Aplicación práctica

El proceso crítico de una empresa es la venta por internet. El BIA determina que el impacto de una parada es de 100 € a la hora. El personal de seguridad considera tres posibles estrategias para restablecer el servicio:

a. Con un plazo de puesta en marcha de 7 días, disponer un servidor nuevo en el que montar las copias de seguridad. El importe es de 2000 €. 

b. Con un plazo de 3 días, alquilar un servidor alojado por terceros para montar las copias de seguridad. El contrato mínimo es por un mes, con un importe de
1000 €. 

c. Con un plazo de 5 días, arreglar el servidor averiado. El importe de la reparación es de 100 €. Seleccionar la mejor opción.

#### SOLUCIÓN

Es necesario evaluar el coste de cada solución. 

- Coste solución A:
  - Coste parada = 24x7x100 = 16.800 €. 
  - Coste recuperación = 2.000 €. 
  - Coste total = 18.800 €. 
- Coste solución B:
  - Coste parada = 24x3x100 = 7.200 €. 
  - Coste recuperación = 1.000 €. 
  - Coste total = 8.200 €
- Coste solución C:
  - Coste parada = 24x5x100 = 12.000 €
  - Coste recuperación = 100 €. 
  - Coste total = 12.100 €. 

La solución de coste mínimo para restablecer el servicio es la solución B, que además es la que proporciona el menor RTO. 

Restablecido el servicio, la empresa dispone de un mes para restablecerlo por completo, entendiendo como tal volver a disponer de un servidor en propiedad:

- Dispone de 25 días para repararlo (coste solución total = 8.200 + 100 = 8.300 €). 
- Dispone de 23 días para comprar uno nuevo (coste solución total = 8.200 + 2.000 = 10.200 €).

## Valoración de los requerimientos CIA de los procesos de negocio

La seguridad se apoya en los tres principios de seguridad CIA.

### Procesos

Existen varias definiciones:

- Un conjunto de las fases sucesivas.
- Conjunto de actividades mutuamente relacionadas o que interactúan, las cuales transforman elementos de entrada en resultados.

{:.question}
¿Qué es un proceso?

Un proceso puede generar como resultado un producto, un servicio, un resultado o algo desconocido.

En el caso de un proceso de negocio representa al conjunto de trabajos que se realizan para generar un producto o servicio.

> Actividad 04
{:.prompt-info}

### Clasificación de la información

Desde la perspectiva de la seguridad la información se clasifica en:

- Confidencial
- Interna
- Pública

> Actividad 05
{:.prompt-info}

#### Confidencial

Su difusión sin control supone incumplimientos legales. Su difusión sin control supone incumplimientos de las normativas o reglamentos a los que la empresa se sujeta. Si se difunde sin control o se hace pública, genera un daño grave/desastroso para la empresa, financiera/económicamente o en su imagen.

Para su **gestión**, son recomendaciones básicas comúnmente aceptadas:

una persona solo tendrá acceso al mínimo conjunto de información que necesite para realizar su trabajo.

La difusión de la información requiere siempre de la autorización del propietario

La difusión a terceros exige siempre un acuerdo de confidencialidad firmado, previo al acceso.


<details class="card mb-2">
  <summary class="card-header question">¿Sabrías poner un ejemplo de información interna?</summary>
  <div class="card-body" markdown="1">

contratos con clientes, datos de carácter personal según la legislación nacional de protección de los individuos aplicable, información sobre nuevos productos o servicios, información contable, etc.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

#### Interna

Su difusión sin control no genera un daño grave para la empresa.

Si se difunde sin control o se hace pública, genera un daño bajo para la empresa, financiera/económicamente, o en su imagen.

Para su gestión, comúnmente se acepta:

Acceso libre para los empleados o personal interno de la empresa.

<details class="card mb-2">
  <summary class="card-header question">¿Sabrías poner un ejemplo de información interna?</summary>
  <div class="card-body" markdown="1">

circulares internas, políticas de diversos aspectos, material formativo, etc.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

#### Pública

La no disponibilidad no tiene ninguna consecuencia. Su difusión no genera ningún daño ni pérdida a la empresa, ni económicamente, ni en su imagen.

Para su gestión, comúnmente se acepta:

Esta información debe ser calificada expresamente para difusión pública, o por el área o responsable de comunicación de la empresa, o por el área de marketing, si se trata de información comercial.

<details class="card mb-2">
  <summary class="card-header question">¿Sabrías poner un ejemplo de información pública?</summary>
  <div class="card-body" markdown="1">

notas de prensa, presentaciones comerciales, catálogos de productos o servicios, publicidad comercial, etc.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Qué tipo de información es la de un correo electrónico intercambiado con un cliente?

{:.question}
¿Qué tipo de información es el código fuente de un programa?

### Valoración CIA de la información

A continuación, se exponen indicaciones habituales que ayudarán a determinar los requisitos de seguridad de la información en sus 3 dimensiones habituales. En líneas generales, el nivel viene dado por el daño que una degradación de una propiedad genera en la empresa.

#### Confidencialidad

Requerimientos de confidencialidad para la información:

| Nivel | Descripción |
|------|-------------|
| Alto | Información confidencial, muy sensible o privada, de máximo valor para la empresa, y autorizada a ser accesible solo a individuos concretos reconocidos. La difusión no autorizada tendría un impacto grave/desastroso, por ejemplo por las repercusiones legales, por la pérdida económica derivada, por la ventaja concedida a la competencia, o por la pérdida de imagen. |
| Medio | Información interna, propiedad de la empresa, que no debe tener difusión pública. Un incidente de seguridad tendría un impacto moderado. |
| Bajo | Información pública, no sensible, dispuesta para difusión pública. Una difusión no autorizada no debería tener ningún daño, o este sería muy bajo. |

<details class="card mb-2">
  <summary class="card-header question">¿Sabrías poner un ejemplo de información con nivel de confidencialidad alto?</summary>
  <div class="card-body" markdown="1">

la documentación de una estrategia de marketing, la información de un proceso de adquisición empresarial, o la información de precios ofrecidos a un cliente.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Sabrías poner un ejemplo de información con nivel de confidencialidad medio?</summary>
  <div class="card-body" markdown="1">

un directorio telefónico, o un organigrama de la empresa.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


<details class="card mb-2">
  <summary class="card-header question">¿Sabrías poner un ejemplo de información con nivel de confidencialidad baja?</summary>
  <div class="card-body" markdown="1">

notas de prensa, o la información publicada en la web de la empresa.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

#### Integridad

La integridad se refiere a la completitud y exactitud de la información. La integridad se pierde cuando se realizan cambios no autorizados. Los criterios para determinar los requisitos de integridad de la información, podrían ser como los siguientes:

| Nivel | Descripción |
|------|-------------|
| Alto | No puede existir ninguna degradación de la integridad. La degradación tiene un impacto grave/desastroso. |
| Medio | Una degradación de la información, bien en su completitud o en su precisión, o en ambos, tendría un impacto moderado. |
| Bajo | La completitud o precisión de la información puede degradarse con un impacto ninguno/bajo en el proceso. |

#### Disponibilidad

La disponibilidad se refiere a que la información esté disponible cuando se necesite. Los criterios para determinar los requisitos de disponibilidad de la información podrían ser como los siguientes. Los periodos indicados son meramente orientativos, y se espera que difieran de una empresa a otra:

| Nivel | Descripción |
|------|-------------|
| Alto | La información se necesita de manera continua, en condiciones de 24x7. La indisponibilidad tiene un impacto grave/desastroso. |
| Medio | La información puede no estar disponible por un periodo de uno o dos días. La indisponibilidad tiene un impacto moderado. |
| Bajo | La información puede no estar disponible por un periodo de hasta 7 días. La indisponibilidad tiene un impacto ninguno/bajo. |

> Actividad 06
{:.prompt-info}

### Valoración de los procesos a partir de sus componentes

Los requisitos de seguridad para los procesos pueden observarse entonces como una combinación de los requisitos de seguridad de las personas, de los sistemas, y de la información que intervenga.

A la hora de agregar los requisitos de los componentes, existen varias opciones. Por ejemplo, si la valoración es cuantitativa, pueden sumarse los niveles en cada dimensión; si la valoración es cualitativa, también pueden sumarse, estableciendo unas normas previas (dos niveles bajo equivalen a un nivel moderado, o dos niveles graves equivalen a un desastroso).

Una opción sencilla cuando se realizan valoraciones cualitativas, es emplear para el proceso el nivel máximo de sus componentes;

![alt text](image-6.png)

Cada elemento va añadiendo sus requisitos CIA según se asciende hasta el proceso final. Si las relaciones que se emplea son en sentido contrario (“necesita” en lugar de “permite”), se puede realizar el proceso inverso, y propagar los requisitos CIA del proceso hacia sus integrantes.

## Determinación de los sistemas de información que soportan los procesos de negocio y sus requerimientos de seguridad

En el apartado anterior se dieron las pautas para determinar los requerimientos de seguridad de la información. Los otros elementos que pueden intervenir en un proceso son:

- Las personas
- Los sistemas.

### Personas

La información es manejada por personas, y resulta importante tener identificadas a dichas personas, que serán empleados de la empresa, o externos (proveedores, clientes, visitas, y otros).

La valoración para cada persona que intervenga en el proceso se evalúa en las tres dimensiones de la seguridad CIA.

#### Confidencialidad

| Nivel | Descripción |
|------|-------------|
| Alto | Cuando las personas acceden a información calificada como confidencial o crítica para la empresa. Un incidente de seguridad causado por una persona con un requisito de confidencialidad alto tendría un impacto grave/desastroso en el proceso. |
| Medio | Cuando las personas acceden a información calificada como interna. Un incidente de seguridad tendría un impacto moderado en el proceso. |
| Bajo | Cuando las personas acceden a información calificada como pública. Un incidente de seguridad tendría una repercusión ninguna/bajo en el proceso. |

#### Integridad

| Nivel | Descripción |
|------|-------------|
| Alto | Cuando las personas modifican información calificada como confidencial o crítica para la empresa. Un incidente de seguridad causado por una persona tendría un impacto grave/desastroso en el proceso. |
| Medio | Cuando las personas pueden modificar completamente información calificada como interna e información calificada como pública. Un incidente de seguridad tendría un impacto moderado en el proceso. |
| Bajo | Cuando las personas tienen restricciones para modificar la información calificada como interna e información calificada como pública. Un incidente de seguridad tendría una repercusión ninguna/bajo en el proceso. |

#### Disponibilidad

| Nivel | Descripción |
|------|-------------|
| Alto | Cuando la no disponibilidad de la persona tendría un impacto grave/desastroso en el proceso. |
| Medio | Cuando la no disponibilidad de la persona tendría un impacto moderado en el proceso. |
| Bajo | Cuando la no disponibilidad de la persona tendría un impacto ninguno/bajo en el proceso. |

### Sistemas

En esta categoría se deben clasificar los componentes que intervienen en el proceso, al margen de las personas y de la información.

Se clasifican aquí los requisitos 

- Para los equipos físicos (hardware, incluyendo ordenadores, equipos de comunicaciones y soportes de almacenamiento (CD, discos duros extraíbles, etc.),
- Para las aplicaciones o programas (software, incluyendo sistemas operativos y aplicaciones), 
- Para los servicios de soporte necesarios, como el suministro eléctrico, la climatización, o el alojamiento.

<details class="card mb-2">
  <summary class="card-header question">¿Qué tan importantes son los soportes de almacenamiento?</summary>
  <div class="card-body" markdown="1">

Los soportes de almacenamiento son una pieza esencial de un sistema de información, y en concreto, del sistema de copias de seguridad. Si la información tiene un nivel alto de confidencialidad, tan importante es conservarlos libres de accesos no permitidos, como destruirlos de manera irrecuperable al finalizar su periodo de vigencia, porque las copias no pueden almacenarse indefinidamente. Si la información tiene un nivel de integridad alto, las copias deben protegerse de modificaciones, ya que en caso de restaurarlas se introducirá información alterada; para ello puede servir conservar el hash de la información guardada, que se empleará como elemento de verificación de la copia antes de restaurarla.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

> Actividad 07
{:.prompt-info}

#### Confidencialidad

| Nivel | Descripción |
|------|-------------|
| Alto | Cuando la información procesada, almacenada, o el servicio prestado, tiene un nivel de confidencialidad alta. |
| Medio | Cuando la información procesada, almacenada, o el servicio prestado, es de confidencialidad media. |
| Bajo | Cuando la información procesada, almacenada, o el servicio prestado, es de confidencialidad baja. |

#### Integridad

| Nivel | Descripción |
|------|-------------|
| Alto | La información procesada o almacenada tiene un nivel de disponibilidad alto. Cuando la no disponibilidad de los sistemas tendría un impacto grave/desastroso en el proceso. |
| Medio | La información procesada o almacenada tiene un nivel de disponibilidad medio. Cuando la no disponibilidad de los sistemas tendría un impacto moderado en el proceso. |
| Bajo | La información procesada o almacenada tiene un nivel de disponibilidad bajo. Cuando la no disponibilidad de los sistemas tendría un impacto ninguno/bajo en el proceso. |

#### Disponibilidad

| Nivel | Descripción |
|------|-------------|
| Alto | La información procesada o almacenada tiene un nivel de disponibilidad alto. Cuando la no disponibilidad de los sistemas tendría un impacto grave/desastroso en el proceso. |
| Medio | La información procesada o almacenada tiene un nivel de disponibilidad medio. Cuando la no disponibilidad de los sistemas tendría un impacto moderado en el proceso. |
| Bajo | La información procesada o almacenada tiene un nivel de disponibilidad bajo. Cuando la no disponibilidad de los sistemas tendría un impacto ninguno/bajo en el proceso. |

> Actividad 08
{:.prompt-info}

### Herramientas de ayuda para determinar los componentes

Para determinar los sistemas de información que intervienen en un proceso, puede servir de ayuda partir de una narrativa.

Cuando el proceso es complejo, conviene dividirlo en fases. Puede ayudar preguntarse si se encuentran respondidos siete aspectos fundamentales: ¿qué, quién, cuándo, cómo, dónde, por qué, y para qué?

Partiendo de la narrativa, se enumeran los elementos que intervengan en cada categoría: personas, sistemas, e información de entrada.

Posteriormente, cada uno de estos elementos se relaciona con los demás mediante una acción que puede resumirse en un verbo (genera, autoriza, procesa, transmite, etc.).

De esta manera, se puede ordenar de manera jerárquica la dependencia de los componentes con una estructura de árbol invertido.

{:.question}
¿Se te ocurre algún sitio donde se empleen los árboles invertidos para mostrar dependencia?

#### Aplicación práctica

El proceso crítico de una empresa es la venta por internet. Resumidamente, un comprador accede desde internet a la web de venta online, alojada en un servidor ubicado en la sede de la empresa. El servidor se comunica a través de un firewall con una base de datos interna, que solo sabe administrar una persona del departamento de informática. La venta tiene interrupciones breves, como sucede durante los trabajos de mantenimiento en la base de datos, que se advierten en la página web. Los elementos del servicio y sus valoraciones CIA (bajo = 1, medio = 2, alto = 3) son:

Información 

Base de datos (M, A, M): la información es interna, por lo que la confidencialidad es media. La integridad es alta, porque no puede haber errores en las ventas. La disponibilidad es media, porque se admiten interrupciones. 

Sistemas 

Servidor web (M, A, A): la información que recibe es interna, siendo su confidencialidad media. Su integridad es alta, porque se deposita mucha confianza en este equipo. La disponibilidad es alta, porque la web debe estar disponible para advertir que no hay venta. 

Firewall (M, A, M): la información que procesa tiene un nivel de confidencialidad medio, el servicio que presta tiene un nivel de confianza alto, y se admiten interrupciones, al igual que la información que protege. 

Personas 

Administrador de base de datos (M, M, A): la información que maneja es interna, de manera que confidencialidad e integridad serán medias. La disponibilidad es elevada, porque sin base de datos y sin su mantenimiento no hay negocio. Determinar los requisitos CIA del proceso, a partir de sus componentes:

#### Solución

El siguiente diagrama representa el proceso de venta, e incluye la valoración para cada componente, y el resultado agregado para el proceso (8, 11, 10), de manera que la integridad es el principal requisito.

![alt text](image-7.png)

## Bibliografía

- MF0486_3: Seguridad en equipos informáticos por José Francisco Giménez Albacete
- 

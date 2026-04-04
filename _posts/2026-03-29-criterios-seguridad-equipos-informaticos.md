---
title: "Criterios generales sobre seguridad de los equipos informáticos"
date: 2025-04-02 9:00:00 +0100
categories: [General]
tags: [seguridad]
img_path: /assets/img/criterios-seguridad-equipos-informaticos/
---

{:.section}
## ¿Qué es la seguridad de la información?

Para la norma ISO 17799 e ISO 27001, la preservación de confidencialidad, integridad y disponibilidad de la información.

{:.question}
¿Qué es la confidencialidad? ¿Qué es la integridad? ¿Qué es la disponibilidad? 

Para el Ministerio de Administraciones Públicas, es la capacidad de las redes o de los sistemas de información, de resistir, con un determinado nivel de confianza, los accidentes o acciones ilícitas o malintencionadas que comprometan la disponibilidad, autenticidad, integridad y confidencialidad de los datos almacenados o transmitidos, y de los servicios que dichas redes y sistemas ofrecen o hacen accesibles.

{:.question}
¿Qué es la autenticidad?

{:.subsection}
### Amenazas, vulnerabilidades e incidentes de seguridad

<iframe width="560" height="315" src="https://www.youtube.com/embed/5PvTdbUVFXU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Las amenazas son las posibles acciones que dañarían los equipos informáticos. Por ejemplo, un incendio, un robo, o un usuario que borre el contenido de la información que se guarda.

Las amenazas no se pueden eliminar, porque existen de manera intrínseca al contexto y entorno en que existen los equipos informáticos. Por lo tanto, existe la obligación de analizarlas para poder reducir el daño que supondrían en los equipos informáticos.

Las vulnerabilidades son las debilidades de los equipos ante las amenazas. 

La vulnerabilidad, por lo tanto, permite o facilita que una amenaza dañe el equipo; mientras que la amenaza es cualquier hecho que, intencionadamente o no, aprovecha una vulnerabilidad para dañar un equipo.

Por último, cuando una amenaza o un conjunto de ellas sucede, y aprovecha una vulnerabilidad, se dice que ha ocurrido un incidente de seguridad, cuyo efecto es un daño o impacto al equipo informático.

Normalmente, las amenazas serán genéricas, y no se podrán eliminar por completo, mientras que las vulnerabilidades serán particulares de cada equipo, y sí permiten intervenir en ellas. Frente a los incidentes de seguridad, se deben disponer contramedidas o salvaguardas que fortalezcan el sistema. Las contramedidas persiguen conocer, prevenir, impedir, reducir y controlar el daño que podría tener un equipo.

{:.subsection}
### Principios de seguridad

no existe la seguridad total

La seguridad se apoya en tres aspectos o “principios de seguridad” esenciales:

La confidencialidad, es decir, que la información solo esté accesible para quien esté autorizado a ello. La integridad, es decir, que la información sea exacta y completa, de manera que solo pueda modificarla quien esté autorizado a ello. La disponibilidad, es decir, que la información esté accesible cuando sea necesario.

Es habitual referirse a ellos como la “Triada de la Seguridad” o “CIA” (empleando las iniciales de los términos en inglés confidentiality o confidencialidad, integrity o integridad, y availability o disponibilidad).

Por ejemplo, si la amenaza de un virus informático capaz de capturar el tráfico de red y reenviarlo, aprovecha la vulnerabilidad del sistema de correo electrónico de enviar las contraseñas sin cifrar, el atacante obtendría la contraseña del correo, y podría leerlo, viéndose comprometida la confidencialidad del correo electrónico.

Por ejemplo, si la amenaza del extravío de una tarjeta magnética de identificación, aprovecha la vulnerabilidad de que el sistema de autenticación de usuarios solo necesite de dicha tarjeta, quien la encuentre podría modificar la información de una base de datos, como si fuera el usuario autorizado, viéndose comprometida la integridad de la información.

Por ejemplo, si la amenaza de un corte de suministro eléctrico aprovecha la vulnerabilidad de que el equipo informático no dispone de un sistema de alimentación ininterrumpida, el equipo no se podría encender, viéndose comprometida la disponibilidad de la información cuando se necesite.

{:.subsection}
### Riesgo

El riesgo es una medida del daño probable que causará una amenaza, que aprovecha una vulnerabilidad para causar un daño. Es mayor cuanto más frecuente sea la aparición de la amenaza, y cuanto mayor sea el daño del incidente que acarree. Una aproximación cuantitativa sencilla es emplear la siguiente fórmula:

$$Riesgo = (probabilidad de ocurrencia de una amenaza) x (impacto o daño)$$

Se puede reducir el riesgo, añadiendo las contramedidas que reduzcan las vulnerabilidades a las posibles amenazas. Cuantas más contramedidas se dispongan, es decir, cuantos más recursos se dediquen a la seguridad de los equipos informáticos, menor es el daño probable, o lo que es lo mismo, menor es el riesgo para el sistema de información.

Existirá un balance entre el riesgo de un incidente de seguridad y los recursos que se dediquen a reducir su daño probable.

un Modelo de Seguridad orientado a la gestión del riesgo, emplea el cálculo del riesgo, y unos criterios empresariales (normativa, legislación, etc.), para poder decidir si es viable reducir el riesgo que se asume, o no.

Para estudiar el riesgo, existen dos pasos claramente diferenciados:

El análisis de riesgos, que consiste en identificar amenazas, determinar las vulnerabilidades, y medir el impacto o daño que causaría un incidente. Se pueden emplear métodos cuantitativos (como en la aplicación práctica anterior), o cualitativos (valorando el riesgo en muy alto, alto, bajo, medio, etc.), para ordenar los riesgos.

La gestión de riesgos, que partiendo de los resultados del análisis de riesgos, y una vez determinados los criterios para aceptar un riesgo (legales, económicos, etc.), permite elegir las contramedidas de seguridad que se implantarán.

El análisis y gestión de riesgos aporta un valor extraordinario a la gestión de seguridad, reduciendo la probabilidad de fracaso de una empresa, y protegiéndola, al ser una herramienta que facilita que la actividad futura se realice de manera efectiva y controlada.

{:.subsubsection}
#### Aplicación práctica

Se parte de una empresa que provee alojamiento de páginas web, con un sistema de información valorado en 250.000 €. Un análisis de riesgos revela que hay dos amenazas:

1. Un fallo del suministro eléctrico, caracterizado por:
  - Impacto o daño = 10.000 €
  - Probabilidad de ocurrencia de la amenaza= 0.
2. Un ataque dirigido desde internet, caracterizado por:
  - Impacto o daño =500.000 €
  - Probabilidad de ocurrencia de la amenaza= 0.005

El modelo de seguridad de la empresa tiene el criterio de “optimizar la inversión concentrando los recursos en eliminar la mayor amenaza, y asumir el riesgo de las amenazas menores”. Se pide que:

a. Se cuantifique el riesgo de cada amenaza. 

b. Se calcule el presupuesto en seguridad que resultaría justificado invertir. 

c. Se calcule el riesgo que asume la empresa tras la inversión.

{:.subsubsection}
#### Solución

a. CÁLCULO DE RIESGOS:

Amenaza 1: riesgo = 10.000 x 0. 1 = 1.000 €. 

Amenaza 2: riesgo = 500.000 x 0.005 = 2.500 €. 

La amenaza 2, pese a ser veinte veces menos probable que la amenaza 1, es la de mayor riesgo a causa de su elevado impacto. 

b. PRESUPUESTO EN SEGURIDAD:

El modelo de seguridad indica que, por criterio de la empresa, debe eliminarse la mayor amenaza, que es la que tiene un riesgo de 2.500 €. El presupuesto que se puede dedicar a combatir la amenaza es de 2.500 €.

c. RIESGO TRAS LA INVERSIÓN:

El modelo de seguridad indica que, por criterio de la empresa, se asume el riesgo del resto de amenazas, es decir el de amenaza 1. El riesgo asumido resultante es de 1.000 €.

{:.section}
## Relación de las amenazas más frecuentes, los riesgos que implican y las salvaguardas más frecuentes

Las amenazas a las que está expuesto un sistema de información son muy diversas, por lo que, al menos en la fase inicial de la gestión de riesgos, conviene centrarse en las principales.

Para determinar las amenazas, o encontrar nuevas, ayudará saber que pueden clasificarse como:

- Amenazas naturales o artificiales.
- Amenazas debidas al entorno (ambiente), o debidas al hombre.
- Amenazas accidentales o intencionadas.

<details class="card mb-2">
  <summary class="card-header question">¿Qué es la criptografía?</summary>
  <div class="card-body" markdown="1">

Es el “arte de escribir con clave secreta o de un modo enigmático”. Aplicar a un mensaje técnicas de criptografía, o de encriptación, consiste en modificarlo mediante algún procedimiento secreto o privado, de manera que el resultado sea un enigma.

Se persigue que, aunque el mensaje encriptado se haga público, no se revele el mensaje original; o al menos que el enigma divulgado ofrezca resistencia para conocer con facilidad el mensaje original.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## Salvaguardas y tecnologías de seguridad más habituales

Las salvaguardas, o contramedidas, persiguen detectar, prevenir, impedir, reducir, y controlar una amenaza y el daño que pueda generar. Son elementos de defensa, para que las amenazas no causen tanto daño. Como en el caso de las amenazas, las salvaguardas se pueden clasificar según distintas categorías. Por ejemplo, existirán:
Salvaguardas preventivas o proactivas, que persiguen anticiparse a la ocurrencia del incidente. Salvaguardas reactivas, que persiguen reducir el daño una vez ocurre el incidente. Salvaguarda de “no hacer nada”, o de aceptar el riesgo existente para los equipos (cuando se cumplan los criterios de aceptación de riesgo de la empresa, y solo cuando esta decisión sea autorizada por la Dirección).

<details class="card mb-2">
  <summary class="card-header question">¿Qué es una salvaguarda?</summary>
  <div class="card-body" markdown="1">

Guarda que se pone para la custodia de una cosa. Custodia, amparo, o garantía.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Por ejemplo, son salvaguardas preventivas las relacionadas con los controles de acceso de los usuarios a los equipos, como el uso de contraseñas. Controlando el acceso de los usuarios exclusivamente a la información que necesitan conocer para el desempeño de su trabajo, se previenen daños a la confidencialidad e integridad de la información.

Por ejemplo, son salvaguardas de carácter reactivo las copias de seguridad. Las copias no evitan que se produzca un incidente que derive en pérdida de información, pero sí reducen el daño limitando la pérdida a la información modificada desde la última copia de seguridad verificada

Como aclaración de salvaguarda de “no hacer nada”, se tomará de ejemplo una empresa, cuya política de seguridad establece que se aprobarán los riesgos, cuando sean inferiores al 10 % del valor de los activos. Si el análisis de riesgos establece que este es del 5
% del valor de los equipos, puede decidirse asumirlo, y no interponer salvaguardas para reducirlo; pero siempre debe ponerse en conocimiento de la Dirección, que es el órgano responsable en última instancia del riesgo que se asume.

{:.subsection}
### Seguridad de recursos humanos

Tanto antes del empleo, como durante el empleo, y a la terminación del mismo, conviene adoptar medidas, salvaguardas, o controles, para proteger la información que será accedida, e impactada por las personas. Se trata, por ejemplo, de establecer obligaciones y responsabilidades legales durante la contratación, o de establecer cómo actuar, de cara a la información, cuando una persona abandone la empresa. Dependiendo de cada circunstancia, podría corresponder aplicar, con mayor o menor exhaustividad, alguna de las siguientes salvaguardas habituales:
Definición de roles y responsabilidades que contraerá el trabajador. Investigación de antecedentes. Formación y capacitación de los trabajadores en seguridad de la información. Definición de procesos disciplinarios. Definir las responsabilidades a la terminación del contrato. Devolución de activos. Retirada de derechos de acceso a la información.

{:.subsection}
### Seguridad ambiental

Los equipos informáticos deben disponer de un entorno adecuado. Por ejemplo, no es óptimo que un servidor empresarial comparta las mismas condiciones de temperatura y suministro eléctrico que los ordenadores de usuario. De ser posible, hay que proporcionarle un espacio mejor, porque el riesgo de una amenaza actuando sobre él es mayor. Si existe la posibilidad, debe proporcionarse un sistema de alimentación eléctrica ininterrumpido, y unas condiciones de temperatura adecuadas (por ejemplo entre
20° y 25°, que reduzcan el deterioro de sus componentes si se vieran forzados a trabajar a temperaturas elevadas). Debe intentar ubicarse en un recinto separado, que se denominará en adelante Centro de Proceso de Datos o CPD. Las amenazas vistas en el apartado anterior, en la categoría de “desastres naturales”, y amenazas “de origen industrial”, precisan de salvaguardas, de las que las más habituales son:
Medidas que eviten el fuego, el humo o el agua: sistema anti-
incendio y anti-inundaciones, bien solo de alarma, o incluso de extinción del incendio, o de evacuación del agua. Medidas que eviten las vibraciones, golpes, y caídas accidentales: como la fijación en armarios industriales para fijación de equipos informáticos, o armarios tipo rack). Medidas para proporcionar temperatura y humedad adecuadas, como equipos de aire acondicionado, y alarmas por exceso, o por defecto (riesgo de condensación). Medidas que eviten fallos de suministro eléctrico (corte del suministro, variaciones de tensión por encima o por debajo del suministro nominal, caídas de rayos, etc.). Seguridad del cableado, tanto en los materiales empleados, como en su disposición o tendido, siguiendo pautas de un sistema de cableado estructurado, que aseguren una correcta acometida al CPD, un trazado interior adecuado, y unas conexiones a los equipos correctas, de manera practicable, ordenada, e identificada. Un mantenimiento preventivo de los equipos, según indicaciones del fabricante, y al menos con chequeos periódicos generales (vías de salida de aire de los chasis, revisiones de temperatura de los procesadores y/o placa base, revisiones de leds, u otros indicadores del buen funcionamiento de discos duros, fuentes de alimentación, etc.). Asegurar condiciones de seguridad para desplazamientos del equipo fuera del CPD (vigilancia, exposición a campos electromagnéticos, condiciones de embalaje, y transporte). Seguridad al final del ciclo de vida del equipo, incluida su destrucción segura.

<details class="card mb-2">
  <summary class="card-header question">¿Podemos impedir una amenaza al 100%?</summary>
  <div class="card-body" markdown="1">

Las amenazas no pueden impedirse en su totalidad, por lo que deben contemplarse, anticipando la situación de que sucedan, más tarde o más temprano, según su probabilidad de ocurrencia.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>


{:.subsection}
### Seguridad física

El acceso físico a los ordenadores y equipos aumenta el riesgo de cualquier incidente. Debe aplicarse el criterio de conceder acceso exclusivamente a quien lo necesite por sus funciones y, a ser posible, concederlo solamente cuándo y cómo lo necesite (por ejemplo en un horario determinado, y/o en presencia de otra persona). Así, en general, los usuarios no deben tener acceso físico a servidores, o a equipos de comunicaciones; tampoco los desarrolladores de aplicaciones, ni administradores de bases de datos, ni la Dirección de la empresa, deberían tener acceso físico a servidores o equipos de comunicaciones, porque, en todos esos casos, su trabajo no lo exige. Las consecuencias de un ataque con acceso físico, serán normalmente de máxima gravedad, porque se puede lograr el máximo nivel de acceso posible a toda la información. Entre los infractores, se pueden encontrar los propios usuarios o trabajadores de la empresa, antiguos empleados que conserven sistemas de acreditación que les den acceso, y personas externas, como ladrones, salteadores, o hackers.

<details class="card mb-2">
  <summary class="card-header question">¿Cómo se denomina a la persona que realiza un infractor o atacante es un trabajador de la propia empresa?</summary>
  <div class="card-body" markdown="1">

Insider

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Habitualmente, el incidente más frecuente por acceso físico es accidental o no intencionado: se trata de errores humanos protagonizados por personal del departamento de informática o TIC, por personal de servicios auxiliares (limpieza, seguridad o mantenimiento), o incluso por proveedores o visitas. Se trata, por tanto, de proteger a los equipos de accidentes que ocurren cuando hay acceso humano a los equipos. Entre las salvaguardas más habituales para proteger el acceso físico, se encuentran las siguientes:

- Establecer un perímetro de seguridad física (local, habitaciones), con elementos constructivos acordes (puertas, paredes, ventanas, techos, suelos, etc.). 
- Mecanismos de control de ingreso físico (acreditaciones, cerraduras automáticas, etc.). 
- Establecer y definir áreas de acceso público, de entrega, de carga, etc. 
- Protección contra locales o actividades cercanas (incendios, explosiones, vías de vehículos, o cargas en movimiento).


{:.question}
¿Conoces alguna película donde se aprovechen vulnerabilidades físicas para acceder a la información de un ordenador?

{:.subsection}
### Seguridad de acceso lógico

El acceso lógico se refiere al acceso a la información de manera remota, es decir, sin emplear un periférico conectado directamente al equipo. Por ello, interviene forzosamente una red de comunicaciones, que extiende el acceso al servidor más allá del CPD, donde estén confinados sus periféricos de entrada y salida. Las principales medidas de seguridad que se pueden interponer para reducir el riesgo de un incidente de seguridad, aprovechando una vulnerabilidad en el acceso lógico, son las siguientes:

- Definir una política de control de acceso, que identifique la información relacionada con actividades comerciales, los responsables de conceder-configurar-revocar los accesos, el procedimiento de solicitud, etc. 
- Existencia de un registro de usuarios, y de los servicios a los que acceden. Nota: Es importante mantener un registro actualizado de los usuarios, de los servicios, y de los accesos autorizados de los usuarios a los servicios. 
- Gestión de privilegios de acceso, sobre la base de “solo lo que necesitan saber”. 
- Gestión de claves de usuario, tanto de las características técnicas o de complejidad, como de la prohibición de divulgación de las mismas. 
- Revisiones periódicas de los derechos de acceso de los usuarios. 
- El establecimiento de responsabilidades del usuario, en cuanto al uso de claves secretas, equipos desatendidos, políticas de “mesas” y pantallas “limpias” (que no muestren información que no sea de carácter público). 
- La existencia de una política de uso de los servicios de red (internet, correo electrónico, etc.). 
- Mecanismos de autenticación y registro para las conexiones externas a la empresa o remotas, como técnicas de redes privadas virtuales (VPN). 
- Separaciones de redes, por ejemplo, en base a servicios de información, o grupos de usuarios o sistemas. 
- Controles de las conexiones que realizan los usuarios hacia fuera de la empresa. 
- Controles de acceso al sistema operativo, como la identificación y autenticación del usuario, un sistema automático de gestión de contraseñas, la restricción del uso de las utilidades del sistema operativo, el cierre de sesiones por inactividad, y la limitación de los periodos válidos para los inicios de sesión. 
- Controles de acceso a las aplicaciones y la información, como controles de lectura, escritura, modificación de archivos, y carpetas; o el aislamiento de la información confidencial, por ejemplo, en sistemas con cifrado integrado. 
- Establecimiento de una política para trabajo en movilidad, que incluya las comunicaciones móviles y el teletrabajo.

<details class="card mb-2">
  <summary class="card-header question">¿Es una práctica recomendable que todos los administradores de un CPD usen el mismo usuario y contraseña a través de SSH?</summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué herramienta podemos usar para evitar un ataque de fuerza bruta a través de SSH?</summary>
  <div class="card-body" markdown="1">

Fail2Ban.

<iframe width="560" height="315" src="https://www.youtube.com/embed/PAK7I1cKwzA?si=rxIJ1cXCAnMyA0hj" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Qué es una VPN?

<details class="card mb-2">
  <summary class="card-header question">¿Es más recomendable usar una clave RSA sobre el tradicional usuario y contraseña para acceder a un CPD?</summary>
  <div class="card-body" markdown="1">

Si.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.section}
## La gestión de la seguridad informática como complemento a salvaguardas y medidas tecnológica 

A la vista de la multitud de amenazas y salvaguardas consideradas, no se puede enfrentar el problema mediante un conjunto de medidas de seguridad aisladas para objetos concretos. Es decir, se pueden interponer multitud de salvaguardas y mecanismos de seguridad, pero estas salvaguardas por sí mismas, no aportan suficientes garantías de continuidad a la empresa. Es necesaria una gestión adecuada de esas medidas, que incluirá los procesos, revisiones, recalificaciones, y adaptaciones para la realidad cambiante de la empresa, su entorno, sus amenazas y sus debilidades.

Para la construcción de un sistema de seguridad, no bastan los conceptos tecnológicos, sino que se necesitan también aspectos de gestión, aspectos legales, aspectos éticos, u otros específicos de la naturaleza y ambiente interno y externo de la empresa. Es en este punto en el que surge el concepto de Sistema de Gestión de Seguridad de la Información (SGSI), como un sistema de gestión usado para establecer y mantener un entorno seguro. Se trata, sencillamente, de analizar la empresa, y fijar sus necesidades de seguridad iniciales, de poner en práctica las medidas de protección para lograr alcanzar estas necesidades, de ser capaz de medir si se han alcanzado o no, y de detectar las mejoras en las medidas de protección para alcanzar las necesidades.

La anterior secuencia describe una repetición continua de fases de:

1. planificación (en inglés, plan)
2. ejecución (en inglés, do)
3. medida (en inglés, check)
4. corrección (en inglés, act)
 
Constituyendo un ciclo de mejora continua de Deming (P-D-C-A), como muestra la siguiente imagen.

<details class="card mb-2">
  <summary class="card-header question">¿En qué consiste el ciclo de mejora continua de Deming?</summary>
  <div class="card-body" markdown="1">

Se analizan o planifican las necesidades de seguridad de la empresa, estableciendo las medidas de protección necesarias para alcanzarlas; se implantan las medidas, se mide el resultado de satisfacción de las necesidades de seguridad, se determinan las correcciones que hay que realizar en las medidas de protección, y se vuelve a comenzar (revisando las necesidades y las medidas que permitirían alcanzar esas necesidades, incluyendo las correcciones detectadas en la ejecución anterior).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

En este proceso de ejecución continuo, no se debe perder de vista el objetivo último que, usando una terminología empresarial, podría enunciarse como “asegurar la continuidad del negocio, minimizando los riesgos, maximizando el retorno de la inversión y permitiendo nuevas oportunidades para la empresa”.

Una empresa pequeña o mediana (PYME) puede enfrentar serias dificultades para abordar la implantación de un SGSI, desde una perspectiva tan compleja y abstracta como la del enunciado anterior.

La solución, sin embargo, es nuevamente sencilla, y consiste en aplicar un principio que será muy frecuente en el ámbito de la seguridad de la información: el principio de proporcionalidad, que nos dice que “las medidas deben adecuarse a sus objetivos”. En el ámbito de la seguridad de la información, “las salvaguardas deben ser proporcionales al riesgo”.

Por ejemplo, para el control de acceso a una estación de trabajo, donde los usuarios realizan labores ofimáticas sobre datos no confidenciales, bastaría inicialmente emplear un sistema de usuario y contraseña, integrado en el propio sistema operativo. Parece una medida proporcional en coste al objetivo de seguridad, que vendrá marcado por el riesgo que introducen en la empresa los sistemas informáticos accesibles desde esos puestos.

<details class="card mb-2">Si un usuario puede realizar transferencias entre cuentas de clientes y proveedores, ¿qué control de acceso deberíamos implementar?
  <summary class="card-header question"></summary>
  <div class="card-body" markdown="1">

Debería emplearse un sistema de autenticación fuerte, basado no solo en algo que sepa el usuario, como su contraseña, sino también en algo que el usuario tenga, como su DNI electrónico.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Las herramientas elementales para la correcta gestión de la seguridad informática son:

- La redacción de una política de seguridad de la información. Por ejemplo:
  - ISO 17799
  - ISO 27000. La serie ISO 27000 está formada por muchas normas:
    - ISO 27000: términos y definiciones.
    - ISO 27001: requisitos de un SGSI.
    - ISO 27002: controles o salvaguardas (muy similar a la ISO 17799).
    - ISO 27004: cómo medir la eficacia de un SGSI.
    - ISO 27005: gestión de riesgos.
    - ISO 27007: auditoria de un SGSI.
    - ISO 27011: seguridad de la información para telecomunicaciones.
  - Ley Orgánica de Protección de Datos de Carácter Personal (LOPD)
- La adopción de una metodología sencilla, que permita evaluar el riesgo. Por ejemplo:
  - MAGERIT

Ambas herramientas permiten dar los pasos de planificación y medida, y serán las armas esenciales de un SGSI.

La implantación de un SGSI muy exhaustivo puede ser inviable, y paralizar las repeticiones “Plan-Do-Check-Act”.

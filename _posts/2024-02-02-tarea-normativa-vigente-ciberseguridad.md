---
title: "Tarea: Normativa vigente de ciberseguridad"
date: 2024-02-02 9:00:00 +0100
categories: [Ciberseguridad en Entornos de las Tecnologías de la Información, Normativa de Ciberseguridad]
tags: [ciberseguridad en entornos de las tecnologías de la información, normativa de ciberseguridad]
img_path: /assets/img/tarea-legislacion-proteccion-datos/
---

## Entrega y presentación

La entrega será en formato PDF. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

## Calificación y duración

La tarea se calificará con una nota de 0 a 10.

<details class="card mb-2">
  <summary class="card-header">Duración</summary>
  <div class="card-body" markdown="1">

<div class="strawpoll-embed" id="strawpoll_QrgebNd8jZp" style="max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_QrgebNd8jZp" src="https://strawpoll.com/embed/QrgebNd8jZp" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Actividades

La compañía ACME S.A. se encarga de proveer servicios de telecomunicaciones enfocados en comunicaciones internacionales tanto a particulares como a empresas.

ACME tiene una cartera de 300.000 clientes en España a los que ofrece estos servicios y por los cuales cobra una tarifa media de 23,5 € mensuales.

ACME está presente en 32 países, y se aprovecha de esta situación para dar servicio a multinacionales. Durante el año 2022 ACME ha logrado adjudicarse el servicio de telecomunicaciones de todas las embajadas en España.

Uno de sus clientes multinacionales es una entidad bancaria, con un nivel de madurez en seguridad elevado, uno de los requisitos que establece es la certificación ISO 27001 en los servicios de comunicaciones.

La sede central de ACME se encuentra en Madrid, fue abierta en el año 2020, sus oficinas cuentan con climatización inteligente, jardines en las azoteas para mejorar la climatización y aprovechar el agua de la lluvia para los riegos de sus zonas verdes y paneles solares para mejorar la eficiencia energética.

Además, parte de los terrenos de la organización, han sido convertidos en parques públicos que pueden ser utilizados por los residentes de la zona, y los accesos por carretera a la zona han sido acondicionados, mejorados y reasfaltados.

En los últimos meses ACME esta de enhorabuena, ha logrado la adjudicación de un contrato mayor para la prestación de servicios de comunicaciones a una institución de las Fuerzas y Cuerpos de Seguridad del Estado. Dado el servicio que provee ha sido designado como proveedor de servicio esencial.

Dados los compromisos existentes hasta la fecha y con los nuevos contratos adjudicados, ACME va a abordar el proyecto de despliegue de un Sistema de Gestión de Seguridad de la Información, así como un Sistema de Gestión de Continuidad de Negocio. Asimismo, con el contrato otorgado para Fuerzas y Cuerpos de Seguridad del Estado, debe cumplir con la normativa del Esquema Nacional de Seguridad y con la Directiva NIS.

En esta tarea se requerirá de los conocimientos adquiridos a lo largo de la unidad para desarrollar los contenidos requeridos en el ejercicio.

{:.activity}
### Normas nacionales e internacionales

¿Podrías proponer tres controles de cada proceso de seguridad de la normativa NIST?

{:.activity}
### Sistema de gestión de seguridad de la información basado en ISO 27001

1. Desarrolla un contexto descriptivo de la organización alineado con los requisitos de información del estándar.
1. Propón al menos tres controles para la mitigación de riesgos identificados.
1. Desarrolla tres métricas de seguridad para ACME.

{:.activity}
### Sistema de gestión de continuidad de negocio basado en ISO 22301

El escenario a utilizar para este análisis de impacto es del de los sistemas centralizados que dan servicio a la red de comunicaciones de manera centralizada. En caso de indisponibilidad de estos sistemas, la red completa no podría funcionar.

Lucro cesante, provocado por la incapacidad de facturación ocasionada por la parada de los servicios de red. Se estima que la organización factura 100.000 € por hora.

Compensaciones, provocado por los perjuicios que pudieran ocasionar a las empresas a las que ACME da servicio. Según los contratos firmados con los clientes empresa, se garantiza un 99% de servicio, y únicamente se debe compensar en caso de que la caída dure más de 30 minutos, y si el cliente corporativo lo reclama. Se ha estimado que, a partir de la primera hora, las compensaciones supondrían 500.000€ por cada hora de caída.

Imagen, la confianza en la organización y en los servicios que provee se vería afectada. Esto supondría una pérdida de un 1% de la cartera de clientes por cada incidencia. Además, se estima que habría una caída de altas nuevas. Este tipo de perjuicios se ha cuantificado en 200.000€ por incidencia.

Sanciones, la comisión del mercado de las telecomunicaciones puede actuar en caso de una perdida de servicio elevada, además al haber un designio de operador de servicio esencial, una caída prolongada podría ocasionar perdidas económicas por sanciones.

Se estima que esta situación se daría únicamente en caso de caídas repetidas y de larga duración.

La organización no está dispuesta a asumir perdidas mayores a 1,5 millones de €.

1. Realiza un análisis de impacto en continuidad sobre los sistemas asociados al servicio de telecomunicaciones.
1. Establece un valor justificado para los parámetros MTPD, RPO y RTO.

{:.activity}
### Esquema nacional de seguridad

Categoriza los sistemas asociados al servicio de telecomunicaciones en función al escenario definido en el caso práctico, por la prestación de servicios a FCSEs.

Desarrolla una declaración de aplicabilidad justificada.

{:.activity}
### (Voluntaria) Responsables ENS

En el capítulo II, artículo 11 del RD 311/2022 se establece la diferenciación entre los siguientes responsables:

- Responsable de la información.
- Responsable del servicio.
- Responsable de la seguridad.
- Responsable del sistema.

Pero, ¿cuáles son las funciones de cada uno de ellos?

{:.activity}
### (Voluntaria) Conformidad con el ENS

Existen una serie de entidades que pueden acreditar la conformidad con el ENS. Así mismo, existe un registro de entidades que están ya acreditadas.

Entra en la web <https://ens.ccn.cni.es/es/> y busca información sobre lo siguiente:

1. ¿Qué el el CoCENS? ¿Cuáles son sus fines y atribuciones?
1. ¿Qué es la ENAC?
1. Busca 5, al menos, 5 entidades de certificación acreditadas.
1. Busca 5, al menos, 5 entidades certificadas. Por ejemplo, comprueba si lo está el ayuntamiento de tu localidad.

{:.activity}
### (Voluntaria) Caso Práctico. Servicio de Licitación Electrónica

Imaginamos un servicio de licitación electrónica de un organismo público. En el proceso de contratación se contemplan las siguientes fases*:

1. **Anuncio electrónico del concurso**. En esta fase se produce la publicación en el organismo público correspondiente.
1. **Publicación de pliegos**. En esta fase se publican los pliegos de cláusulas administrativas y prescripciones técnicas del concurso en cuestión.
1. **Recepción de ofertas**. En esta fase cada empresa remite al organismo su ofertas. Es muy importante que las ofertas presentadas permanezcan inaccesibles al resto de los licitadores así como a la mesa de contratación del organismo que no podrá tener acceso a su contenido hasta que concluya el plazo de presentación de propuestas.
1. **Evaluación y análisis**. Una vez concluido el plazo de presentación la mesa de contratación del organismo procede abrir todas ellas para su examen y aprobación. El intercambio de información debe permanecer inaccesible a cualquier persona que no está autorizada.
1. **Adjudicación**. En esta fase la mesa de contratación se notifica la adjudicación a una de las ofertas recibidas dando cuenta de ello a todos los participantes.
1. **Contratación y pedido**. El organismo formalmente proceda la realización del pedido a la empresa adjudicataria.

> Ejemplo basado en el procedimiento de contratación contemplado en el Real Decreto 3/2011 de Ley de Contratos del Sector público.
{:.prompt-info}

En la guía [CCN-STIC 803 - ENS. Valoración de los sistemas](https://www.ccn-cert.cni.es/series-ccn-stic/800-guia-esquema-nacional-de-seguridad/682-ccn-stic-803-valoracion-de-sistemas-en-el-ens-1/file.html) se establece la diferencia entre SERVICIO e INFORMACIÓN. A efectos de valoración:

- La información suele imponer requisitos relevantes en las dimensiones de confidencialidad, integridad, trazabilidad y autenticidad.
- Para los servicios se considera relevante la dimensión de disponibilidad.

Para facilitar la tarea, identifica cada fase con una única dimensión de seguridad a la hora de hacer el análisis.
Se pide:

1. Para cada fase, establecer la CATEGORÍA de seguridad, en base al análisis de la dimensión elegida. Utiliza la clasificación del ANEXO I del RD 311/2022.
1. Categorizar el servicio completo de licitación electrónica, como BÁSICA, MEDIA O ALTA.
1. Establecer al menos 6 medidas concretas de seguridad de las registradas en el Anexo II del RD 311/2022 que sirvan para mitigar el impacto en el servicio de licitación. Se deberán asignar al menos una medida a cada fase concreta.

{:.activity}
### (Voluntaria) Marco de Cibersguridad del NIST

Investiga sobre el marco de ciberseguridad del NIST y responde a las siguientes preguntas:

1. ¿Qué es?
1. ¿Cuáles son las áreas que implementa y en qué consiste cada una?

{:.activity}
### (Voluntaria) LPIC

La Ley 8/2011, de 28 de abril define en su anexo los sectores estratégicos, junto con el organismo responsable de cada sector.

Localiza esa información y entrega una tabla con el resultado.

{:.activity}
### (Voluntaria) CNPIC

Investiga sobre el CNPIC y contesta a las siguientes preguntas:

1. ¿Cuándo se creó?
1. ¿Cuál es su objetivo?
1. ¿Qué es el Catálogo Nacional de Infraestructuras Críticas?
1. ¿Puedes poner algún ejemplo de empresa que esté incluída en el Catálogo?

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
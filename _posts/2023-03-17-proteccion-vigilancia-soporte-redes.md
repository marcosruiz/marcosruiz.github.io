---
title: Protección, vigilancia y soporte de redes
date: 2023-03-17 13:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [gnu linux, comandos, terminal, bash, redes locales, teoría]
img_path: /assets/img/proteccion-vigilancia-soporte-redes/
---

{:.section}
## Introducción

En el mundo actual, las redes son una herramienta indispensable para la comunicación y la transferencia de datos. Sin embargo, también son un blanco atractivo para los ciberdelincuentes. Es por ello que la protección de las redes se ha convertido en una necesidad crítica para garantizar la seguridad de los datos y la privacidad de los usuarios. En este artículo, vamos a hablar sobre las principales técnicas de protección de redes, así como la vigilancia, el soporte y la documentación de las mismas.

{:.section}
## El filtrado de la red

El filtrado de la red es una técnica de protección que consiste en controlar y limitar el acceso a la red. El objetivo es evitar que usuarios no autorizados o potencialmente malintencionados accedan a la red y a los recursos que esta ofrece. Para ello, se pueden aplicar diferentes técnicas de filtrado, como:

- **Firewalls**: son sistemas que se encargan de filtrar el tráfico de red. Su objetivo es permitir el acceso solo a los usuarios autorizados y bloquear a los usuarios no autorizados. Los firewalls pueden funcionar en diferentes niveles, desde el nivel de red hasta el nivel de aplicación. Los firewalls de red filtran el tráfico en función de la dirección IP, el puerto y el protocolo utilizado. Los firewalls de aplicación filtran el tráfico en función del contenido de los datos.
- **Filtros de contenido**: son sistemas que se encargan de bloquear el acceso a sitios web o contenidos no deseados. Se pueden configurar filtros de contenido para bloquear el acceso a sitios web de juego, redes sociales, sitios web de compras en línea, etc.
- **Filtros de correo electrónico**: son sistemas que se encargan de filtrar el correo electrónico entrante y saliente. Se pueden configurar filtros de correo electrónico para bloquear mensajes de spam, virus y phishing.
- **Filtros de dirección MAC**: son sistemas que se encargan de filtrar el acceso a la red en función de la dirección MAC del dispositivo. La dirección MAC es un identificador único de cada dispositivo de red. Los filtros de dirección MAC pueden ser útiles para limitar el acceso a la red solo a los dispositivos autorizados.

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un firewall?</summary>
  <div class="card-body" markdown="1">

Sistema de defensa que controla y filtra el tráfico de entrada y salida de una red. Se configura para pedir confirmación de cualquier programa que utilice la conexión a Internet (pueden establecerse excepciones). Normalmente incluidos en los SO, aunque también existen otros de software libre o de pago.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Es lo mismo un cortafuegos que un firewall?

{:.question}
¿Dónde se sitúan los firewalls?

{:.question}
¿Qué es Optenet?

<details class="card mb-2">
  <summary class="card-header question">¿Qué es el spam?</summary>
  <div class="card-body" markdown="1">

El Spam es el envío masivo de correo electrónico que no ha sido solicitado y que busca un beneficio por parte del remitente.

Ejemplos de contenido del correo Spam:

- Venta de medicamentos y toda clase de productos milagrosos.
- Software pirata o supuestamente original a precios de escándalo.
- Ofertas de trabajo con suculentos dividendos.
- Descuentos para suscripciones a páginas pornográficas o de apuestas.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Es lo mismo spam que correo no deseado?


{:.section}
## Vigilancia y mantenimiento de la red

La vigilancia y el mantenimiento de la red son dos aspectos importantes para garantizar el correcto funcionamiento de la misma. La vigilancia se refiere a la monitorización constante de la red para detectar posibles problemas y solucionarlos antes de que afecten al rendimiento de la red. El mantenimiento se refiere a las acciones necesarias para mantener la red en buen estado y prevenir problemas futuros.

Entre las principales técnicas de vigilancia y mantenimiento de la red, podemos destacar las siguientes:

- **Monitorización del tráfico de red**: la monitorización del tráfico de red permite detectar posibles cuellos de botella o problemas de rendimiento. Se pueden utilizar herramientas de monitorización de tráfico de red como Wireshark o TCPdump para analizar el tráfico de red y detectar posibles problemas.
- **Análisis de logs**: los logs son registros de actividad de la red y los dispositivos de red. El análisis de logs puede ser útil para detectar posibles problemas de seguridad, como intentos de acceso no autorizados o actividades sospechosas.
- **Actualización de software y firmware**: es importante mantener actualizado el software y firmware de los dispositivos de red para garantizar la seguridad y el rendimiento de la red. Las actualizaciones suelen incluir mejoras de seguridad y soluciones a problemas conocidos. Es importante tener un plan de actualización regular para asegurar que los dispositivos estén siempre actualizados.
- **Pruebas de penetración**: las pruebas de penetración son simulaciones de ataques de ciberdelincuentes para identificar posibles vulnerabilidades en la red. Se pueden contratar empresas especializadas en pruebas de penetración para realizar estas pruebas y detectar posibles problemas de seguridad.
- **Respaldo de datos**: es importante realizar copias de seguridad de los datos de la red de forma regular. De esta manera, en caso de un fallo en el sistema, se puede recuperar la información perdida. Es importante establecer un plan de copias de seguridad que incluya la frecuencia y el tipo de copias de seguridad a realizar.

{:.question}
¿Qué es Wireshark?

{:.question}
¿Qué es TCPdump?

{:.question}
¿Cuál es la principal diferencia entre Wireshark y TCPdump?

{:.question}
¿Qué son los logs?

{:.question}
¿Qué es el firmware?

{:.question}
¿Qué es el pentesting?

{:.question}
¿Qué es un backup?

{:.question}
¿Qué es una auditoría?

{:.question}
¿Qué es una consola de gestión remota?

<details class="card mb-2">
  <summary class="card-header question">¿Qué consolas de gestión remotas conocemos?</summary>
  <div class="card-body" markdown="1">

- VNC (Virtual Network Computing)
- RDP (Remote Desktop Protocol)

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.question}
¿Qué es Telnet?

{:.question}
¿Qué es SSH?

{:.question}
¿En qué consiste la tecnología WOL (Wake on LAN)?

{:.section}
## Incidencias, soporte y legalidad

A pesar de todas las medidas de protección y vigilancia que se puedan tomar, siempre existe la posibilidad de que se produzcan incidencias en la red. Es importante contar con un plan de acción para responder a estas incidencias y minimizar su impacto. Algunas de las medidas que se pueden tomar son:

- **Establecimiento de protocolos de respuesta a incidentes**: se deben establecer protocolos de respuesta a incidentes para garantizar una respuesta rápida y efectiva en caso de una incidencia en la red. Estos protocolos deben incluir la identificación del incidente, la evaluación del impacto, la asignación de recursos y la resolución del incidente.
- **Equipo de respuesta a incidentes**: es importante contar con un equipo de respuesta a incidentes preparado para responder rápidamente a cualquier incidencia en la red. Este equipo debe incluir personal técnico especializado en seguridad informática.
- **Soporte técnico**: el soporte técnico es importante para garantizar que la red funcione correctamente y solucionar problemas técnicos que puedan surgir. Es importante contar con un equipo de soporte técnico preparado para responder rápidamente a las necesidades de los usuarios de la red.
- **Cumplimiento legal**: es importante cumplir con las normativas legales y reglamentos en materia de protección de datos y seguridad informática. Entre las normativas más importantes se encuentran el Reglamento General de Protección de Datos (RGPD) y la Ley Orgánica de Protección de Datos (LOPD).

{:.question}
¿Qué significan las siglas RGPD?

{:.question}
¿Qué significan las siglas LOPD?

{:.question}
¿Por qué alguien crackearía Windows 11 para regalárselo a todo el mundo?

{:.section}
## Documentación de la red

La documentación de la red es un aspecto importante para garantizar su mantenimiento y gestión efectiva. La documentación debe incluir información detallada sobre la configuración de la red, los dispositivos de red, los protocolos utilizados y las medidas de seguridad aplicadas. La documentación debe incluir los siguientes elementos:

- **Diagramas de la red**: los diagramas de la red son representaciones gráficas de la topología de la red. Estos diagramas deben incluir información detallada sobre los dispositivos de red, los protocolos utilizados y los enlaces de conexión entre los dispositivos.
- **Inventario de los dispositivos de red**: el inventario de los dispositivos de red debe incluir información detallada sobre cada dispositivo, como su dirección IP, dirección MAC, fabricante y modelo.
- **Configuración de los dispositivos de red**: la configuración de los dispositivos de red debe incluir información detallada sobre los parámetros de configuración, como las direcciones IP, las rutas de red y los protocolos utilizados.
- **Políticas de seguridad**: las políticas de seguridad son un conjunto de reglas y procedimientos establecidos para proteger la red y los datos que circulan por ella. Estas políticas deben incluir información sobre las medidas de seguridad aplicadas en la red, las responsabilidades de los usuarios de la red y los procedimientos de respuesta a incidentes.
- **Historial de incidencias**: es importante mantener un registro detallado de las incidencias que se han producido en la red. Este historial debe incluir información sobre la naturaleza del incidente, su impacto y las medidas tomadas para resolverlo.

{:.question}
¿Qué es un inventario?

{:.section}
## Conclusión

La protección, vigilancia y soporte de redes es un aspecto crítico en la gestión de redes locales. La implementación de medidas de seguridad y vigilancia efectivas es esencial para proteger la red y los datos que circulan por ella. Además, es importante contar con un equipo de soporte técnico preparado para responder rápidamente a las necesidades de los usuarios de la red. Por último, la documentación de la red es un aspecto importante para garantizar su mantenimiento y gestión efectiva. La documentación debe incluir información detallada sobre la configuración de la red, los dispositivos de red, los protocolos utilizados y las medidas de seguridad aplicadas.

En definitiva, la protección, vigilancia y soporte de redes es una tarea compleja que requiere conocimientos técnicos especializados y un enfoque sistemático. La implementación de medidas de seguridad y vigilancia efectivas y la documentación adecuada de la red son fundamentales para garantizar la protección de la red y los datos que circulan por ella. Además, es importante estar al día con las normativas legales y reglamentos en materia de protección de datos y seguridad informática. Con una planificación y gestión adecuada, se puede garantizar un funcionamiento eficiente y seguro de la red.

## Bibliografía

- [ChatGPT](https://chat.openai.com/chat)
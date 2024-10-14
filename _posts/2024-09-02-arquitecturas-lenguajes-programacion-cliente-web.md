---
title: "Arquitecturas y lenguajes de programación en clientes web"
date: 2024-09-02 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/desarrollo-web-entorno-cliente-24-25/
---

{:.section}
## Introducción

La web fue inicialmente concebida y creada por Tim Berners-Lee, un especialista del laboratorio europeo de partículas (CERN) en 1989. En sus mismas palabras, había una "necesidad de una herramienta colaborativa que soportara el conocimiento científico" en un contexto internacional. Él y su compañero Robert Cailliau crearon un prototipo web para el CERN y lo mostraron a la comunidad para sus pruebas y comentarios.

Dicho prototipo estaba basado en el concepto de hipertexto. Como resultado se crearon unos protocolos y especificaciones que han sido adoptados universalmente e incorporados a Internet, gracias a aportaciones posteriores como el desarrollo por la NCSA de la popular interfaz MOSAIC.

Todos los prototipos y desarrollos posteriores crecieron bajo la guía del consorcio W3C, que es una organización con base en el MIT de Massachusetts y que se responsabiliza de desarrollar y mantener los estándares web.

Por Web se pueden entender tres cosas distintas: el proyecto inicial del CERN, el conjunto de protocolos desarrollados en dicho proyecto o bien el espacio de información formado por todos los servidores interconectados. Cuando se habla de la Web generalmente se hace referencia a esto último.

El desarrollo web es un campo multidisciplinario que abarca varias áreas y tecnologías. A continuación, se describen las principales áreas profesionales del desarrollo web:

- **Contenido**: El contenido se refiere a la organización, semántica, presentación y estructura de la información en la web. El lenguaje fundamental para el contenido web es HTML (HyperText Markup Language), que define la estructura y el contenido de una página web.
- **Diseño**: El diseño se centra en el aspecto visual y los elementos gráficos de una página web. Utiliza tecnologías como CSS (Cascading Style Sheets) para definir estilos y plantillas que controlan la apariencia de las páginas.
- **Tecnología Frontend**: Las tecnologías frontend son las que se ejecutan en el navegador del usuario y son responsables de los elementos interactivos de una página web. El principal lenguaje de programación frontend es JavaScript, que permite la creación de interfaces dinámicas y reactivas.
- **Tecnología Backend**: El backend se encarga de la lógica del servidor, el acceso a bases de datos y el procesamiento de las solicitudes de los usuarios. Los lenguajes comunes de backend incluyen PHP, Python y Node.js, entre otros.
- **Distribución**: La distribución se refiere a cómo se despliegan y gestionan los sitios web. Esto incluye tanto el hardware (servidores, máquinas virtuales, contenedores) como el software (servidores web como Apache, IIS y NGINX).
- **Propósito**: Las webs se hacen para algo. Definir el propósito puede que no sea la tarea más técnica, pero son necesarios perfiles intermedios que sepan trasladar las necesidades de los clientes a los desarrolladores. O incluso inventar nuevos modelos de negocio basados en tecnologías web.

{:.question}
¿Qué es Internet? ¿Qué es la web? ¿Son lo mismo?

{:.subsection}
### Arquitectura cliente-servidor

Hoy en día los sitios web siguen un modelo basado en la programación cliente-servidor con tres elementos comunes:

La arquitectura cliente-servidor es el modelo fundamental en el que se basa la Web. Se divide en dos partes principales:

- **Server-side** (Lado del servidor)
  - **Hardware**: Incluye servidores y elementos de red, máquinas virtuales y contenedores.
  - **Software**: Involucra servidores web (como Apache, IIS, NGINX) y lenguajes CGI (como Perl, PHP, C). También incluye lenguajes y frameworks con servidores web integrados, como Python, Java, Node.js y C++.
- **Client-side** (Lado del cliente)
  - **Clientes web**: Los navegadores web como Firefox, Chrome, Vivaldi, Opera, Edge e Internet Explorer.
  - **Lenguajes de marcas**: HTML, XHTML, HTML5 y CSS.
  - **Lenguajes de programación del entorno Cliente**: Principalmente JavaScript.

En el desarrollo web, tanto el lado del servidor (server-side) como el lado del cliente (client-side) juegan sus propios roles. Sin embargo, muchas tareas pueden llevarse a cabo en cualquiera de los dos lados, y la elección de dónde implementar una funcionalidad específica depende de varios factores, como la tecnología adecuada para el caso o la comodidad del desarrollador con una tecnología particular.

<details class="card mb-2">
  <summary class="card-header question">¿Qué es node.js?</summary>
  <div class="card-body" markdown="1">

Node.js es un entorno de ejecución de JavaScript que permite ejecutar código JavaScript fuera del navegador, es decir, en el lado del servidor. Esto permite convertir a JavaScript en un lenguaje que nos puede servir para desarrollar front-end como back-end.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Cuáles son los pasos a seguir para convertirme en un front-end developer?</summary>
  <div class="card-body" markdown="1">

Seguir los pasos de la web [Roadmap.sh](https://roadmap.sh/frontend).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

> La diferencia entre server-side y client-side puede ser difícil de entender al principio si no se ha trabajado con las tecnologías web.
{:.prompt-info}

{:.subsection}
### Evolución de la web

1. **Páginas Web Estáticas**: Las primeras aplicaciones web eran simples páginas estáticas con hipervínculos.
1. **Páginas Web Generadas por el Servidor**: Con el tiempo, se introdujo un poco de JavaScript para mejorar la interacción.
1. **Introducción de AJAX**: Permite cargar o subir datos al servidor de manera asíncrona, mejorando la interactividad sin recargar la página.
1. **Single Page Application (SPA)**: Las aplicaciones de una sola página se comunican con el servidor usando JSON o XML, proporcionando una experiencia más fluida.

<iframe width="560" height="315" src="https://www.youtube.com/embed/NWUZCTTLQcg?si=X1ZNqewMNyycyafM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

{:.section}
## Lenguajes de programación en entorno cliente

Cuando hablamos de tecnologías empleadas en lenguajes de programación web podemos citar dos grupos básicos: client-side y server-side. Las tecnologías client-side son aquellas que son ejecutadas en el cliente, generalmente en el contexto del navegador web. Cuando los programas o tecnologías son ejecutadas o interpretadas por el servidor estamos hablando de programación server-side.

{:.question}
¿Qué diferencia existe entre los lenguajes de programación client-side y server-side?

<details class="card mb-2">
  <summary class="card-header question">Hay veces que podemos hacer lo mismo en el server-side y en el client-side. ¿Cuándo lo haríamos en un sitio o en otro?</summary>
  <div class="card-body" markdown="1">

- **Validar formularios**: La validación puede hacerse en el cliente para mejorar la experiencia del usuario, pero debe verificarse nuevamente en el servidor por razones de seguridad.
- **Guardar datos permanentes**: Generalmente se hace en el servidor utilizando bases de datos.
- **Presentación de diapositivas**: Es más común en el lado del cliente, utilizando JavaScript o frameworks de frontend.
- **Eliminar un párrafo**: Esta tarea se realiza típicamente en el cliente, utilizando JavaScript para modificar el DOM (Document Object Model).
- **Calcular datos**: Los cálculos pueden hacerse en ambos lados, dependiendo de la naturaleza del cálculo y los requisitos de seguridad.
- **Acceder a bases de datos**: Esta tarea se realiza en el servidor para mantener la seguridad y la integridad de los datos.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Uno de los objetivos en la programación web es saber escoger la tecnología correcta para tu trabajo. Muchas veces los desarrolladores escogen rápidamente una tecnología favorita, que puede ser JavaScript o PHP (generalmente) y la usan en todas las situaciones. La realidad es que cada tecnología tiene sus pros y sus contras. En general las tecnologías client-side y server-side poseen características que las hacen complementarias más que adversarias. Por ejemplo, cuando añadimos un formulario para recoger información y grabarla en una base de datos, es obvio que tendría más sentido chequear el formulario en el lado del cliente para asegurarnos que la información introducida es correcta, justo antes de enviar la información a la base de datos del servidor, aunque siempre también deberemos validar dicha información en el lado del servidor para asegurar la integridad. La programación en el lado del cliente consigue que la validación del formulario sea mucho más efectiva y que el usuario se sienta menos frustrado al cubrir los datos en el formulario. Por otro lado el almacenar los datos en el servidor estaría mucho mejor gestionado por una tecnología del lado del servidor (server-side), dando por supuesto que la base de datos estará en el lado del servidor.

Cada tipo general de programación tiene su propio lugar y la mezcla es generalmente la mejor solución. Cuando hablamos de lenguajes de programación en clientes web, podemos distinguir dos variantes:

- Lenguajes que nos permiten dar formato y estilo a una página web (HTML, CSS, etc.).
- Lenguajes que nos permite aportar dinamismo a páginas web (lenguajes de scripting: JavaScript).

En este módulo nos vamos a centrar principalmente en estos últimos, los lenguajes de scripting, y en particular en el lenguaje JavaScript que será el lenguaje que utilizaremos a lo largo de todo este módulo formativo.

A continuación te mostramos las 4 capas del desarrollo web en el lado del cliente, en la que se puede ver que JavaScript se sitúa en la capa superior gestionando el comportamiento de la página web:

- Comportamiento (JavaScript).
- Presentación (CSS)
- Estructura (DOM / estructura HTML)
- Contenido (texto, imágenes, vídeos, etc.)

{:.subsection}
### Características

los lenguajes de programación para clientes web no son un reemplazo de la programación en el lado del servidor. Cualquier web que reaccione dinámicamente a interacciones del usuario o que almacene datos, estará gestionada por lenguajes de programación en el lado del servidor, incluso aunque usemos JavaScript en el cliente para mejorar la experiencia de usuario. Las razones son simples:

- No puede escribir directamente en el servidor.
- No todos los navegadores soportan JavaScript y se puede desactivar, por lo que una página web bien diseñada debería funcionar sin él.
- No puede modificar preferencias del navegador, lanzar aplicaciones, leer o escribir archivos en el cliente, retransmitir streaming, enviar emails, interactuar con lenguajes de servidor, acceder a una web de un dominio diferente, proteger el origen de las imágenes, ni implementar multiprocesos.

JavaScript está orientado a dar soluciones a:

- JavaScript puede solicitar datos al servidor de forma asíncrona utilizando tecnologías como AJAX (Asynchronous JavaScript and XML).
- Hacer que la web reaccione a la interacción del usuario.
- Proporcionar una interfaz agradable para los datos.
- Controlar ventanas, marcos y applets en el documento HTML.
- Preprocesar datos antes de enviarlos al servidor.
- Modificar el estilo y contenido de manera dinámica en función de la interacción del usuario.
- Solicitar o enviar archivos al servidor.

JavaScript no se usa solamente en las páginas web. Los intérpretes de JavaScript están integrados en múltiples aplicaciones de uso cotidiano. Estas aplicaciones proporcionan su propio modelo de acceso y gestión de los módulos que componen la aplicación y para ello comparten el lenguaje JavaScript en cada aplicación.

<details class="card mb-2">
  <summary class="card-header question">¿Podríamos escribir con JavaScript un fichero de texto directamente en el servidor?</summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### Compatibilidades

JavaScript es interpretado por el cliente. Actualmente existen múltiples clientes o navegadores que soportan JavaScript, incluyendo Firefox, Google Chrome, Safari, Opera, Internet Explorer, etc. Por lo tanto, cuando escribimos un script en nuestra página web, tenemos que estar seguros de que será interpretado por diferentes navegadores y que aporte la misma funcionalidad y características en cada uno de ellos. Ésta es otra de las diferencias con los scripts de servidor en los que nosotros dispondremos del control total sobre su interpretación.

Cada tipo de navegador da soporte a diferentes características del JavaScript y además también añaden sus propios bugs o fallos. Algunos de estos fallos son específicos de la plataforma sobre la que se ejecuta ese navegador, mientras que otros son específicos del propio navegador en sí.

<details class="card mb-2">
  <summary class="card-header question">Un script de JavaScript puede dar un fallo en Firefox pero no en Chrome</summary>
  <div class="card-body" markdown="1">

Si.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

A veces las incompatibilidades entre navegadores al interpretar el código de JavaScript no vienen dadas por el propio código en si, sino que su origen proviene del código fuente HTML. Por lo tanto es muy importante que tu código HTML siga las especificaciones del estándar W3C y para ello dispones de herramientas como el [validador HTML W3C](https://validator.w3.org/).

También tienes que tener precaución con las limitaciones en el uso de JavaScript:

- No todos los navegadores soportan JavaScript en el lado del cliente.
- Algunos dispositivos móviles no pueden ejecutar JavaScript.
- Incluso las implementaciones más importantes de JavaScript en los diferentes navegadores no son totalmente compatibles entre ellas: Por ejemplo diferentes incompatibilidades entre Firefox e Internet Explorer.
- La ejecución de código JavaScript en el cliente podría ser desactivada por el usuario de forma manual, con lo que no podremos tener una confianza ciega en que se vaya a ejecutar siempre tu código de JavaScript.
- Algunos navegadores de voz, no interpretan el código de JavaScript.

{:.subsection}
### Seguridad

JavaScript proporciona un gran potencial para diseñadores maliciosos que quieran distribuir sus scripts a través de la web. Para evitar ésto los navegadores web en el cliente aplican dos tipos de restricciones:

- Por razones de seguridad cuando se ejecuta código de JavaScript éste lo hace en un "espacio seguro de ejecución" en el cuál solamente podrá realizar tareas relacionadas con la web, nada de tareas genéricas de programación como creación de ficheros, etc.
- Además los scripts están restringidos por la política de "mismo origen": la cuál quiere decir que los scripts de una web no tendrán acceso a información tal como usuarios, contraseñas, o cookies enviadas desde otra web. La mayor parte de los agujeros de seguridad son infracciones tanto de la política de "mismo origen" como de la política de "espacio seguro de ejecución".

{:.question}
¿Qué es el modo quiosco? ¿Tendría sentido deshabilitar JavaScript en un modo quiosco por seguridad?

Al mismo tiempo es importante entender las limitaciones que tiene JavaScript y que, en parte, refuerzan sus capacidades de seguridad. JavaScript NO podrá realizar ninguna de las siguientes tareas:

- Modificar o acceder a las preferencias del navegador del cliente, las características de apariencia de la ventana principal de navegación, las capacidades de impresión, o a los botones de acciones del navegador.
- Lanzar la ejecución de una aplicación en el ordenador del cliente.
- Leer o escribir ficheros o directorios en el ordenador del cliente (con la excepción de las cookies).
- Escribir directamente ficheros en el servidor.
- Capturar los datos procedentes de una transmisión en streaming de un servidor, para su retransmisión.
- Enviar e-mails a nosotros mismos de forma invisible sobre los visitantes a nuestra página web (aunque si que podría enviar datos a una aplicación en el lado del servidor capaz de enviar correos).
- Interactuar directamente con los lenguajes de servidor.
- Las páginas web almacenadas en diferentes dominios no pueden ser accesibles por JavaScript.
- JavaScript es incapaz de proteger el origen de las imágenes de nuestra página.
- Implementar multiprocesamiento o multitarea.
- Otro tipo de vulnerabilidades que podemos encontrar están relacionadas con el XSS (Cross Site Scripting). Este tipo de vulnerabilidad viola la política de "mismo origen" y ocurre cuando un atacante es capaz de inyectar código malicioso en la página web presentada a su víctima. Este código malicioso puede provenir de la base de datos a la cuál está accediendo esa víctima. Generalmente este tipo de errores se deben a fallos de implementación de los programadores de navegadores web.

{:.question}
¿Qué es una vulnerabilidad XSS?

Otro aspecto muy relacionado con la seguridad son los defectos de los navegadores web o plugins utilizados. Éstos bugs pueden ser empleadas por los atacantes para escribir scripts maliciosos que se puedan ejecutar en el sistema operativo del usuario.

El motor de ejecución de JavaScript es el encargado de ejecutar el código de JavaScript en el navegador y por lo tanto es en él dónde recaerá el peso fuerte de la implementación de la seguridad. Podríamos citar varios ejemplos de motores de JavaScript:

- Active Script de Microsoft: tecnología que soporta JScript como lenguaje de scripting. A menudo se considera compatible con JavaScript, pero Microsoft emplea múltiples características que no siguen los estándares ECMA.
- El kit de herramientas Qt desarrollado en C++ también incluye un módulo intérprete de JavaScript.
- El lenguaje de programación Java en su versión JDK 1.6 introduce un paquete denominada javax.script que permite la ejecución de JavaScript.
- Y por supuesto todos los motores implementados por los navegadores web como Mozilla, Google, Opera, Safari, etc. Cada uno de ellos da soporte a alguna de las diferentes versiones de JavaScript.

Hoy en día una de las características que más se resalta y que permite diferenciar a unos navegadores de otros, es la rapidez con la que sus motores de JavaScript pueden ejecutar las aplicaciones, y la seguridad y aislamiento que ofrecen en la ejecución de las aplicaciones en diferentes ventanas o pestañas de navegación.

{:.section}
## Herramientas de programación

La mejor forma de aprender JavaScript es tecleando el código HTML y JavaScript en un simple documento de texto. La elección del editor depende de ti, pero aquí te voy a dar algunas pistas para realizar una buena elección.

Para aprender JavaScript no se recomiendan editores del estilo WYSIWYG (What You See Is What You Get), ya que estas herramientas están más orientadas a la modificación de contenido y presentación, y nosotros nos vamos a centrar más en el código fuente de la página.

{:.question}
¿Qué significan las siglas WYSIWYG?

Hoy día no es necesario contar con un IDE para desarrollar en Javascript. Hay editores ligeros que, a día de hoy, nos ofrecen casi las mismas características. Lo que sí debes tener en cuenta es que te aporten las siguientes características para hacer tu trabajo más fácil:

- Resaltado de texto.
- Navegación en el código.
- Generación automática de código.
- Gestión de versiones.

{:.question}
¿Qué es un gestor de versiones?

{:.question}
¿Qué es un IDE?

{:.question}
Nombra 3 IDEs que conozcas.

{:.question}
¿Es Visual Studio Code un IDE?

Editores más populares para trabajar con JavaScript:

- **Visual Studio Code** de Microsoft es una herramienta muy versátil, a la que se le pueden instalar muchas extensiones para darle una gran funcionalidad en casi cualquier lenguaje de programación.
- **SublimeText** es un bloc de notas que comparte gran parte de los atajos de teclado de Visual Studio Code.
- **Atom** de GitHub es una herramienta también muy ligera y que también cuenta con multitud de extensiones para adaptarla a nuestras necesidades.

> Para este curso vamos a usar Visual Studio Code y SublimeText. Puedes leer el artículo [Trabajar con Visual Studio Code](/posts/trabajar-visual-studio-code) para aprender que extensiones y configuraciones utilizar así como aprender algunos atajos de teclado muy prácticos.
{:.prompt-info}

<details class="card mb-2">
  <summary class="card-header question">¿Necesito una conexión a Internet para ejecutar código JavaScript?</summary>
  <div class="card-body" markdown="1">

No. Solo necesitamos un navegador.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Es importante es utilizar las extensiones que nos ofrecen muchos de los navegadores ya que te van a permitir ver las salidas por consola que anuncian errores, ver la estructura del documento, incluso en algunos casos depurarlos, etc.

{:.question}
¿Qué significa depurar un código?

{:.subsection}
### Otras herramientas

- **Tecla F12 en los navegadores**: Accede a las herramientas de desarrollo del navegador.
- **Firefox Developer Edition**: Una versión del navegador Firefox con herramientas avanzadas para desarrolladores web.

{:.subsection}
### Librerías y frameworks

El desarrollo de aplicaciones web ha evolucionado significativamente con el tiempo, y hoy en día existen diversas maneras de abordar el frontend. A continuación, exploraremos los diferentes tipos de aplicaciones web según las tecnologías de frontend que se utilicen, así como la evolución de las mismas.

- **Con JavaScript ‘Vanilla’**: Se refiere a la utilización de JavaScript puro sin ninguna biblioteca o framework adicional. Es una manera directa y eficiente de programar sobretodo cuando se trata de aplicaciones pequeñas y sencillas.
- **Con Bibliotecas**:
  - **JQuery**: Facilita la manipulación del DOM, eventos y AJAX.
  - **Prototype**: Simplifica las tareas de programación orientada a objetos en JavaScript.
  - **D3.js**: Se utiliza para crear visualizaciones de datos.
  - **Bootstrap**: Biblioteca de CSS y JavaScript para diseño responsivo.
  - **Vue.js**: Ofrece una manera progresiva de construir interfaces de usuario.
  - **React**: Biblioteca para construir interfaces de usuario, principalmente en aplicaciones de una sola página.
- **Con Frameworks**:
  - **Angular**: Framework de JavaScript de Google para construir aplicaciones dinámicas de una sola página.
  - **React**: Aunque es una biblioteca, también se utiliza como framework cuando se combina con otras herramientas.
  - **Vue.js**: Al igual que React, puede considerarse un framework cuando se utiliza en proyectos más grandes.
  - **Phaser**: Framework para el desarrollo de juegos en HTML5.
- **Con Frameworks Full Stack**:
  - **Odoo**: Plataforma de código abierto que proporciona un conjunto completo de aplicaciones empresariales.
  - **Blitz**: Framework de React basado en Next.js para aplicaciones de pila completa.
  - **Next.js**: Framework de React para aplicaciones de servidor y cliente.
  - **SvelteKit**: Framework para construir aplicaciones rápidas y modernas.

<details class="card mb-2">
<summary class="card-header question">¿Qué diferencia hay entre una biblioteca y un framework?</summary>
  <div class="card-body" markdown="1">

La bibliotecas tienen las siguientes características:

- **Funcionalidades**: Aportan funcionalidades específicas al lenguaje de programación.
- **Flexibilidad**: No obligan a cambiar la manera de programar.
- **Simplificación**: Facilitan la programación de tareas concretas.
- **Desventajas**: Pueden crear dependencia en el programador.
- **Reemplazo**: Algunas bibliotecas, como Underscore, Lodash o JQuery, han perdido relevancia con la introducción de ES6.

Los framworks tienen las siguientes características:

- **Modificación**: Cambian completamente la manera de programar.
- **Integración**: Se encargan de plantillas, comunicaciones, enrutamientos, componentes, módulos, etc.
- **Curva de aprendizaje**: Son complejos de aprender.
- **Eficiencia**: Una vez dominados, hacen la programación más ágil y correcta.
- **Inercia**: Pueden dificultar el cambio a otro framework.
- **Obsolescencia**: Si el framework queda obsoleto, la web también.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

Para obtener bibliotecas o frameworks existen varias formas:

- **Descarga directa**: Descargar un archivo .js o un directorio comprimido de la web oficial y copiarlo al proyecto.
- **CDN**: Utilizar un CDN directamente desde la web oficial.
- **Gestores de paquetes**: Utilizar NPM o Yarn para gestionar dependencias.

{:.question}
¿Qué significan las siglas CDN?

> Las redes sociales están llenas de gente intentando vender su curso. En el mundo profesional hay mucha más gente trabajando silenciosa y eficazmente en productos de calidad y duraderos. Aunque los primeros tengan algo de razón en decir que PHP, JQuery o otros están obsoletos, el mundo laboral a veces dice lo contrario. Es necesario tomar cierta distancia para elegir la mejor tecnología para cada ocasión. (<https://www.bitecode.dev/p/hype-cycles>)
{:.prompt-info}

{:.subsection}
### Poner la web en producción

Para que una web con HTML, CSS y Javascript funcione tan solo necesitamos un servidor web que sirva estáticamente estos ficheros cuando se le haga una petición HTTP. Este servidor suele estar accesible por Internet mediante SFTP, SSH o cualquier protocolo. Estos HTML, CSS y JS puede ser tratados de dos maneras:

- **Método tradicional**: Copiar todo el contenido de las carpetas al servidor alrededor del archivo index.html.
- **JavaScript Build Tool**: Utilizar herramientas que compilan el código fuente, lo minifican, unifican, optimizan y comprimen para mejorar la velocidad de carga y evitar incompatibilidades entre navegadores.

> ¿Qué es minificar un código?
{:.prompt-info}

{:.section}
## Integración del código JavaScript en documentos HTML

Lee el artículo [Integración de código JavaScript](/posts/integracion-codigo-javascript).

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/desarrollofrontend.html>

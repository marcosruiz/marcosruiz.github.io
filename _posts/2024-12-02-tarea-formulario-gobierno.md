---
title: "Tarea obligatoria: El formulario del gobierno"
date: 2024-12-02 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [desarrollo de aplicaciones web, daw, desarrollo web en entorno cliente, dwec, practica, tarea, javascript]
img_path: /assets/img/tarea-formulario-gobierno/
---

## Información sobre la tarea

La entrega será en formato vídeo (preferiblemente MP4). Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

La tarea se calificará con una nota de APTO (10) o NO APTO (0).

Duración actividades obligatorias: 6 horas.

RA5. Desarrolla aplicaciones web interactivas integrando mecanismos de manejo de eventos.

## Actividades

Eres un trabajador de una empresa tecnológica multinacional llamada TekMex.

TekMex ha recibido una licitación para mejorar algunos formularios del gobierno, entre ellos, el de la sede de educación del cual muchos usuarios llevan quejándose casi un año. El equipo de desarrollo de dos personas os habéis repartido el trabajo y mientras otro compañero de trabajo se centra en optimizar la parte del servidor, tú vas a desarrollar la parte del cliente.

"¡Ahora si que voy a tener una visión global de un proyecto web!" piensas para tus adentros porque sabes que todos los formularios que habías desarrollado hasta ahora solo los habías validado con PHP en el backend, así que es la oportunidad perfecta para aprender a validar formularios con HTML y JavaScript.

Respecto a la parte CSS para que el formulario se vea bonito, no es obligatorio que lo hagas, una vez tengas todo el formulario preparado se lo puedes pasar al equipo de diseño y maquetación aunque si les adelantas trabajo seguro que te lo agradecen.

{:.activity}
### Formulario de la sede de educación

Mejorar el formulario de la sede electrónica de educación del gobierno que se muestra a continuación en vídeo y capturas:

<iframe width="560" height="315" src="https://www.youtube.com/embed/v1L4ct3ZpPw?si=VMenvHri-2EdL_tp" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

![Parte superior del formulario](datosUsuario1.png)
_Parte superior del formulario_

Texto extraído del formulario original:

```plaintext
Este identificador se utilizará como usuario de acceso a la Sede electrónica.

Si selecciona como Tipo de Documento DNI deberá informar el IDESP, si por el contrario selecciona NIE deberá informar el IXESP para que el Sistema pueda verificar sus Datos de Identidad con la Dirección General de la Policía.
Ver ayuda identidad.
Le recordamos en tal caso, que la información introducida en los campos Nombre, Primor apellido y Segundo apellido (en caso de estar informado) deben ser EXACTAMENTE IGUALES a los existentes en su documento de identificación.

El correo electrónico y el teléfono móvil indicados se utilizarán para recibir comunicaciones relativas a los trámites implementados en esta sede electrónica.
```

![Parte inferior del formulario](declaraciones.png)
_Parte inferior del formulario_

Texto extraído del formulario original:

```plaintext
*Declaro que los datos que figuran en la solicitud de registro son ciertos, asumiendo en caso contrario, las responsabilidades que pudieran derivarse de su inexactitud y autorizando al Ministerio de Educación y Formación Profesional la consulta de los mismos en el Sistema de Verificación de Datos de Identidad de la Dirección General de la Policía.

*Doy mi consentimiento

Información importante

Al firmar esta petición queda establecido que usted presta su consentimiento expreso al tratamiento de sus datos personales. Lea, antes de firmar, la información básica.

Información básica

Los datos personales recogidos serán incorporados en el registro de actividades de tratamiento del Ministerio de Educación y Formación Profesional denominado SEDE ELECTRÓNICA en cumplimiento del Reglamento General de Protección de Datos:

- Responsable del tratamiento: Subsecretaría de Educación y Formación Profesional
- Finalidad: Registro de los ciudadanos en la sede electrónica del Ministerio, para realizar trámites electrónicos de los que el ministerio es competente, comprendiendo todo el ciclo del trámite administrativo
- Legitimación: Consentimiento del interesado y orden EDU/947/2010, de 13 de abril por la que se crea y regula el registro electrónico del Ministerio de Educación y
- Formación Profesional
- Destinatarios: No están previstos
- Derechos: Acceso, rectificación, limitación del tratamiento, portabilidad de los datos, oposición y a no ser objeto de decisiones individualizadas.

Declaro que he leído la INFORMACIÓN BÁSICA referente a los derechos a ejercitar. Puede consultar la información adicional y detallada sobre protección de datos en enlace: https://sede.educacion.gob.es/registro-electronico/proteccion-datos
```

![Errores que se muestran tras enviar el formulario y recargar la página](errores.png)
_Errores que se muestran tras enviar el formulario y recargar la página_

Texto extraído del formulario original:

```plaintext
El campo "Número de soporte/IDESP/IXESP" es obligatorio.
El Tipo de documento seleccionado en el registro es DNI. Revise los campos TIPO de documento y Documento.
Si es un DNI, consta de 9 caracteres, 8 numéricos y una letra al final. Si su DNI tiene menos de 9 caracteres, complete con 0 a la izquierda hasta completar el número de caracteres necesarios.
Debe rellenar el campo "primer apellido".
El formato del campo "fecha de nacimiento" no es correcto, el formato es dd/mm/aaaa.
Debe rellenar el campo "contraseña".
Debe rellenar el campo "repetir contraseña".
Debe rellenar el campo "Teléfono móvil".
Debe rellenar el campo "Correo electrónico".
La dirección de correo electrónico no tiene un formato correcto.
Debe dar su consentimiento, en el apartado "DECLARACIONES", al tratamiento de sus datos de carácter personal.
```

Además, deberás añadir las siguientes verificaciones:

- El campo "Nombre" es obligatorio.
- El campo "Contraseña" y "repita contraseña" deben coincidir tener más de 12 caracteres y contener al menos un número y un símbolo de los siguientes: `!@#%^&*`.
- La "Fecha de nacimiento" tiene que ser de una persona que sea mayor de edad. Es obligatorio que no tengamos que mantener este campo en el futuro.
- El campo "DNI" debe cumplir con el formato de un DNI válido.
- El campo "Correo electrónico" debe cumplir con el formato de un email válido.
- El campo "Teléfono móvil" tiene que tener al menos 9 dígitos. El primer número debe ser un 6, un 7, un 8, un 9 o un +.
- Deberás realizar una función para cada una de las validaciones de tal forma que se pueda llamar a cada una de forma independiente.

> Recuerda que puedes usar expresiones regulares para el DNI, los emails y las fechas y esto puede facilitarte el trabajo.
{:.prompt-tip}

{:.activity}
### (Voluntaria) Placeholders

Añade placeholders para mostrar un ejemplo de como puede rellenarse cada campo.

{:.activity}
### (Voluntaria) Confirmación

Pide confirmación antes de enviar en el formulario.

{:.activity}
### (Voluntaria) Número de intentos

Mostrar el número de intentos de envío del formulario que se van produciendo y mostrar un mensaje similar a: "Intento de Envíos del formulario: X". Es decir, cada vez que le demos al botón de enviar tendrá que incrementar el valor de la cookie en 1 y mostrar su contenido en el div antes mencionado. **¡El número de intentos NO debe reiniciarse si cerramos y abrimos el navegador!**

> El artículo [Gestión de cookies en JavaScript](/posts/cookies/) puede serte de ayuda para la realización de esta actividad.
{:.prompt-info}

> Recuerda que para poder actualizar el contenido de un contenedor o `div` la propiedad que tenemos que modificar para ese objeto es `innerHTML`.
{:.prompt-info}

{:.activity}
### (Voluntaria) Mejorar la interfaz de usuario

Aunque tenemos un equipo de diseño y maquetación estos suelen estar muy ocupados. Puedes mejorar la interfaz de usuario utilizando CSS. También puedes añadir iconos que ayuden a entender que datos pedimos al usuario.

Otra opción es que uses ese tiempo en investigar como usar una biblioteca externa como [Bootstrap](https://getbootstrap.com/) o [Tailwind](https://tailwindcss.com/) y de que manera nos podría ayuda a desarrollar más rápido en un futuro.

{:.activity}
### Documentación

Recuerda que en la empresa en la que estás hay mucha rotación de plantilla por lo que está muy bien visto comentar el código y dejarlo lo más limpio y ordenado posible.

{:.activity}
### Preparación del vídeo

Antes de que entre el equipo de diseño y maquetación vas a enseñar a tus compañeros un vídeo de 3 minutos como máximo donde vas a mostrar todo el trabajo que habéis realizado. Tienes que intentar quedar bien con todo lo que has hecho y aprendido ya que en un mes tienes revisión de contrato y quieres tener argumentos para que te den una buena subida de sueldo. Esta claro que no todo en la vida es programar.

> Si no sabes como grabar un vídeo puedes leer el artículo [Cómo grabar y editar vídeos](/posts/videos-youtube/)
{:.prompt-info}

## Dame tu feedback...

<div class="strawpoll-embed" id="strawpoll_PKglepj41Zp" style="height: 644px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_PKglepj41Zp" src="https://strawpoll.com/embed/PKglepj41Zp" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

<div class="strawpoll-embed" id="strawpoll_3RnYX1vrBye" style="height: 3012px; max-width: 640px; width: 100%; margin: 0 auto; display: flex; flex-direction: column;"><iframe title="StrawPoll Embed" id="strawpoll_iframe_3RnYX1vrBye" src="https://strawpoll.com/embed/3RnYX1vrBye" style="position: static; visibility: visible; display: block; width: 100%; flex-grow: 1;" frameborder="0" allowfullscreen allowtransparency>Loading...</iframe><script async src="https://cdn.strawpoll.com/dist/widgets.js" charset="utf-8"></script></div>

## Bibliografía

- <https://jsfiddle.net/xxjcaxx/L2q8vzgn/10/>
- 
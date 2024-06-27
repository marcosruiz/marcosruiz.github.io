---
title: "Tarea: Formularios y expresiones regulares"
date: 2024-06-23 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [desarrollo de aplicaciones web, daw, desarrollo web en entorno cliente, dwec, practica]
img_path: /assets/img/variable-entorno-path/
---

## Entrega y presentación

La entrega será en formato Presentación. Leer [Entrega y presentación de tareas](/posts/entrega-presentacion-tareas/).

## Calificación

La tarea se calificará con una nota de 0 a 10.

Duración: - horas

## Actividades

Tú y tu compañero sois trabajadores de una empresa tecnológica multinacional llamada TekMex.

TekMex ha recibido una licitación para mejorar algunos formularios del gobierno, entre ellos, el de la sede de educación del cual muchos usuarios llevan quejándose casi un año. El equipo de desarrollo de tres personas os habéis repartido el trabajo y mientras otro compañero de trabajo se centra en optimizar la parte del servidor, los otros dos vais a desarrollar la parte del cliente.

"¡Menos mal que somos dos para realizar esta tarea!" piensas para tus adentros porque sabes que todos los formularios que habías desarrollado hasta ahora solo los habías validado con Java en el backend así que es la oportunidad perfecta para aprender a validar formularios con HTML y JavaScript.

Recuerda que en la empresa en la que estás hay mucha rotación de plantilla por lo que está muy bien visto comentar el código y dejarlo lo más limpio posible.

{:.activity}
### Formulario de la sede de educación

Mejorar el formulario de la sede electrónica de educación del gobierno que se muestra a continuación:

![Parte superior del formulario](datosUsuario1.png)
_Parte superior del formulario_

Texto extraído del formulario original:

```plaintext
Este identificador se utilizará como usuario de acceso a la Sede electrónica.

Si selecciona corno Tipo de Documento DNI deberá informar el IDESP, si por el contrario selecciona NIE deberá informar eI IXESP para que el Sistema pueda verificar sus Datos de Identidad con la Dirección General de la Policía.
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

{:.activity}
### (Voluntaria)

{:.activity}
### (Voluntaria)

{:.activity}
### (Voluntaria)

Construye una expresión regular para lo que se pide a continuación y pruébala con distintas cadenas:

- Un código postal.
- Un NIF formado por 8 números, un guión y una letra mayúscula o minúscula.
- Un número de teléfono y aceptamos 2 formatos: XXX XX XX XX o XXX XXX XXX. EL primer número debe ser un 6, un 7, un 8 o un 9.

## Bibliografía

- <https://cipfpbatoi.github.io/materials/daw/dwc/01-js/08-forms.html>

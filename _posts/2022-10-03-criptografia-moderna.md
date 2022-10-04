---
title: "Criptografía moderna"
date: 2022-10-03 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría]
img_path: /assets/img/criptografia-moderna/
---

## 1. Introducción

Con la **criptografía moderna** se intenta garantizar las siguientes propiedades deseables en la comunicación de información de forma segura (a estas propiedades se las conoce como funciones o servicios de seguridad):

1. **Confidencialidad**: solamente los usuarios autorizados tienen acceso a la información.
2. **Integridad de la información**: garantía ofrecida a los usuarios de que la información original no será alterada, ni intencional ni accidentalmente.
3. **Autenticación de usuario**: es un proceso que permite al sistema verificar si el usuario que pretende acceder o hacer uso del sistema es quien dice ser.
4. **Autenticación de remitente**: es el proceso que permite a un usuario certificar que el mensaje recibido fue de hecho enviado por el remitente y no por un suplantador.
5. **Autenticación del destinatario**: es el proceso que permite garantizar la identidad del usuario destinatario.
6. **No repudio en origen**: que cuando se reciba un mensaje, el remitente no pueda negar haber enviado dicho mensaje.
7. **No repudio en destino**: que cuando se envía un mensaje, el destinatario no pueda negar haberlo recibido cuando le llegue.
8. **Autenticación de actualidad (no replay)**: consiste en probar que el mensaje es actual, y que no se trata de un mensaje antiguo reenviado.

Ahora toca adentrarse en los métodos criptográficos modernos como la criptografía. Entre ellos tenemos:
 
- Criptografía simétrica
- Criptografía asimétrica 
- Funciones hash o de resumen (que no cumplen estrictamente la función de confidencialidad para la que está destinada la criptografía, puesto que es un cifrado irreversible)

## 2. Cifrado simétrico y asimétrico

Los más utilizados actualmente son: 

- DES
- 3DES
- AES
- Blowfish
- IDEA

<iframe width="560" height="315" src="https://www.youtube.com/embed/wDpqrasDmxM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Qué problemas tiene el cifrado simétrico?

<iframe width="560" height="315" src="https://www.youtube.com/embed/EQsHGbp3TGc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Qué ventajas tiene el cifrado simétrico?

{:.question}
¿Qué ventajas tiene el cifrado asimétrico?

{:.question}
¿Se puede combinar el cifrado simétrico y asimétrico para obtener lo mejor de los dos mundos?

{:.question}
¿Por qué en el cifrado simétrico hay más llaves que cifrado asimétrico?

## 3. Cifrado simétrico

<iframe width="560" height="315" src="https://www.youtube.com/embed/SlSmI18T2Ns" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Un ejemplo de cifrado simétrico?

{:.question}
¿Qué ventajas tiene el cifrado simétrico?

{:.question}
¿Qué es un ataque man in the middle?

{:.question}
¿Por qué existe el cifrado por bloque y cifrado por flujo?


## 4. Cifrado asimétrico

<iframe width="560" height="315" src="https://www.youtube.com/embed/SIIqLgqRMCo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Qué desventajas tiene el cifrado asimétrico?

{:.question}
¿Con que firmamos si queremos confidencialidad?

{:.question}
¿Con que firmamos si queremos autenticación?


## 5. Firma electrónica

La firma electrónica es un conjunto de datos electrónicos que acompañan o que están asociados a un documento electrónico y cuyas funciones básicas son:

- **Identificar al firmante de manera inequívoca**.
- **Asegurar la integridad del documento firmado**. Asegura que el documento firmado es exactamente el mismo que el original y que no ha sufrido alteración o manipulación.
- **Asegurar el no repudio del documento firmado**. Los datos que utiliza el firmante para realizar la firma son únicos y exclusivos y, por tanto, posteriormente, no puede decir que no ha firmado el documento.

Generalmente, la ley equipara la firma electrónica a la firma manuscrita.

### 5.1. Proceso básico de firma electrónica

El proceso básico que se sigue para la firma electrónica es el siguiente:

1. El usuario dispone de un documento electrónico (una hoja de cálculo, un pdf, una imagen, incluso un formulario en una página web) y de un certificado que le pertenece y le identifica.
1. La aplicación o dispositivo digital utilizados para la firma realiza un resumen del documento. El resumen de un documento de gran tamaño puede llegar a ser tan solo de unas líneas. Este resumen es único y cualquier modificación del documento implica también una modificación del resumen.
1. La aplicación utiliza la clave privada para codificar el resumen.
1. La aplicación crea otro documento electrónico que contiene ese resumen codificado. Este nuevo documento es la firma electrónica.

## 6. Firma digital

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo firma electrónica que firma digital?</summary>
  <div class="card-body" markdown="1">

La **firma electrónica** es por tanto un conjunto de datos electrónicos que acompañan a una determinada información también en formato electrónico. Realizar una firma electrónica quiere decir que una persona física verifica una acción o procedimiento mediante un medio electrónico, dejando un registro de la fecha y hora de la misma.

Una **firma digital** es una implementación técnica específica de algunas firmas electrónicas mediante la aplicación de algoritmos criptográficos. Por tanto, se refieren a la tecnología de cifrado / descifrado en la que se basan algunas firmas electrónicas como la avanzada

![Firma electrónica vs firma digital](firmaElectronicaVsFirmaDigital.png)
_Firma electrónica vs firma digital_

  </div>
</details>

<iframe width="560" height="315" src="https://www.youtube.com/embed/JRYUxqghPG4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

![Proceso de firma digital](procesoFirmaDigital1.png)
_Proceso de firma digital_

![Proceso de firma digital](procesoFirmaDigital2.png)
_Proceso de firma digital_

## Certificado digital

Es, principalmente, un documento digital que contiene nuestros datos identificativos que están autentificados por un organismo oficial. El certificado digital es un documento que confirma nuestra identidad en internet como Persona Física y es obligatorio para poder consultar y realizar trámites con la Administración Pública.

![Certificado digital](certificadoDigital.png)
_Certificado digital_

{:.question}
¿Se puede validar un certificado sin conexión a Internet?

{:.question}
¿Qué es una lista de revocación de certificados?


## 7. PKI

PKI (Public Key Infraestructure o Infraestructura de clave pública) es un conjunto de roles, políticas, hardware, software y procedimientos necesarios para crear, administrar, distribuir, usar, almacenar y revocar certificados digitales y administrar el cifrado de clave pública.

Se asegura:

- **Integridad**: El mensaje no ha sido cambiado.
- **No repudio**: La capacidad de demostrar o probar la participación de las partes
- **Identificación**: Mecanismo o proceso que provee la capacidad de identificar a un usuario de un sistema.
- **Autenticación**: Permite verificar la identidad o asegurar que un usuario es quien dice ser.

### 7.1. Elementos básicos de una PKI

![Elementos básicos de una PKI](elementosBasicosDePki.png)
_Elementos básicos de una PKI_

- **CA**: Autoridad de Certificación
- **VA**: Autoridad de Validación
- **RA**: Autoridad de Registro

<iframe width="560" height="315" src="https://www.youtube.com/embed/ysfBTecjGIY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{:.question}
¿Qué es un hash? ¿Para qué se usa?

{:.question}
¿Qué es la integridad?

{:.question}
¿Se puede usar cifrado simétrico para realizar una firma electrónica?

{:.question}
¿Qué es el no repudio?

{:.question}
¿Es lo mismo cifrar que aplicar una función hash?

{:.question}
¿Qué información hay en el fichero /etc/shadow? ¿Qué es el salt o salto y para qué sirve?


## 8. Bibliografía

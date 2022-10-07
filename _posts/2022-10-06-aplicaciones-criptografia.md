---
title: "Aplicaciones de la criptografía"
date: 2022-10-06 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría]
img_path: /assets/img/aplicaciones-criptografia/
---

## 1. Introducción

Las aplicaciones de la criptografía son:

- PKI
- Firma digital
- Certificados digitales
- DNIe
- SSL y TLS
- Cifrado de archivos

## 2. PKI

PKI (Public Key Infraestructure o Infraestructura de clave pública) es un conjunto de roles, políticas, hardware, software y procedimientos necesarios para crear, administrar, distribuir, usar, almacenar y revocar certificados digitales y administrar el cifrado de clave pública.

Se asegura:

- **Integridad**: El mensaje no ha sido cambiado.
- **No repudio**: La capacidad de demostrar o probar la participación de las partes
- **Identificación**: Mecanismo o proceso que provee la capacidad de identificar a un usuario de un sistema.
- **Autenticación**: Permite verificar la identidad o asegurar que un usuario es quien dice ser.

### 2.1. Elementos básicos de una PKI

![Elementos básicos de una PKI](elementosBasicosDePki.png)
_Elementos básicos de una PKI_

- **CA**: Autoridad de Certificación
- **VA**: Autoridad de Validación
- **RA**: Autoridad de Registro

<iframe width="560" height="315" src="https://www.youtube.com/embed/ysfBTecjGIY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


{:.question}
¿Qué es la integridad?

{:.question}
¿Se puede usar cifrado simétrico para realizar una firma electrónica?

{:.question}
¿Qué es el no repudio?

{:.question}
¿Qué información hay en el fichero /etc/shadow? ¿Qué es el salt o salto y para qué sirve?

## 3. Firma electrónica

La firma electrónica es un conjunto de datos electrónicos que acompañan o que están asociados a un documento electrónico y cuyas funciones básicas son:

- **Identificar al firmante de manera inequívoca**.
- **Asegurar la integridad del documento firmado**. Asegura que el documento firmado es exactamente el mismo que el original y que no ha sufrido alteración o manipulación.
- **Asegurar el no repudio del documento firmado**. Los datos que utiliza el firmante para realizar la firma son únicos y exclusivos y, por tanto, posteriormente, no puede decir que no ha firmado el documento.

Generalmente, la ley equipara la firma electrónica a la firma manuscrita.

Podemos precisar varios tipos:

- Firma electrónica **simple**: contempla los datos electrónicos empleados por la persona firmante. Es la que posee un menor nivel de seguridad. Por ejemplo: firma digitalizada.
- Firma electrónica **avanzada**: permite, además de conocer a la persona firmante, saber si se han efectuado cambios posteriormente. Por ejemplo: firma digital.
- Firma electrónica **cualificada**: se trata de una firma electrónica avanzada que ha sido generada por un dispositivo capacitado para la creación de firmas electrónicas. Por ejemplo: firma digital.


### 3.1. Proceso básico de firma electrónica

El proceso básico que se sigue para la firma electrónica es el siguiente:

1. El usuario dispone de un documento electrónico (una hoja de cálculo, un pdf, una imagen, incluso un formulario en una página web) y de un certificado que le pertenece y le identifica.
1. La aplicación o dispositivo digital utilizados para la firma realiza un resumen del documento. El resumen de un documento de gran tamaño puede llegar a ser tan solo de unas líneas. Este resumen es único y cualquier modificación del documento implica también una modificación del resumen.
1. La aplicación utiliza la clave privada para codificar el resumen.
1. La aplicación crea otro documento electrónico que contiene ese resumen codificado. Este nuevo documento es la firma electrónica.

## 4. Firma digital

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo firma electrónica que firma digital?</summary>
  <div class="card-body" markdown="1">

La **firma electrónica** es por tanto un conjunto de datos electrónicos que acompañan a una determinada información también en formato electrónico. Realizar una firma electrónica quiere decir que una persona física verifica una acción o procedimiento mediante un medio electrónico, dejando un registro de la fecha y hora de la misma.

Una **firma digital** es una implementación técnica específica de algunas firmas electrónicas mediante la aplicación de algoritmos criptográficos. Por tanto, se refieren a la tecnología de cifrado / descifrado en la que se basan algunas firmas electrónicas como la avanzada y cualificada.

![Firma electrónica vs firma digital](firmaElectronicaVsFirmaDigital.png)
_Firma electrónica vs firma digital_

  </div>
</details>

<iframe width="560" height="315" src="https://www.youtube.com/embed/JRYUxqghPG4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

![Proceso de firma digital](procesoFirmaDigital.png)
_Proceso de firma digital_

<details class="card mb-2">
  <summary class="card-header question">¿Qué es la firma digitalizada?</summary>
  <div class="card-body" markdown="1">

La firma digitalizada es la conversión del trazo de una firma en una imagen. Para obtener tu propia firma digitalizada tienes que realizarla sobre un papel y escanearla. O bien realizarla mediante algún tipo de hardware, como pueden ser los pads de firma, que te permiten guardar la imagen de tu firma en el ordenador - en formato .jpg o .png - y utilizarla cada vez que la necesites.

La firma digitalizada se considera firma electrónica simple, con lo cual es legal. Pero no ofrecen ninguna garantía respecto a la identidad del firmante (que es una característica de las firmas simples).

Además, las firmas digitalizadas se pueden falsificar muy fácilmente. Con lo que resulta paradójico que este tipo de firmas sea de las más utilizadas por la mayoría de las personas para firmar, y dar su consentimiento, en muchos documentos y contratos.

  </div>
</details>

## 5. Certificado digital

Es, principalmente, un documento digital que contiene nuestros datos identificativos que están autentificados por un organismo oficial. El certificado digital es un documento que confirma nuestra identidad en internet como Persona Física y es obligatorio para poder consultar y realizar trámites con la Administración Pública.

![Certificado digital](certificadoDigital.png)
_Certificado digital_

{:.question}
¿Se puede validar un certificado sin conexión a Internet?

{:.question}
¿Qué es una lista de revocación de certificados?


## 6. Bibliografía

- [¿Qué diferencia una firma electrónica de una digital?](https://www.santander.com/es/stories/firma-electronica-vs-firma-digital)
- [Diferencias entre la firma electrónica, la firma digital y la firma digitalizada](https://blog.signaturit.com/es/en-que-se-diferencian-la-firma-electronica-la-firma-digital-y-la-firma-digitalizada)
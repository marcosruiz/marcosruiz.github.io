---
title: Servicio de email
date: 2022-02-06 19:05:00 +0100
categories: [Sistemas Microinformáticos y Redes, Servicios en Red]
tags: [gnu linux, comandos, terminal, bash, servicios en red, ssh, seguridad informática, smr, teoría, email, correo electrónico, smtp, imap, pop3, mime]
---

{:.section}
## Cuentas de correo, alias y buzones

En el mundo del correo electrónico existe cierta terminología básica que debe conocerse:

- **Cuenta de correo:** una cuenta de correo nos permite enviar y recibir correos electrónicos. Asociado a cada cuenta de correo tendremos que tener, necesariamente, un nombre de usuario y una contraseña que nos identifican como usuario legitimo de correo electrónico. Ese nombre de usuario y contraseña nos permiten enviar correos y leer los que hemos recibido. Básicamente consiste en un espacio de almacenamiento (buzón de usuario) que un determinado proveedor nos ofrece y un conjunto de facilidades asociadas a la cuenta de correo. 
- **Buzones de correo:** se refiere al espacio de almacenamiento disponible en un servidor de correo que almacena los correos electrónicos dirigidos a una determinada dirección de email (usuario@dominio.com). El buzón de correo electrónico es similar al buzón de correo postal que tenemos en nuestras casas; el cartero depositará en el buzón todas las cartas dirigidas a nosotros y, posteriormente, nosotros con nuestra llave del buzón accederemos a este y recogeremos las cartas. Siguiendo esta analogía, la llave del buzón sería nuestro nombre de usuario y contraseña. 
- **Alias de correo:** el alias de correo es una dirección de email (usuario@dominio.com) que no tiene un buzón as0ciado sino que lo que se hace es que todo el correo dirigido a esa dirección será reenviado a un conjunto de direcciones de correo que sí tienen buzón. El uso típico de los alias es el de tener una dirección genérica (comercial@empresa.es) Trente a una personal (menganito@empresa.es) en los casos en los que interese.

{:.section}
## Descripción general

- **SMTP:** El protocolo para transferencia simple de correo (en inglés: Simple Mail Transfer Protocol o SMTP) es un protocolo de red utilizado para el intercambio de mensajes de correo electrónico entre computadoras u otros dispositivos
- **IMF:** Describe el formato que deben seguir los correos electrónicos.
- **MIME:** Describe el mecanismo mediante el cual se pueden enviar ficheros adjuntos y mensajes de texto internacional en un email.

- **MUA**: (Mail User Agent, Agente de Usuario de Correo), es el sistema que se encarga de recibir y enviar emails usando los protocolos STMP (para el envío) y POP3 o IMAP (para la recepción). Ejemplos: Gmail, Yahoo, Outlook, Thunderbird, etc.
- **MTA**: (Mail Transfer Agent, Agente de Transferencia de Correo), es el sistema que se encarga de tomar el email de un MUA o de otro MTA y entregarlo a otro MTA o a un MDA, en caso de que el email pertenezca al dominio propio del MTA. Ejemplo: Postfix.
- **MDA**: (Mail Delivery Agent, Agente de Entrega de Correo), es el sistema que se encarga de la recpeción del email por parte de un MTA, y lo almacena de la forma que tenga configurada. Los MDA pueden almacenar en disco, base de datos o llamar a otro programa para hacer el procesado de emails (p.ej: listas de correo, sistemas de control de incidencias, etc.). Ejemplo: Maildir o mailbox.

{:.question}
¿Qué es Dovecot?

![img-description](/assets/img/servicio-email/proceso-envio-email.png)
_Proceso de envio de email_

Funcionamiento de un servidor de correo:

1. Para enviar un correo electrónico usamos un MUA que lo transfiere al servidor de correo electrónico (MTA) utilizando el protocolo SMTP.
2. El MTA recibe el correo y lo envía al MTA del destinatario utilizando el protocolo SMTP.
3. El MTA del destinatario almacena el correo en el buzón correspondiente, función que en algunos casos realiza un programa específico que se denomina MDA.
4. El mensaje de correo permanece en el buzón hasta que el usuario que actúa como destinatario, utiliza su MUA y accede a su buzón a través de alguno de los distintos mecanismos posibles, siendo los más habituales los protocolos POP o IMAP.

{:.section}
## Formato de los mensajes de correo electrónico

A continuación se muestra un ejemplo de email sencillo:

```
Delivered-To: amunozf@chabacier.es
Received: by 2002:a2e:2151:0:0:0:0:0 with SMTP id h78-v6csp482083ljh;
        Wed, 24 Oct 2018 04:46:03 -0700 (PDT)
Received: from smtp.chabacier.es ([217.111.X.X])
        by mx.chabacier.es with SMTP id m15-v6si1661584edp.114.2018.10.24.04.45.18
        for <mruizg@chabacier.es>;
        Wed, 24 Oct 2018 04:46:02 -0700 (PDT)
Date: Wed, 24 Oct 2018 04:46:02 -0700 (PDT)
Message-Id: <5bd05b7a.1c69fb81.3cefc.5b19SMTPIN_ADDED_MISSING@mx.google.com>

Hola, soy Marcos.
Te escribo para saber de ti.
Un saludo.
```

{:.section}
## Protocolos de servicio de descarga de correo electrónico

{:.subsection}
### POP3

POP3 (Post Office Protocol versión 3) es un protocolo de correo entrante unidireccional que descarga una copia de los mensajes desde un servidor de correo electrónico a una máquina local. Una vez que el protocolo de correos completa el proceso, elimina los datos originales de la bandeja de entrada del servidor.

Sin embargo, hoy en día muchos proveedores dan la opción de mantener las copias originales intactas, lo que permite a los usuarios ver el mismo contenido cuando acceden a los mensajes desde una plataforma diferente.

En general, recomendamos esta configuración para las personas que sólo utilizan un dispositivo para acceder a los correos electrónicos y quieren ver sus mensajes sin conexión. También es útil para aquellos que quieren liberar el espacio de la bandeja de entrada que casi excede su capacidad.

Ten en cuenta que este protocolo no puede sincronizar por defecto el contenido de tu bandeja de entrada sin conexión con su contraparte en línea. Así que si el dispositivo que almacena los mensajes se pierde o se rompe, podrías perder todos los que hayas guardado.

Puerto POP3 por defecto para establecer una conexión con un servidor de correo electrónico es 995 (Puerto SSL/TLS, también conocido como POP3S).

{:.subsection}
### IMAP

A diferencia de POP3, IMAP (Internet Message Access Protocol) es un protocolo de correo entrante bidireccional que sólo descarga los encabezados del correo electrónico en lugar de su contenido completo.

Como resultado, los mensajes de correo electrónico reales se mantienen en el servidor después de ser recuperados para su visualización, haciéndolos accesibles desde otra plataforma. Este protocolo también sincroniza los cambios realizados en el cliente de correo electrónico con el servidor, de ahí la comunicación bidireccional.

Esta configuración se recomienda para aquellos que quieran interactuar con sus mensajes de correo electrónico en varios dispositivos, y no tener que preocuparse de perder los más importantes en caso de que un dispositivo se rompa o sea robado. Otra ventaja de utilizar IMAP es la facilidad para encontrar un mensaje específico mediante una palabra clave.

Sin embargo, es necesario tener una conexión estable a Internet para poder acceder a todos los correos almacenados en el servidor IMAP. El límite de espacio de almacenamiento de la cuenta de correo electrónico también puede suponer algunos problemas para tus mensajes, sobre todo si lo utilizas con mucha frecuencia.

Puerto IMAP por defecto que utiliza la conexión IMAP es 993 (Puerto SSL/TLS, también conocido como IMAPS).

{:.section}
## Protocolo SMTP

Ahora que hemos aprendido sobre los protocolos de entrada, POP3 vs IMAP, echemos un vistazo al que se utiliza para manejar los correos electrónicos de salida.

El Protocolo simple de transferencia de correo (SMTP) se utiliza para enviar correos electrónicos desde un cliente local a la dirección de un destinatario. Trabaja en conjunto con un software llamado agente de transferencia de mensajes (MTA) para transferir los mensajes electrónicos a sus destinos correctos.

Además de enviar correos, este protocolo también actúa como protección para filtrar qué mensaje pasa. Regula el límite de cuántos mensajes puede enviar una cuenta en un periodo de tiempo.

Puerto SMTP por defecto utilizado por este protocolo es 465 (Puerto SSL/TLS, también conocido como SMTPS)

{:.section}
## Extensiones MIME

Multipurpose Internet Mail Extensions o MIME (en español "extensiones multipropósito de correo de internet") son una serie de convenciones o especificaciones dirigidas al intercambio a través de Internet de todo tipo de archivos (texto, audio, vídeo, etc.) de forma transparente para el usuario. Una parte importante del MIME está dedicada a mejorar las posibilidades de transferencia de texto en distintos idiomas y alfabetos. En sentido general las extensiones de MIME van encaminadas a soportar:

- Texto en conjuntos de caracteres distintos de US-ASCII;
- adjuntos que no son de tipo texto;
- cuerpos de mensajes con múltiples partes (multi-part);
- información de encabezados con conjuntos de caracteres distintos de ASCII.

Prácticamente todos los mensajes de correo electrónico escritos por personas en Internet y una proporción considerable de estos mensajes generados automáticamente son transmitidos en formato MIME a través de SMTP. Los mensajes de correo electrónico en Internet están tan cercanamente asociados con el SMTP y MIME que usualmente se les llama mensaje SMTP/MIME.

{:.section}
## Spam

Spam es un tipo de mensaje con contenido no deseado y no solicitado por el receptor. Es común que estos mensajes también contengan contenido ilícito yendo desde la venta de fármacos, drogas, productos fraudulentos o proposiciones comerciales fraudulentas o sexuales. 

{:.section}
## Servidores de correo electrónico en sistemas libres

Instalación:

```console
# apt install dovecot-postfix
```

El archivo de configuración principal es /etc/postfix/main.cf.

Propiedades interesantes:

- **luser_relay**: indica la dirección "catch-all", es decir, una dirección que recibirá todo el correo dirigido a usuarios desconocidos. Si no se especifica, el correo dirigido a usuarios desconocidos se rechazará. 
- **message_size_limit**: indica el tamaño máximo de cada mensaje en bytes. Si no se indica nada, el tamaño máximo será 10240000 bytes. 
- **mydomain**: indica el dominio principal del servidor. Si no se indica nada se toma el dominio del parámetro "myhostname". 
- **mydestination**: especifica el conjunto de dominios que se van a considerar locales. Es decir, en este ejemplo, todo lo que vaya dirigido a usuario@mi-empresa-sa.com, usuario@jaime-desktop, usuario@localhost.localdomain o usuario@localhost será tratado de forma idéntica y entregado a «usuario» en este servidor. Esto nos permite crear alias de dominio. OJO, no los confundamos con los alias de usuario que son dis tintos y que se configuran en el fichero /etc/aliases. 
- **myhostname**: indica el nombre completo del servidor y es la cadena que se usa cuando el servidor envía al cliente el mensaje inicial en el diálogo SMTP En este caso, hemos tenido que modificarlo manualmente. 
- **mynetworks**: son la lista de direcciones IP a las que se les permite hacer relay» sin autentificarse. Es decir, que se les permite enviar un correo a un usuario no local sin tener que autenticarse. En caso de ser imprescindible, debe quedar limitado a nuestra red de área local. Por ejemplo, 192.168.254.0/24.
- **proxy_interfeces**: esta opción se usa si nuestro ordenador está detrás de un router NAT o de un proxy. Sirve para indicar la dirección IP pública del servidor.

## Preguntas que debes saber contestar tras esta unidad

- ¿Qué es una cuenta de correo?
- ¿Qué es un buzón de correo?
- ¿Qué es un alias de correo?
- ¿Para qué sirve SMTP?
- ¿Qué es IMF?
- ¿Qué es MIME?
- ¿Para qué sirve IMAP?
- ¿Para qué sirve POP?
- ¿Qué es MUA?
- ¿Qué es MTA?
- ¿Qué es MDA?
- ¿Qué es el spam?
- ¿Qué es Thunderbird?

## Bibliografía

- [Guía detallada de POP3, IMAP y SMTP para principiantes
Guía detallada de POP3, IMAP y SMTP para principiantes](https://www.hostinger.es/tutoriales/smtp-pop-imap)
- [Protocolo para transferencia simple de correo (Wikipedia)](https://es.wikipedia.org/wiki/Protocolo_para_transferencia_simple_de_correo)
- [Protocolo de oficina de correo (Wikipedia)](https://es.wikipedia.org/wiki/Protocolo_de_oficina_de_correo)
- [Protocolo de acceso a mensajes de Internet (Wikipedia)](https://es.wikipedia.org/wiki/Protocolo_de_acceso_a_mensajes_de_Internet)
- [¿Cómo funciona el sistema de correo?](https://altenwald.org/2009/04/06/como-funciona-el-sistema-de-correo/)
- [Multipurpose Internet Mail Extensions (Wikipedia)](https://es.wikipedia.org/wiki/Multipurpose_Internet_Mail_Extensions)


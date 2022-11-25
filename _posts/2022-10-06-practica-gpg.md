---
title: "Práctica: GPG"
date: 2022-10-06 09:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [gnu linux, comandos, terminal, bash, seguridad informática, seguridad activa, smr]
---

## Objetivo

El objetivo de esta práctica va a ser aprenderá a usar la herramienta gpg de Linux para el cifrado y descifrado de información mediante las técnicas de criptografía simétrica y asimétrica.

Duración: 2 horas

## Entrega y presentación

La entrega de esta práctica debe ser un fichero PDF con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_P\<NúmeroDeLaPrácticaCon2Dígitos\>.pdf". Por ejemplo, en mi caso el nombre del fichero PDF sería "RuizGarcía_Marcos_P03.pdf".

Asegúrate de que el documento PDF cumple con los siguientes parámetros:

1. Debe contener una portada con título, nombre de la asignatura, curso, autor y fecha de realización.
2. Debe tener un índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
3. Debe tener cada página numerada.
4. Cada actividad debe estar numerada. 
5. Cada actividad debe tener **el enunciado en negrita** y la respuesta en texto normal.
6. Cada imagen debe tener un pie de foto la cual tenga el siguiente formato: "Figura \<número\>: \<BreveDescripciónDeLaFigura\>".
7. El documento no debe contener faltas ortográficas.
8. Los comandos y ficheros de configuración que hayas utilizado deben quedar reflejados en el PDF de la entrega en texto para permitirte copiar y pegar el día del examen todos los comandos de una manera rápida.
9. Los comandos y documentos de configuración que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$sudo apt install neofetch`.
10. Para las actividades a mano se deberá hacer una foto a la resolución del ejercicio y añadirla al PDF. 

## Evaluación

La realización de la práctica valdrá un 50% y el test sobre la misma el otro 50%.

## Actividades

A continuación se listan las actividades que se deben realizar.

{:.activity}
### Instalar Zorin OS Lite en Virtual Box

Seguir TODOS los pasos de el artículo [Instalar Zorin OS Lite en Virtual Box](/posts/instalar-zorin-lite-os/). Al final del mismo artículo hay una sección de errores habituales.

{:.activity}
### Cifrado simétrico

Al utilizar la criptografía simétrica la clave para encriptar/desencriptar información va a ser la misma en ambos casos.

#### Paso 1

Deberás instalar la herramienta gpg en nuestro Zorin.

```console
$sudo apt install gpg
```

#### Paso 2

A continuación crearás dos usuarios. Dichos usuarios serán "\<usuario\>" y "\<usuario\>2". Los dos poseerán la misma contraseña. En mi caso "\<usuario\>" es "mrug".

{:.question}
¿Sabrías crear usuarios sin usar la interfaz gráfica de Zorin OS Lite?

#### Paso 3

El usuario "\<usuario\>" creará un directorio, llamado "cifrado" donde vamos a trabajar. En él crearás un fichero de prueba llamado mensaje.txt (Para crear dicho fichero podemos utilizar la herramienta fortune, que ofrece aleatoriamente refranes, chistes, etc…)

```console
$sudo apt install fortune
$fortune > mensaje.txt
```

{:.question}
¿Sabes exactamente que hace el símbolo `>`?

#### Paso 4

Para cifrar con clave simétrica puedes consultar el [siguiente artículo](https://www.genbeta.com/desarrollo/manual-de-gpg-cifra-y-envia-datos-de-forma-segura) en su sección de cifrado simétrico. Gpg ofrece por defecto un método de cifrado (si no indicamos ninguna opción) de cifrado como ficheros binarios. Para resolverlo tenemos el parámetro `-a` que genera un fichero cifrado pero compuesto por caracteres ASCII

Archivo binario:

```console
$gpg --symmetric mensaje.txt
```

Caracteres ASCII:

```console
$gpg --symmetric -a mensaje.txt
```

En caso de cifrar un mensaje en modo binario, obtendremos un fichero con la extensión .gpg. Si ciframos el fichero con caracteres ASCII no tendrá la extensión .gpg sino .asc. Cifra el fichero tanto de manera binaria como ASCII para probar los dos modos de cifrado.

> 📷 Realiza capturas de pantalla de este proceso cifrado y muestra cómo se ven los archivos cifrados de modo binario y en ASCII.
{:.prompt-info}

#### Paso 5

Una vez hayas cifrado el archivo puedes borrar el que aparece sin cifrar y los encriptados los subes a la nube. Ahora iniciarás sesión con el usuario "\<usuario\>2" y desencriptas dichos archivos conociendo la clave y mediante el siguiente comando.

```console
$gpg --decrypt mensaje.asc
```

> 📷 Realiza capturas de pantalla en el "\<usuario\>" mostrando como has desencriptado los mensajes y cuál es su contenido.
{:.prompt-info}

#### Paso 6: Uso de otro algoritmo de cifrado

Para consultar los algoritmos disponibles, puedes ejecutar el siguiente comando:

```console
$gpg --version 
```

Puedes probar con alguno de los siguientes algoritmos (Cypher: 3DES, CAST5, BLOWFISH, AES, AES192, AES256, TWOFISH, CAMELLIA128, CAMELLIA192, CAMELLIA256)

Por defecto gpg usa el algoritmo de cifrado AES256. Podemos cambiar el algoritmo de cifrado mediante el parámetro `--cipher-alg`. Si tienes dudas puedes consultar el artículo [GPG Encryption Guide - Part 4 (Symmetric Encryption)](https://tutonics.com/2012/11/gpg-encryption-guide-part-4-symmetric.html).

#### Paso 7

Si quieres ejecutar varios algoritmos de encriptación y no quieres que cada vez que ejecutes el comando se machaque el archivo .gpg o .asc correspondiente, puedes usar la opción `-o` y a continuación indicar el nombre del archivo que vas a querer crear (si pones como extensión del archivo el nombre del algoritmo que has usado para encriptar te será sencillo poder distinguir los distintos archivos que usan diferentes algoritmos de encriptación), por ejemplo:

- `gpg --symmetric -a -o mensaje.3des mensaje.txt` cuando encriptes con 3DES.
- `gpg --symmetric -a -o mensaje.twofish mensaje.txt` cuando encriptes con twofish.

#### Paso 8

Encripta un archivo usando los algoritmos twofish y camellia256 y genera los archivos mensaje.twofish y mensaje.camellia256. 

> 📷 Realiza capturas de pantalla mostrando como encriptas usando estos 2 algoritmos y otras en las que muestres mediante el comando cat el contenido de los archivos ya encriptados.
{:.prompt-info}

#### Paso 9

Descifra el archivo [mensajeSimetricoMrug.twofish](/assets/img/practica-gpg/mensajeSimetricoMrug.twofish) usando como clave la palabra (Aneto). 

> 📷 Realiza una captura de pantalla en la que se vea cómo has procedido para descifrar este archivo y el contenido que efectivamente has obtenido.
{:.prompt-info}

{:.activity}
### Cifrado asimétrico

La herramienta gpg sirve tanto para el cifrado simétrico como asimétrico. 

#### Paso 1

En esta ocasión, el usuario "\<usuario\>", generará un par de claves de criptografía asimétrica, es decir, la clave pública y la clave privada. Este proceso se detalla en artículo [Cifrado asimétrico con GPG en Linux - Tutorial con ejemplos](https://parzibyte.me/blog/2019/06/05/cifrado-asimetrico-gpg-linux-tutorial-ejemplos/). Para generar las claves, procederemos con el siguiente comando:

```console
$gpg --full-generate-key
```

Se nos pedirá que elijamos entre varios algoritmos de clave pública:

```
(1) RSA y RSA (por defecto)
(2) DSA y ElGamal
(3) DSA (sólo firmar)
(4) RSA (sólo firmar)
```

Elegiremos la opción (2).

#### Paso 2

Indicamos el nombre y apellidos de "\<usuario\>", así como una cuenta de correo asociada a dicho usuario (\<usuario\>@\<centro\>.\<extensión\>)  y elegimos como tamaño de la clave 1024 (Podemos elegir entre 1024 y 3072 bits). Podemos elegir también la fecha de caducidad de la clave. Al finalizar nos saldrá algo de este estilo:

```console
pub   dsa2048 2022-10-21 [SC]
      56CB2A9ED954BD25D7F488F44C7642D505D93766
uid                      Marcos Ruiz García <mrug@tiempos.org>
sub   elg2048 2022-10-21 [E]
```

#### Paso 3

Para ver las listas de claves generadas, tenemos el comando:

```console
$gpg --list-keys
```

> 📷 Realiza la generación de claves para el usuario "\<usuario\>" de la manera que se te ha indicado anteriormente. Realiza capturas de pantalla donde se vea como se ha llevado el proceso de generación de claves. Además, genera un par de claves para un usuario "\<usuario\>3". A continuación, investiga como borrar las claves (pública y privada) de "\<usuario\>3". Haz una captura de pantalla donde se vea el proceso de generación y borrado. Si tienes alguna duda puedes consultar el artículo [Chuleta de comandos para GPG](https://elbauldelprogramador.com/chuleta-de-comandos-para-gpg/).
{:.prompt-info}

#### Paso 4

Una vez que hemos acabado el proceso de generar las claves (pública y privada), deberemos comunicar a la persona que quiera cifrar un mensaje cual es nuestra clave pública, como se te ha comentado en las clases teóricas. Para descifrar dicho mensaje, solo podrá hacerlo aquel que posea la clave privada. Por tanto, siguiendo nuestro ejercicio, el usuario "\<usuario\>" es quien ha generado tanto la clave pública como la clave privada. La clave pública deberá serle comunicada al usuario "\<usuario\>2" para que pueda cifrar mensajes que solo "\<usuario\>" podrá leer. En los siguientes pasos deberás realizar la exportación de la clave pública en el usuario "\<usuario\>", y su importación en el usuario "\<usuario\>2".

#### Paso 5

Para exportar la clave pública, deberás ejecutar el siguiente comando: 

```console
$gpg -a  --export  -o  <fichero_donde_guardaras_la_clave_publica>  <usuario>
```

Por ejemplo:

```console
$gpg --export  -o  mrug.public.key  mrug
```

También existe la posibilidad, como se indica en el artículo [Cifrado asimétrico con GPG en Linux - Tutorial con ejemplos](https://parzibyte.me/blog/2019/06/05/cifrado-asimetrico-gpg-linux-tutorial-ejemplos/) de hacerlo indicando la dirección de correo asociada a un usuario y en vez de usar la opción `-o`, redirigiendo a un fichero con `>`.

```console
$gpg --export -a mrug@tiempos.org > mrug.public.key
```

Ejemplo exportación clave pública:

```console
$gpg --export -a mrug@tiempos.org > mrug.public.key 
```

Ejemplo exportación clave privada:

```console
$gpg -a --export-secret-key mrug@tiempos.org > mrug.private.key
```

> 📷 Realiza una captura de pantalla en la que se vea cómo has procedido para exportar el archivo de la clave pública. Incluye también una captura de pantalla donde se vea el contenido de dicha clave pública.
{:.prompt-info}

#### Paso 6

Importar la clave pública en otro usuario resulta muy sencillo. Abrimos sesión con ese usuario y ejecutamos el siguiente comando:

```console
$gpg --import mrug.public.key
```

Podemos comprobar de nuevo, las claves disponibles en el llavero mediante el comando:

```console
$gpg --list-key
```

> 📷 Muestra capturas de pantalla en las que se vea el usuario "\<usuario\>2" que se ha llevado a cabo la importación de la clave pública.
{:.prompt-info}

#### Paso 7

Cifrar con la clave pública. Cuando ya hayamos importado en el usuario "\<usuario\>2" podremos ya encriptar mensajes.

Vamos a crear un archivo para cifrar usando la herramienta fortune:

```console
$fortune > mensaje.txt
```

Una vez que tenemos el archivo a cifrar, procederemos de la siguiente manera:

```console
$gpg -v -a -o mensaje.cifrado --encrypt --recipient mrug@tiempos.org mensaje.txt
```

- `-v` (Verbose) es para obtener información adicional 
- Las opciones `-a` y `-o` ya las conocemos: Archivo ASCII y el contenido encriptado lo dejaremos en un archivo mediante `-o` (En concreto, ese archivo será mensaje.cifrado)
- `--encrypt` indica que queremos cifrado asimétrico
- `--recipient` indica el identificador de clave pública que vamos a usar (mrug@tiempos.org)
- Finalmente, nombre del fichero que se encripta (mensaje.txt)

Antes de ejecutar el comando, Nos da una advertencia: ¡¡Cualquiera podría haber cambiado el archivo .pub antes de que se hubiera hecho el import de la clave!!

> 📷 Realiza una captura de pantalla en la que se vea cómo has procedido para encriptar el archivo el archivo con la clave pública y el mensaje de advertencia. Muestra también el contenido del mensaje que querías encriptar antes de ser encriptado y después de ser encriptado.
{:.prompt-info}

#### Paso 8: Descifrar con la clave privada

Una vez que el mensaje ha sido encriptado, podríamos transmitirlo por la red tranquilamente (en un correo electrónico, mediante ftp o como quisiéramos). Almacena el mensaje en tu drive. Vuelve a tu usuario "\<usuario\>" y descarga dicho archivo encriptado. Cuando recibamos el archivo cifrado (texto.cifrado), para desencriptarlo únicamente tenemos que ejecutar el siguiente comando y saber la clave de acceso al anillo de claves. Ahí está nuestra clave privada que nos permitirá abrirlo.

```console
$gpg --decrypt mensaje.cifrado
```

Nos pide que introduzcamos la contraseña, y efectivamente podremos ver el contenido del archivo.

> 📷 Realiza una captura de pantalla en la que se vea cómo has procedido para desencriptar el archivo en el usuario "\<usuario\>2".
{:.prompt-info}

Descárgate también el archivo [mensajeAsimetricoMrug.cifrado](/assets/img/practica-gpg/mensajeAsimetricoMrug.cifrado) y desencríptalo. Para ello, tendrás que importarte en tu usuario "\<usuario\>" la clave privada [mrug.private.key](/assets/img/practica-gpg/mrug.private.key) que yo te proporciono. La clave de acceso al anillo de claves "Aneto".

> 📷 Pon capturas de pantalla de dicho proceso y el contenido del archivo que te proporciono desencriptado.
{:.prompt-info}

{:.question}
¿Qué es el fingerprint?

## Bibliografía

- [Cifrado asimétrico con gpg](https://fp.josedomingo.org/seguridadgm/u07/gpg2.html)
- [Integridad, firmas y autenticación](https://fp.josedomingo.org/seguridadgm/u07/gpg3.html)

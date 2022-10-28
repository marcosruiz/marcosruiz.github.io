---
title: "Práctica: Firma digital con GPG"
date: 2022-10-24 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, práctica]
img_path: /assets/img/practica-firma-digital-gpg/
---

## Objetivo y duración

El objetivo de esta práctica es conocer:

Duración: - horas.

## Entrega y presentación

La entrega de esta práctica debe ser un fichero PDF con un nombre en el siguiente formato "\<Apellidos\>_\<Nombre\>_P\<NúmeroDeLaPráctica\>.pdf". Por ejemplo, en mi caso el nombre del fichero PDF sería "RuizGarcía_Marcos_P03.pdf".

Asegúrate de que el documento PDF cumple con los siguientes parámetros:

1. Debe contener una portada con título, nombre de la asignatura, curso, autor y fecha de realización.
2. Debe tener un índice actualizado con hiperenlaces a las diferentes secciones y el número de página donde están.
3. Debe tener cada página numerada.
4. Las actividades deberán estar numeradas y ordenadas de manera que se ignore el "3.". Por ejemplo, la sección "3.1. Actividad" será "1. Actividad" o "Actividad 1" en la entrega del alumno.
5. Cada actividad debe tener **el enunciado en negrita** y la respuesta en texto normal.
6. Cada imagen debe tener un pie de foto la cual tenga el siguiente formato: "Figura \<número\>: \<BreveDescripciónDeLaFigura\>".
7. El documento no debe contener faltas ortográficas.
8. Los comandos y ficheros de configuración que hayas utilizado deben quedar reflejados en el PDF de la entrega en texto para permitirte copiar y pegar el día del examen todos los comandos de una manera rápida.
9. Los comandos y documentos de configuración que se muestren en el documento PDF deben tener un estilo de letra monospace como puede ser el tipo de letra Consolas o Courier New. Por ejemplo: `$sudo apt install neofetch`.
10. Para las actividades a mano se deberá hacer una foto a la resolución del ejercicio y añadirla al PDF. 

## Actividades

A continuación se listan las actividades que se deben realizar. Te recuerdo que cada vez que se haga referencia a "\<usuario\>" este deberá ser sustituido por tu nombre de usuario específico, en mi caso será "mrug" debido a que mi correo es mrug@tiempos.org.

{:.activity}
### Firma digital con 2 ficheros

#### Paso 1

En la sesión "\<usuario\>", crearemos un fichero llamado contrato.txt y lo firmaremos con nuestra clave privada para que cualquiera pueda confirmar que es nuestro. Usaremos el parámetro `--detach-sign`, que crea un fichero nuevo solo con la firma (hash del fichero original cifrado). Utilizaremos también el parámetro `-a` para poder observar ese fichero en caracteres ASCII.

```console
$gpg -a --detach-sign contrato.txt
```

Cuando vayamos a firmar, la herramienta nos pedirá contraseña para acceder a nuestra clave privada.

#### Paso 2

El resultado del cifrado será un nuevo fichero contrato.txt.asc. Si lo abres con la herramienta cat, te podrás fijar que la primera línea indica que es una firma (PGP SIGNATURE).

#### Paso 3

Ahora, deberíamos realizar el envío al usuario "\<usuario\>2". Recuerda que al usuario "\<usuario\>2" deberás enviarle 2 ficheros: el fichero original que no lleva la firma (contrato.txt) y la firma (contrato.txt.asc).

#### Paso 4

Iniciarías sesión con el usuario "\<usuario>2" y copiarías los ficheros a tu directorio de  trabajo (/home/\<usuario\>2/practicaFirmaDigitalConGgp). Ahora, lo que deberíamos hacer sería comprobar la firma. Para ello deberás utilizar el parámetro `--verify` junto con el nombre del fichero que lleva la firma (contrato.txt.asc). Te recuerdo que en esta máquina ya estaba la clave pública del usuario "\<usuario\>".

```console
$gpg --verify contrato.txt.asc 
```

El mensaje de la herramienta dice que, efectivamente, el fichero contrato.txt.asc ha sido firmado por el dueño de la clave privada cuya clave pública tenemos almacenada con esa misma identificación (nombre, huella, etc.) También insiste en que no está confirmado que efectivamente esa sea su clave.

#### Paso 5

Puedes probar a alterar algún carácter dentro del fichero original o dentro del fichero cifrado. La verificación fallará.

> 📷 Realiza las capturas de pantalla necesarias con los comentarios pertinentes que te permitan ver como procedes en tus máquinas para llevar a cabo los pasos que se te han explicado anteriormente.
{:.prompt-info}

{:.activity}
### Firma digital con 1 solo fichero

#### Paso 6

Para evitar enviar 2 ficheros al usuario "\<usuario\>2", podemos incluir todo (fichero y firma) en el mismo. Volvemos a la sesión de "\<usuario\>" y ahora firmamos con el parámetro `--clear-sign`.

```console
$gpg -a --clear-sign contrato.txt
```

#### Paso 7

Copia de nuevo dicho fichero en la máquina del "\<usuario\>2". El comando de verificación es el mismo que en el caso de 2 ficheros:

```console
$gpg --verify contrato.txt.asc 
```

#### Paso 8

Hasta ahora, el fichero mensaje.txt.asc estaba accesible, bien porque estaba separado de la firma, bien porque estaba junto a ella pero en texto en claro. Si usamos la opción `--sign` tendremos un fichero único (con el texto y la firma) e ilegible:

```console
$gpg -a --sign contrato.txt 
```

#### Paso 9

De nuevo podemos llevar al directorio de trabajo del usuario "\<usuario\>2", para que haga una copia y lo verifique. Si además queremos extraer el fichero, utilizaremos la opción `--decrypt`.

```console
$gpg --decrypt -o contrato.txt contrato.txt.asc
```

Aunque esta protección es bastante débil, porque cualquiera que tenga la clave pública del "\<usuario\>", tendrá acceso al contenido del fichero.

> 📷 Realiza las capturas de pantalla necesarias con los comentarios pertinentes que te permitan ver como procedes en tus máquinas para llevar a cabo los pasos que se te han explicado anteriormente.
{:.prompt-info}

{:.activity}
### Firma digital encriptada

#### Paso 10

Deberíamos utilizar el cifrado normal, lo que nos llevará a que el usuario "\<usuario\>2" genere su par de claves (Hasta de ahora no había sido necesario).

```console
$gpg --full-generate-key
```

En el "\<usuario\>2" tendremos 2 llaves: las nuestras (publica/privada) y la pública del "\<usuario\>". Puedes comprobarlo mediante el comando:

```console
$gpg --list-keys
```

#### Paso 11

Ahora por fin podemos confirmar que la clave pública del usuario "\<usuario\>" es auténtica. Desde el usuario "\<usuario\>2", utilizaremos el parámetro `--sign-key` y el identificador de la clave.

```console
$gpg --sign-key <usuario>@tiempos.org
```

Desde ahora las verificaciones ya no emitirán el aviso de la clave es sospechosa.

#### Paso 12

Para que el "\<usuario\>" nos puede cifrar el fichero firmado, deberemos seguir el procedimiento conocido:

Exportar la clave pública del "\<usuario\>2":

```console
$gpg -a --export <usuario>2@tiempos.org > <usuario>2.public.key
```

Importarla en el "\<usuario\>":

```console
$gpg --import <usuario>2.public.key
```

En la sesión del "\<usuario\>", podemos usar la opción `--list-keys` para consultar todas las claves que tiene almacenadas.

#### Paso 13

En la sesión del "\<usuario\>", generaríamos un nuevo fichero (contrato2.txt), lo cifraremos para que solo el "\<usuario\>2" pueda recuperarlo y lo firmaremos para que sepa que es nuestro. Primero firmaremos la clave pública del "\<usuario\>2" para evitar mensajes de error. Después ejecutaremos `--sign` y `--encript`.

```console
$gpg --sign-key <usuario>2
$gpg -a --sign --encrypt --recipient <usuario>2 contrato2.txt > contrato2.txt.asc
```

#### Paso 14

Obtendremos el fichero contrato2.txt.asc que es ilegible y lleva dentro el contenido del fichero contrato2.txt  y la firma. Se lo pasaremos al "\<usuario\>2" para que en su sesión pueda descifrarlo, verificar la firma y descifrarlo. Recuerda usar el parámetro `--decrypt`, porque también nos ofrece la confirmación de la firma. Nos pedirá la contraseña que protege la clave privada de "\<usuario\>2", necesaria para descifrar el fichero.

```console
$cat contrato2.txt.asc
$gpg --decrypt -o contrato2.txt contrato2.txt.asc
$cat contrato2.txt
```

Si no tuviéramos la clave privada de "\<usuario\>2", no podríamos descifrar ni por tanto, recuperar el archivo y comprobar la firma. Borra nuestras propias claves con los parámetros `--delete-secrte-key` y `--delete-key`. Comprueba que ya no funciona ni descifrar ni verificar. El mensaje de error indicará que el fichero fue cifrado con una clave que ya no tenemos.

```console
$gpg --delete-secret-key <usuario>2@tiempos.org
$gpg --delete-key <usuario>2@tiempos.org
$gpg --list-key
$gpg --decrypt contrato2.txt.asc
$gpg --verify contrato2.txt.asc
```

> 📷 Realiza las capturas de pantalla necesarias con los comentarios pertinentes que te permitan ver como procedes en tus máquinas para llevar a cabo los pasos que se te han explicado anteriormente.
{:.prompt-info}

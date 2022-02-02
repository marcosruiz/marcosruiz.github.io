---
title: Servicio SSH
date: 2022-01-25 10:30:00 +0100
categories: [Sistemas Microinformáticos y Redes, Servicios en Red]
tags: [gnu linux, comandos, terminal, bash, servicios en red, ssh, seguridad informática, smr, teoría]
---

Pila TCP/IP:

| Aplicación | SSH |
| Transporte | TCP |
| Red | IP (IPv4 y IPv6)  |

El **puerto** TCP asignado es el **22**.

Tipo de servicio: Administración.

## ¿Qué es SSH?

SSH (o Secure SHell) es el nombre de un protocolo y del programa que lo implementa cuya principal función es el **acceso remoto a un servidor** por medio de un canal seguro en el que toda la información está cifrada. 

Proporciona:
- Un mecanismo para autenticar un usuario remoto
- Transferir entradas desde el cliente al host
- Retransmitir la salida de vuelta al cliente

El servicio se creó como un reemplazo seguro para el Telnet sin cifrar y utiliza técnicas criptográficas para garantizar que todas las comunicaciones hacia y desde el servidor remoto sucedan de manera encriptada.

La imagen de abajo muestra una ventana típica de SSH. Cualquier usuario de Linux o macOS puede usar SSH en su servidor remoto directamente desde la ventana del terminal. Los usuarios de Windows pueden aprovechar los clientes SSH como Putty. **Puedes ejecutar comandos shell de la misma manera que lo harías si estuvieras operando físicamente el equipo remoto**.

![img-description](/assets/img/servicio-ssh/ejemplo-ssh.jpg)
_Ejemplo de conexión mediante SSH_

## Comprendiendo las diferentes técnicas de cifrado

La ventaja significativa ofrecida por el protocolo SSH sobre sus predecesores es el uso del cifrado para asegurar la transferencia segura de información entre el host y el cliente. Host se refiere al servidor remoto al que estás intentando acceder, mientras que el cliente es el equipo que estás utilizando para acceder al host. Hay tres tecnologías de cifrado diferentes utilizadas por SSH:

1. Cifrado simétrico
2. Cifrado asimétrico
3. Hashing

Si estás cursando la asignatura de Seguridad Informática también debes leer el artículo [¿Cómo funciona el SSH?](https://www.hostinger.es/tutoriales/que-es-ssh).

## Instalación y configuración de un servidor SSH

Para instalar el servidor SSH ejecutamos la siguiente acción:

```console
$ sudo apt install openssh-server
```

o la siguiente:

```console
$ sudo apt install ssh
```

Ya que si ejecutamos el comando `aptitude search ssh` obtenemos la siguiente información de lo que contiene cada paquete:

```console
$ aptitude search ssh
i A openssh-client                                                                                                 - Cliente del protocolo "Secure Shell" (SSH) para acceso seguro a máquinas remotas                                        
p   openssh-server                                                                                                 - servidor de terminal seguro (SSH) para acceder de forma segura desde máquinas remotas                                   

p   ssh                                                                                                            - Cliente y servidor de «secure shell» (metapaquete)                                                                      
```

### Iniciar, reiniciar y parar el servicio

- Para iniciar el servicio SSH podemos usar el comando `service ssh start`.
- Para reiniciar el servicio SSH podemos usar el comando `service ssh restart`.
- Para parar el servicio SSH podemos usar el comando `service ssh stop`.

Cada vez que hagamos un cambio en un fichero de configuración deberemos reiniciar el servicio. Otra manera de iniciar, reiniciar y parar el servicio es con los siguientes comandos:

```console
$ sudo /etc/init.d/ssh start
$ sudo /etc/init.d/ssh restart
$ sudo /etc/init.d/ssh stop
```

### Fichero /etc/ssh/sshd_config

El fichero /etc/ssh/sshd_config es el fichero principal de configuración del servicio SSH. Para ver una información más completa de este archivo podemos usar el comando `man sshd_config`.

Los parámetros más interesantes son:

1. **AllowGroups**: Esta opción puede ir seguida de una lista de grupos de nombres, separados por espacios. Si se especifica, sólo se permite realizar un login a los usuarios cuyo grupo principal o suplementarios coincida con uno de los patrones establecidos. Se puede usar '*' y '?' como comodines en los patrones.
1. **AllowUsers**: Esta opción puede ir seguida de una lista de usuarios, separados por espacios. Si se especifica, sólo se permite realizar login a los usuarios cuyo nombre concuerde con el patrón. Se pueden usar y '?' para la construcción de patrones.
1. **Banner**: Esta opción indica la ruta de un fichero donde está escrito un mensaje de bienvenida.
1. **DenyGroups**, **DenyUsers**: Similares a los anteriores pero denegando el servicio.
1. **KerberosAuthentication**: Especifica si el método de autentificación Kerberos está permitido. Esto puede llevarse a cabo mediante un ticket Kerberos o si la opción `PasswordAuthentication` está habilitada. En ese caso, la contraseña suministrada por el usuario puede ser validada contra un KDC Kerberos.
1. **ListenAddress**
1. **LoginGraceTime**: El servidor desconecta después de este tiempo a los usuarios que no se hayan validado correctamente. Si el valor es 0, no hay límite de tiempo. Por defecto, 120 (segundos).
1. **PasswordAuthentication**: Especifica si la autentificación por password está admitida. Por defecto, "yes".
1. **PermitRootLogin**: Especifica si el superusuario puede validar usando ssh. Los argumentos posibles son: "yes", "without-password", "forced-commands-only" o "no". El valor por defecto es "yes". Si a esta opción se le asigna "without-password", la autentificación por password se deshabilita para el usuario root.
Si a esta opción se le asigna "forced-commands-only", el login del superusuario con autentificación de clave pública será admitido, pero sólo si la opción del comando se ha especificado (lo que puede ser útil para realizar backups remotos incluso si el login de superusuario no está admitido normalmente). El resto de métodos de autentificación están vetados para el root. Si a la opción se le asigna "no", el root no puede hacer login.
1. **Port**: Especifica el número de puerto al que escucha sshd. El puerto predeterminado es el 22/tcp. Este parámetro admite opciones múltiples.
1. **Protocol**: Especifica las versiones del protocolo que soporta sshd. Las posibilidades son "1" y "2". Las opciones múltiples se separan por comas. El valor por defecto es "2".
1. **PubkeyAuthentication**: Especifica si se admite la autentificación mediante clave pública. Por defecto, "yes". Esta opción sólo se aplica a la versión 2 del protocolo.
1. **StrictModes**: Especifica si sshd debe comprobar los permisos y propietarios de los ficheros del usuario y el directorio home antes de aceptar el login. Es recomendable habilitar esta opción pues los usuarios noveles a veces dejan accidentalmente su directorio o sus ficheros con permisos de escritura universales. El valor por defecto, "yes".
1. **X11Forwarding**: Establece si se permite o no la ejecución remota de aplicaciones gráficas. Si se va a acceder hacia el servidor desde red local, este parámetro puede quedarse con el valor yes. Si se va a permitir el acceso hacia el servidor desde redes públicas, resultará prudente utilizar este parámetro con el valor no.

## Uso del cliente SSH

Si usas GNU Linux o Mac, entonces usar el protocolo SSH es muy fácil. Si utilizas Windows, deberás utilizar un cliente SSH para abrir conexiones SSH. El cliente SSH más popular es PuTTY.

Para usuarios de Mac y GNU Linux, dirígete a tu programa de terminal y sigue este procedimiento:

El comando SSH consta de 3 partes distintas: `ssh <usuario>@<host>`. `<usuario>` representa la cuenta a la que deseas acceder. Por ejemplo, puede que quieras acceder al usuario root, que es básicamente para el administrador del sistema con derechos completos para modificar cualquier cosa en el sistema. `<host>` hace referencia al equipo al que quieres acceder. Esto puede ser una dirección IP (por ejemplo, 244.235.23.19) o un nombre de dominio (por ejemplo, www.xyzdomain.com).

Al pulsar enter, se te pedirá que escribas la contraseña de la cuenta solicitada. Al escribirla, nada aparecerá en la pantalla, pero tu contraseña, de hecho, se está transmitiendo. Una vez que hayas terminado de escribir, pulsa enter una vez más. Si tu contraseña es correcta, verás una ventana de terminal remota.

## Transferir ficheros con SSH

Podemos copiar un fichero a un ordenador remoto de forma segura utilizando la herramienta `scp` de la siguiente manera:

```console
$ scp <rutaArchivoLocal> <usuario>@<host>:<rutaArchivoRemoto>
```

O podemos copiar del ordenador remoto a nuestro equipo local:

```console
$ scp <usuario>@<host>:<rutaArchivoRemoto> <rutaArchivoLocal>
```

Por ejemplo:

```console
$ scp /home/mruizg/Documentos/prueba.txt smr@192.168.1.2:/home/smr/Documentos/prueba.txt
```

{.:pregunta}
¿Qué diferencias hay entre SCP y SFTP?

## Terminal en modo gráfico

Para poder ejecutar aplicaciones gráficas en el host remoto de forma segura, necesitamos hacer tres cosas:

1. Poner la opción `X11Forwarding` a `yes` en el fichero /etc/ssh/sshd_config
1. Conectarnos utilizando la opción `-X` de la siguiente manera `ssh -X <usuario>@<host>`.
1. Una vez conectados, ejecutar `xterm` o la aplicación gráfica que deseemos como podría ser `gedit`.
1. ¿Qué servicio es mejor para transferir ficheros SFTP o SSH?

## Autenticación basada en clave pública

Para autenticarnos utilizando una clave pública debemos activar la opción de configuración `PubkeyAuthentication` para posteriormente generar el par de claves. Recuerdo que la clave pública NUNCA se debe compartir.

En [Generar y añadir claves SSH (para acceso sin contraseña)](http://www.ubuntufacil.com/2014/01/generar-y-anadir-claves-ssh-para-acceso-sin-contrasenia/) está explicado como generar este par de claves para utilizarlas en el servicio SSH.

## Bibliografía

- [¿Cómo funciona el SSH?](https://www.hostinger.es/tutoriales/que-es-ssh)
- [Secure Shell (Wikipedia)](https://es.wikipedia.org/wiki/Secure_Shell)
- [Ataque de REPLAY (Wikipedia)](https://es.wikipedia.org/wiki/Ataque_de_REPLAY)
- [Utilización elemental de ssh](https://github.com/josedom24/serviciosgm_doc/blob/master/linux/acceso/doc/ssh.pdf)
- [Generar y añadir claves SSH (para acceso sin contraseña)](http://www.ubuntufacil.com/2014/01/generar-y-anadir-claves-ssh-para-acceso-sin-contrasenia/)
- [SSH File Transfer Protocol (Wikipedia)](https://es.wikipedia.org/wiki/SSH_File_Transfer_Protocol)
- [SCP vs SFTP: ¿Cuál debería usar para transferir archivos?](https://tecnotec.es/scp-vs-sftp-cual-deberia-usar-para-transferir-archivos/)

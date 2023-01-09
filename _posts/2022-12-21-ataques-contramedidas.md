---
title: "Ataques y contramedidas"
date: 2022-12-21 9:00:00 +0100
categories: [Sistemas Microinformáticos y Redes, Seguridad Informática]
tags: [seguridad informática, smr, teoría, seguridad activa]
img_path: /assets/img/ataques-contramedidas/
---

{:.section}
## Ataques TCP/IP MITM

La familia de protocolos TCP/IP se diseñó a principios de los años setenta. Las limitaciones del hardware de esa época orientaron el diseño hacia la fiabilidad más que hacia la seguridad: son muy inseguros (realmente, Internet es un gigante con pies de barro). 

Son especialmente peligrosos los ataques MITM (Man-In-The-Middle, intermediario): en una comunicación entre dos equipos aparece un tercero que consigue que los paquetes intercambiados pasen por él. Desde ese momento puede leer todo el tráfico (ataque de interceptación) o, lo que resulta más peligroso, alterar los datos para su beneficio (ataque de modificación). 

{:.question}
¿Qué significan las siglas MITM?

El atacante puede interponerse en el tráfico entre origen y destino de dos maneras como se puede ver en la siguiente Figura: 

![Tipos de ataque MITM](tiposDeAtaqueMitm.png)
_Tipos de ataque MITM_

- **Por hardware**. El atacante tiene acceso directo a un elemento de red que forma parte del camino entre el origen y el destino. Por ejemplo, el cable que conectaba el origen con su switch de planta ahora pasa por la máquina del atacante. 
- **Por software** (engaño). El atacante consigue que el origen crea que él es el destino, y también consigue que el destino crea que él es el origen. Es mucho más simple que el anterior porque no hace falta tener acceso físico a los equipos. La segunda ventaja del engaño es que es fácil activar y desactivar el ataque a voluntad. Por tanto, es más difícil detectarlo. 

El ejemplo más típico de ataque de engaño es el **envenenamiento ARP** (ARP poisoning). El protocolo ARP (Address Resolution Protocol) se utiliza para obtener la dirección MAC asociada a una IP; es decir, cuando una máquina (llamémosle María) quiere comunicarse con otra máquina (sea José) de la que sabe su dirección IP (nivel 3 de TCP/IP), obtiene la dirección MAC (nivel 2) mediante ARP. Las llamaremos IP-José y MAC-José, respectivamente.

Para ello, María introduce en la red un paquete broadcast (que llegará a todos los equipos de la subred) preguntando la MAC que corresponde a la IP-José. En condiciones normales, solo José debería contestar con su MAC-José. 

El ataque consiste en que una máquina Juan, conectada al mismo tramo de red que María y José, en un momento dado empieza a generar paquetes de respuesta ARP. Sin que nadie le pregunte, envía un paquete a María diciendo que la MAC de IP-José es MAC-Juan (la MAC de la máquina Juan), y envía otro paquete a José diciendo que la MAC de IP-María también es MAC-Juan. Es decir, intenta convencer a María de que Juan es José, e intenta convencer a José de que Juan es María. 

Por desgracia, estas respuestas espontáneas son aceptadas por María y José. No hay ningún tipo de validación ni correlación con una pregunta anterior, etc. 

{:.subsection}
### Contramedidas para los ataques TCP/IP MITM

Los ataques MITM son difíciles de evitar. Una primera idea es utilizar en todas las máquinas tablas ARP estáticas, renunciando al protocolo dinámico, vista su debilidad. Parece sencillo, pero supone mucho trabajo de mantenimiento: cada vez que llega una nueva máquina, o introducimos una nueva tarjeta de red en una máquina ya existente, hay que actualizar una a una todas las máquinas de la empresa (y pueden ser cientos). 

Es más razonable controlar el acceso a nuestra red: si el atacante no puede conectar su equipo, no podrá lanzar paquetes maliciosos. En este punto es importante recordar las medidas que vimos en el artículo [Seguridad activa de acceso a redes](/posts/seguridad-activa-acceso-redes). 

También es interesante utilizar, siempre que sea posible, protocolos seguros con infraestructura de clave pública (PKI), como vimos en el artículo [Criptografía moderna](/posts/criptografia-moderna/). Cualquier interceptación de mensajes no será provechosa, y el atacante no tiene las claves privadas de los extremos, por lo que no puede suplantarlos. 

Con suficiente presupuesto, la solución definitiva es introducir un NIPS en la red que nos alerte de la presencia de respuestas ARP no solicitadas. 

Realmente, no necesitamos un NIPS muy potente: el ataque es tan sencillo que un simple sniffer lo detecta durante la captura. En la ejecución de cualquiera de los casos prácticos 1 y 2 sobre ataques MITM, podemos fijarnos en que aparece un aviso del propio WireShark sobre la doble asignación MAC-IP: es normal que una dirección MAC pueda servir a varias direcciones IP, pero no es normal que una IP no aparezca asociada a dos MAC distintas. 

Hay una excepción: en algunas soluciones de arquitecturas de alta disponibilidad, la IP de una máquina puede estar en una tarjeta principal o en una tarjeta de respaldo, pero nunca funcionarán las dos a la vez, y cuando se efectúa la conmutación de tarjetas, generalmente el software de red falsea la MAC de la segunda tarjeta para que el resto de los sistemas no se vean afectados por el cambio. Salvo este caso, la inmensa mayoría de las direcciones IP de los paquetes que circulan por la red de una empresa deben estar asociadas a una única MAC. Encontrar asignaciones duplicadas debe hacernos sospechar. 

Por otra parte, aunque puede ser relativamente fácil detectar un ataque MITM de tipo ARP (utiliza paquetes broadcast, que llegan a todos los equipos de la red, entre ellos nuestro sniffer o NIPS), la figura del intermediario se extiende a otros muchos protocolos. En general, son susceptibles de ser atacados todos los protocolos donde no hay autenticación de los equipos que participan en la comunicación. En este punto debemos recordar el concepto de seguridad extremo a extremo, donde no nos importa qué equipamiento de red atraviesan nuestros paquetes, porque estamos seguros de que solo serán aprovechables para el destinatario auténtico. 

{:.section}
## Ataques WiFi con Aircrack-ng 

Como ya vimos en el artículo [Seguridad activa de sistemas operativos](/posts/seguridad-activa-sistemas-operativos/), las redes inalámbricas son particularmente interesantes de atacar porque están muy extendidas (tanto en el ámbito personal como en el empresarial) y porque el atacante no necesita entrar en las instalaciones de la víctima: Basta con situarse lo suficientemente cerca para entrar en la cobertura del access point.

{:.question}
¿Qué es un AP?

Los estándares modernos WPA2 lo han puesto más difícil, pero lo siguen intentando. En este apartado veremos el ataque contra WEP mediante la herramienta aircrack-ng, para ilustrar lo fácil que resulta y por qué este cifrado está completamente abandonado. 

{:.subsection} 
### Contramedidas para los ataques WiFi

La primera solución es evitar utilizar cifrado WEP. Si lo tenemos porque algún dispositivo es incapaz de trabajar con otros protocolos, debemos plantearnos sustituir ese equipo o, si no es técnica o económicamente posible, dejarle un AP WEP para él solo y poner un nuevo AP WPA2 para el resto. 

La segunda medida es reducir la potencia de nuestro AP. Así evitaremos que cualquiera de la calle pueda intentar atacarnos: simplemente no le llega la señal. 

También se puede intentar activar en el AP la lista de MAC permitidas. Aunque es relativamente fácil para un atacante conocer alguna MAC permitida, ya que puede descifrar el tráfico si tiene la clave WEP. Después, tranquilamente modifica la MAC de su máquina y ya puede conectar.

{:.section}
## Ataques web con WebGoat 

Las aplicaciones web aplican la arquitectura cliente-servidor; por tanto, adolecen de los mismos problemas que los protocolos de red. En especial, el ataque MITM. 

La herramienta WebGoat permite ilustrar estos problemas. Al descargarla tenemos un entorno de aplicaciones web (Tomcat) configurado con unas lecciones para enseñar qué peligros corremos. 

{:.question}
¿De que es acrónimo pentesting?

{:.subsection} 
### Contramedidas para ataques web

En este punto quienes deben tomar medidas son los programadores de aplicaciones, más que los técnicos de sistemas. Los ejemplos que hemos visto son suficientemente claros para que los responsables del software que corre en el servidor nunca confíen en que los datos de una petición son válidos solo porque han superado los controles que se han puesto en el navegador. 

La principal misión de esos controles es ahorrar peticiones fallidas, de manera que los servidores no pierden tiempo y el usuario puede corregir sus erratas inmediatamente. 

Es conveniente, además, que el equipo de pruebas de sistemas (responsables de probar una aplicación antes de entregarla al cliente) conozca estas herramientas de interceptación de peticiones, porque pueden ser utilizadas también por cualquier usuario. 

También hay que tener en cuenta que los atacantes pueden combinar distintas técnicas para conseguir sus objetivos. Por ejemplo, hay un ataque conocido como SSLStrip donde primero activan un MITM mediante ARP spoofing y después procesan las peticiones HTTPS que reciben de las máquinas engañadas. El procesamiento consiste en convertirlas en peticiones HTTP para así no utilizar el cifrado, de manera que los paquetes viajen en texto claro (el objetivo son los paquetes de autenticación: usuario y contraseña). 

El ataque es efectivo porque la mayoría de los servidores admiten tanto HTTP como HTTPS. Aunque la página inicial redirige a la versión HTTPS, las demás no. La solución más simple es utilizar servidores que no admitan HTTP. 

{:.section}
## Ataques proxy con Ultrasurf 

En el artículo [Seguridad activa de control de redes](/posts/seguridad-activa-control-redes/) vimos la utilidad del servidor proxy, tanto para censurar páginas como para mejorar el rendimiento de la conexión a Internet al funcionar como caché. 

Sin embargo, algunos usuarios se niegan a que su navegación sea controlada por nadie. Para combatirlo, en Windows instalan algunos programas, como [Ultrasurf](https://ultrasurf.us/). Este software se comporta como un proxy en nuestra propia máquina y modifica la configuración de Windows para que todas las conexiones web pasen por él (esto afecta a Chrome, Firefox, Edge, etc., que utilizan la configuración del sistema). 

Este proxy interno recibe las conexiones y las encamina fuera de la máquina conectando con otras máquinas en Internet. Estas máquinas utilizan el puerto 443 (el habitual del tráfico SSL). Como en un proxy normal, obtienen las páginas que el usuario pedía y se las mandan al proxy interno, el cual las entrega al navegador. Por tanto, el tráfico del usuario pasa por dos proxy: uno local y otro en Internet. 

{:.subsection} 
### Contramedidas para ataques proxy

La primera medida es formar a los usuarios para que entiendan que introducir software no controlado es una fuente de problemas: 

- No sabemos si ese software amable y gratuito realmente oculta un troyano que puede tomar el control de nuestra máquina. En un ordenador personal podemos hacer lo que queramos, pero no en el ordenador de clase o del puesto de trabajo.
- Todo nuestro tráfico web está pasando por máquinas que no conocemos. Pueden utilizarlo para robarnos contraseñas, documentación personal o profesional, realizar ataques MITM, etc. 
- Se pone un proxy en una empresa para conseguir unos objetivos y, al evitar utilizarlo, estamos obstaculizando su cumplimiento. Por ejemplo, la optimización del ancho de banda de salida a Internet. 

Como aun así algunos lo intentarán, debemos espiar nuestra red, como vimos en el artículo [Seguridad activa de control de redes](/posts/seguridad-activa-control-redes/). Primero con medidas estadísticas que evalúen el porcentaje de paquetes que pasan por el proxy comparado con aquellos que utilizan el puerto 443. Si tienden a equilibrarse, tenemos que entrar en detalle. Para ello utilizaremos un NIDS que busque máquinas con alto porcentaje de tráfico 443. Seguramente, la máquina de Internet con la que comunican no es una web ni es posible rastrearla con `traceroute` ni corresponde a ninguna entrada de DNS. 

Por cierto, no podemos directamente bloquear en el firewall el tráfico 443 porque ese puerto es habitual en la navegación segura SSL. Dejaríamos de poder entrar en los correos web, bancos, etc. 

Tampoco tiene mucho sentido utilizar el firewall de red para bloquear todos los paquetes que quieran salir a Internet con destino la IP del proxy externo de Ultrasuft (la 65.49.2.21 de nuestro caso práctico). Este tipo de software es muy listo y suele tener disponibles muchos servidores en distintos puntos de Internet (por tanto, ni siquiera podemos utilizar el bloqueo por subred IP): Simplemente prueba esas direcciones una a una hasta que encuentra alguna que todavía no hemos bloqueado. 

Aunque circulan muchas listas de estas IP de máquinas proxy (las llamadas listas blacklist), siempre estarán desactualizadas, y mientras tanto nuestro firewall de red está aplicando continuamente múltiples filtros a cada paquete, lo que ralentiza nuestra preciada conexión a la web. 

Finalmente, podemos encontrar algunos programas que dicen que son capaces de bloquear Ultrasurf. Debemos desconfiar, porque pueden ser directamente malware, o consumir recursos sin control (suelen ser NIPS especializados), o efectivamente llegar a bloquear Ultrasurf, pero no cualquiera de sus sucesores, como Freegate.


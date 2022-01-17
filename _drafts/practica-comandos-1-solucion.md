---
title: "Práctica: Comandos GNU Linux (Parte 1) - Solución"
date: 2022-01-17 10:30:00 +0100
categories: [Sistemas Microinformáticos y Redes, Redes Locales]
tags: [gnu linux, comandos, terminal, bash, redes locales, practica, redes locales, solución]
---

{:.activity}
## Requisitos previos

**1. ¿Qué significan los acrónimos FSF, GNU y GPL?**

**2. ¿Qué es Linux?**
    
1. ❌ Un sistema operativo para microordenadores de tipo PC. 
2. ✅ Un núcleo de tipo UNIX desarrollado bajo licencia GPL.
3. ❌ Un sistema operativo reservado a aplicaciones de cálculo universitarias.

**3. ¿Qué representa el carácter "$" al comienzo de la línea de comandos?**
    
1. ❌ Nada.
2. ❌ La línea de comandos del shell (o prompt) del administrador de sistema (root).
3. ✅ La línea de comandos del shell (o prompt) de un usuario ordinario.

**4. ¿Si consideramos las opciones o y p al igual que los argumentos arg1 y arg2, qué sintaxis de comandos son correctas de entre las siguientes?**
    
1. ❌ `$ comando arg1 arg2`
2. ❌ `$ comando arg1arg2`
3. ❌ `$ comando -o-p`
4. ❌ `$ comando -p -o`
5. ✅ `$ comando -o arg1 -p arg2`
6. ✅ `$ comando -op arg1 arg2`

**5. ¿Qué comandos permiten borrar la pantalla por línea de comandos?**
    
1. ❌ `wc`
2. ✅ `clear`
3. ❌ `cls`
4. ✅ Secuencia de teclas [Ctrl]-L.

{:.activity}
## Consolas y terminales

**1. Verificar la presencia de los diferentes terminales virtuales (consolas en modo texto y una consola gráfica).**

Para acceder a las distintas consolas virtuales en Zorin OS Lite se debe realizar la combinación de teclas [Ctrl][Alt][F1-F7] si tenemos un host Windows o [Host][^host][F1-F7] si estamos en un host de GNU/Linux. En las máquinas virtuales la tecla [Host] es la tecla [Ctrl] de la derecha del teclado. [F1-F6] corresponden a distintos terminales y [F7] corresponde a la interfaz gráfica.

{:.activity}
## Conexión, autenticación

**1. Crea los usuarios "\<tuNombreDeUsuario\>", "\<tuNombreDeUsuario\>2" con contraseña "chabacier". En mi caso es "mruizg" y "mruizg2". Puedes hacerlo utilizando la interfaz gráfica (manera fácil) o usando el terminal (buscando en Google cómo).**

![img-description](/assets/img/practica-comandos-1-solucion/3-1.png)
_Usuarios mruizg y mruizg2_

**2. Conéctese a la segunda consola virtual texto (tty2) con el nombre de conexión "\<tuNombreDeUsuario\>" y la contraseña "chabacier". El nombre de conexión (login) y la contraseña dependen de la cuenta de usuario previamente creada por el administrador del sistema GNU/Linux al que se conecte.**

![img-description](/assets/img/practica-comandos-1-solucion/3-2.png)
_Conexión con mruizg en tty2_

**3. Conéctese a la tercera terminal virtual texto (tty3) con el nombre de conexión "\<tuNombreDeUsuario\>2" y la contraseña "chabacier".**

![img-description](/assets/img/practica-comandos-1-solucion/3-3.png)
_Conexión con mruizg2 en tty3_

**4. Si posee la contraseña de administrador, conéctese como root en la cuarta terminal texto (tty4). ¿Observa alguna diferencia con respecto a los otros terminales? En el caso de Zorin OS Lite no hay contraseña para el usuario root por lo que no se puede hacer login directamente por cuestiones de seguridad.**

![img-description](/assets/img/practica-comandos-1-solucion/3-4.png)
_Conexión a root desde tty4 a traves de mruizg_

Para hacer login como root se necesita hacer login como usuario administrador, en mi caso, `mruizg` para posteriormente ejecutar la instrucción `sudo su root` o `sudo su`. Tras esto te pedirá la contraseña de tu usuario actual.

Se observa que el prompt tiene el símbolo `#`.

**5. Cambie a la consola gráfica y conéctese de nuevo como usuario "\<tuNombreDeUsuario\>".**

Pulsando [Host][F7] se va a la consola gráfica.

**6. Inicie varios emuladores de terminal a partir de su sesión gráfica.**

![img-description](/assets/img/practica-comandos-1-solucion/3-6.png)
_Usuario mruizg con varios emuladores de terminal_

{:.activity}
## Identidad de los usuarios

**1. Vuelva a la segunda consola virtual (tty2) y liste los usuarios conectados al sistema de diferentes maneras. Los comandos `who` y `finger` permiten listar los usuarios conectados al sistema.**

![img-description](/assets/img/practica-comandos-1-solucion/4-1.png)
_Comando `who` y comando `finger` sin argumentos_

**2. Muestre únicamente la línea relativa a la conexión con su shell actual. Utilizar el comando `who` con un atributo. Puedes consultar el atributo utilizando el comando `man`.**

![img-description](/assets/img/practica-comandos-1-solucion/4-2.png)
_Comando `who -m`_

**3. Vuelva a la tercera consola virtual (tty3) y muestre el nombre de conexión (login) del usuario conectado. Utilizar el comando `who` con un atributo. Puedes consultar el atributo utilizando el comando `man`.**

![img-description](/assets/img/practica-comandos-1-solucion/4-3.png)
_Comando `who --login`_

**4. Muestre la descripción de la cuenta de usuario "\<tuNombreDeUsuario\>". Utilizar el comando `finger` con un atributo. Puedes consultar el atributo utilizando el comando `man`.**

![img-description](/assets/img/practica-comandos-1-solucion/4-4.png)
_Comando `finger -s mruizg`_

{:.activity}
## Cambio de contraseña

**1. Vuelva a la segunda consola virtual (tty2) y modifique la contraseña de "\<tuNombreDeUsuario\>2". ¿Es posible? Utilice el comando `passwd`. Escoja una contraseña autorizada por el sistema (con un mínimo de seis caracteres y no basada en palabras del diccionario).**

Como se puede observar en la siguiente figura, es posible modificar la contraseña a "chabacier2".

![img-description](/assets/img/practica-comandos-1-solucion/5-1.png)
_Cambio de contraseña a "chabacier2"_

**2. Cambie su contraseña por "qdgj". ¿Es posible? ¿Por qué?**

Como se puede observar en la siguiente figura, , no es posible ya que debe ser más larga.

![img-description](/assets/img/practica-comandos-1-solucion/5-2.png)
_Cambio de contraseña a "qdgj". Debe elegir una contraseña más larga_

**3. Cambie su contraseña por "azertyui". ¿Es posible? ¿Por qué?**

Si es posible ya que cumple con un mínimo de seis caracteres y no basada en palabras del diccionario.

![img-description](/assets/img/practica-comandos-1-solucion/5-3.png)
_Cambio de contraseña a "azertyui"_

**4. Cambie de nuevo su contraseña por "gnulinux". ¿Es posible?**

Si es posible ya que cumple con un mínimo de seis caracteres y no basada en palabras del diccionario.

![img-description](/assets/img/practica-comandos-1-solucion/5-5.png)
_Cambio de contraseña a "gnulinux"_

**5. Modifique su contraseña para que vuelva a ser "chabacier". Recuerde esta última para poderse reconectar posteriormente.**

![img-description](/assets/img/practica-comandos-1-solucion/5-4.png)
_Cambio de contraseña a "chabacier"_

{:.activity}
### Recuento

**1. ¿Cuántas líneas, palabras y caracteres comportan el archivo /etc/services? Utilice el comando `wc`.**

![img-description](/assets/img/practica-comandos-1-solucion/6-1.png)
_Comando `wd /etc/services`_

El fichero /etc/services tiene:
- 591 líneas
- 2615 palabras
- 19183 caracteres

**2. ¿Cuántas cuentas de usuario están definidas en el sistema? Cada línea del archivo /etc/passwd define una cuenta de usuario.**

![img-description](/assets/img/practica-comandos-1-solucion/6-2.png)
_Comando `wd /etc/passwd`_

El sistema tiene 44 usuarios en total.

{:.activity}
## Visualización

**1. Borre la pantalla. Utilice el comando `clear`.**

![img-description](/assets/img/practica-comandos-1-solucion/7-1.png)
_Terminal tras usar el comando `clear`_

**2. Visualice la cadena de caracteres "a b" sin las comillas (letras "a" y "b" separadas por un espacio). Utilice el comando `echo`.**

![img-description](/assets/img/practica-comandos-1-solucion/7-2.png)
_Comando `echo a b`_

**3. Visualice la cadena de caracteres "a  b" sin las comillas (letras "a" y "b" separadas por dos espacios). ¿Qué observa?**

Se observa que convierte los dos espacios en uno.

![img-description](/assets/img/practica-comandos-1-solucion/7-3.png)
_Comando `echo a  b`_

**4. Visualice la cadena de caracteres "a   b" sin las comillas (letras "a" y "b" separadas por un tabulador). Puede ser necesario utilizar la secuencia de teclas [Ctrl]-V para desactivar la terminación de palabras con la tecla [Tab]; será entonces posible introducir una tabulación en la línea de comandos.**

![img-description](/assets/img/practica-comandos-1-solucion/7-4.png)
_Comando `echo a    b`_

{:.activity}
## Tiempo

**1. Visualice la fecha del sistema. Utilice el comando `date`.**

![img-description](/assets/img/practica-comandos-1-solucion/8-1.png)
_Comando `date`_

**2. Visualice el calendario del mes en curso. Utilice el comando `cal`.**

![img-description](/assets/img/practica-comandos-1-solucion/8-2.png)
_Comando `cal`_

**3. Visualice el calendario del mes de enero del año 5, después el del año 2005. ¿Hay alguna diferencia? Utilice el comando `cal` con los argumentos adecuados.**

![img-description](/assets/img/practica-comandos-1-solucion/8-3.png)
_Comandos `cal 1 5` y `cal 1 2005`_

La diferencia es que el primer dia del mes uno cae en jueves y el otro en sábado.

**4. Visualice el calendario del mes de septiembre de 1752. ¿Qué observa?**

![img-description](/assets/img/practica-comandos-1-solucion/8-4.png)
_Comando `cal 9 1752`_

Que es un mes que pasa del dia 2 al dia 14.

{:.activity}
## Utilización del ratón y del teclado

**1. Siempre en la segunda consola virtual texto (tty2), visualice el calendario del año 2005. ¿Ve los días del mes de enero, febrero y marzo? Utilice el comando `cal`.**

![img-description](/assets/img/practica-comandos-1-solucion/9-1.png)
_Comando `cal` en tty4_

Si se ven los días del mes de enero, febrero y marzo.

**2. Desplácese verticalmente con el fin de mostrar las líneas precedentes visualizadas en el terminal.**

En los terminales virtuales tty no se puede desplazar verticalmente por defecto. En los emuladores de terminal se puede hacer [Shift][RePág] o [Shift][AvPág] para desplazarte verticalmente. 

**3. Borre la pantalla rápidamente. Utilice el atajo de teclado [Ctrl]-L.**

![img-description](/assets/img/practica-comandos-1-solucion/9-3.png)
_Pantalla borrada utilizando [Ctrl]-L en tty2_

**4. Recuerde los comandos tecleados anteriormente. Utilice el comando `history`.**

![img-description](/assets/img/practica-comandos-1-solucion/9-4.png)
_Comando history en tty2_

**5. Recupere los últimos comandos que contengan la cadena de caracteres "ho". Utilice la secuencia de teclas [Ctrl]-R.**

![img-description](/assets/img/practica-comandos-1-solucion/9-5.png)
_Búsqueda reversa en tty2_

**6. Ejecute el comando `sleep 999` y cancele su ejecución transcurridos unos pocos segundos. El comando `sleep` se limita a esperar el numero de segundos indicados en el argumento. Para cancelar un proceso en ejecución se usa [Ctrl]-C.**

![img-description](/assets/img/practica-comandos-1-solucion/9-6.png)
_Cancelación del comando `sleep 999`_

**7. Compruebe la terminación de palabras con comandos y nombres de archivos. Utilice la tecla [Tab].**

![img-description](/assets/img/practica-comandos-1-solucion/9-7.png)
_Comprobación del funcionamiento del autocompletado con [Tab]_

**8. Vuelva a la consola gráfica y verifique la función de copiar/pegar del ratón con el click derecho.**

![img-description](/assets/img/practica-comandos-1-solucion/9-8.png)
_Comprobación de copiar del ratón con el click derecho_

{:.activity}
### Desconexión

**1. Desconéctese de la sesión gráfica.**

![img-description](/assets/img/practica-comandos-1-solucion/10-1.png)
_Desconexión de la terminal gráfica usando el comando `exit`_

**2. Desconéctese de todos los terminales virtuales texto de diferentes maneras**

Se puede hacer:
- `exit`
- `logout`
- [Ctrl]-D
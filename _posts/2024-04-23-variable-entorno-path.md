---
title: "Tutorial: La variable de entorno Path"
date: 2024-03-21 9:00:00 +0100
categories: [General]
tags: [desarrollo de aplicaciones multiplataforma, lenguajes de marcas y sistemas de gestión de información, administración de sistemas informáticos de red, sistemas microinformáticos y redes, dam, daw, asir, smr, variables, entorno, path, windows, linux]
img_path: /assets/img/variable-entorno-path/
---

## ¿Qué son las variables de entorno?

La información contenida en las variables de entorno es muy útil tanto en tareas de mantenimiento, creación de scripts, o automatización de tareas. Podemos acceder a ellas desde casi cualquier lado. Por ejemplo, si en un terminal de Windows ejecutamos esto, veremos que muestra el nombre de tu equipo (era de esperar).

```powershell
echo %computername%
```

Pero podemos acceder a ellas desde mucho más sitios, no únicamente en terminal. Por ejemplo, en el menú "Ejecutar".

![Variable de entorno en Ejecutar](ejecutar.png)
_Variable de entorno en Ejecutar_

Por ejemplo, es posible emplearlas en la barra del explorador de ficheros de Windows.

![Variable de entorno en Explorador de archivos](explorador.png)
_Variable de entorno en Explorador de archivos_

Incluso podríais hacerlo en mitad de un cuadro de diálogo de "salvar documento". Lo cuál es muy útil, cuando veamos al final cómo crear tus propias variables.

## Variables de entorno predeterminadas

Por defecto Windows proporciona muchas variables de entorno ya definidas, que podemos usar en cualquier momento. Aquí tenéis algunas de ellas.

- `%USERNAME%`: devuelve el nombre de usuario actualmente conectado en el sistema.
- `%HOMEPATH%`: carpeta de perfil del usuario actual.
- `%PROGRAMFILES%`: directorio donde se instalan los programas para todos los usuarios del sistema.
- `%PATH%`: muestra una lista separada por punto y coma de las rutas en las que se buscan los archivos ejecutables cuando ejecutas un comando en la línea de comandos o en un script.
- `%PATHEXT%`: muestra una lista separada por punto y coma de las extensiones de archivo que se consideran archivos ejecutables cuando se ejecutan comandos en la línea de comandos o en un script.

## La variable de entorno Path

Quizá la variable de entorno con la que más habitualmente tendremos que lidiar será `%PATH%`. ¿Y cuál es su función? ¿Os habéis fijado que, cuando tecleáis un comando propio de Windows (por ejemplo, `regedit`) no es necesario teclear la ruta completa del ejecutable?

Eso es porque, cada vez que tecleamos un comando, el sistema revisa las carpetas contenidas en la variable `%PATH%` para comprobar si algún archivo ejecutable coincide con el mismo.

Es un recurso muy usado, por ejemplo, por los desarrolladores que desean llamar a un intérprete o compilador desde la carpeta del proyecto en el que estén trabajando; muchos IDE también recurren al `%PATH%` para ejecutar dichas herramientas.

## Variables de entorno en Windows

- Inicio
- Buscar "Propiedades del sistema"
- Pestaña de "Opciones avanzadas"
- Click en "Variables de entorno..."
- Aquí ya podemos crear la variable de entorno que nos interese o editar el Path.
- Si editamos el Path:
  - En "Variables de usuario" hacemos click en el "Path".
  - Hacemos click en "Editar".
  - Añadimos la ruta de la **carpeta** que deseemos.

![Variables de entorno en Windows 10](variabesEntornoW10.png)
_Variables de entorno en Windows 10_

## Variables de entorno en Linux

En el caso de Linux, el papel de las variables de entorno es el mismo que en Windows, aunque no encontraremos exactamente las mismas ni con los mismos nombres.

En este sistema operativo, deberemos recurrir al comando `printenv` para visualizar tanto la lista completa de variables como el valor de cada una de ellas individualmente.

![Contenido de un archivo /etc/environment, visualizado con el editor de texto Nano.](variablesEntornoLinux.png)
_Contenido de un archivo `/etc/environment`, visualizado con el editor de texto Nano._

Así, en Linux encontremos variables como 'SHELL' (shell que interpretará los comandos, en la mayoría de distribuciones será Bash), 'LANG' (idioma actual) o 'HOME' (directorio de inicio del usuario actual).

Para cambiar sus valores, deberemos recurrir a editar, principalmente, tres archivos de texto:

- `/etc/environment` - Para variables independientes del intérprete de comandos.
- `etc/profile` - Las variables que definamos aquí serán válidas para todas las shells interactivas que exijan login. Su equivalente si queremos definir únicamente variables de usuario es `~/.bash_profile`.
- `/etc/bash.bashrc` - Igual que el anterior, pero para shells no-login. Su equivalente si queremos definir únicamente variables de usuario es `~/.bashrc`.

> Recuerda que el símbolo `~` representa la carpeta del usuario actual.
{:.prompt-info}

## Variables de entorno en OSX (macOS)

OSX es un sistema POSIX al igual que la inmensa mayoría de distribuciones Linux, por lo en gran medida lo expuesto para Linux en este artículo es aplicable a macOS.

## Bibliografía

- <https://medium.com/@01luisrene/como-agregar-variables-de-entorno-s-o-windows-10-e7f38851f11f>
- <https://www.luisllamas.es/variables-entorno-windows/>
- <https://www.genbeta.com/desarrollo/variables-entorno-que-sirven-como-podemos-editarlas-windows-linux>
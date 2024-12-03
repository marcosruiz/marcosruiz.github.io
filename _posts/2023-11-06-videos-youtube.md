---
title: "Cómo grabar y editar vídeos"
date: 2023-11-06 9:00:00 +0100
categories: [General]
tags: [canva, carnac, general, obs, kdenlive, clipchamp, filmora, shotcut, premiere, pro, openshot, microsoft, zoomit,]
img_path: /assets/img/videos-youtube/
---

{:.section}
## Programas para grabar vídeos

Si no sabes ninguna herramienta con la que grabar vídeos puedes usar:

- **Herramienta de Recortes de Windows**: Herramienta sencilla para capturas y grabación de videos para Windows. Software propietario.
- **ZoomIt**: Herramienta sencilla para capturas y grabación de videos para Windows. Permite dibujar en pantalla y hacer zoom. Software propietario. **RECOMENDADO**.
- [Peek Screen Recorder](https://github.com/phw/peek): Para hacer GIFs o vídeos en MP4 de una manera rápida. **RECOMENDADO**.
- **OBS Studio**: Herramienta profesional para grabación de vídeos para Windows y GNU Linux. Software libre.
- **SimpleScreenRecorder**: Herramienta sencilla para grabación de videos para GNU Linux.

{:.section}
## Programas para editar vídeos

- **Microsoft Clipchamp**: Herramienta sencilla para Windows. Software propietario.
- **Kdenlive**: Herramienta profesional para Windows y GNU Linux. Software libre. **RECOMENDADO**.
- **OpenShot**: Herramienta profesional para Windows y GNU Linux. Con menos opciones que Kdenlive. Software libre.
- **Final Cut Pro**: Profesional. Solo para dispositivos Apple.
- **Adobe Premiere Pro**: Profesional.
- **Sony Vegas**: Profesional.
- **DaVinci Resolve**: Profesional.
- **AVS Video Editor**: Sencillo.
- **iMovie**: Sencillo y gratuito. Solo para dispositivos Apple.
- **Filmora**: Sencillo.
- **Shotcut**: Gratuito.

{:.section}
## Otros programas que aportan valor a la grabación

- [Carnac](http://carnackeys.com/): Para mostrar atajos de teclado en pantalla.
- [ZoomIt](https://learn.microsoft.com/es-es/sysinternals/downloads/zoomit): Para hacer zoom y pintar en la pantalla.
- Mouse utilities de [PowerToys](https://learn.microsoft.com/es-es/windows/powertoys/): Para mostrar los clicks del ratón.
- [Canva](https://www.canva.com/): Para hacer carteles, infografías o miniaturas.

{:.section}
## Configurar Carnac

La configuración que uso para Carnac es la siguiente:

![Sección General de Carnac](carnacConfig01.png){: width="400px"}
_Sección General de Carnac_

![Sección Appearance de Carnac](carnacConfig02.png){: width="400px"}
_Sección Appearance de Carnac_

{:.section}
## Mejorar el audio de micrófono en OBS

Primero necesitamos descargar estas dos imágenes:

![imgDescription](Webcam Circle.png){: width="200px"}
_Circulo para filtro_

![imgDescription](Webcam Circle shadow.png){: width="200px"}
_Sombra para círculo_

<iframe width="560" height="315" src="https://www.youtube.com/embed/xrNugzNPYIk?si=qvYMLqRZ0qvfTbVQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

{:.subsection}
### Hacer webcam circular con OBS

<iframe width="560" height="315" src="https://www.youtube.com/embed/HkNw7u4SrPk?si=WDInoNsHmNGfKzrl" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<details class="card mb-2">
  <summary class="card-header question">Pasos a seguir si no quieres ver el vídeo</summary>
  <div class="card-body" markdown="1">
  
En el elemento de captura de vídeo o webcam aplicamos un filtro:

![imgDescription](obsPaso01.png){: width="400px"}

Añadimos una máscara de imagen:

![imgDescription](obsPaso02.png){: width="400px"}

Le damos el nombre que queramos:

![imgDescription](obsPaso03.png){: width="400px"}

Seleccionamos la imagen del círculo (sin sombra):

![imgDescription](obsPaso04.png){: width="400px"}

En el tipo indicamos "Alpha Mask (Alpha Channel)":

![imgDescription](obsPaso05.png){: width="400px"}

Añadimos una imagen para añadir la sombra y le damos nombre:

![imgDescription](obsPaso06.png){: width="400px"}

Seleccionamos la imagen de la sombra:

![imgDescription](obsPaso07.png){: width="400px"}

Creamos un grupo:

![imgDescription](obsPaso08.png){: width="400px"}

Y añadimos en el grupo la webcam y la sombra. Recuerda que la webcam deberá estar por encima de la sombra para que esta no la tape.

![imgDescription](obsPaso09.png){: width="400px"}

Resultado final:

![imgDescription](obsPaso10.png){: width="400px"}

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Bibliografía


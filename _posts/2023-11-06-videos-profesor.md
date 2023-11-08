---
title: "Hacer vídeos como profesor"
date: 2023-11-06 9:00:00 +0100
categories: [General]
tags: [canva, carnac, general, obs]
img_path: /assets/img/videos-profesor/
---

{:.section}
## Programas útiles

- [Carnac](http://carnackeys.com/) para mostrar atajos de teclado en pantalla.
- [OBS](https://obsproject.com/es/download) para grabar.
- [KDEnlive](https://kdenlive.org/es/) para editar vídeos.
- [Canva](https://www.canva.com/) para grabar y editar vídeos.
- [ZoomIt](https://learn.microsoft.com/es-es/sysinternals/downloads/zoomit) para hacer zoom y pintar en la pantalla.

### Configurar Carnac

La configuración que uso para Carnac es la siguiente:

![Sección General de Carnac](carnacConfig01.png)
_Sección General de Carnac_

![Sección Appearance de Carnac](carnacConfig02.png)
_Sección Appearance de Carnac_

### Hacer webcam circular con OBS

Primero necesitamos descargar estas dos imágenes:

![imgDescription](Webcam Circle.png)
_Circulo para filtro_

![imgDescription](Webcam Circle shadow.png)
_Sombra para círculo_

En el elemento de captura de vídeo o webcam aplicamos un filtro:

![imgDescription](obsPaso01.png)

Añadimos una máscara de imagen:

![imgDescription](obsPaso02.png)

Le damos el nombre que queramos:

![imgDescription](obsPaso03.png)

Seleccionamos la imagen del círculo (sin sombra):

![imgDescription](obsPaso04.png)

En el tipo indicamos "Alpha Mask (Alpha Channel)":

![imgDescription](obsPaso05.png)

Añadimos una imagen para añadir la sombra y le damos nombre:

![imgDescription](obsPaso06.png)

Seleccionamos la imagen de la sombra:

![imgDescription](obsPaso07.png)

Creamos un grupo:

![imgDescription](obsPaso08.png)

Y añadimos en el grupo la webcam y la sombra. Recuerda que la webcam deberá estar por encima de la sombra para que esta no la tape.

![imgDescription](obsPaso09.png)

Resultado final:

![imgDescription](obsPaso10.png)

## Grabar vídeos con Canva



## Bibliografía


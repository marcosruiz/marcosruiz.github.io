---
title: "Hacer vídeos como profesor"
date: 2023-11-06 9:00:00 +0100
categories: [General]
tags: [canva, carnac, general, obs]
img_path: /assets/img/videos-profesor/
---

{:.section}
## Programas útiles

- [Carnac](http://carnackeys.com/): Para mostrar atajos de teclado en pantalla.
- [OBS](https://obsproject.com/es/download): Para grabar.
- [KDEnlive](https://kdenlive.org/es/): Para editar vídeos.
- [Canva](https://www.canva.com/): Para grabar y editar vídeos.
- [ZoomIt](https://learn.microsoft.com/es-es/sysinternals/downloads/zoomit): Para hacer zoom y pintar en la pantalla.
- Mouse utilities de [PowerToys](https://learn.microsoft.com/es-es/windows/powertoys/): Para mostrar los clicks del ratón.

### Configurar Carnac

La configuración que uso para Carnac es la siguiente:

![Sección General de Carnac](carnacConfig01.png){: width="400px"}
_Sección General de Carnac_

![Sección Appearance de Carnac](carnacConfig02.png){: width="400px"}
_Sección Appearance de Carnac_

### Hacer webcam circular con OBS

Primero necesitamos descargar estas dos imágenes:

![imgDescription](Webcam Circle.png){: width="200px"}
_Circulo para filtro_

![imgDescription](Webcam Circle shadow.png){: width="200px"}
_Sombra para círculo_

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

## Grabar vídeos con Canva



## Bibliografía


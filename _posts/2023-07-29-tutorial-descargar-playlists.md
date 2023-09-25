---
title: "Tutorial: Descargar playlist de YouTube"
date: 2023-05-05 12:20:00 +0100
categories: [General]
tags: [YouTube, tutorial, playlist, Spotify, descargar]
img_path: /assets/img/tutorial-descargar-playlist/
---

## Convertir lista de Spotify a YouTube

Para convertir una lista de Spotify a una lista de YouTube se puede utilizar la web [Playlist Buddy](https://playlistbuddy.com/).

> Si tienes la aplicación Nervenschoner o una extensión que te bloquee las cookies deberás deshabilitarla para que funcionen los botones.
{:.prompt-info}

> El límite está en 250 canciones por lista de reproducción.
{:.prompt-info}

## Descargar en MP3 una lista de YouTube

En GitHub existe el proyecto [YT-DLP](https://github.com/yt-dlp/yt-dlp). Se trata de un programa de terminal que permite descargar una lista de reproducción en formato MP3 con el siguiente comando:

```console
$yt-dlp.exe --extract-audio --audio-format mp3 <url>
$yt-dlp.exe --playlist-items 1:100:1 --extract-audio --audio-format mp3 <url> 
```

> La lista de reproducción tiene que ser pública.
{:.prompt-info}

# Script de powershell para generar documentos PDF
# Este fichero debe ejecutarse en la raiz del proyecto ya que usa rutas relativas en las variables:
# $githubProjectFolder = "."

# 
# Función para quitar todo lo que tenga que ver con mi web y de problemas a la hora de generar los PDFs.
# 
function generarTemporal {
  param(
    [string]$fileRoute,
    [string]$tempFileRoute
  )

  # Leer el contenido del archivo
  $contenido = Get-Content -Path $fileRoute

  # Definir los patrones de sustitución
  $patrones = @{'^\{\s*:\s*\.section\s*\}$'                        = ''
    '^\{\s*:\s*\.subsection\s*\}$'                                 = ''
    '^\{\s*:\s*\.subsubsection\s*\}$'                              = ''
    '^\{\s*:\s*\.activity\s*\}$'                                   = ''
    '^\{\s*:\s*\.prompt-.*\s*\}$'                                  = ''
    '^\{\s*:\s*\.question\s*\}'                                    = '**Pregunta:** '
    '(<summary class="card-header question">)'                     = '$1**Pregunta:** '
    '\{\s*:\s*\.filepath\s*\}'                                     = ''
    '🥳'                                                           = ''
    '📸'                                                           = ''
    '📷'                                                           = ''
    "👏"                                                           = ''
    '😮'                                                           = ''
    '🔥'                                                           = ''
    '🔝'                                                           = ''
    '🙌'                                                           = ''
    "👌"                                                           = ''
    "🧠"                                                           = ''
    "👀"                                                           = ''
    "💳"                                                           = ''
    "💸"                                                           = ''
    "👱"                                                           = ''
    '得'                                                            = ':imagínate un caracter chino aquí:'
    '取'                                                            = ':imagínate un caracter chino aquí:'
    '𐐝'                                                           = ':imagínate un caracter raro aquí:'
    'д'                                                            = ':imagínate un caracter cirílico aquí:'
    'Ж'                                                            = ':imagínate un caracter cirílico aquí:'
    '\{\s*:\s*file="([^"]+)"\s*\}$'                                = '_Fichero: `$1`_'
    '<iframe [^>]* src="([^"]*)[^>]* title="YouTube video player"' = 'Vídeo: $1'
    '^_.*_$'                                                       = ''
    '(\{\s*):(\s*width=.*\})'                                      = '$1$2'
  }

  # Iterar sobre el contenido y modificar las líneas que coincidan con los patrones
  foreach ($patron in $patrones.Keys) {
    $contenido = $contenido -replace $patron, $patrones[$patron]
  }

  # Escribir el contenido filtrado de vuelta a un archivo temporal
  $contenido | Set-Content -Path $tempFileRoute

}

# Aquí empieza el script

$githubProjectFolder = "."

# TODO: debemos definir la variable $routes con el nombre de las rutas que queremos convertir

# Temas LMSGI
# $routes = "css", "dtd", "espacios-de-nombres-xml", "html", "introduccion-lenguajes-marcas", "markdown", "practica-css-codepip", "practica-css-freecodecamp", "representacion-informacion", "sindicacion-contenidos", "sistemas-gestion-empresarial", "xml", "xpath", "xquery", "xsl", "xslfo", "xslt"

# Temas NC
# $routes = "legislacion-proteccion-datos", "normativa-nacional-internacional", "esquema-nacional-seguridad", "directiva-nis",  "cumplimiento-normativo", "sistemas-gestion-cumplimiento", "tipos-normas-clasificacion", "legislacion-cumplimiento-penal", "conceptos-basicos-seguridad-informatica"

# Temas SAA
# $routes = "redes-neuronales-deep-learning", "casos-practicos-sobre-aprendizaje-automatico", "introduccion-aprendizaje-automatico", "algoritmos-aprendizaje-automatico", "aprendizaje-supervisado", "aprendizaje-no-supervisado"

# Iterar sobre cada patron de archivo
foreach ($route in $routes) {
  $pattern = "[0-9\-]{11}" + $route + "\.md"

  # Obtener el archivo correspondiente al patron
  $files = Get-ChildItem "$githubProjectFolder\_posts" | Where-Object { $_.Name -match $pattern }

  $file = $files[0]
  $fileRoute = "$($githubProjectFolder)\_posts\$($file.Name)"
  $tempFileRoute = "$($githubProjectFolder)\tmp\$($file.Name)"

  generarTemporal -fileRoute $fileRoute -tempFileRoute $tempFileRoute

  $resourcePath = "/data/assets/img/" + $route

  # Recuerda cambiar el ID del contentedor por el que corresponda
  docker exec aaa230b91f7592b6f2e74372eccfc2038caf5c5ebc16865aea3d9ab11ef8923d pandoc "/data/tmp/$($file.Name)" `
    -o "/data/pdf/$($route).pdf" `
    --metadata-file /data/pandoc/metadata.yaml `
    --defaults /data/pandoc/defaults.yaml `
    --resource-path $resourcePath `
    --from markdown

}

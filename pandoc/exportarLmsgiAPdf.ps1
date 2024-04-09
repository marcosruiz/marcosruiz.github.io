$githubProjectFolder = "C:\Users\marco\Documents\GitHub\marcosruiz.github.io"
$templateFolder = "C:\Users\marco\Documents\MEGA\CURSO 23 24\Plantillas\Eisvogel"

$githubProjectFolder = "D:\GitHub\marcosruiz.github.io"
$templateFolder = "C:\Users\marco\MEGA\CURSO 23 24\Plantillas\Eisvogel"

$routes = "css", "dtd", "espacios-de-nombres-xml", "html", "introduccion-lenguajes-marcas", "markdown", "practica-css-codepip", "practica-css-freecodecamp", "practica-css-w3schools", "practica-html", "practica-html-freecodecamp", "practica-html-w3schools", "representacion-informacion", "sindicacion-contenidos", "sistemas-gestion-empresarial", "tarea-calculadora-html-css", "tarea-dtd", "tarea-formato-svg", "tarea-introduccion-odoo", "tarea-introduccion-xpath", "tarea-introduccion-xml", "tarea-introduccion-xquery", "tarea-rss", "tarea-xsd", "tarea-xsl", "xml", "xpath", "xquery", "xsl", "xslfo", "xslt"


# Iterar sobre cada patrón de archivo
foreach ($route in $routes) {
  $pattern = "[0-9\-]{11}" + $route + "\.md"

  # Obtener el archivo correspondiente al patrón
  $files = Get-ChildItem "$githubProjectFolder\_posts" | Where-Object { $_.Name -match $pattern }

  $file = $files[0]

  $resourcePath = "/data/assets/img/" + $route

  # Ejecutar el comando Docker Pandoc para el archivo encontrado
  docker run --rm --volume "$($githubProjectFolder):/data" `
    --volume "$($templateFolder):/root/.pandoc/templates" `
    pandoc/extra "/data/_posts/$($file.Name)" `
    -o "/data/pdf/$($route).pdf" `
    --metadata-file /data/pandoc/metadata.yaml `
    --defaults /data/pandoc/defaults.yaml `
    --resource-path $resourcePath `
    --lua-filter /data/pandoc/filter.lua
}
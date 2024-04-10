# Para portatil
$githubProjectFolder = "C:\Users\marco\Documents\GitHub\marcosruiz.github.io"
$templateFolder = "C:\Users\marco\Documents\MEGA\CURSO 23 24\Plantillas\Eisvogel"

# Para PC torre
$githubProjectFolder = "D:\GitHub\marcosruiz.github.io"
$templateFolder = "C:\Users\marco\MEGA\CURSO 23 24\Plantillas\Eisvogel"

$routesTareas = "tarea-calculadora-html-css", "tarea-dtd", "tarea-formato-svg", "tarea-introduccion-odoo", "tarea-introduccion-xpath", "tarea-introduccion-xml", "tarea-introduccion-xquery", "tarea-rss", "tarea-xsd", "tarea-xsl", "practica-css-w3schools", "practica-html", "practica-html-freecodecamp", "practica-html-w3schools"

$routes = "css", "dtd", "espacios-de-nombres-xml", "html", "introduccion-lenguajes-marcas", "markdown", "practica-css-codepip", "practica-css-freecodecamp", "representacion-informacion", "sindicacion-contenidos", "sistemas-gestion-empresarial", "xml", "xpath", "xquery", "xsl", "xslfo", "xslt"

$routes = "xml"

# Iterar sobre cada patron de archivo
foreach ($route in $routes) {
  $pattern = "[0-9\-]{11}" + $route + "\.md"

  # Obtener el archivo correspondiente al patron
  $files = Get-ChildItem "$githubProjectFolder\_posts" | Where-Object { $_.Name -match $pattern }

  $file = $files[0]

  $resourcePath = "/data/assets/img/" + $route

  docker exec b9c2ae80ad7723523c71d532a0e3901f26dd0c67bba7273e65965b6ef8cc3194 pandoc "/data/_posts/$($file.Name)" `
    -o "/data/pdf/$($route).pdf" `
    --metadata-file /data/pandoc/metadata.yaml `
    --defaults /data/pandoc/defaults.yaml `
    --resource-path $resourcePath `
    --from markdown `
    --lua-filter /data/pandoc/filter.lua

}
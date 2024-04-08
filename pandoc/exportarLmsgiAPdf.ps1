# Definir los patrones de archivo
$routes = "representacion-informacion", "introduccion-lenguajes-marcas", "xml", "html", "css", "sindicacion-contenidos", "dtd", "xsd", "espacios-de-nombres-xml", "xsl", "xpath", "xslt", "xslfo", "xquery", "sistemas-gestion-empresarial", "tarea-formato-svg", "tarea-introduccion-xml", "practica-html", "practica-html-freecodecamp", "practica-html-w3schools", "practica-css-freecodecamp", "practica-css-w3schools", "practica-css-codepip", "tarea-calculadora-html-css", "tarea-rss", "tarea-dtd", "tarea-xsd", "tarea-introduccion-xpath", "markdown", "tarea-xsl", "tarea-introduccion-xquery", "tarea-introduccion-odoo"

# Iterar sobre cada patrón de archivo
foreach ($route in $routes) {
  $pattern = "[0-9\-]{11}" + $route + "\.md"

  # Obtener el archivo correspondiente al patrón
  $files = Get-ChildItem "D:\GitHub\marcosruiz.github.io\_posts" | Where-Object { $_.Name -match $pattern }

  $file = $files[0]

  $resourcePath = "/data/assets/img/" + $route

  # Ejecutar el comando Docker Pandoc para el archivo encontrado
  docker run --rm --volume "D:\GitHub\marcosruiz.github.io\:/data" `
    --volume "C:\Users\marco\MEGA\CURSO 23 24\Plantillas\Eisvogel:/root/.pandoc/templates" `
    pandoc/extra "/data/_posts/$($file.Name)" `
    -o "/data/pdf/$($file.BaseName).pdf" `
    --metadata-file /data/pandoc/metadata.yaml `
    --defaults /data/pandoc/defaults.yaml `
    --resource-path $resourcePath `
    --lua-filter /data/pandoc/filter.lua
}
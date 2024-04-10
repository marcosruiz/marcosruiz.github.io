$githubProjectFolder = "D:\GitHub\marcosruiz.github.io"
$templateFolder = "C:\Users\marco\MEGA\CURSO 23 24\Plantillas\Eisvogel"

$githubProjectFolder = "C:\Users\marco\Documents\GitHub\marcosruiz.github.io"
$templateFolder = "C:\Users\marco\Documents\MEGA\CURSO 23 24\Plantillas\Eisvogel"

$routes = "css", "dtd", "espacios-de-nombres-xml", "html", "introduccion-lenguajes-marcas", "markdown", "practica-css-codepip", "practica-css-freecodecamp", "practica-css-w3schools", "practica-html", "practica-html-freecodecamp", "practica-html-w3schools", "representacion-informacion", "sindicacion-contenidos", "sistemas-gestion-empresarial", "tarea-calculadora-html-css", "tarea-dtd", "tarea-formato-svg", "tarea-introduccion-odoo", "tarea-introduccion-xpath", "tarea-introduccion-xml", "tarea-introduccion-xquery", "tarea-rss", "tarea-xsd", "tarea-xsl", "xml", "xpath", "xquery", "xsl", "xslfo", "xslt"

$routes = "sindicacion-contenidos"

# Iterar sobre cada patrón de archivo
foreach ($route in $routes) {
  $pattern = "[0-9\-]{11}" + $route + "\.md"

  # Obtener el archivo correspondiente al patrón
  $files = Get-ChildItem "$githubProjectFolder\_posts" | Where-Object { $_.Name -match $pattern }

  $file = $files[0]

  $resourcePath = "/data/assets/img/" + $route

  # docker run -d -it --volume "$($githubProjectFolder):/data" `
  #   --volume "$($templateFolder):/root/.pandoc/templates" `
  #   --name mruizg `
  #   --restart=no --runtime=runc pandoc/extra

  # Comando para crear el contenedor de Docker
  # docker run -d -it --volume "C:\Users\marco\Documents\GitHub\marcosruiz.github.io:/data" `
  # --volume "C:\Users\marco\Documents\MEGA\CURSO 23 24\Plantillas\Eisvogel:/root/.pandoc/templates" `
  # --name mruizg `
  # --restart=no --runtime=runc pandoc/extra

  # Comando para entrar en terminal de Docker
  # docker exec -it aaa230b91f7592b6f2e74372eccfc2038caf5c5ebc16865aea3d9ab11ef8923d sh

  # Comando para actualizar texlive
  # apk update && apk add texlive-full
  # tlmgr install svg

  # Run container
  # docker start -i aaa230b91f7592b6f2e74372eccfc2038caf5c5ebc16865aea3d9ab11ef8923d

  docker exec aaa230b91f7592b6f2e74372eccfc2038caf5c5ebc16865aea3d9ab11ef8923d pandoc "/data/_posts/$($file.Name)" `
    -o "/data/pdf/$($route).pdf" `
    --metadata-file /data/pandoc/metadata.yaml `
    --defaults /data/pandoc/defaults.yaml `
    --resource-path $resourcePath `
    --from markdown --template eisvogel2.latex `
    --lua-filter /data/pandoc/filter.lua

}
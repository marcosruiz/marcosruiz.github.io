# Ruta del archivo de entrada y salida (puedes cambiarla según tus necesidades)
param (
  [string]$fileName
)

# Verificar si se proporcionaron los parámetros, si no, pedirlos al usuario
if (-not $fileName) {
  $fileName = Read-Host "Introduce el nombre del fichero del post"
}

$inputFilePath = Join-Path -Path "..\_posts" -ChildPath $fileName
$outputFilePath = $inputFilePath

# Leer el archivo y almacenarlo en una lista
$content = Get-Content -Path $inputFilePath

# Lista para almacenar el contenido modificado
$modifiedContent = @()

# Iterar sobre cada línea del archivo
for ($i = 0; $i -lt $content.Count; $i++) {
  $line = $content[$i]
    
  if ($line -match "^\s*##") {
    # Si es la primera línea del archivo, no hacemos nada
    if ($i -eq 0) {
      $modifiedContent += $line
      continue
    }

    # Verificar si la línea anterior contiene "{:.section}"
    $previousLine = $content[$i - 1]
    
    if ($line -match "^## Bibliografía") {
      # No hacemos nada
    }
    elseif ($line -match "^####" -and $previousLine -notmatch "\{\:\s*\.subsubsection\s*\}") {
      $modifiedContent += "{:.subsubsection}"
    }
    elseif ($line -match "^###" -and $previousLine -notmatch "\{\:\s*\.subsection\s*\}") {
      $modifiedContent += "{:.subsection}"
    }
    elseif ($line -match "^##" -and $previousLine -notmatch "\{\:\s*\.section\s*\}") {
      $modifiedContent += "{:.section}"
    }
  }

  # Añadir la línea actual a la lista modificada
  $modifiedContent += $line
}

# Escribir el contenido modificado en un nuevo archivo
$modifiedContent | Set-Content -Path $outputFilePath

Write-Host "Archivo procesado y guardado en $outputFilePath"

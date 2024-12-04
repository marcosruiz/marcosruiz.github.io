docker run --rm --volume "C:\Users\marco\MEGA\CURSO 23 24\LMSGI\Contenidos\TeoriaHTML:/data" `
  --volume "C:\Users\marco\MEGA\CURSO 23 24\Plantillas\Eisvogel:/root/.pandoc/templates" `
  --name pruebaHTML `
  pandoc/extra "LMSGI01 - DAM - Lenguajes de marcas y sistemas de gestión de información - UT1.- Reconocimiento de las características de lenguajes de marcas..html" `
  -o "pruebaHtml.pdf" --template eisvogel --listings `
  --metadata-file /data/metadata.yaml `
  --defaults /data/defaults.yaml 
-- Filtro para clase activity
function ParaActivity(el)
  -- Si el elemento es un párrafo y contiene "{:.activity}", lo convertimos en un encabezado
  if el.tag == "Para" then
    local content = pandoc.utils.stringify(el)
    -- Si el párrafo contiene "{:.activity}", lo convertimos en un encabezado de nivel 2
    if content:find("{:%.activity}") then
      -- Reemplazamos "{:.activity}" con una cadena vacía
      content = content:gsub("{:%.activity} ###", "")
      -- Creamos un nuevo elemento de encabezado con el contenido modificado
      return pandoc.Header(2, content)
    end
    return el
  end
  -- Devolvemos el elemento sin cambios si no es un párrafo
  return el
end

-- Filtro para clase section
function ParaSection(el)
  -- Si el elemento es un párrafo y contiene "{:.section}", lo convertimos en un encabezado
  if el.tag == "Para" then
    local content = pandoc.utils.stringify(el)
    -- Si el párrafo contiene "{:.section}", lo convertimos en un encabezado de nivel 2
    if content:find("{:%.section}") then
      -- Reemplazamos "{:.section}" con una cadena vacía
      content = content:gsub("{:%.section} ##", "")
      -- Creamos un nuevo elemento de encabezado con el contenido modificado
      return pandoc.Header(1, content)
    end
    return el
  end
  -- Devolvemos el elemento sin cambios si no es un párrafo
  return el
end

-- Filtro para clase subsection
function ParaSubsection(el)
  -- Si el elemento es un párrafo y contiene "{:.subsection}", lo convertimos en un encabezado
  if el.tag == "Para" then
    local content = pandoc.utils.stringify(el)
    -- Si el párrafo contiene "{:.subsection}", lo convertimos en un encabezado de nivel 2
    if content:find("{:%.subsection}") then
      -- Reemplazamos "{:.subsection}" con una cadena vacía
      content = content:gsub("{:%.subsection} ###", "")
      -- Creamos un nuevo elemento de encabezado con el contenido modificado
      return pandoc.Header(2, content)
    end
    return el
  end
  -- Devolvemos el elemento sin cambios si no es un párrafo
  return el
end

-- Filtro para clase subsubsection
function ParaSubsubsection(el)
  -- Si el elemento es un párrafo y contiene "{:.subsubsection}", lo convertimos en un encabezado
  if el.tag == "Para" then
    local content = pandoc.utils.stringify(el)
    -- Si el párrafo contiene "{:.subsubsection}", lo convertimos en un encabezado de nivel 2
    if content:find("{:%.subsubsection}") then
      -- Reemplazamos "{:.subsubsection}" con una cadena vacía
      content = content:gsub("{:%.subsubsection} ####", "")
      -- Creamos un nuevo elemento de encabezado con el contenido modificado
      return pandoc.Header(3, content)
    end
    return el
  end
  -- Devolvemos el elemento sin cambios si no es un párrafo
  return el
end

-- Filtro para clase prompt-info, prompt-tip, prompt-warning, prompt-danger
function RemovePrompts(el)
  -- Si el elemento es un párrafo y contiene "{:.prompt-.*}", lo convertimos en un encabezado
  if el.tag == "Para" then
    local content = pandoc.utils.stringify(el)
    -- Si el párrafo contiene "{:.prompt-.*}", lo convertimos en un encabezado de nivel 2
    if content:find("{:%s?%.prompt%-.+}") then
      -- Reemplazamos "{:.prompt-.*}" con una cadena vacía
      content = content:gsub("{:%s?%.prompt%-.+}", "")
      -- Creamos un nuevo elemento de encabezado con el contenido modificado
      return pandoc.Para(content)
    end
    return el
  end
  -- Devolvemos el elemento sin cambios si no es un párrafo
  return el
end

-- Filtro para clase filepath
function RemoveFilepaths(el)
  -- Si el elemento es un párrafo y contiene "{:.filepath}", lo convertimos en un encabezado
  if el.tag == "Para" then
    local content = pandoc.utils.stringify(el)
    -- Si el párrafo contiene "{:.filepath}", lo convertimos en un encabezado de nivel 2
    if content:find("{:%s?%.filepath}") then
      -- Reemplazamos "{:.filepath}" con una cadena vacía
      content = content:gsub("{:%s?%.filepath}", "")
      -- Creamos un nuevo elemento de encabezado con el contenido modificado
      return pandoc.Para(content)
    end
    return el
  end
  -- Devolvemos el elemento sin cambios si no es un párrafo
  return el
end

-- Filtro para los nombres de los ficheros
function ExtractFilePath(el)
  -- Si el elemento es un párrafo
  if el.tag == "Para" then
    local content = pandoc.utils.stringify(el)
    -- Buscamos los párrafos que empiezan por "{: file=\"" y terminan con "\" }"
    local filepath = content:match("{:%s?file=“(.-)”%s?}")
    -- Si encontramos un filepath, devolvemos un nuevo párrafo con el filepath como contenido
    if filepath then
      return pandoc.Para("Fichero: " .. filepath)
    end
  end
  -- Devolvemos el elemento sin cambios si no es un párrafo que cumple con el patrón
  return el
end

return {
  {Para = ParaActivity},
  {Para = ParaSection},
  {Para = ParaSubsection},
  {Para = ParaSubsubsetion},
  {Para = RemovePrompts},
  {Para = RemoveFilepaths},
  {Para = ExtractFilePath}
}

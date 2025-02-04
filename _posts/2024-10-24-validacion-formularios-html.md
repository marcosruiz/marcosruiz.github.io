---
title: "Validación de formularios en HTML"
date: 2024-10-24 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/validacion-formularios-html/
---

{:.section}
## Introducción

La validación de formularios funciona añadiendo atributos a los campos del formulario que queremos validar. Los más usados son:

- `required`: indica que el campo es obligatorio. La validación fallará si no hay nada escrito en el input. En el caso de un grupo de radiobuttons se pone sobre cualquiera de ellos (o sobre todos) y obliga a que haya seleccionada una opción cualquiera del grupo.
- `pattern`: obliga a que el contenido del campo cumpla la expresión regular indicada. Por ejemplo para un código postal sería `pattern="^[0-9]{5}$"`.
- `minlength` / maxlength: indica la longitud mínima/máxima del contenido del campo
- `min` / `max`: indica el valor mínimo/máximo del contenido de un campo numérico
También producen errores de validación si el contenido de un campo no se adapta al type indicado (`email`, `number`, ...) o si el valor de un campo numérico no cumple con el step indicado.

> Puedes leer el artículo [Expresiones regulares](/posts/expresiones-regulares) si quieres saber más sobre expresiones regulares.
{:.prompt-tip}

Cuando el contenido de un campo es valido dicho campo obtiene automáticamente la pseudoclase `:valid` y si no lo es tendrá la pseudoclase `:invalid` lo que nos permite poner reglas en nuestro CSS para destacar dichos campos, por ejemplo:

```css
input:invalid {
  border: 2px dashed red;
}
```

La validación del navegador se realiza al enviar el formulario. Si encuentra un error lo muestra, se detiene la validación del resto de campos y no se envía el formulario.

{:.section}
## Ciclo Tradicional del Formulario

Tradicionalmente, un formulario está diseñado para enviar datos mediante HTTP al servidor. Al enviar (`submit`) un formulario, el navegador empaqueta los datos y los envía utilizando el método HTTP especificado (como GET o POST). Los formularios pueden incluir validación interna mediante HTML, lo que es más rápido que JavaScript pero ofrece menos control y personalización. La validación interna de HTML genera pseudo-clases que pueden estilizarse con CSS.

Este ejemplo muestra cómo utilizar pseudo-clases CSS para estilizar formularios con validación interna en HTML.

```html
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Formulario con Validación</title>
  <link rel="stylesheet" href="styles.css" />
</head>

<body>
  <h1>Formulario HTML con varios inputs de texto que utilizan las pseudclases valid, invalid y focus para aplicar estilos CSS </h1>
  <form id="validationForm" action="http://localhost:3003/update" method="POST">
    <label for="name">Nombre:</label>
    <input type="text" id="name" name="name" required /><br /><br />

    <label for="email">Correo Electrónico:</label>
    <input type="email" id="email" name="email" required /><br /><br />

    <label for="password">Contraseña:</label>
    <input type="password" id="password" name="password" required minlength="6" /><br /><br />

    <button type="submit">Enviar</button>
  </form>

  <script src="script.js"></script>
</body>

</html>
```
{: file="index.html" }

```css
/* Estilos básicos */
form {
  width: 300px;
  margin: 0 auto;
}

label {
  display: block;
  margin-bottom: 5px;
}

input {
  width: 100%;
  padding: 8px;
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

/* Pseudo-clases para la validación */
input:required {
  border-left: 5px solid #0000FF;
  /* Borde azul para campos requeridos */
}

input:valid {
  border-left: 5px solid #00FF00;
  /* Borde verde para campos válidos */
}

input:invalid {
  border-left: 5px solid #FF0000;
  /* Borde rojo para campos inválidos */
}

/* Pseudo-clase para campo enfocado */
input:focus {
  outline: none;
  border-color: #66AFE9;
  box-shadow: 0 0 8px rgba(102, 175, 233, 0.6);
}
```
{: file="styles.css" }



## Bibliografía

- <https://xxjcaxx.github.io/libro_dwec/dom.html>
- <https://lenguajejs.com/>
- <https://learnxinyminutes.com/docs/es-es/javascript-es/>

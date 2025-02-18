---
title: "Propagación de eventos en JavaScript"
date: 2025-02-13 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/propagacion-eventos-javascript/
---

{:.section}
## Introducción

Este artículo es la continuación de [Eventos en JavaScript](/posts/eventos-javascript/).

{:.section}
## Objeto Event

Generalmente, los manejadores de eventos necesitan información adicional para procesar las tareas que tienen que realizar. Si una función procesa, por ejemplo, el evento click, es posible que necesite conocer la posición en la que estaba el ratón en el momento de realizar el click.

También es común es necesitar información adicional en los eventos del teclado. Por ejemplo, cuando pulsamos una tecla nos interesa saber cuál ha sido la tecla pulsada, o si tenemos a mayores alguna tecla especial pulsada como `Alt`, `Control`, etc.

Para gestionar toda esa información disponemos del objeto `Event`, el cuál nos permitirá acceder a esas propiedades adicionales que se generan en los eventos.

Por ejemplo:

```javascript
document.getElementById("unParrafo").addEventListener('click',gestionar,false);
const gestionar = (miEvento) => {
     alert (miEvento.type);  // Mostrará una alerta con el tipo de evento que en este caso es 'click'.
}
```

En el código del ejemplo anterior cuando se produce el evento de `click` en un párrafo con `id="unParrafo"`, durante la fase de burbujeo, se llamará a la función gestionar. En la función gestionar hemos creado un argumento que le llamamos `miEvento`, y es justamente en ese argumento que hemos puesto en la función, dónde el navegador de forma automática, pondrá todos los datos referentes al evento que se ha disparado.

Una vez dentro de la función, mostramos una alerta con el tipo de evento (propiedad `type` del objeto `Event`) que se acaba de disparar.

Lee el artículo [El objeto Event](https://lenguajejs.com/javascript/eventos/objeto-event/).

(Voluntario) Lee el artículo [Escuchar eventos y handleEvent](https://lenguajejs.com/javascript/eventos/addeventlistener-handleevent/).

{:.question}
¿Podemos crear eventos personalizados en JavaScript sin el uso de bibliotecas externas?

<details class="card mb-2">
  <summary class="card-header question">¿Podemos disparar eventos desde código JavaScript?</summary>
  <div class="card-body" markdown="1">

Si.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question" markdown="1">
  
  ¿Podemos añadir información adicional al crear un objeto Event de la siguiente manera: `const event = new Event("click", { detail: 123 });`?
  
  </summary>
  <div class="card-body" markdown="1">

No.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

{:.subsection}
### Propiedades y métodos del objeto Event

Propiedades del objeto Event:

- `altKey`, `ctrlKey`, `metaKey`, `shiftKey`: Valor booleano que indica si están presionadas alguna de las teclas `Alt`, `Ctrl`, `Meta` o `Shift` en el momento del evento.
- `bubbles`: Valor booleano que indica si el evento burbujea o no.
- `button`: Valor integer que indica que botón del ratón ha sido presionado o soltado, 0=izquierdo, 2=derecho, 1=medio.
- `cancelable`: Valor booleano que indica si el evento se puede cancelar.
- `charCode`: Indica el carácter Unicode de la tecla presionada.
- `clientX`, `clientY`: Devuelve las coordenadas de la posición del ratón en el momento del evento.
- `currentTarget`: El elemento al que se asignó el evento. Por ejemplo si tenemos un evento de click en un divA que contiene un hijo divB. Si hacemos click en divB, `currentTarget` referenciará a divA (el elemento dónde se asignó el evento) mientras que `target` devolverá divB, el elemento dónde ocurrió el evento.
- `eventPhase`: Un valor integer que indica la fase del evento que está siendo procesada. Fase de captura (1), en destino (2) o fase de burbujeo (3).
- `layerX`, `layerY`: Devuelve las coordenadas del ratón relativas a un elemento posicionado absoluta o relativamente. Si el evento ocurre fuera de un elemento posicionado se usará la esquina superior izquierda del documento.
- `pageX`, `pageY`: Devuelve las coordenadas del ratón relativas a la esquina superior izquierda de una página.
- `relatedTarget`: En un evento de "mouseover" indica el nodo que ha abandonado el ratón. En un evento de `mouseout` indica el nodo hacia el que se ha movido el ratón.
- `screenX`, `screenY`: Devuelve las coordenadas del ratón relativas a la pantalla dónde se disparó el evento.
- `target`: El elemento dónde se originó el evento, que puede diferir del elemento que tenga asignado el evento. Véase `currentTarget`.
- `timestamp`: Devuelve la hora (en milisegundos desde `epoch`) a la que se creó el evento. Por ejemplo cuando se presionó una tecla. No todos los eventos devuelven `timestamp`.
- `type`: Una cadena de texto que indica el tipo de evento `click`, `mouseout`, `mouseover`, etc.
- `which`: Indica el Unicode de la tecla presionada. Idéntico a `charCode`, excepto que esta propiedad también funciona en Netscape 4.

Métodos del objeto Event:

- `preventDefault()`: Cancela cualquier acción asociada por defecto a un evento.
- `stopPropagation()`: Evita que un evento burbujee. Por ejemplo si tenemos un divA que contiene un divB hijo. Cuando asignamos un evento de click a divA, si hacemos click en divB, por defecto se dispararía también el evento en divA en la fase de burbujeo. Para evitar ésto se puede llamar a `stopPropagation()` en divB. Para ello creamos un evento de click en divB y le hacemos `stopPropagation()`.

{:.section}
## Custom Events

Antes de seguir con la propagación y captura de eventos debemos entender qué son los Custom Events y para qué sirven.

Lee el artículo [¿Qué son los Custom Events?](https://lenguajejs.com/javascript/custom-events/que-son/#custom-events)

{:.section}
## Propagación y captura de eventos

Los eventos se propagan desde el elemento que los desencadena hacia sus elementos padre. Se puede capturar un evento durante esta propagación y realizar acciones diferentes según el elemento específico que lo desencadenó. Para detener la propagación de un evento a elementos padre, se usa `event.stopPropagation()`.

```javascript
<div id="padre">
    <div id="hijo">
        <button id="boton">Haz clic aquí</button>
    </div>
</div>
```

```javascript
document.getElementById('boton').addEventListener('click', function(event) {
    alert('Haz clic en el botón hijo');
    event.stopPropagation(); // Detiene la propagación del evento hacia arriba
});

document.getElementById('hijo').addEventListener('click', function(event) {
    alert('Haz clic en el div hijo');
});

document.getElementById('padre').addEventListener('click', function(event) {
    alert('Haz clic en el div padre');
});
```

La propagación de eventos permite que los eventos desencadenados en elementos hijos se propaguen hacia sus elementos padres. Esta característica es muy útil para enviar datos desde elementos hijos a sus elementos padres mediante eventos personalizados y es fundamental en el funcionamiento de los componentes en varios frameworks de JavaScript como React, Vue.js y Angular.

Existen 3 modelos propuestos de disparo de eventos, que clarificarán el orden de disparo de los mismos:

- **Modelo de captura de eventos**: En este modelo los eventos se van disparando de afuera hacia adentro. Es decir, primero se disparará el evento asignado al elemento exterior, y continúa descendiendo y disparando los eventos que coincidan, hasta llegar al elemento interior.
- **Modelo de burbujeo de eventos**: En este modelo los eventos se van disparando desde dentro hacia afuera. Es decir, primero se disparará el evento asignado al elemento interior, y continúa subiendo y disparando los eventos que coincidan, hasta llegar al elemento exterior.
- **Modelo de W3C**: En este modelo se integran los dos modelos anteriores. Simplemente se realiza la fase de captura de eventos primero y, cuando termina, se realiza la fase de burbujeo. En este modelo cuando registramos un evento con `addEventListener(<evento>, <función>, <true|false>)` tenemos la opción de indicar cuándo queremos que se dispare el evento:
  - En la fase de **burbujeo**, el evento se propaga desde el origen del evento hacia el documento raíz.
  - En la fase de **captura**, el evento se propaga desde el documento raíz hasta el origen del evento.
  - También disponemos de un método para cancelar eventos con `preventDefault()`, y de un método para detener la propagación de eventos en la fase de burbujeo, con `stopPropagation()`.

Lee el artículo [Emisión de eventos](https://lenguajejs.com/javascript/custom-events/emision-eventos/).

Lee el artículo [Propagación de eventos](https://lenguajejs.com/javascript/custom-events/propagacion-eventos/).

{:.section}
## Enviar datos de hijos a padres con eventos personalizados

Los eventos personalizados se pueden utilizar para comunicar datos desde un componente hijo a un componente padre. A continuación se muestra un ejemplo de cómo se puede lograr esto en un entorno sin frameworks, utilizando la propagación de eventos del DOM:

```javascript
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Custom Event Example</title>
</head>
<body>
    <div id="parent"></div>
    <script>
        // Crear el elemento hijo
        const child = document.createElement('button');
        child.textContent = 'Click me';

        // Crear el elemento padre
        const parent = document.getElementById('parent');
        parent.appendChild(child);

        // Añadir un evento personalizado al hijo
        child.addEventListener('click', () => {
            const customEvent = new CustomEvent('childEvent', { 
                bubbles: true,  // para que se propague
                detail: { message: 'Hello from child' }
            });
            child.dispatchEvent(customEvent);
        });

        // Añadir un listener en el padre para capturar el evento del hijo
        parent.addEventListener('childEvent', (event) => { 
            console.log('Received message from child:', event.detail.message);
        });
    </script>
</body>
</html>
```

En este ejemplo:

- **Elemento hijo** (`child`): Cuando se hace clic en el botón, se dispara un evento personalizado `childEvent` con algunos datos en la propiedad detail.
- **Elemento padre** (`parent`): El padre escucha el evento `childEvent` y maneja los datos recibidos del hijo.

- En React, los datos de un componente hijo se envían a un componente padre mediante la elevación del estado y callbacks, en lugar de utilizar directamente la propagación de eventos del DOM.
- En Vue.js, la comunicación de hijos a padres se realiza mediante la emisión de eventos personalizados.
- Angular también proporciona `@Output` que crea un evento que es capturado por el componente padre.

Ejercicio de eventos y propagación: <https://jsfiddle.net/xxjcaxx/wep0c2j9/1/>

## Bibliografía

- [Ministerio de Educación y Formación Profesional](https://www.educacionyfp.gob.es/portada.html)
- <https://xxjcaxx.github.io/libro_dwec/arraysobjetosclases.html#objetos-en-javascript>
- <https://xxjcaxx.github.io/libro_dwec/arraysobjetosclases.html#manipulacion-y-copia-de-objetos>
- <https://lenguajejs.com/javascript/objetos/desestructuracion-objetos/>

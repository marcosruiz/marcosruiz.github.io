---
title: "Tutorial: Vue"
date: 2025-04-03 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Web, Desarrollo Web en Entorno Cliente]
tags: [fp, ciclo superior, modulo, formación profesional, daw, desarrollo de aplicaciones web, desarrollo web en entorno cliente, dwec]
img_path: /assets/img/tutorial-vue/
---

> Este artículo es una traducción con [DeepL](https://www.deepl.com/) del [tutorial oficial de Vue](https://vuejs.org/tutorial/).
{:.prompt-info}

{:.step}
## Primeros pasos

¡Bienvenido al tutorial de Vue!

El objetivo de este tutorial es darte rápidamente una experiencia de lo que se siente al trabajar con Vue, directamente en el navegador. No pretende ser exhaustivo, y no necesitas entenderlo todo antes de continuar. Sin embargo, después de completarlo, asegúrate de leer también la [Guía](https://vuejs.org/guide/introduction.html) que cubre cada tema con más detalle.

### Requisitos previos

El tutorial asume una familiaridad básica con HTML, CSS y JavaScript. Si eres totalmente nuevo en el desarrollo front-end, puede que no sea la mejor idea saltar directamente a un framework como primer paso - ¡aprende lo básico y luego vuelve! La experiencia previa con otros frameworks ayuda, pero no es necesaria.

### Cómo usar este tutorial

Puedes editar el código de la derecha y ver cómo se actualiza el resultado al instante. Cada paso introducirá una característica básica de Vue, y se espera que completes el código para que la demo funcione. Si te quedas atascado, tendrás un botón "¡Muéstrame!" que te revelará el código que funciona. Trata de no confiar demasiado en él - aprenderás más rápido resolviendo las cosas por tu cuenta.

Si eres un desarrollador experimentado que viene de Vue 2 u otros frameworks, hay algunos ajustes que puedes modificar para sacar el máximo provecho de este tutorial. Si usted es un principiante, se recomienda ir con los valores predeterminados.

<details class="card mb-2">
  <summary class="card-header question">Tutorial Configuración Detalles</summary>
  <div class="card-body" markdown="1">

Vue ofrece dos estilos de API: API de Opciones y API de Composición. Este tutorial está diseñado para funcionar con ambos - puedes elegir tu estilo preferido usando los interruptores de Preferencia de API en la parte superior. [Más información sobre los estilos de API](https://vuejs.org/guide/introduction.html#api-styles).

También puede cambiar entre el modo SFC y el modo HTML. El primero mostrará ejemplos de código en formato [Single-File Component](https://vuejs.org/guide/introduction.html#single-file-components) (SFC), que es lo que la mayoría de los desarrolladores utilizan cuando usan Vue con un paso de compilación. El modo HTML muestra el uso sin un paso de compilación.

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

¿Estás preparado? Haz clic en "Siguiente" para empezar.

{:.step}
## Renderizado declarativo

Lo que ves en el editor es un Vue Single-File Component (SFC). Un SFC es un bloque de código autocontenido reutilizable que encapsula HTML, CSS y JavaScript que van juntos, escrito dentro de un archivo `.vue`.

La característica principal de Vue es el renderizado declarativo: utilizando una sintaxis de plantilla que amplía HTML, podemos describir el aspecto que debe tener el HTML basándonos en el estado de JavaScript. Cuando el estado cambia, el HTML se actualiza automáticamente.

El estado que puede desencadenar actualizaciones cuando cambia se considera reactivo. Podemos declarar estado reactivo usando la API `reactive()` de Vue. Los objetos creados a partir de `reactive()` son [proxies](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy) de JavaScript que funcionan igual que los objetos normales:

```javascript
import { reactive } from 'vue'

const counter = reactive({
  count: 0
})

console.log(counter.count) // 0
counter.count++
```

`reactive()` sólo funciona con objetos (incluyendo arrays y tipos incorporados como `Map` y `Set`). `ref()`, por otro lado, puede tomar cualquier tipo de valor y crear un objeto que expone el valor interno bajo una propiedad `.value`:

```javascript
import { ref } from 'vue'

const message = ref('Hello World!')

console.log(message.value) // "Hello World!"
message.value = 'Changed'
```

Los detalles sobre reactive() y ref() se discuten en [Guía - Fundamentos de la Reactividad](https://vuejs.org/guide/essentials/reactivity-fundamentals.html).

El estado reactivo declarado en el bloque `<script setup>` del componente puede usarse directamente en la plantilla. Así es como podemos renderizar texto dinámico basado en el valor del objeto contador y el `message` ref, usando la sintaxis de los bigotes:

```template
<h1>{{ message }}</h1>
<p>Count is: {{ counter.count }}</p>
```

Fíjate en que no necesitamos usar `.value` cuando accedemos a la ref del `message` en las plantillas: se desenvuelve automáticamente para un uso más sucinto.

El contenido de los bigotes no se limita a identificadores o rutas: podemos utilizar cualquier expresión válida de JavaScript:

```javascript
<h1>{{ message.split('').reverse().join('') }}</h1>
```

Ahora, intenta crear algún estado reactivo por ti mismo, y úsalo para renderizar contenido de texto dinámico para el `<h1>` en la plantilla.

{:.step}
## Attribute Bindings

En Vue, los bigotes sólo se utilizan para la interpolación de texto. Para vincular un atributo a un valor dinámico, utilizamos la directiva `v-bind`:

```javascript
<div v-bind:id="dynamicId"></div>
```

Una directiva es un atributo especial que comienza con el prefijo `v-`. Forman parte de la sintaxis de plantillas de Vue. De forma similar a las interpolaciones de texto, los valores de directiva son expresiones JavaScript que tienen acceso al estado del componente. Los detalles completos de `v-bind` y la sintaxis de directivas se discuten en [Guía - Sintaxis de plantillas](https://vuejs.org/guide/essentials/template-syntax.html).

La parte después de los dos puntos (`:id`) es el "argumento" de la directiva. Aquí, el atributo id del elemento se sincronizará con la propiedad `dynamicId` del estado del componente.

Debido a que `v-bind` se utiliza con tanta frecuencia, tiene una sintaxis abreviada dedicada:

```javascript
<div :id="dynamicId"></div>
```

Ahora, intente añadir una clase dinámica a `<h1>`, utilizando la ref `titleClass` como valor. Si el enlace es correcto, el texto debería volverse rojo.

{:.step}
## Event Listeners

Podemos escuchar eventos DOM usando la directiva `v-on`:

```javascript
<button v-on:click="increment">{{ count }}</button>
```

Due to its frequent use, `v-on` also has a shorthand syntax:

```javascript
<button @click="increment">{{ count }}</button>
```

Aquí, `increment` está haciendo referencia a una función declarada en `<script setup>`:

```javascript
<script setup>
import { ref } from 'vue'

const count = ref(0)

function increment() {
  // update component state
  count.value++
}
</script>
```

Dentro de la función, podemos actualizar el estado del componente mutando refs.

Los manejadores de eventos también pueden usar expresiones en línea, y pueden simplificar tareas comunes con modificadores. Estos detalles están cubiertos en la [Guía - Manejo de Eventos](https://vuejs.org/guide/essentials/event-handling.html).

Ahora, intenta implementar la función de incremento por ti mismo y enlázala al botón usando `v-on`.

{:.step}
## Form Bindings

Utilizando `v-bind` y `v-on` juntos, podemos crear enlaces bidireccionales en los elementos de entrada del formulario:

```javascript
<input :value="text" @input="onInput">
```

```javascript
function onInput(e) {
  // a v-on handler receives the native DOM event
  // as the argument.
  text.value = e.target.value
}
```

Intenta escribir en el cuadro de entrada - deberías ver el texto en `<p>` actualizándose a medida que escribes.

Para simplificar los enlaces bidireccionales, Vue proporciona una directiva, `v-model`, que es esencialmente azúcar sintáctico para lo anterior:

```javascript
<input v-model="text">
```

`v-model` sincroniza automáticamente el valor del `<input>` con el estado vinculado, por lo que ya no es necesario utilizar un controlador de eventos para ello.

`v-model` no sólo funciona con entradas de texto, sino también con otros tipos de entradas como casillas de verificación, botones de radio y desplegables de selección. Cubrimos más detalles en la [Guía - Form Bindings](https://vuejs.org/guide/essentials/forms.html).

Ahora, intenta refactorizar el código para usar `v-model` en su lugar.

{:.step}
## Renderizado condicional

Podemos utilizar la directiva `v-if` para renderizar condicionalmente un elemento:

```javascript
<h1 v-if="awesome">Vue is awesome!</h1>
```

Este `<h1>` sólo se mostrará si el valor de awesome es [verdadero](https://developer.mozilla.org/en-US/docs/Glossary/Truthy). Si awesome cambia a un valor [falso](https://developer.mozilla.org/en-US/docs/Glossary/Falsy), se eliminará del DOM.

También podemos usar `v-else` y `v-else-if` para denotar otras ramas de la condición:

```javascript
<h1 v-if="awesome">Vue is awesome!</h1>
<h1 v-else>Oh no 😢</h1>
```

Actualmente, la demo está mostrando ambos `<h1>`s al mismo tiempo, y el botón no hace nada. Intenta añadirles directivas `v-if` y `v-else`, e implementa el método `toggle()` para que podamos usar el botón para alternar entre ellas.

Más detalles sobre `v-if`: [Guía - Renderizado condicional](https://vuejs.org/guide/essentials/conditional.html)

{:.step}
## Renderizado de listas

Podemos utilizar la directiva `v-for` para renderizar una lista de elementos basada en un array fuente:

```javascript
<ul>
  <li v-for="todo in todos" :key="todo.id">
    {{ todo.text }}
  </li>
</ul>
```

Aquí `todo` es una variable local que representa el elemento del array sobre el que se está iterando. Sólo es accesible en o dentro del elemento `v-for`, similar al ámbito de una función.

Observa que también estamos dando a cada objeto `todo` un id único, y vinculándolo como el [atributo clave especial](https://vuejs.org/api/built-in-special-attributes.html#key) para cada `<li>`. La clave permite a Vue mover con precisión cada `<li>` para que coincida con la posición de su objeto correspondiente en la matriz.

Hay dos maneras de actualizar la lista:

Llamar a métodos mutantes en la matriz de origen:

```javascript
todos.value.push(newTodo)
```

Sustituye la matriz por una nueva:

```javascript
todos.value = todos.value.filter(/* ... */)
```

Aquí tenemos una simple lista de tareas - ¡intenta implementar la lógica de los métodos `addTodo()` y `removeTodo()` para que funcione!

Más detalles en v-for: [Guía - Renderizado de listas](https://vuejs.org/guide/essentials/list.html)

{:.step}
## Propiedad computada

Sigamos construyendo sobre la lista de cosas del último paso. Aquí, ya hemos añadido una funcionalidad de alternar a cada `todo`. Esto se hace añadiendo una propiedad done a cada objeto `todo`, y usando v-model para enlazarla a una casilla de verificación:

```javascript
<li v-for="todo in todos">
  <input type="checkbox" v-model="todo.done">
  ...
</li>
```

La siguiente mejora que podemos añadir es poder ocultar los todos ya completados. Ya tenemos un botón que activa el estado de `ocultarTerminado`. Pero, ¿cómo mostrar diferentes elementos de la lista en función de ese estado?

Introduciendo [`computed()`](https://vuejs.org/guide/essentials/computed.html). Podemos crear una referencia computada que calcule su `.value` basándose en otras fuentes de datos reactivas:

```javascript
import { ref, computed } from 'vue'

const hideCompleted = ref(false)
const todos = ref([
  /* ... */
])

const filteredTodos = computed(() => {
  // return filtered todos based on
  // `todos.value` & `hideCompleted.value`
})
```

```diff
- <li v-for="todo in todos">
+ <li v-for="todo in filteredTodos">
```

Una propiedad calculada realiza un seguimiento de otros estados reactivos utilizados en su cálculo como dependencias. Almacena en caché el resultado y lo actualiza automáticamente cuando cambian sus dependencias.

Ahora, intenta añadir la propiedad computada filteredTodos e implementa su lógica de computación. Si se implementa correctamente, marcar una tarea al ocultar los elementos completados debería ocultarla al instante.

{:.step}
## Lifecycle y Template Refs

Hasta ahora, Vue ha estado manejando todas las actualizaciones del DOM por nosotros, gracias a la reactividad y al renderizado declarativo. Sin embargo, inevitablemente habrá casos en los que necesitemos trabajar manualmente con el DOM.

Podemos solicitar una `ref` de plantilla - es decir, una referencia a un elemento de la plantilla - utilizando el [atributo especial `ref`](https://vuejs.org/api/built-in-special-attributes.html#ref):

```template
<p ref="pElementRef">hello</p>
```

Para acceder a la `ref`, necesitamos declarar una `ref` con nombre coincidente:

```javascript
const pElementRef = ref(null)
```

Observe que la `ref` se inicializa con valor nulo. Esto se debe a que el elemento aún no existe cuando se ejecuta `<script setup>`. La ref de la plantilla sólo es accesible después de montar el componente.

Para ejecutar código después del montaje, podemos utilizar la función `onMounted()`:

```javascript
import { onMounted } from 'vue'

onMounted(() => {
  // component is now mounted.
})
```

Esto se llama un gancho de ciclo de vida - nos permite registrar una llamada de retorno para ser llamada en ciertos momentos del ciclo de vida del componente. Existen otros hooks como `onUpdated` y `onUnmounted`. Echa un vistazo al [Diagrama del Ciclo de Vida](https://vuejs.org/guide/essentials/lifecycle.html#lifecycle-diagram) para más detalles.

Ahora, intenta añadir un hook onMounted, accede al `<p>` a través de `pElementRef.value`, y realiza algunas operaciones DOM directas sobre él (por ejemplo, cambiar su `textContent`).

{:.step}
## Watchers

A veces podemos necesitar realizar "efectos secundarios" de forma reactiva - por ejemplo, registrar un número en la consola cuando cambia. Podemos conseguirlo con observadores:

```javascript
import { ref, watch } from 'vue'

const count = ref(0)

watch(count, (newCount) => {
  // yes, console.log() is a side effect
  console.log(`new count is: ${newCount}`)
})
```

`watch()` puede vigilar directamente una ref, y la llamada de retorno se dispara cada vez que cambia el valor de `count`. `watch()` también puede vigilar otros tipos de fuentes de datos - más detalles en [Guía - Watchers](https://vuejs.org/guide/essentials/watchers.html).

Un ejemplo más práctico que el registro en la consola sería la obtención de nuevos datos cuando cambia un ID. El código que tenemos está obteniendo los datos de todos desde una API simulada en el montaje del componente. También hay un botón que incrementa el ID de todo que debe ser recuperado. Intenta implementar un observador que obtenga una nueva tarea cuando se pulse el botón.

{:.step}
## Componentes

Hasta ahora, sólo hemos estado trabajando con un único componente. Las aplicaciones Vue reales se crean normalmente con componentes anidados.

Un componente padre puede renderizar otro componente en su plantilla como un componente hijo. Para utilizar un componente hijo, primero tenemos que importarlo:

```javascript
import ChildComp from './ChildComp.vue'
```

A continuación, podemos utilizar el componente en la plantilla como:

```javascript
<ChildComp />
```

Ahora inténtelo usted mismo - importe el componente hijo y renderícelo en la plantilla.

{:.step}
## Props

Un componente hijo puede aceptar entradas del padre a través de props. En primer lugar, debe declarar los accesorios que acepta:

```javascript
<!-- ChildComp.vue -->
<script setup>
const props = defineProps({
  msg: String
})
</script>
```

Tenga en cuenta que `defineProps()` es una macro en tiempo de compilación y no necesita ser importada. Una vez declarada, la prop `msg` puede utilizarse en la plantilla del componente hijo. También se puede acceder a ella en JavaScript a través del objeto devuelto por `defineProps()`.

El padre puede pasar la prop al hijo igual que los atributos. Para pasar un valor dinámico, también podemos utilizar la sintaxis `v-bind`:

```javascript
<ChildComp :msg="greeting" />
```

Ahora pruébalo tú mismo en el editor.

{:.step}
## Emits

Además de recibir props, un componente hijo también puede emitir eventos al padre:

```vue
<script setup>
// declare emitted events
const emit = defineEmits(['response'])

// emit with argument
emit('response', 'hello from child')
</script>
```

El primer argumento de `emit()` es el nombre del evento. Cualquier argumento adicional se pasa al receptor del evento.

El padre puede escuchar los eventos emitidos por el hijo usando `v-on` - aquí el manejador recibe el argumento extra de la llamada emit del hijo y lo asigna al estado local:

```javascript
<ChildComp @response="(msg) => childMsg = msg" />
```

Ahora pruébalo tú mismo en el editor.

{:.step}
## Slots

Además de pasar datos a través de props, el componente padre también puede pasar fragmentos de plantilla al hijo a través de slots:

```javascript
<ChildComp>
  This is some slot content!
</ChildComp>
```

En el componente hijo, puede renderizar el contenido de la ranura del padre utilizando el elemento `<slot>` como salida:

```javascript
<!-- in child template -->
<slot/>
```

El contenido dentro de la salida `<slot>` se tratará como contenido "fallback": se mostrará si el padre no pasó ningún contenido de ranura:

```javascript
<slot>Fallback content</slot>
```

Actualmente no estamos pasando ningún contenido de slot a `<ChildComp>`, por lo que deberías ver el contenido fallback. Vamos a proporcionar algo de contenido de la ranura para el niño mientras se hace uso del estado `msg` de los padres.

## Lo has conseguido

¡Has terminado el tutorial!

En este punto, deberías tener una buena idea de lo que es trabajar con Vue. Sin embargo, cubrimos muchas cosas muy rápido y pasamos por alto los detalles, ¡así que sigue aprendiendo! Como siguiente paso, puedes

- Configurar un proyecto Vue real en tu máquina siguiendo el [Inicio Rápido](https://vuejs.org/guide/quick-start.html).
- Revisar la [Guía Principal](https://vuejs.org/guide/essentials/application.html), que cubre todos los temas que hemos aprendido hasta ahora en mayor detalle, y mucho más.
- Ver algunos [Ejemplos más prácticos](https://vuejs.org/examples/).

¡No podemos esperar a ver lo que construyes a continuación!

## Bibliografía

- <https://vuejs.org/tutorial>

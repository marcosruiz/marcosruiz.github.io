---
title: Análisis, desarrollo y prueba de aplicaciones
date: 2022-04-01 12:20:00 +0100
categories: [Bachillerato, Tecnologías de la Información y Comunicación II]
tags: [tic ii, teoría, programación]
mermaid: true
---

{:.section}
## Introducción

La creación de un programa informático es un proceso ordenado que ha de realizarse de modo secuencial. Desde el programa más sencillo, con pocas instrucciones, hasta la programación de grandes aplicaciones que contienen miles de líneas de instrucciones, se han de seguir una serie de pasos, que constituyen las **etapas del desarrollo de software**:

1. Análisis (de requisitos).
1. Diseño del algoritmo.
1. Implementación o codificación.
1. Pruebas.
1. Documentación.
1. Mantenimiento.

En el el apartado Etapas del desarrollo de software del artículo [Iniciación a la programación](/posts/iniciacion-a-la-programacion/#etapas-del-desarrollo-de-software) están explicadas las fases de desarrollo del software en más detalle.

Teniendo en cuenta las anteriores etapas del desarrollo existen diferentes maneras de organizar estas fases:

- Modelo de cascada
- Modelo de espiral
- Desarrollo iterativo e incremental
- Desarrollo ágil

{:.subsection}
### Modelo de cascada

El modelo de cascada define las etapas que deben cumplirse de forma sucesiva como se ve en el siguiente diagrama.

```mermaid
flowchart LR
A(Análisis) --> B(Diseño)
B(Diseño) --> C(Implementación)
C(Implementación) --> D(Pruebas)
D(Pruebas) --> E(Documentación)
E(Documentación) --> F(Mantenimiento)
```

### Crisis del software

**Entre 1960 y 1990** ocurre lo que se denomina la crisis del software en la que ocurrieron casos como los siguientes:

- Accidente de un F-18 (1986) por no poner un else en el if&else.
- Muertes por el Therac-25 (1985-1987): El Therac-25 fue una máquina de radioterapia.
- Sobrecosto, retraso y cancelación en el sistema del Bank of America (1988). 23 millones de $ + **60 millones de $ de sobrecoste**.
  
Debido a esto surgieron nuevos modelos de desarrollo de software.

{:.subsection}
### Modelo de cascada con retroalimentación

El modelo en cascada tiene una serie de variantes con retroalimentación como las dos siguientes:

```mermaid
flowchart LR
A(Análisis) --> B(Diseño)
B(Diseño) --> C(Implementación)
C(Implementación) --> D(Pruebas)
D(Pruebas) --> E(Documentación)
E --> A
E(Documentación) --> F(Mantenimiento)
```

```mermaid
flowchart LR
A(Análisis) --> B(Diseño)
B --> A
B(Diseño) --> C(Implementación)
C --> B
C(Implementación) --> D(Pruebas)
D --> C
D(Pruebas) --> E(Documentación)
E --> D
E(Documentación) --> F(Mantenimiento)
F --> E
```

{:.subsection}
### Modelo de espiral

La principal característica del modelo en espiral es la gestión de riesgos de forma periódica en el ciclo de desarrollo.

![Modelo de espiral](/assets/img/analisis-desarrollo-prueba-aplicaciones/modeloEspiral.png)
_Modelo de espiral_

{:.subsection}
### Desarrollo iterativo e incremental

El desarrollo iterativo recomienda la construcción de secciones reducidas de software que irán ganando en tamaño para facilitar así la detección de problemas de importancia antes de que sea demasiado tarde. Los procesos iterativos pueden ayudar a desvelar metas del diseño en el caso de clientes que no saben cómo definir lo que quieren.

{:.subsection}
### Desarrollo ágil

El desarrollo ágil de software utiliza un desarrollo iterativo como base para abogar por un punto de vista más ligero y más centrado en las personas que en el caso de las soluciones tradicionales. Los procesos ágiles utilizan retroalimentación en lugar de planificación, como principal mecanismo de control. La retroalimentación se canaliza por medio de pruebas periódicas y frecuentes versiones del software. 

```mermaid
flowchart LR
A(Análisis mínimo) --> B(Diseño)
B(Diseño) --> C(Desarrollo y Pruebas)
C --> A
```

Ejemplos:

- **SCRUM**
- FDD (Feature Driven Development)
- TDD (Test Driven Development)
- XP (Extreme programming)


{:.section}
## Análisis

Esta primera etapa es la esencial, pues establecerá las bases del software que comenzaremos a desarrollar.

Sin entrar en grandes aspectos técnicos, se especifican detalladamente en un documento los requisitos que marca el cliente que debe tener el resultado final. La empresa encargada de desarrollarlo también deberá ayudarle a tener una visión completa del software, así como aclararle algunas dudas o ideas que pueda tener el cliente y que puedan parecer en un principio incompletas.

En esta etapa, la comunicación entre la empresa y el cliente es esencial para cerrar las pautas que se deben cumplir y no dejar ningún cabo suelto. Igualmente, la creación de este documento puede ayudar a la empresa a establecer plazos de entrega o costes.

Es importante resaltar que para el correcto proceso de desarrollo de software, este documento debe estar cerrado, sin implementar nuevas pautas a mitad del proceso de desarrollo que puedan retrasar el trabajo.

⚠️ Los diagramas no pertenecen necesariamente a una única etapa del desarrollo de software.

{:.subsection}
### Diagramas de casos de uso

![Ejemplos de diagrama de casos de uso](/assets/img/analisis-desarrollo-prueba-aplicaciones/ejemploCasosDeUso.png)
_Ejemplos de diagrama de casos de uso_

{:.subsection}
### Historias de usuario (desarrollo ágil)

Una historia de usuario es una explicación general e informal de una función de software escrita desde la perspectiva del usuario final. Su propósito es articular cómo proporcionará una función de software valor al cliente.

Como \<ROL\>, quiero hacer \<FUNCIONALIDAD\> con el objetivo de \<BENEFICIO\>.

![Ejemplos de historias de usuario](/assets/img/analisis-desarrollo-prueba-aplicaciones/historiasDeUsuario.png)
_Ejemplos de historias de usuario_

{:.section}
## Diseño

En esta siguiente fase debemos trazar una estructura interna del software. Para ello, descomponemos y organizamos el sistema en diferentes elementos que puedan elaborarse por separado.

Esto debe dar lugar a la creación de un documento en el que se describe la estructura relacional global del sistema, así como una especificación de cuál es la función de cada una de sus partes o cómo combinan entre ellas.

{:.subsection}
### Diagramas de clases

- El diagrama de clases es un diagrama puramente orientado al modelo de programación orientado a objetos.
- Define las clases que se utilizarán cuando se pase a la fase de construcción y la manera en que se relacionan las mismas.
- Conceptualmente, es similar al modelo Entidad-Relación (E/R).

![Ejemplo de diagrama de clases](/assets/img/analisis-desarrollo-prueba-aplicaciones/relacionPersonaMascota.png)
_Relación persona mascota_

```java
public class Persona{
  private Mascota mascota;
  public Persona(Mascota m){
    mascota = m;
  }
}
```

```java
public class Persona{
  private Persona persona;
  public Mascota(Persona p){
    persona = p;
  }
}
```

![Ejemplo de diagrama de clases](/assets/img/analisis-desarrollo-prueba-aplicaciones/ejemploDiagramaDeClases.png)
_Ejemplo de diagrama de clases_

{:.subsection}
### Diagramas de paquetes

Los diagramas de paquetes son diagramas que se emplean para mostrar la organización y disposición de diversos elementos de un modelo en forma de paquetes. Cada elemento está anidado dentro de un paquete, que se representa como una carpeta de archivos dentro del diagrama.

Normalmente un paquete está pensado como un directorio si son componentes internos, pero podría ser también una librería[^librería]. En java las librerías se importan con la palabra clave `import`.

[^librería]: Librería es un false friend de library. Realmente son bibliotecas pero el uso de librería está ampliamente extendido exceptuando ambientes académicos.

![Ejemplo de diagrama de paquetes](/assets/img/analisis-desarrollo-prueba-aplicaciones/ejemploDiagramaDePaquetes.png)
_Ejemplo de diagrama de paquetes_

{:.section}
## Implementación

En la etapa de implementación del proceso de desarrollo de software, traducimos el diseño anterior al código. Se programan los requisitos que se han especificado anteriormente, realizando los algoritmos necesarios.

Esta es, por tanto, la primera etapa en la que comenzamos a obtener resultados “visibles”.

Leer el artículo [Manual Java](/posts/manual-java/).

{:.subsection}
### Diagramas de flujo

Un diagrama de flujo es un diagrama que describe un proceso, sistema o algoritmo informático. Se usan ampliamente en numerosos campos para documentar, estudiar, planificar, mejorar y comunicar procesos que suelen ser complejos en diagramas claros y fáciles de comprender.

Son uno de los diagramas más comunes del mundo, usados por personas con y sin conocimiento técnico en una variedad de campos.

![Ejemplo de diagrama de flujo](/assets/img/analisis-desarrollo-prueba-aplicaciones/ejemploDiagramaDeFlujo.svg)
_Ejemplo de diagrama de flujo_

{:.subsection}
### Diagramas de secuencia

El diagrama de secuencia muestra gráficamente los eventos que fluyen de los actores al sistema. Para su elaboración se parte de casos de uso elaborados durante la etapa de análisis. Un diagrama de secuencia tiene dos dimensiones:

- La dimensión vertical: que representa el tiempo.
- La dimensión horizontal: que representa los roles que participan en la interacción.

![Ejemplo de diagrama de secuencia](/assets/img/analisis-desarrollo-prueba-aplicaciones/ejemploSecuencia1.png)
_Ejemplo de diagrama de secuencia_

![Ejemplo de diagrama de secuencia](/assets/img/analisis-desarrollo-prueba-aplicaciones/ejemploSecuencia2.png)
_Ejemplo de diagrama de secuencia_

{:.section}
## Pruebas

Pruebas... ¿para qué?

- Detectar errores.
- Analizar el rendimiento o carga de CPU.
- Evitar problemas en producción graves. ¿Qué es un problema grave?
- Aumentar la fiabilidad y robustez de un software.
- Generar seguridad cuando tocamos ciertas partes del código.
- Aumentar el coste en la creación de un software.

{:.subsection}
### Tipos de pruebas

- Pruebas de caja blanca
- Pruebas de caja negra

{:.subsubsection}
#### Pruebas de caja blanca

Mediante esta técnica se pretenden obtener casos de prueba que:

- Garanticen que se ejecutan al menos una vez todos los caminos independientes.
- Ejecuten todas las sentencias al menos una vez.
- Ejecuten todas las decisiones lógicas en su parte verdadera y falsa.
- Ejecuten todos los bucles en sus límites.
- Utilicen todas las estructuras de datos internas para asegurar su validez.

![Caja blanca](/assets/img/analisis-desarrollo-prueba-aplicaciones/cajaBlanca.webp)
_Caja blanca_

Se basan en el minucioso examen de los detalles procedimentales del código de la aplicación.

Una de las técnicas utilizadas para desarrollar los casos de prueba de caja blanca es la prueba del camino básico.

{:.subsubsection}
#### Pruebas de caja negra o de comportamiento

Estas pruebas se llevan a cabo sobre la interfaz del software, no hace falta conocer la estructura interna del programa ni su funcionamiento.

Se pretende obtener casos de prueba que demuestren que las funciones del software son operativas, es decir, que las salidas que devuelve la aplicación son las esperadas en función de las entradas que se proporcionen.


![Caja negra](/assets/img/analisis-desarrollo-prueba-aplicaciones/cajaNegra.jpg)
_Caja negra_

{:.subsection}
### Estrategia de las pruebas de software

- Pruebas de unidad o unitarias
- Pruebas de integración
- Pruebas de validación
- Pruebas de sistema

![Estrategia de las pruebas de software](/assets/img/analisis-desarrollo-prueba-aplicaciones/estrategiaPruebasSoftware.png)
_Estrategia de las pruebas de software_

![Pirámide de las estrategias de software](/assets/img/analisis-desarrollo-prueba-aplicaciones/piramideEstrategiasPruebasSoftware.png)
_Pirámide de las estrategias de software_

{:.subsubsection}
#### Pruebas de unidad o unitarias

En este nivel se prueba cada unidad o módulo con el objetivo de eliminar errores en la lógica interna. Esta estrategia utiliza técnicas de caja negra y caja blanca, según convenga para lo que se desea probar. Las pruebas unitarias deben cumplir con las siguientes características:

1. Debe ser un bloque básico de construcción de programas.
1. Debe implementar una función independiente simple.
1. Podrá ser probado al cien por cien por separado.
1. No deberá tener más de 500 líneas de código.


{:.subsubsection}
#### Pruebas de integración

En este tipo de pruebas se observa cómo interaccionan los distintos módulos. Se podría pensar que esta prueba no es necesaria ya que si dos módulos funcionan por separado, deberían funcionar juntos, pero la realidad no es tan simple.

Hay dos enfoques para la realización de estas pruebas:

- Integración no incremental.
- Integración incremental.

{:.subsubsection}
#### Pruebas de validación

En este tipo de pruebas se comprueba si el software funciona de acuerdo a las expectativas del cliente. Estas expectativas suelen estar definidas en un documento de los requisitos del software. Las técnicas a utilizar son:

- Prueba Alfa: Se lleva a cabo por el cliente o el desarrollador.
- Prueba Beta: Se lleva a cabo por los usuarios finales.

{:.subsubsection}
#### Pruebas de sistema

En este tipo de pruebas se busca poner al límite el software para comprobar su comportamiento. Son las siguientes:

- Pruebas de recuperación
- Pruebas de seguridad
- Pruebas de resistencia o stress.

{:.subsection}
### Prueba del camino/ruta básico

Es una técnica de prueba de **caja blanca** que permite al diseñador de casos de prueba obtener una medida de complejidad lógica de un diseño procedimental y usar esa medida como guía para la definición de un conjunto básico de caminos de ejecución.

![Caja blanca](/assets/img/analisis-desarrollo-prueba-aplicaciones/cajaBlanca.webp)
_Caja blanca_

Los casos de prueba obtenidos del conjunto básico garantizan que durante la prueba **se ejecuta por lo menos una vez cada sentencia del programa**.

Para la obtención de la medida de la complejidad lógica emplearemos una representación de flujo de control denominada “grafo de flujo” o “grafo del programa”.

{:.subsubsection}
#### Pasos para la prueba del camino/ruta básico

<iframe src="https://www.youtube.com/embed/O6Cg4ing5bo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

1. Dibujar el grafo de flujo.
1. Complejidad ciclomática.
1. Obtención de los casos de prueba.

##### Dibujar el grafo de flujo

Cada círculo del grafo se llama nodo. Cada nodo representa una o más sentencias que no tienen bifurcaciones.

Las flechas del grafo de flujo se denominan aristas o enlaces y representan el flujo de control. 

Las áreas delimitadas por aristas y nodos se denominan regiones, siendo el área exterior del grafo una región más.

##### Complejidad ciclomática

La complejidad ciclomática es una técnica de software que proporciona una medida cuantitativa de la complejidad lógica de un programa.

En este contexto, la complejidad ciclomática establece el número de caminos independientes del conjunto básico de caminos de ejecución de un programa.

La complejidad ciclomática se calcula de 3 formas:

1. V(G) = Número de regiones de un grafo
1. V(G) = Aristas - Nodos + 2
1. V(G) = Nodos predicado + 1

##### Obtención de caminos independientes

En este método se elige el primer camino como uno que cumpla todas las condiciones con TRUE. A partir del camino inicial se va variando hasta completar los caminos necesarios. El procedimiento se puede describir de la siguiente manera:

- Asegurarse que solo hay un nodo final y uno inicial
- Seleccionar el camino feliz o happy path.
- Mientras no existan nodos de decisión con salidas no utilizadas y el número de caminos sea < V(G):
    - Seguir el camino feliz hasta el primer nodo predicado que no hayamos explorado sus dos opciones.
    - Buscar regresar al camino básico tan pronto como sea posible.

##### Obtención de los casos de prueba

El último paso de la prueba del camino básico es construir los casos de prueba que fuerzan la ejecución de cada camino. 

{:.subsubsection}
#### Ejemplo prueba del camino/ruta básico

Este diagrama flujo corresponde al algoritmo para determinar el número mayor de 3 valores dados.

```java
/**
* Devuelve el número mayor de entre a, b y c
*/
public static int determinaMayor(int a, int b, int c) {
   if (a > b && a > c) {
       return a;
   } else {
       if (c > b) {
           return c;
       } else {
           return b;
       }
   }
}
```

![Diagrama de flujo](/assets/img/analisis-desarrollo-prueba-aplicaciones/diagramaDeFlujo.png)
_Diagrama de flujo_

##### Dibujar el grafo de flujo

Detectamos los nodos que conformarán el grafo de flujo así como los caminos que se pueden recorrer durante la ejecución del programa.

Si tenemos una condición compuesta, como es nuestro caso (a>b AND a>c), debemos descomponerla creando un nodo para cada una de las condiciones.

![Diagrama de flujo con números](/assets/img/analisis-desarrollo-prueba-aplicaciones/diagramaDeFlujoConNumeros.png)
_Diagrama de flujo con números_

```java
/**
* Devuelve el número mayor de entre a, b y c
*/
public static int determinaMayor(int a, int b, int c) {
   // 1
   if (a > b && a > c) { // 2 y 3
       return a; // 4
   } else {
       if (c > b) { // 5
           return c; // 6
       } else {
           return b; // 7
       }
   }
   // F
}
```

![Grafo de flujo](/assets/img/analisis-desarrollo-prueba-aplicaciones/grafoDeFlujo.png)
_Grafo de flujo_

##### Complejidad ciclomática

La complejidad ciclomática  mide el número de caminos independientes dentro de nuestro código que es sometido a prueba.  La fórmula para su cálculo es:

V(G) = Aristas - Nodos + 2

En nuestro ejemplo la fórmula queda de la siguiente forma:

V(G) = 11 – 9 + 2 = 4

##### Caminos independientes

| Camino      | Entrada                       | Prueba        | Salida |
|-------------|-------------------------------|---------------|--------|
| 1,2,3,5,6,F | a>b=TRUE, a>c=FALSE, c>b=TRUE | a=6, b=3, c=7 | 7      |
| 1,2,3,4,F   | a>b=TRUE, a>c=TRUE            | a=5, b=3, c=4 | 5      |
| 1,2,5,7,F   | a>b=FALSE, a>c=FALSE          | a=5, b=7, c=6 | 7      |
| 1,2,5,6,F   | a>b=FALSE, a>c=TRUE           | a=5, b=7, c=4 | 9      |

{:.subsection}
### Partición o clases de equivalencia

La **partición equivalente** es un método de prueba de caja negra que divide los valores de los campos de entrada de un programa en clases de equivalencia.

Para identificar las clases de equivalencia se examina cada condición de entrada y se divide en dos o más grupos. Hay dos tipos de clases de equivalencia:

1. **Clases válidas**: son valores de entrada válidos.
1. **Clases no válidas**: son los valores de entrada no válidos.

![Caja negra](/assets/img/analisis-desarrollo-prueba-aplicaciones/cajaNegra.jpg)
_Caja negra_

{:.subsubsection}
#### Ejemplo 1

Supongamos un campo de entrada llamado numEmpleado, definido con una serie de condiciones: numérico de 3 dígitos y el primero no puede ser 0. 

Entonces se pueden definir dos clases de equivalencia:

- Una no válida: numEmpleado < 100
- Otra no válida: numEmpleado > 999
- Otra válida: numEmpleado comprendido entre 100 y 999.

{:.subsubsection}
#### Clases de equivalencia

Las clases de equivalencia se definen según una serie de directrices. Si una condición de entrada...
1. Especifica un rango…
    1. 1 clase de equivalencia válida
    1. 2 clases de equivalencia no válidas
1. Requiere un valor específico…
    1. 1 clase de equivalencia válida
    1. 2 clase de equivalencia no válida
1. Especifica un miembro de un conjunto…
    1. 1 clase de equivalencia válida
    1. 1 clase de equivalencia no válida
1. Es lógica...
    1. 1 clase de equivalencia válida
    1. 1 clase de equivalencia no válida

{:.subsubsection}
#### Ejemplo 2

Se va a realizar una entrada de datos de un empleado por pantalla gráfica, se definen 3 campos de entrada y una lista para elegir el oficio. La aplicación acepta los datos de esta manera:

- Empleado: número de tres dígitos que no empiece por 0.
- Departamento: en blanco o número de dos dígitos.
- Oficio: Analista, Diseñador, Programador.

![Tabla de clases de equivalencia](/assets/img/analisis-desarrollo-prueba-aplicaciones/tablaClasesDeEquivalencia.png)
_Tabla de clases de equivalencia_

![Casos de prueba](/assets/img/analisis-desarrollo-prueba-aplicaciones/casosDePrueba.png)
_Casos de prueba_

{:.subsection}
### Análisis de Valores Límite

El análisis de valores límite se basa en que los errores tienden a producirse con más probabilidad en los límites o extremos de los campos de entrada.

Esta técnica complementa a la anterior y los casos de prueba elegidos ejercitan los valores justo por encima y por debajo de los márgenes de la clase de equivalencia. Además se exploran las condiciones de salida definiendo las clases de equivalencia de salida.

{:.subsubsection}
#### Reglas de AVL

1. Si tenemos un rango de valores de entrada, se deben diseñar:
    1. 2 casos de prueba válidos
    1. 2 casos de prueba no válidos
1. Si tenemos un rango de valores de salida, se deben diseñar:
    1. 2 casos de prueba válidos
    1. 2 casos de prueba inválidos (si es posible)
1. Si las estructuras de datos internas tienen límites pre-establecidos, por ejemplo un array de 100 elementos, hay que asegurarse de diseñar casos de prueba que pruebe la estructura en sus límites.

{:.subsubsection}
#### Ejemplo 2

![Tabla de clases de equivalencia con valores límite](/assets/img/analisis-desarrollo-prueba-aplicaciones/tablaClasesDeEquivalenciaValoresLimite.png)
_Tabla de clases de equivalencia con valores límite_

### Pruebas con JUnit

JUnit es una librería (fichero .jar) escrita en Java para la realización de test unitarios. 

Las etiquetas JUnit más usadas son las siguientes:

- `@Test`: El método que tenga esta etiqueta será un test.
- `@BeforeAll`: Este método se ejecutará antes del primer test.
- `@AfterAll`: Este método se ejecutará después del último test.
- `@BeforeEach`: Este método se ejecutará antes de cada test.
- `@AfterEach`: Este método se ejecutará después de cada test.

## Bibliografía

- [Proceso para el desarrollo de software (Wikipedia)](https://es.wikipedia.org/wiki/Proceso_para_el_desarrollo_de_software)
- [El modelo en cascada: desarrollo secuencial de software](https://www.ionos.es/digitalguide/paginas-web/desarrollo-web/el-modelo-en-cascada/)
- [Historias de usuario con ejemplos y plantilla](https://www.atlassian.com/es/agile/project-management/user-stories)
---
title: Análisis, desarrollo y prueba de aplicaciones
date: 2022-02-04 12:20:00 +0100
categories: [Bachillerato, Tecnologías de la Información y Comunicación II]
tags: [tic ii, teoría, programación]
---

## Pruebas

### Pruebas… ¿para qué?

- Detectar errores.
- Analizar el rendimiento o carga de CPU.
- Evitar problemas en producción graves. ¿Qué es un problema grave?
- Aumentar la fiabilidad y robustez de un software.
- Generar seguridad cuando tocamos ciertas partes del código.
- Aumentar el coste en la creación de un software.

### Pruebas de caja blanca

Mediante esta técnica se pretenden obtener casos de prueba que:
- Garanticen que se ejecutan al menos una vez todos los caminos independientes.
- Ejecuten todas las sentencias al menos una vez.
- Ejecuten todas las decisiones lógicas en su parte verdadera y falsa.
- Ejecuten todos los bucles en sus límites.
- Utilicen todas las estructuras de datos internas para asegurar su validez.

Se basan en el minucioso examen de los detalles procedimentales del código de la aplicación.

Una de las técnicas utilizadas para desarrollar los casos de prueba de caja blanca es la prueba del camino básico.

### Pruebas de caja negra o de comportamiento

Estas pruebas se llevan a cabo sobre la interfaz del software, no hace falta conocer la estructura interna del programa ni su funcionamiento.

Se pretende obtener casos de prueba que demuestren que las funciones del software son operativas, es decir, que las salidas que devuelve la aplicación son las esperadas en función de las entradas que se proporcionen.

### Pruebas de unidad o unitarias

En este nivel se prueba cada unidad o módulo con el objetivo de eliminar errores en la lógica interna. Esta estrategia utiliza técnicas de caja negra y caja blanca, según convenga para lo que se desea probar. Las pruebas unitarias deben cumplir con las siguientes características:

1. Debe ser un bloque básico de construcción de programas.
1. Debe implementar una función independiente simple.
1. Podrá ser probado al cien por cien por separado.
1. No deberá tener más de 500 líneas de código.

### Pruebas de integración

En este tipo de pruebas se observa cómo interaccionan los distintos módulos. Se podría pensar que esta prueba no es necesaria ya que si dos módulos funcionan por separado, deberían funcionar juntos, pero la realidad no es tan simple.

Hay dos enfoques para la realización de estas pruebas:

- Integración no incremental.
- Integración incremental.

### Pruebas de validación

En este tipo de pruebas se comprueba si el software funciona de acuerdo a las expectativas del cliente. Estas expectativas suelen estar definidas en un documento de los requisitos del software. Las técnicas a utilizar son:

- Prueba Alfa: Se lleva a cabo por el cliente o el desarrollador.
- Prueba Beta: Se lleva a cabo por los usuarios finales.

### Pruebas de sistema

En este tipo de pruebas se busca poner al límite el software para comprobar su comportamiento. Son las siguientes:

- Pruebas de recuperación
- Pruebas de seguridad
- Pruebas de resistencia o stress.

### Prueba del camino/ruta básico

Es una técnica de prueba de caja blanca que permite al diseñador de casos de prueba obtener una medida de complejidad lógica de un diseño procedimental y usar esa medida como guía para la definición de un conjunto básico de caminos de ejecución.

Los casos de prueba obtenidos del conjunto básico garantizan que durante la prueba se ejecuta por lo menos una vez cada sentencia del programa.

Para la obtención de la medida de la complejidad lógica emplearemos una representación de flujo de control denominada “grafo de flujo” o “grafo del programa”.

### Partición o clases de equivalencia

La partición equivalente es un método de prueba de caja negra que divide los valores de los campos de entrada de un programa en clases de equivalencia.

Para identificar las clases de equivalencia se examina cada condición de entrada y se divide en dos o más grupos. Hay dos tipos de clases de equivalencia:

1. Clases válidas: son valores de entrada válidos.
1. Clases no válidas: son los valores de entrada no válidos.

#### Ejemplo

Supongamos un campo de entrada llamado numEmpleado, definido con una serie de condiciones: numérico de 3 dígitos y el primero no puede ser 0. 

Entonces se pueden definir dos clases de equivalencia:

- Una no válida: numEmpleado < 100
- Otra no válida: numEmpleado > 999
- Otra válida: numEmpleado comprendido entre 100 y 999.

### Clases de equivalencia

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

#### Ejemplo

### Análisis de Valores Límite

El análisis de valores límite se basa en que los errores tienden a producirse con más probabilidad en los límites o extremos de los campos de entrada.

Esta técnica complementa a la anterior y los casos de prueba elegidos ejercitan los valores justo por encima y por debajo de los márgenes de la clase de equivalencia. Además se exploran las condiciones de salida definiendo las clases de equivalencia de salida.

#### Reglas de AVL

1. Si tenemos un rango de valores de entrada, se deben diseñar:
    1. 2 casos de prueba válidos
    1. 2 casos de prueba no válidos
1. Si tenemos un rango de valores de salida, se deben diseñar:
    1. 2 casos de prueba válidos
    1. 2 casos de prueba inválidos (si es posible)
1. Si las estructuras de datos internas tienen límites pre-establecidos, por ejemplo un array de 100 elementos, hay que asegurarse de diseñar casos de prueba que pruebe la estructura en sus límites.



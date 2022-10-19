---
title: "Cuestionarios GIFT"
date: 2022-10-18 9:00:00 +0100
categories: [General]
tags: [gift, moodle, aeducar]
img_path: /assets/img/cuestionarios-gift/
---

## Carácteres especiales que hay que escapar

```
~ = # { } :
```

## Plantillas

A continuación se ponen plantillas para copiar y pegar de forma rápida

### Pregunta de una opción

```
[markdown]Pregunta{
    =Respuesta
    ~Respuesta
    ~Respuesta
    ~Respuesta
}
```

### Pregunta de opción múltiple

```
[markdown]Pregunta{
    ~%50%Respuesta
    ~%50%Respuesta
    ~%-50%Respuesta
    ~%-50%Respuesta
}
```

### Pregunta respuesta numerica

```
[markdown]Pregunta {#5}
```

### Pregunta respuesta texto

```
[markdown]Pregunta {=respuesta}
```

```
[markdown]Pregunta {=respuesta =respuesta2}
```

### Pregunta de verdadero y falso

```
[markdown]Pregunta {T}
```

## Bibliografía

- [Formato GIFT](https://docs.moodle.org/all/es/Formato_GIFT#Caracteres_especiales_.7E_.3D_.23_.7B_.7D)
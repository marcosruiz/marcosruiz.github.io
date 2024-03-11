---
title: "Espacios de nombres XML"
date: 2024-02-24 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Multiplataforma, Lenguajes de Marcas y Sistemas de Gestión de Información]
tags: [desarrollo de aplicaciones multiplataforma, lenguajes de marcas y sistemas de gestión de información, administración de sistemas informáticos de red, desarrollo de aplicaciones web, dam, daw, asir, lmsgi, xml, teoría]
img_path: /assets/img/espacios-de-nombres-xml/
---

{:.section}
## Introducción

Los espacios de nombres XML asocian nombres de elementos y de atributos de un documento XML con identificadores URI personalizados y predefinidos. Para crear estas asociaciones, puede definir los prefijos de los URI del espacio de nombres y usar dichos prefijos para calificar los nombres de los elementos y de los atributos en los datos XML. Los espacios de nombres evitan conflictos de nombres de elementos y atributos y permiten que los elementos y atributos con el mismo nombre se traten y se validen de forma diferente.

Los espacios de nombres aparecen definidos en una recomendación del W3C, con fecha 8 de diciembre de 2009, llamada [Namespaces in XML 1.0](https://www.w3.org/TR/xml-names/). Los nombres de códigos XML deben ser globalmente exclusivos y al mismo tiempo cortos por motivos de rendimiento. Para poder resolver este conflicto, la recomendación de espacios de nombres W3C define un atributo `xmlns` que se puede añadir a cualquier elemento XML. Si está presente en un elemento, identifica el espacio de nombres para este elemento.

El atributo `xmlns` tiene la sintaxis siguiente:

```plaintext
xmlns:<prefijo>="<uri>"
```

Donde `<uri>` es un URI único (como <http://www.ibm.com>) y donde `<prefijo>` representa el espacio de nombres y proporciona un puntero al mismo.

{:.question}
¿El prefijo debe ser único?

{:.question}
¿Qué es un puntero?

Después de declarar el prefijo, puede usarlo para calificar elementos y atributos de un documento XML y asociarlos al identificador URI del espacio de nombres. Como el prefijo de espacio de nombres se utiliza en todo el documento, debe ser corto.

Este ejemplo define dos elementos `BOOK`. El primer elemento se califica mediante el prefijo del espacio de nombres `mybook` y el segundo elemento se califica con el prefijo `bb`. Cada prefijo se asocia a un URI del espacio de nombres distinto:

```xml
<mybook:BOOK xmlns:mybook="http://www.contoso.com/books.dtd">  
    <bb:BOOK xmlns:bb="urn:blueyonderairlines" />
</mybook:BOOK>
```

Para indicar que un elemento es parte de un espacio de nombres en particular, agréguele el prefijo de espacio de nombres. Por ejemplo, si un elemento `Author` pertenece al espacio de nombres `mybook`, se declara como `<mybook:Author>`.

En la siguiente definición de elemento de cliente, se define un espacio de nombres de contabilidad para poder distinguir los códigos de elementos de aquellos que aparecen en los registros del cliente creados por otras aplicaciones de empresa:

```xml
<acct:customer xmlns:acct="http://www.my.com/acct-REV10">
  <acct:name>Corporation</acct:name>
  <acct:order acct:ref="5566" />
  <acct:status>invoice</acct:status>
</acct:customer>
```

La definición de espacio de nombres de la primera línea asigna el espacio de nombres <http://www.my.com/acct-REV10> al prefijo `acct`. Este prefijo se utiliza en los nombres de elementos para poder asignarles el espacio de nombres. 

Una segunda aplicación, por ejemplo, un sistema de formalización de pedidos, puede asignar un espacio de nombres diferente a sus elementos de clientes:

```xml
<ful:customer xmlns:ful="http://www.your.com/ful">
  <ful:name>Corporation</ful:name>
  <ful:order ful:ref="A98756" />
  <ful:status>shipped</ful:status>
</ful:customer>
```

Una aplicación que procese ambas estructuras de datos ahora puede tratar los datos de cuentas y los datos de formalización de pedidos de forma diferente. Hay un espacio de nombres predeterminado. Se establece si no hay ningún nombre local asignado en la definición del espacio de nombres:

```xml
<customer xmlns="http://www.my.com/acct-REV10">
  <name>Corporation</name>
  <order acct:ref="5566" />
  <status>invoice</status>
</customer>
```

En este ejemplo, todos los códigos del registro de clientes están calificados para residir en el espacio de nombres <http://www.my.com/acct-REV10>. No es necesario ningún prefijo explícito debido a que se utiliza el espacio de nombres predeterminado. Tenga en cuenta que el espacio de nombres predeterminado se aplica a cualquier definición de atributos.

{:.section}
## Ámbito de la declaración

Un espacio de nombres es efectivo desde el momento de su declaración hasta el fin del elemento en el que se ha declarado. En este ejemplo, el espacio de nombres definido en el elemento `BOOK` no se aplica a elementos que estén fuera del elemento `BOOK`, tales como el elemento `Publisher`:

```xml
<Author>Joe Smith</Author>  
<BOOK xmlns:book="http://www.contoso.com">  
    <title>My Wonderful Day</title>  
      <price>$3.95</price>  
</BOOK>  
<Publisher>  
    <Name>MSPress</Name>  
</Publisher>
```

Para usar un espacio de nombres, antes éste se debe declarar, pero no tiene que aparecer al principio del documento XML.

Si se usan varios espacios de nombres en un documento XML, puede definir un espacio de nombres como predeterminado para crear un documento en el que se mejora la claridad. El espacio de nombres predeterminado se declara en el elemento raíz y se aplica a todos los elementos sin calificar del documento. Los espacios de nombres predeterminados solo se aplican a los elementos, no a los atributos.

Para usar el espacio de nombres predeterminado, omita el prefijo y los dos puntos de la declaración en el elemento:

```xml
<BOOK xmlns="http://www.contoso.com/books.dtd">  
...
</BOOK>
```

{:.section}
## Esquemas XML y espacios de nombres

En el esquema XML siguiente, el espacio de nombres predeterminado para el esquema se define como el espacio de nombres de esquema XML estándar <http://www.w3.org/2001/XMLSchema>; también hay un espacio de nombres específico de esquema <http://www.ibm.com>.

```xml
<?xml version="1.0"?>
<schema xmlns="http://www.w3.org/2001/XMLSchema" targetNamespace="http://www.ibm.com" xmlns:TestSchema="http://www.ibm.com">
  <simpleType name="ZipCodeType">
    <restriction base="integer">
      <minInclusive value="10000" />
      <maxInclusive value="99999" />
    </restriction>
  </simpleType>
  <!--element definitions skipped -->
</schema>
```
{: file="C:\temp\TestSchema.xsd" }

Asumiendo que el esquema XML anterior se guarda como `C:\temp\TestSchema.xsd`{: .filepath}, un archivo XML de ejemplo que se valida con este esquema es:

```xml
<?xml version="1.0"?>
<x:addressList xmlns:x="http://www.ibm.com" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.ibm.com file:///C:/temp/TestSchema.xsd">
  xsi:schemaLocation="http://www.ibm.com file:///C:/temp/TestSchema.xsd"> <x:address>
    <x:street>x:Vangerowstrasse</x:street>
    <x:zipCode>69115</x:zipCode>
    <x:city>x:Heidelberg</x:city>
  </x:address>
    <x:address>
    <x:street>x:Bernal Road</x:street>
    <x:zipCode>90375</x:zipCode>
    <x:city>x:San Jose</x:city>
  </x:address>
</x:addressList>
```

{:.section}
## Espacio de nombres destino

El espacio de nombres de destino (`targetNamespace`) sirve para identificar el espacio de nombres en el que la asociación entre el elemento y el nombre existen. En el caso de las declaraciones, esta asociación determina el espacio de nombres de los elementos de los archivos XML que se ajustan al esquema. Un archivo XML que importe un esquema debe hacer referencia a su espacio de nombres de destino en el atributo `schemaLocation`. Cualquier falta de coincidencia entre el espacio de nombres real y el de destino de un elemento genera errores de validación del esquema. En nuestro ejemplo, el espacio de nombres es <http://www.ibm.com>. Está definido en el archivo del esquema XML y se hace referencia al mismo dos veces en el archivo XML. Cualquier falta de coincidencia entre estas tres apariciones del espacio de nombres conduce a errores de validación.

Los ejemplos siguientes muestran cómo los prefijos de espacio de nombres y los espacios de nombres de destino funcionan en los esquemas XML y sus documentos de instancia XML correspondientes.

{:.section}
## Ejemplo 1 - Un esquema con un espacio de nombres predeterminado y de destino y locales no calificados

El esquema XML:

```xml
<?xml version="1.0"?>
<schema xmlns="http://www.w3.org/2001/XMLSchema" targetNamespace="http://www.ibm.com"
  xmlns:x="http://www.ibm.com">
  <complexType name="AddressType">
    <sequence>
      <element name="name" type="string"></element>
    </sequence>
  </complexType>
  <element name="MyAddress" type="x:AddressType"></element>
</schema>
```

Un documento de instancia (`XMLSchema-instance`) XML válido creado a partir de este esquema es similar al siguiente:

> Los elementos y los atributos locales no están calificados.
{:.prompt-info}

```xml
<?xml version="1.0"?>
<x:MyAddress xmlns:x="http://www.ibm.com" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.ibm.com x.xsd">
  <name>Peter Smith</name>
</x:MyAddress>
```

Cuando los elementos locales como, por ejemplo, el elemento `name` y los atributos no están calificados en un archivo XML, únicamente el elemento raíz está calificado. Por lo tanto, en este ejemplo, el prefijo de espacio de nombres `x` se asigna al elemento raíz `MyAddress`, asociándolo con el espacio de nombres `http://www.ibm.com`, pero el prefijo `x` no se asigna al elemento local `name`.

{:.section}
## Ejemplo 2 - Un esquema con un espacio de nombres predeterminado y de destino y locales calificados

```xml
<?xml version="1.0"?>
<schema xmlns="http://www.w3.org/2001/XMLSchema" targetNamespace="http://www.ibm.com"
  xmlns:x="http://www.ibm.com" elementFormDefault="qualified">
  <complexType name="AddressType">
    <sequence>
      <element name="name" type="string"></element>
    </sequence>
  </complexType>
  <element name="MyAddress" type="x:AddressType"></element>
</schema>
```

Un documento de instancia XML válido creado a partir de este esquema es similar al siguiente:

> Los elementos y atributos locales están calificados. Esto es debido a que el atributo elementFormDefault se ha establecido como calificado en el esquema XML.
{:.prompt-info}

```xml
<?xml version="1.0"?>
<x:MyAddress xmlns:x="http://www.ibm.com" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.ibm.com x.xsd">
  <x:name>Peter Smith</x:name>
</x:MyAddress>
```

En este ejemplo, el prefijo de espacio de nombres `x` se asigna al elemento raíz `MyAddress` y al elemento local `name`, asociándolos al espacio de nombres `http://www.ibm.com`.

{:.section}
## Ejemplo 3 - El esquema con espacio de nombres de destino que define explícitamente xmlns:xsd

Este esquema XML se añade a este atributo:

```xml
xmlns:xsd="http://www.w3.org/2001/XMLSchema"
```

Lo que esto significa es que cada una de las construcciones definidas mediante el lenguaje del esquema XML se tendrá que calificar con el prefijo `xsd`. Por ejemplo, `xsd:complexType` y `xsd:string`.

> Tenga en cuenta que puede seleccionar otros prefijos como, por ejemplo, `xs` o `patata` en la declaración y el uso.
{:.prompt-info}

Todos los tipos definidos por el usuario pertenecen al espacio de nombres `http://www.ibm.com` como se ha definido mediante el atributo `targetNamespace` y el prefijo es `x` como se ha definido mediante el atributo `xmlns:x`.

```xml
<?xml version="1.0"?>
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" targetNamespace="http://www.ibm.com"
  xmlns:x="http://www.ibm.com">
  <xsd:complexType name="AddressType">
    <xsd:sequence>
      <xsd:element name="name" type="xsd:string"></xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:element name="MyAddress" type="x:AddressType"></xsd:element>
</xsd:schema>
```

Un documento de instancia XML válido creado a partir de este esquema es similar al siguiente:

> Los elementos y los atributos locales no están calificados. La semántica de la calificación es la misma que en el Ejemplo 1.
{:.prompt-info}

```xml
<?xml version="1.0"?>
<x:MyAddress xmlns:x="http://www.ibm.com" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.ibm.com x.xsd">
  <name>Peter Smith</name>
</x:MyAddress>
```

{:.section}
## Ejemplo 4 - Esquema con el espacio de nombres de destino no declarado que define explícitamente xmlns:xsd

Este esquema XML no tiene un espacio de nombres de destino para él mismo. En este caso, se recomienda que todas las construcciones de esquemas XML se califiquen de forma explícita mediante un prefijo como `xsd`. Se hace referencia a las definiciones y declaraciones de este esquema como, por ejemplo `AddressType` sin la calificación del espacio de nombres ya que no hay ningún prefijo de espacio de nombres.

```xml
<?xml version="1.0"?>
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <xsd:complexType name="AddressType">
    <xsd:sequence>
      <xsd:element name="name" type="xsd:string"></xsd:element>
      <xsd:element name="name" type="xsd:string"></xsd:element>
      <xsd:element name="name" type="xsd:string"></xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:element name="MyAddress" type="AddressType"></xsd:element>
</xsd:schema>
```
{: file="x.xsd" }

Un documento de instancia XML válido creado a partir del esquema es similar al siguiente. Todos los elementos están sin calificar.

```xml
<?xml version="1.0"?>
<MyAddress xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:noNamespaceSchemaLocation="x.xsd">
  <name>name</name>
</MyAddress>
```

{:.section}
## Ejemplo 5 - Un esquema donde el espacio de nombres de destino es el espacio de nombres predeterminado

Este es un esquema XML en el que el espacio de nombres de destino es el espacio de nombres predeterminado. Del mismo modo que el espacio de nombres, no tiene un prefijo de espacio de nombres.

```xml
<?xml version="1.0"?>
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" targetNamespace="http://www.ibm.com"
  xmlns="http://www.ibm.com">
  <xsd:complexType name="AddressType">
    <xsd:sequence>
      <xsd:element name="name" type="xsd:string"></xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:element name="MyAddress" type="AddressType"></xsd:element>
</xsd:schema>
```
{: file="NewXMLSchema.xsd" }

Un documento de instancia XML válido creado a partir del esquema es similar al siguiente:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<MyAddress xmlns="http://www.ibm.com" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.ibm.com NewXMLSchema.xsd">
  <name>name</name>
</MyAddress>
```

## Preguntas interesantes

<details class="card mb-2">
  <summary class="card-header question">¿Es lo mismo un espacio de nombres que un XSD?</summary>
  <div class="card-body" markdown="1">

Un XSD es un lenguaje de esquema que se utiliza para definir la estructura y las restricciones de un documento XML. Por otro lado, un espacio de nombres en XML es un mecanismo que se utiliza para evitar conflictos de nombres al combinar documentos XML.Es decir, se podría decir que **un espacio de nombres actúa como identificador de un XSD, pero también podría hacerlo de un DTD.**

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

<details class="card mb-2">
  <summary class="card-header question">¿Qué es un URI?</summary>
  <div class="card-body" markdown="1">

Si no sabes que es un URI puedes leer el artículo [URI: ¿qué es el identificador de recursos uniforme?](https://www.ionos.es/digitalguide/paginas-web/desarrollo-web/uri-identificador-de-recursos-uniformes/).

<!-- Comentario para que no se descuajeringue la cosa -->
  </div>
</details>

## Bibliografía

- <https://www.ibm.com/docs/es/radfws/9.7?topic=schemas-xml-namespaces>
- <https://learn.microsoft.com/es-es/dotnet/standard/data/xml/managing-namespaces-in-an-xml-document>

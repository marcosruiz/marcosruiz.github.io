---
title: "Espacios de nombres XML"
date: 2024-02-24 9:00:00 +0100
categories: [Desarrollo de Aplicaciones Multiplataforma, Lenguajes de Marcas y Sistemas de Gestión de Información]
tags: [desarrollo de aplicaciones multiplataforma, lenguajes de marcas y sistemas de gestión de información, administración de sistemas informáticos de red, desarrollo de aplicaciones web, dam, daw, asir, lmsgi, xml, teoría]
img_path: /assets/img/espacios-de-nombres-xml/
---

{:.section}
## Introducción

Un espacio de nombres XML es una colección de nombres, identificados mediante una referencia de URI que se utiliza en documentos XML como tipos de elementos y nombres de atributos.

Los espacios de nombres aparecen definidos en una recomendación del W3C, con fecha 8 de diciembre de 2009, llamada [Namespaces in XML 1.0](https://www.w3.org/TR/xml-names/). Los nombres de códigos XML deben ser globalmente exclusivos y al mismo tiempo cortos por motivos de rendimiento. Para poder resolver este conflicto, la recomendación de espacios de nombres W3C define un atributo `xmlns` que se puede añadir a cualquier elemento XML. Si está presente en un elemento, identifica el espacio de nombres para este elemento.

El atributo xmlns tiene la sintaxis siguiente:

```plaintext
xmlns:<prefix>=<namespace>
```

Donde `<namespace>` es un URI único (como <www.ibm.com>) y donde `<prefix>` representa el espacio de nombres y proporciona un puntero al mismo.

{:.question}
¿Qué es un puntero?

En la siguiente definición de elemento de cliente, se define un espacio de nombres de contabilidad para poder distinguir los códigos de elementos de aquellos que aparecen en los registros del cliente creados por otras aplicaciones de empresa:

```xml
<acct:customer xmlns:acct="http://www.my.com/acct-REV10">
  <acct:name>Corporation</acct:name>
  <acct:order acct:ref="5566" />
  <acct:status>invoice</acct:status>
</acct:customer>
```

La definición de espacio de nombres de la primera línea asigna el espacio de nombres <http://www.my.com/acct-REV10> al prefijo. Este prefijo se utiliza en los nombres de elementos como, por ejemplo, para poder asignarles el espacio de nombres. Una segunda aplicación, por ejemplo, un sistema de formalización de pedidos, puede asignar un espacio de nombres diferente a sus elementos de clientes:

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

El espacio de nombres de destino sirve para identificar el espacio de nombres en el que la asociación entre el elemento y el nombre existen. En el caso de las declaraciones, esta asociación determina el espacio de nombres de los elementos de los archivos XML que se ajustan al esquema. Un archivo XML que importe un esquema debe hacer referencia a su espacio de nombres de destino en el atributo schemaLocation. Cualquier falta de coincidencia entre el espacio de nombres real y el de destino de un elemento genera errores de validación del esquema. En nuestro ejemplo, el espacio de nombres es <http://www.ibm.com>. Está definido en el archivo del esquema XML y se hace referencia al mismo dos veces en el archivo XML. Cualquier falta de coincidencia entre estas tres apariciones del espacio de nombres conducen a errores de validación.

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

Un documento de instancia XML válido creado a partir de este esquema es similar al siguiente. Los elementos y los atributos locales no están calificados.

```xml
<?xml version="1.0"?>
<x:MyAddress xmlns:x="http://www.ibm.com" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.ibm.com x.xsd
                      ">
  <name>Peter Smith</name>
</x:MyAddress>
```

Cuando los elementos locales como, por ejemplo, el elemento "name") y los atributos no están calificados en un archivo XML, únicamente el elemento raíz está calificado. Por lo tanto, en este ejemplo, el prefijo de espacio de nombres "x" se asigna al elemento raíz "MyAddress", asociándolo con el espacio de nombres "<http://www.ibm.com>", pero el prefijo "x" no se asigna al elemento local "name".

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

Un documento de instancia XML válido creado a partir de este esquema es similar al siguiente. Los elementos y atributos locales están calificados. Esto es debido a que el atributo elementFormDefault se ha establecido como calificado en el esquema XML.

```xml
<?xml version="1.0"?>
<x:MyAddress xmlns:x="http://www.ibm.com" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.ibm.com x.xsd
                      ">
  <x:name>Peter Smith</x:name>
</x:MyAddress>
```

En este ejemplo, el prefijo de espacio de nombres "x" se asigna al elemento raíz "MyAddress" y al elemento local "name", asociándolos al espacio de nombres "<http://www.ibm.com>".

{:.section}
## Ejemplo 3 - El esquema con espacio de nombres de destino que define explícitamente xmlns:xsd

Este esquema XML se añade a este atributo:

xmlns:xsd="<http://www.w3.org/2001/XMLSchema>

Lo que esto significa es que cada una de las construcciones definidas mediante el lenguaje del esquema XML se tendrá que calificar con el prefijo "xsd". Por ejemplo, xsd:complexType y xsd:string

. Tenga en cuenta que puede seleccionar otros prefijos como, por ejemplo, "xs" o "foobar" en la declaración y el uso.

Puede especificar este prefijo en la página de preferencias del esquema XML. Para obtener más información, consulte las tareas relacionadas.

Todos los tipos definidos por el usuario pertenecen al espacio de nombres <http://www.ibm.com> como se ha definido mediante el atributo targetNamespace y el prefijo es "x" como se ha definido mediante el atributo xmlns:x.

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

Un documento de instancia XML válido creado a partir de este esquema es similar al siguiente. Los elementos y los atributos locales no están calificados.La semántica de la calificación es la misma que en el Ejemplo 1.

```xml
<?xml version="1.0"?>
<x:MyAddress xmlns:x="http://www.ibm.com" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.ibm.com x.xsd
                      ">
  <name>Peter Smith</name>
</x:MyAddress>
```

{:.section}
## Ejemplo 4 - Esquema con el espacio de nombres de destino no declarado que define explícitamente xmlns:xsd

Este esquema XML no tiene un espacio de nombres de destino para él mismo. En este caso, se recomienda que todas las construcciones de esquemas XML se califiquen de forma explícita mediante un prefijo como "xsd". Se hace referencia a las definiciones y declaraciones de este esquema como, por ejemplo AddressType sin la calificación del espacio de nombres ya que no hay ningún prefijo de espacio de nombres.

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

Un documento de instancia XML válido creado a partir del esquema es similar al siguiente:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<MyAddress xmlns="http://www.ibm.com" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.ibm.com NewXMLSchema.xsd">
  <name>name</name>
</MyAddress>
```

## Bibliografía

- <https://www.ibm.com/docs/es/radfws/9.7?topic=schemas-xml-namespaces>

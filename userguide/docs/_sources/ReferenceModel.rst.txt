===================
The Reference Model
===================

This document defines the types and structures available.

Purpose
-------

The S3Model `Reference Model (RM) <https://s3model.com/specifications/docs/glossary.html#reference-model-rm>`_ is the foundation of `validation <https://s3model.com/specifications/docs/glossary.html#validation>`_.

S3Model may be implemented in almost any programming or `data definition language <https://techterms.com/definition/ddl>`_. The reference implementation provided here is in `XML Schema <https://www.w3schools.com/xml/schema_intro.asp>`_ 1.0. Due to the ubiquitous nature of XML Schema and the compatibility with RDF/XML, we chose XML as the `canonical serialization <https://s3model.com/specifications/docs/glossary.html#canonical-serialization>`_ format. Virtually all programming and data analysis languages can manipulate and validate XML content. XML content is easily imported into SQL databases, converted to JSON, or other formats.

The canonical RDF/XML serialization format can be converted to other RDF formats such as `Turtle <https://www.w3.org/2007/02/turtle/primer/>`_, `JSON-LD <https://json-ld.org/>`_, etc., as required for local operations and usage. A host of tools and online resources are available for these conversions.

The components of the RM are sufficient to model any datatype to include `temporal <https://www.merriam-webster.com/dictionary/temporal>`_, `spatial <https://www.merriam-webster.com/dictionary/spatial>`_, and `ontological <https://www.merriam-webster.com/dictionary/ontological>`_ contexts. Not all of this functionality is required in all modeling situations. But they are available for those that need them.


Reference Model Overview
------------------------

The `abstract reference model <https://s3model.com/specifications/docs/abstract_model.html>`_ consists of a collection of components for defining common data elements for applications. A developer will consider strings, integers, decimals, etc. Additionally, more complex ideas such as files and links are accommodated. These structures all descend from a parent type similar to the "Any type" (`XdAnyType <https://s3model.com/specifications/docs/rm.html#xdanytype>`_) found in many programming languages.  

The distinction is that in S3Model, the developer can provide for the application user to tag each data point with additional `semantic information <https://www.igi-global.com/dictionary/advanced-model-of-complex-information-system/41735>`_ such as the beginning and ending times that a data value is valid. The time the data value was recorded and modified. The capability exists to add an Access Control flag for sensitive information. For missing or erroneous data, the reason it is in error may be added using Exceptional Value codes (expanded from `ISO 21090 <https://www.iso.org/standard/35646.html>`_). Location data is often essential, for example, in air quality sensor data. Location data can be recorded as `latitude and longitude decimal values <http://wiki.gis.com/wiki/index.php/Decimal_degrees>`_. These capabilities expand the meaning of the data points and transfer helpful context to the end-users of the data. 

S3Model allows for well-defined `reference ranges <https://www.testing.com/articles/laboratory-test-reference-ranges/>`_ for ordered types such as decimals, integers, floats, and temporals. 

Beyond the expansion of semantics on the simple types, S3Model Data Models can contain models representing who or what organization participated in the data collection, or activity, described by the model. There are also facilities to capture `attestation <https://www.merriam-webster.com/dictionary/attestation>`_ of the data and downstream `auditing <https://www.merriam-webster.com/dictionary/audit>`_ records.  

The Data Model also accommodates `metadata <https://techterms.com/definition/metadata>`_ that describes attributes about the creation of the model. Elements of the `Dublin Core Metadata Standard <https://www.dublincore.org/specifications/dublin-core/dcmi-terms/>`_ are used to identify details such as; title, author, description, license information, relationship to other models, geographical or domain coverage, and a unique identifier (`CUID <https://github.com/ericelliott/cuid>`). 

The complete S3Model documentation is available `here <https://s3model.com/specifications/docs/index.html>`_.


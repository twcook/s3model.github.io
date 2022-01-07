===================
The Reference Model
===================

This document defines the types and structures available.

Purpose
-------

The S3Model Reference Model :ref:`(RM) <RM>` is the foundation of :ref:`validation <validation>`.

S3Model may be implemented in almost any programming or `data definition language <https://techterms.com/definition/ddl>`_. The reference implementation provided here is in `XML Schema <https://www.w3schools.com/xml/schema_intro.asp>`_ 1.0. Due to the ubiquitous nature of XML Schema and the compatibility with RDF/XML, we chose XML as the canonical serialization format. Virtually all programming and data analysis languages can manipulate and validate XML content. XML content is easily imported into SQL databases, converted to JSON, or other formats.

The canonical RDF/XML serialization format can be converted to other RDF formats such as Turtle, N-Triples, JSON-LD, etc., as required for local operations and usage. A host of tools and online resources are available for these conversions.

The components of the RM are sufficient to model any datatype to include temporal, spatial, and ontological contexts. Not all of this functionality is required in all modeling situations. But they are available for those that need them.

Cardinality
-----------

A minimum and maximum occurrences of each data element/attribute are assigned in the RM.

For example, if a minimum occurrence is set to '1', this attribute is required in every data model.

If the maximum occurrences are set to '1', there can never be more than one of these attributes in the data model.

In some cases, the maximum occurrences may be unbounded, allowing any number of instances in the data.

The hands-on, `Jupyter notebook exercises <https://s3model.com/userguide/docs/Setup.html>`_ cover determining and setting cardinality constraints.

The complete documentation is available `here <https://s3model.com/specifications/docs/index.html>`_.

Reference Model Overview
------------------------

The `abstract reference model <https://s3model.com/specifications/docs/abstract_model.html>`_ consists of a collection of components for defining common data elements for applications. A developer will consider strings, integers, decimals, etc. Additionally, more complex ideas such as files and links are accommodated. These structures all descend from a parent type similar to the "Any type" (`XdAnyType <https://s3model.com/specifications/docs/rm.html#xdanytype>`_) found in many programming languages.  

The distinction is that in S3Model, the developer can provide for the application user to tag each data point with additional `semantic information <https://www.igi-global.com/dictionary/advanced-model-of-complex-information-system/41735>`_ such as the beginning and ending times that a data value is valid. The time the data value was recorded and modified. The capability exists to add an Access Control flag for sensitive information. For missing or erroneous data, the reason it is in error may be added using Exceptional Value codes (expanded from `ISO 21090 <https://www.iso.org/standard/35646.html>`_). Location data is often essential, for example, in air quality sensor data. Location data can be recorded as `latitude and longitude decimal values <http://wiki.gis.com/wiki/index.php/Decimal_degrees>`_. These capabilities expand the meaning of the data points and transfer helpful context to the end-users of the data. 

S3Model allows for well-defined `reference ranges <https://www.testing.com/articles/laboratory-test-reference-ranges/>`_ for ordered types such as decimals, integers, floats, and temporals. 

Beyond the expansion of semantics on the simple types, S3Model Data Models can contain models representing who or what organization participated in the data collection, or activity, described by the model. There are also facilities to capture `attestation <https://www.merriam-webster.com/dictionary/attestation>`_ of the data and downstream `auditing <https://www.merriam-webster.com/dictionary/audit>`_ records.  

The Data Model also accommodates `metadata <https://techterms.com/definition/metadata>`_ that describes attributes about the creation of the model. Elements of the `Dublin Core Metadata Standard <https://www.dublincore.org/specifications/dublin-core/dcmi-terms/>`_ are used to identify details such as; title, author, description, license information, relationship to other models, geographical or domain coverage, and a unique identifier (`CUID <https://github.com/ericelliott/cuid>`). 
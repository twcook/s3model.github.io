===================
The Reference Model
===================

Defines the types and structures available.

Purpose
-------

The S3Model Reference Model (RM) is the foundation of validation.

S3Model may be implemented in most any programming or data definition language. The reference implementation provided here is in XML Schema 1.0. Due to the ubiquitous nature of XML Schema and the compatibility with RDF/XML we chose XML as the canonical serialization format. Virtually all programming and data analysis languages can manipulate and validate XML content. XML content is easily imported into SQL databases, converted to JSON, or other formats.

The canonical RDF/XML serialization format can be converted to other RDF formats such as Turtle, N-Triples, JSON-LD, etc. as required for local operations. A host of tools and online resources are available for these conversions.

The components of the RM are sufficient to model any datatype to include temporal, spatial and ontological contexts. Not all of this functionality is required in all modeling situations. But they are available for those that need it.

Cardinality
-----------

A minimum and maximum occurrences of each data element/attribute are assigned in the RM.

For example, if a minimum occurrence is set to '1', then this attribute is required in every data model.

If the maximum occurrences are set to '1', then there can never be more than one of these attributes in the data model.

In some cases, the maximum occurrences may be unbounded allowing any number of instances in the data.

The hands-on, jupyter notebook exercises cover how to determine and set cardinality constraints.

The full documentation can is available here.
# The Reference Implementation of the S3Model Reference Model

S3Model may be implemented in most programming or data definition languages.

The **reference implementation** is built in XML Schema.
This is due to the ubiquitous nature of XML across industries, the compatibility with RDF/XML RDF serialization allowing embedding of the semantics into the structured schema. All of these technologies, including OWL and JSON-LD already use XML Schema datatypes so this reduces the technology and mental overhead of the stack.

Virtually all modern programming and data analysis languages can manipulate and validate XML content.

The *catalog* system in XML solves many issues around namespacing and network latency by allowing local persistence of schemas and documents even though the namespace of items may be referenced to a remote locations.

Diagramatic documentation of the Reference Model schema can be reviewed at the link below.



[Reference Model Technical Schema Docs]('https://s3model.com/specifications/docs/rm/index.html')



## Distribution Layout

The directory tree contains several files and directories:

- The *scripts* directory content is described in the **Additional Tools** section

- The *RM* (reference model) directory contains one or more versioned subdirectories where the actual XML Schema and associated files are located. This directory also contains the S3Model ontology file *s3model.owl*.

- The *4_0_0* directory is the only versioned reference model in this distribution. Previous versions were removed. This directory contains:

  - the XML Schema, *s3model_4_0_0.xsd* which is the reference implementation of the S3Model specifications,
  - the *s3model_4_0_0.rdf* file of the triples that were extracted from the XML Schema using the rm_semantics_extractor.py tool.
  - the file *s3model_4_0_0.xsl* can be used to help visualize *s3model_4_0_0.xsd* in a browser
  - and the *dm-desciption.xsl* can be used to visualize data model schemas as html pages.
  - s3model_4_0_0.xsd is the schema that is required by all S3Model Data Models using the xs:include directive as shown here:

```      
  <xs:include schemaLocation="https://www.s3model.com/ns/s3m/s3model_4_0_0.xsd">

```

### Examples

The examples directory contains some simplistic versions of a data model schema and example RDF extract and instance documents. These were created using the S3ModelTools.


# Shareable, Structured, Semantic Model (S3Model)


S3Model is the [Esperanto](https://s3model.com/specifications/docs/glossary.html#esperanto) of Information Management.


**Semantic** == Every component part of the data model may contain one or more URIs to ontologies, controlled vocabularies, policy guideline, etc. Any data item can have it's meaning defined in the model by anything with a URI.

**Structured** == Every valid data model exhibits a well defined structure based on a robust reference model.

**Sharable** == The data model author(s) can easily share their models using an industry standard format. The data consumer can easily import/implement this model into their systems.

---

## Preface

### Goal:
**The goal of S3Model is to be *Minimalistic, Sustainable, Interoperable* **AND** *Implementable*.**

### Error Reporting:

Please report all issues [here.](https://github.com/twcook/S3Model/issues)

### Compliance:

This is the reference implementation of the S3Model Specifications and is fully in compliance with version 4.0.0 of the specifications.


---

## Purpose

S3Model is an open source project developed to provide a *minimalistic*, *sustainable*, *interoperable*, *semantically coherent*, and *implementable* approach to data modeling. 

The project offers a robust approach to data modeling that allow users to create models that are compatible with multiple data sources and applications. The approach is a highly interoperable framework for data model creation that is designed to be comprehensive, allowing users to quickly implement their models for data sharing.

Each data model is based on restricting values from Classes defined in a Reference Model. In the reference implementation, XML Schema is used for the Reference Model and the data models. RDF is used in the reference model and each data model in order to express semantics.

RDF is a flexible and extensible model for representing information in the form of triples, where each triple consists of a subject, predicate, and object. It is used to provide a common framework for describing resources and relationships between them in the Semantic Web.

XML Schemas provide a way to describe the structure, content, and data types of XML documents. By embedding RDF in XML Schemas, it is possible to provide additional information about the meaning and relationships between elements in the XML document, making it easier to achieve semantic interoperability between different systems and applications.

By using the RDF triples to describe a graph within the S3Model universe, A Graph Neural Network can be applied to learn more about relationships. In the case of S3Model data, you not only have well defined, structured data, but also a network describing possible relationships within the data. We'll get into this more in the User Guide and Tutorials.

This approach can be used in the context of any domain to provide a common framework for exchanging and sharing information about any concept that can be modeled as a data model. 

While the reference model is in XML Schema, S3Model can be implemented in any programming or data definition language. For example, Python, or JSON Schema. 
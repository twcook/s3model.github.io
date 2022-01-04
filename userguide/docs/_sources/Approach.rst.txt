========================
The Multi-Level Approach
========================

The pupose and functionality of multi-level data modeling.

Overview
--------

The concept of a reference model is the foundation of the multi-level approach.

The general definition of a reference model is; an abstract framework or domain-specific ontology consisting of an interlinked set of clearly defined concepts produced by an expert or body of experts to encourage clear communication.

However, in S3Model we provide a much more concrete reference model that is generalized, is not domain-specific and derived data models can only use restriction. No extensions are allowed in S3Model. Models are built based upon restrictions placed on reference model components.

The components defined in the reference model are considered; necessary and sufficient. This definition then makes the reference model the foundation of a validity chain.

Of course necessary and sufficient is a very bold claim. Therefore S3Model is also built around the concept of never needing to migrate data from one version of the reference model to another. This safety net is central to the value proposition of building your information infrastructure on the S3Model concepts.

The Core
--------

The base of the S3Model ecosystem is a small ontology that provides naming for the component types in models and data. The primary use of this ontology is in linked data processing such as RDF Graphs. See the Advanced Course for more details.

At the base of the S3Model validation chain, is the Reference Model (RM). Though the reference implementation is in XML Schema format, in real-world applications, any chosen programming language may be used for development. The specifications provide guidelines for conformance](https://s3model.com/specifications/docs/front.html#conformance). Because of the ubiquity of XML tools from small businesses to global enterprises, the share-ability factor centers on XML Schema.

Often, tools are available to generate the reference model classes from the XML Schema automatically. This approach is the basis for more extensive S3Model compliant applications research.

The next level of the S3Model hierarchy is the Data Model (DM). The DM is a set of constraints against the RM that reduce the valid data options to a point where they can represent a specific concept. The DM is shareable as an XML Schema that uses the RM complex types as base types. This approach is conceptually equivalent to inheritance in object-oriented applications, represented in XML Schema.

Key to Interoperability
-----------------------

Since a DM (by definition) can only narrow the constraints of the RM, then any data instance that is compliant with a DM is also compliant in any software application that implements the RM or is designed to validate against the RM.

Even if the DM is not available, an application can know how to display and also analyze specific information. For example, if a receiving application does not have a DM for a given data instance, it can still discern the DM-ID and RM version from the element name and attributes of the root element. It may or may not be able to retrieve the DM from the xsi:schemaLocation attribute. If not, it can infer, based on the reference model version, information about the data by using the names of elements nested within an element with the prefix ms-. This information is available because these element names are unique to certain RM complexTypes. For example, if there is a element then that data is from a XdCountType and semantic name is in the preceding
element.

The reverse also works to make queries very generalizable. You can search for a string in the
element; you will always know that the parent is the unique id of the component defined in one or more S3Model data models.

Reusability
-----------

The individual model components (complexTypes in XML Schema) are reusable across data models.

Using tools like the Infotropic Tool Suite makes this easy to do. As a simple example, there is a model component defined in the Infotropic Tool Suite for US Social Security Numbers. Any data model that requires these identifiers can reuse this component.

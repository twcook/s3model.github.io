========================
The Multi-Level Approach
========================

This document describes the purpose and functionality of multi-level data modeling in the context of S3Model. There are other multi-level modeling approaches that allow for extensions to the core (reference) models. However, that approach immediately creates data models that are not interoperable.

One example is the US Government sponsored `National Information Exchange Model <https://www.niem.gov/>`_ (NIEM).

Overview
--------

The concept of a :ref:`reference model <RM>` is the foundation of the multi-level approach.

The general definition of a reference model is an abstract framework or domain-specific ontology consisting of an interlinked set of clearly defined concepts produced by an expert or body of experts to encourage clear communication. 

In the context of S3Model, the `specifications <https://s3model.com/specifications/docs/index.html>`_ describe the abstract concepts that are then implemented in the `reference implementation <https://s3model.com/specifications/docs/rm/>`_ as an `XML Schema <https://www.w3schools.com/xml/schema_intro.asp>`_. A higher level ontology expressed in :ref:`OWL <owl>` is also included that links and defines the various `S3Model specific terms <https://s3model.com/specifications/docs/owl/>`_ from the Abstract Model. 

A S3Model Data Model :ref:`(DM) <DM>` is built based upon :ref:`constraints <constraints>` placed on reference model components. In S3Model, we provide a reference model that is generalized, is not domain-specific, and derived data models can only use restriction. **No extensions are allowed in S3Model.** If the user finds it impossible to create a needed model using the :ref:`Model Components <model-components>` in the reference model then please file an `issue here <https://github.com/twcook/S3Model/issues>`_.

The components defined in the reference model are `necessary and sufficient <https://www.txstate.edu/philosophy/resources/fallacy-definitions/Confusion-of-Necessary.html>`_. This definition then makes the reference model the foundation of a data :ref:`validation chain <validation-chain>`.

Of course, necessary and sufficient is a very bold claim. Therefore S3Model is also built around never needing to migrate data from one version of the reference model to another. This safety net is central to the `value proposition <https://www.investopedia.com/terms/v/valueproposition.asp>`_ of building an information infrastructure based on the S3Model concepts. Simply put, even if there are future reference model versions, your data and your applications will only need to be changed if and when you choose. 

Even then, you can use multiple versions of the XML Schema RM at one time due to the flexability of the XML ecosystem.

The Core
--------

The base of the S3Model ecosystem is a small :ref:`ontology <ontologies>` that provides naming for the component types in models and data. The primary use of this ontology is in :ref:`linked data <linked-data>` processing such as in RDF Graphs.

The base of the S3Model validation chain is the Reference Model :ref:`(RM) <RM>`. The specifications provide guidelines for `conformance <https://s3model.com/specifications/docs/front.html#conformance>`_. Though the reference implementation is in XML Schema format, any chosen programming language may be used for development in real-world applications. Because of the ubiquity of XML tools from small businesses to global enterprises, the share-ability factor centers on XML Schema along with XML or JSON data instances.

Tools that automatically generate the reference model classes from the XML Schema are available from `S3Model <https://s3model.com>`_. This approach is the basis for more extensive S3Model compliant applications research.

The next level of the S3Model hierarchy is the Data Model :ref:`(DM) <DM>`. The DM is a set of constraints against the RM that reduce the valid data options to a point where they can represent a specific buisiness or industry concept. The DM is shareable as an XML Schema file that uses the RM complex types as base types. This approach is conceptually equivalent to `inheritance <https://www.computerhope.com/jargon/i/inheritance.htm>`_ in object-oriented applications.

Key to Interoperability
-----------------------

Since a DM (by definition) can only narrow the constraints of the RM, then any data instance that is compliant with a DM is also compliant in any software application that implements the RM or is designed to validate against the RM.

Even if the DM is not available, an application can know how to display and analyze specific information from a :ref:`data instance <data-instance>`. For example, if a receiving application does not have a DM for a given data instance, it can still discern the data model ID :ref:`(DM-ID) <DM-ID>` and RM version from the element name and attributes of the root element. It may or may not retrieve the DM from the xsi:schemaLocation attribute. If not, it can infer, based on the reference model version, information about the data by using the names of elements nested within an element with the prefix *ms-*. This information is available because these element names are unique to certain RM complexTypes. For example, if there is an element named *xdcount-value*, then that data is from an XdCountType, and the semantic name (*label*) is in the preceding element. 

The reverse also works to make queries very generalizable. The user can search for a string in the element; the user will always know that the parent is the component's unique id defined in one or more S3Model data models.

Reusability
-----------

The individual :ref:`model components <model-components>` (`complexTypes in XML Schema <https://www.tutorialspoint.com/xsd/xsd_complex_types.htm>`_) are reusable across data models.

Using tools like the `S3Model Tool Suite <https://s3model.com/Tools/docs/index.html>`_ makes this easy to do. As a simple example, a model component is created and stored in the S3Model Tool Suite database for the values and constraints on *US Social Security Numbers*. Any data model that requires a US Social Security Number (SSN) can reuse this component and these identifiers are consistent across all data instances. When stored as a graph, the relationship for all SSNs across all data models is consistent and are easily linked. 

Summary
-------

This page has been a very high-level introduction to S3Model. A slighlty more technical overview can be found in the Reference Model chapter of this User Guide.

For further details and implementation information it is important to refer to the `Reference Model Specifications <https://s3model.com/S3Model/docs/index.html>`_ and the `Reference implementation technical documentation <https://s3model.com/specifications/docs/rm>`_.

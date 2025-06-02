========
Glossary
========

While many terms have more than one definition. The definitions presented here are in the context of managing data, especially in the S3Model context.

Abstract Model
--------------

An *Abstract Model* as defined in the field of software engineering and data modeling, an information model is usually an abstract, formal representation of entity types that may include their properties, relationships and the operations that can be performed on them. The entity types in the model may be kinds of real-world objects, such as devices in a network, or occurrences, or they may themselves be abstract, such as for the entities used in a billing system. Typically, they are used to model a constrained domain that can be described by a closed set of entity types, properties, relationships and operations.

Artificial Intelligence (AI)
----------------------------

An area of computer science that deals with giving machines the ability to seem like they have human intelligence. Also, the power of a machine to copy intelligent human behavior.

Business Decision Makers
------------------------

*Business Decision Makers* often come with titles like CEO, COO, CFO, etc. However, anyone with budget control authority can be considered a decision maker. For more information `click here <https://snov.io/glossary/decision-makers/>`_. 

Canonical Serialization
-----------------------

A *Canonical Serialization* is an instantiation of some information in a specific file format. Usually it is in a standardized format and adheres to a specification. The word canonical means it is considered the law for the subject at hand. In the context of S3Model, the XML Schema representing the reference model, means that any other implementation in any programming or data definition language must comply with the rules and constraints of the XML Schema implementation. 

Compliance
----------

*Compliance* is the practice of following regulations set forth by corporate governance, industry organizations, and governments. These regulations set forth protocols for how sensitive data is collected, used, stored, and managed, among other requirements.

Computable models
-----------------

*Computable models* in this context, are data models that can be used to validate data and insure data compliance based on the structure and rules contained within the data model.

Constraint
----------

A *constraint* is simply *a limitation or restriction.* In the context of S3Model, constraints are mapped to the XML Schema constraint model. These constraints are sometimes referred to as `restrictions or facets <https://www.w3schools.com/xml/schema_facets.asp>`_.

Contextual
----------

*Contextual* - Contextual means to view information as a whole- both the facts and where they came from.

Collision-Resistant Unique Identifier (MCUID)
---------------------------------------------

A `CUID <https://github.com/ericelliott/cuid>`_ as used in S3Model provides a globally unique identifier for each model component and each data model.

Data Model (DM)
---------------

This component is a domain concept data model that is created by expressing constraints on a generic reference model. In the S3Model reference implementation eco-system, these constraints are formed through the use of the XML Schema complexTypes using the *restriction element* with its *base attribute* set to the appropriate RM complexType. DMs are immutable, once published they are never edited because once data is released in conformance with a DM, this is where the sharable semantics are located.

DMs are uniquely identified by the prefix 'dm-' followed by a `CUID <https://github.com/ericelliott/cuid>`_. They are valid against one version of the S3Model Reference Model XML Schema identified by the *import* element in the header. **This design gives them temporal durability and prevents the requirement ever to migrate instance data.** The result of this approach is that all data, for all time , in all contexts, can be *maintained with complete syntactic integrity and full semantics*. The semantics for a concept modeled as a DM is represented using Semantic Web technologies. The DM identifier is the subject in each of the *Subject, Predicate, Object* RDF statements.

- In the reference implementation this will be an XML Schema that imports the Refernce Model schema. 

- In Python it is a Python file that imports the Python Reference Model.

Data Model ID
-------------

The data model ID is a unique identifier for each and every data model created in the S3Model ecosystem. No identifier can be duplicated because of the construction method. All identifiers in S3Model uses a Collision Resistant Unique Identifier `(CUID) <https://github.com/ericelliott/cuid>`_ preceeded by the characters *dm-*. 

There are ports to virtually all programming languages, you can also get them `online here <https://www.getuniqueid.com/cuid>`_.

Data Instance
-------------

A *Data Instance* is specific file or database entry that contains information based on some model. Examples include; an XML file, a JSON file, a row and its relations in a SQL database, a text file from an editor, or other concrete entity. 

Data Modeling
-------------

*Data Modeling* is the process of conceptualizing a data model (or datamodel) as an abstract model that organizes elements of data and standardizes how they relate to one another and to the properties of real-world entities. 

Data Analyst
------------

*Data analysts* use machine learning and AI tools to answer business questions.

Data Scientist
--------------

*Data scientists* typically spend more time modeling data and building analytic tools.

Domain Expert
-------------

A *domain expert* is a person with special knowledge or skills in a particular area of endeavor. An accountant is an expert in the domain of accountancy, for example. The development of accounting software requires knowledge in two different domains, namely accounting and software.

Esperanto
---------

*Esperanto* is an artificial language devised in 1887 as an international medium of communication, based on roots from the chief European languages. Majority of the speakers are found in the United Kingdom, Belgium, Brazil, United States, Poland, Italy, Germany and France. Surprisingly, there are also many Esperanto speakers in China and Japan. Dr. Zamenhof created the language to fight nationalism and boost internationalism and mutual understanding.

Graph Database
--------------

A *graph database** stores nodes and relationships instead of tables, or documents. Data is stored just like you might sketch ideas on a whiteboard. Your data is stored without restricting it to a pre-defined model, allowing a very flexible way of thinking about and using it. It must be noted that not having a pre-defined model has many drawbacks, lack of data validation being a major one. S3Model provides a mechanism to have a strong model and still store your data as a knowledge graph. 

JavaScript Object Notation (JSON)
---------------------------------

*JSON* is a standard text-based format for representing structured data based on JavaScript object syntax. It is commonly used for transmitting data in web applications (e.g., sending some data from the server to the client, so it can be displayed on a web page, or vice versa).

Linked Data
-----------

*Linked Data* lies at the heart of what the Semantic Web (Web 2.0) is all about: large scale integration of, and reasoning on, data on the Web. Almost all applications listed in, say collection of `Semantic Web Case Studies and Use Cases <https://www.w3.org/2001/sw/sweo/public/UseCases/>`_ are essentially based on the accessibility of, and integration of Linked Data at various level of complexities.

Model Component (MC)
--------------------
The name comes from the fact that it is a complete XML Schema complexType that represents a simple concept and that it can be reused in any DM. This reuse is due to the use of CUIDs for the complexType name attribute. Since complexType names must begin with an alphabetic character, all S3Model RMC names start with the prefix 'mc-' followed by the CUID. This naming convention facilitates the association with public element names in instances since they reuse the CUID but have a prefix of 'ms-' (Model Symbol) in place of the 'mc-.' The use of a CUID allows the constraint on a reference model type to be reused many times in a DM with different parameters such as enumeration constraints. The semantics for a concept modeled as an MC is represented using Semantic Web technologies. The MC name is the subject in each of the *Subject, Predicate, Object* RDF statements.

Multi-Level Healthcare Information Modeling (MLHIM)
---------------------------------------------------

The academic MLHIM project was hosted at `Universidade do Estado do Rio de Janeiro (UERJ) <https://www.uerj.br/>`_. The initial multi-level concepts were based on the `openEHR specifications <https://specifications.openehr.org/>`_. The project members addressed many of the short-comings in openEHR during the interations of MLHIM. However, MLHIM like openEHR was healthcare domain specific. Once the MLHIM project ended, a few members took the successes and developed S3Model as a domain independent solution to semantic interoperability.


Ontology
--------

An *Ontology* is a set of concepts and categories in a subject area or domain that shows their properties and the relations between them. One major advantage of using a domain ontology is its ability to define a semantic model of the data combined with the associated domain knowledge. Ontologies can also be used to define links between different types of semantic knowledge. Thus, ontologies can be used in formulating data analysis strategies.

Web Ontology Language (OWL)
---------------------------

The *W3C Web Ontology Language (OWL)* is a Semantic Web language designed to represent rich and complex knowledge about things, groups of things, and relations between things. 

Predictive Model
----------------

Predictive modeling is a commonly used statistical technique to predict future behavior. In predictive modeling, data is collected, a statistical model is formulated, predictions are made, and the model is validated (or revised) as additional data becomes available.

Resource Description Framework (RDF)
------------------------------------

*RDF* is a standard model for data interchange on the Web. Although frequently referred to as a *language*, RDF is mainly a data model. It is based on the idea that the things being described have properties, which have values, and that resources can be described by making statements. These statements consist of three components; a subject, a predicate, and an object. It should be noted that RDF is also a vocabulary that along with the RDFS vocabulary provides a set of terms that can be used for creating general/abstract descriptions of resources. OWL is a vocabulary built with RDF and RDFS vocabularies that provide new terms for creating more detailed descriptions of resources.

Reference Model (RM)
--------------------

The *RM* is a small set of structurally oriented concept definitions that allow for building arbitrarily complex models without introducing domain semantics into the structure. Domain concepts are modeled as *restrictions* on these RM concepts. The RM, therefore, defines a standard set of ideas that allow for query and knowledge discovery across data without prior knowledge of the actual content.

Shareable-Structured-Semantic Model (S3Model)
---------------------------------------------

*Shareable-Structured-Semantic Model (S3Model)* is an open source/open content project with the goal of solving the cross-domain information, semantic interoperability problem.

It uses a multi-level information modeling approach in combination with widely available tools and language infrastructure to allow the exchange of the syntactic and semantic information along with data.

S3Model is a modeling approach that includes a comprehensive reference model. Data Models are created by domain experts or other interested individuals that want to model some data. By creating this data model, the creator can be sure that when they send their data to a downstream user, such as an analyst, that user will have all of the computable, contextual information they need to understand the origin and meaning of the data. 

Semantic Interoperability
-------------------------

*Semantic interoperability* denotes the ability of different applications and business partners to understand exchanged data in a similar way, implying a precise and unambiguous meaning of the exchanged information.

Semantic Web
------------

The *Semantic Web* is a proposed development of the World Wide Web in which data in web pages is structured and tagged in such a way that it can be read directly by computers. The same technologies may be applied to any data. `The W3C website has more details <https://www.w3.org/standards/semanticweb/>`_. 

Structured Query Language (SQL)
-------------------------------

A data definition and manipulation language for relational databases.

SQL Database
------------

Also known as relational databases. A SQL database is a collection of tables that stores a specific set of structured data.

Upper Ontology
--------------

An **upper ontology** (also known as a top-level ontology, upper model, or foundation ontology) is an ontology (in the sense used in information science) which consists of very general terms (such as "object", "property", "relation") that are common across all domains. An important function of an upper ontology is to support broad semantic interoperability among a large number of domain-specific ontologies by providing a common starting point for the formulation of definitions. Terms in the domain ontology are ranked under the terms in the upper ontology, e.g., the upper ontology classes are superclasses or supersets of all the classes in the domain ontologies.

Validation
----------

**Validation** means checking the accuracy and quality of source data before using, importing or otherwise processing data. Different types of validation can be performed depending on destination constraints or objectives. For example, you could use data validation to make sure a value is a number between 1 and 6, make sure a date occurs in the next 30 days, or make sure a text entry is less than 25 characters.

Validation Chain
----------------

A *validation chain* is a series of complimentary components that serve to perform validation.

eXtensible Markup Language (XML)
--------------------------------

*XML* is a markup language expressed in a standard set of codes, or tags, that describes the text in a digital document. XML is a more flexible cousin of HTML, makes it possible to conduct complex business over the Internet.

eXtensible Markup Language Database
-----------------------------------

An XML database is a database that stores data in XML format. This type of database is suited for businesses with data in XML format and for situations where XML storage is a practical way to archive data, metadata and other digital resources.

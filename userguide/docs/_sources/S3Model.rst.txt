================
What is S3Model?
================

The **SHAREABLE-STRUCTURED-SEMANTIC MODEL** `(S3Model) <https://s3model.com/specifications/docs/glossary.html#shareable-structured-semantic-model-s3model>`_ is a system based on a standardized reference model, to solve cross-domain `semantic interoperability <https://s3model.com/specifications/docs/glossary.html#semantic-interoperability>`_ with full data `validation <https://s3model.com/specifications/docs/glossary.html#validation>`_ and `compliance <https://s3model.com/specifications/docs/glossary.html#compliance>`_. S3Model is **not** a data storage application. That said, the tools built around S3Model do create data in `XML <https://s3model.com/specifications/docs/glossary.html#extensible-markup-language-xml>`_, `JSON <https://s3model.com/specifications/docs/glossary.html#javascript-object-notation-json>`_ or `RDF <https://s3model.com/specifications/docs/glossary.html#resource-description-framework-rdf>` and allow for storing data in `SQL databases <https://s3model.com/specifications/docs/glossary.html#sql-database>`_, `XML databases <https://s3model.com/specifications/docs/glossary.html#extensible-markup-language-database>`, or `graph databases <https://s3model.com/specifications/docs/glossary.html#graph-database>`_. 

Target Audience
===============

The concepts, implementations and tools are intended for `business decision makers <https://s3model.com/specifications/docs/glossary.html#business-decision-makers>`_, `domain experts <https://s3model.com/specifications/docs/glossary.html#domain-expert>`_, `data scientists <https://s3model.com/specifications/docs/glossary.html#data-scientist>`_ and `data analysts <https://s3model.com/specifications/docs/glossary.html#data-analyst>`_. 

The Current Problem(s)
======================

Current data modeling and processing approaches do not allow for machine-processable context to be associated with the data at the point of capture to supply downstream analysts with sufficient contextual information to make fully qualified decisions. A lot of manual analysis, reflection, investigation, and time consuming meetings are required to figure out the real meaning of the data points.


Data Analysis
-------------

Most data used in data analysis, machine learning, and `Artificial Intelligence (AI) <https://s3model.com/specifications/docs/glossary.html#artificial-intelligence-ai>`_ applications require manual cleaning and processing. At best, a bespoke pipeline will be created for each use case. 

A data analyst typically goes through these steps:

1. Identify one or more business questions that need to be answered.

2. Identifying and collecting the raw data set needed to answer the identified question.

3. Then *clean* the data to prepare it for the analysis tools. The cleaning process usually requires; purging duplicate and anomalous data, reconciling inconsistencies, standardizing the data structure, and dealing with syntax errors, erroneous white space, and formatting inconsistencies.

4. Now, the analyst can use tools to analyze the data and interpret the results. 

Step 3 above is especially onerous for several reasons. A recent (2020) survey by data science platform company `Anaconda <https://www.anaconda.com/>`_ found that approximately 45% of data analysts/data scientists' time is spent on this one step. Many find this step to be tedious, dull, and error-prone. 

In Step 4 above:

* What if the analyst did not fully understand the context in which the data was captured? For example, there are differences in how blood pressure is measured via an arm cuff and an aterial sensor. Alternatively, the various tools used to measure atmospheric temperature can mean different values for the same location.  
  
* It is pretty common to remove missing or null data points during the data cleaning phase. The fact that the data is missing can be meaningful, and why the data is missing should be known.* What about ignoring missing data values when the absence of the data points may have real meaning in the context of the question? For example, was the information just not available in a healthcare record, or did the patient refuse to answer the question? 

**S3Model** helps application developers solve these issues by providing a more robust approach to data modeling, then providing the ability to share these `computable models <https://s3model.com/specifications/docs/glossary.html#computable-models>`_ across an organization, an industry, or with the public at large. 


Data Science
------------

Data scientists use probability, statistics, mathematics, and computer science to predict outcomes from complex systems. A data scientist will typically be more involved with designing `data modeling <https://s3model.com/specifications/docs/glossary.html#data-modeling>`_ processes, creating algorithms and `predictive models <https://s3model.com/specifications/docs/glossary.html#predictive-model>`_. Therefore, data scientists may spend more time designing tools, automation systems, and data frameworks than analyzing data.

.. note::

    The reader should use their favorite search engine to discover the similarities and differences between a data analyst and a data scientist. 

For our purposes, the problems and the solutions are similar.


The Solution
============

Data Analysis/Science
---------------------

The context of the data at the capture point is of utmost importance. When we extract `contextual <https://s3model.com/specifications/docs/glossary.html#contextual>`_ meaning from data, it empowers us to make better decisions. When the capture context is unknown, it can easily lead to poor or improper analysis results. 

The use of `ontologies <https://s3model.com/specifications/docs/glossary.html#ontology>`_ to define meaning across domains is growing. These ontologies are typically built by, or with, direct input from `domain experts <https://s3model.com/specifications/docs/glossary.html#domain-expert>`_. The `Web Ontology Language (*OWL*) <https://s3model.com/specifications/docs/glossary.html#web-ontology-language-owl>`_ is often used to instantiate and exchange an ontology. The Resource Description Framework may also express an ontology `(*RDF*) <https://s3model.com/specifications/docs/glossary.html#resource-description-framework-rdf>`_.

Globally useful ontologies such as those growing out of the `Semantic Web <https://s3model.com/specifications/docs/glossary.html#semantic-web>`_ work are becoming more useful, stable and permanent. Some examples of these ontologies that can be used to express semantics in S3Model data models are:

* `Linked Open Vocabularies <https://lov.linkeddata.es/dataset/lov>`_ 
* `Schema.org <https://schema.org/>`_
* `BioPortal <https://bioportal.bioontology.org/>`_
* `Simple Knowledge Organization System <https://www.w3.org/2004/02/skos/>`_
* `Socially Interconnected Online Communities <http://sioc-project.org/>`_
* `Good Relations <http://www.heppnetz.de/projects/goodrelations/>`_
* `The Music Ontology <http://musicontology.com/>`_
* `Open Energy Ontology <https://openenergy-platform.org/ontology/>`_
* `The Business Ontology <https://www.globaluniversityalliance.org/research/business-ontology/>`_

 And many other domain specific ontologies. 
 
 .. note::
     
     The reader may use their favorite search engine to discover existing ontologies for their chosen domain.


 The decision to build your own for internal use or use an industry standard is up to you. `Forbes published an article <https://www.forbes.com/sites/cognitiveworld/2019/05/07/ontologies-borrow-build-or-buy/>`_ on this process.  


More recently, there is a movement towards what is called `Web3 <https://web3.foundation/about/>`_. Web3 advances the concepts of the Semantic Web (Web 2.0) in order to decentralize content and enhance privacy, security, and control. S3Model is a perfect fit for Web3 due to the nature of decentralized data model definitions while still providing for sharability. 



Summary
-------

* S3Model provides a means to add context to data in a machine-processable and human-readable manner.

* S3Model provides a consistent data structure to ease query processing across multiple information domains.

* S3Model provides a consistent approach to go from document/tree-structured data to `Linked Data <https://s3model.com/specifications/docs/glossary.html#linked-data>`_ without loss of contextual fidelity.

* Some of the tools being produced under the S3Model project demonstrate not only how S3Model can be used in your business applications; they are also helpful as model design and creation tools. 

* S3Model and the tools are provided under a business-friendly open source license. 



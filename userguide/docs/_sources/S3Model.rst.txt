================
What is S3Model?
================

The **SHAREABLE-STRUCTURED-SEMANTIC MODEL** :ref:`(S3Model) <s3model>` is a system based on a standardized reference model, to solve cross-domain :ref:`semantic interoperability <sem-int>` with full data validation and compliance. S3Model is **not** a data storage application. That said, the tools built around S3Model do create data in :ref:`XML <xml>`, :ref:`JSON <json>` or :ref:`RDF <rdf>` and allow for storing data in :ref:`SQL databases <sqldb>`, :ref:`XML databases <xmldb>`, or :ref:`graph repositories <graphdb>`. 

Target Audience
===============

The concepts, implemntations and tools are intended for :ref:`domain experts <domain-experts>`, :ref:`data scientists <data-scientists>` and :ref:`data analysts <data-analyst>`. 

The Current Problem(s)
======================

Current approaches to data modeling and processing do not allow for machine processable context to be associated with the data, at the point of capture, in order to supply algorithms with enough meaninful, computable information.


Data Analysis
-------------

The majority of data used in data analysis, machine learning and AI applications require manual cleaning and processing. At best, a bespoke pipeline must be created for each use case. 

A data analyst typically goes through these steps:

1. Identify one or more business questions that need to be answered.

2. The identification and collection of the raw data set needed to answer the identified question.

3. Then *clean* the data to prepare it for the analysis tools. This usually requires; purging duplicate and anomalous data, reconciling inconsistencies, standardizing the data structure, and dealing with syntax errors, erroneous white space, and formatting inconsistencies.

4. Now the analyst can actually use tools to do the analysis and interpret the results. But what if the analyst didn't fully understand the context in which the data was captured?  What about ignoring missing data values when the absence of the data points may have real meaning in the context of the question? 

Step 3 above is especially onerous for several reasons. A recent (2020) survey by data science platform company `Anaconda <https://www.anaconda.com/>`_ found that approximately 45% of data analysts/data scientists time is spent on this one step. Many find this step to be tedious, boring and error-prone. 


Data Science
------------

Data scientists use probability, statistics, mathematics, and computer science to make predictions about complex systems. A data scientist will typically be more involved with designing :ref:`data modeling <data-modeling>` processes, creating algorithms and :ref:`predictive models <pred-models>`. Therefore, data scientists may spend more time designing tools, automation systems and data frameworks than analyzing data.

Use your favorite search engine to further discover the similarities and differences between a data analyst and a data scientist. 

For our purposes, the problems and the solutions are similar.


The Solution
============

Data Analysis/Science
---------------------

When we can extract :ref:`contextual <contextual>` meaning from data, it empowers us to make better decisions. The context of the data is at the point of capture. When the capture context is unknown it can easily lead to poor or improper analysis results. 

The use of :ref:`ontologies <ontologies>` to define meaning across domains is growing. These ontologies are typically built by or with direct input from :ref:`domain experts <domain-experts>`. The Web Ontology Language :ref:`(*OWL*) <owl>` is often used to instantiate and exchange an ontology. An ontology may also be expressed in the Resource Description Framework :ref:`(*RDF*) <rdf>`.


* S3Model provides a means to add context to data in both a machine processable and human-readable manner.

* S3Model provides a consistent data structure to ease query processing across multiple domains of information.

* S3Model provides a consistent approach to go from document/tree structured data to Linked Data without loss of contextual fidelity.

* S3Model is provided under a business friendly open source license. Begin your introduction to the future of data modeling for AGI.

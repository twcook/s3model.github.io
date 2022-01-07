================
What is S3Model?
================

The **SHAREABLE-STRUCTURED-SEMANTIC MODEL** :ref:`(S3Model) <s3model>` is a system based on a standardized reference model, to solve cross-domain :ref:`semantic interoperability <sem-int>` with full data :ref:`validation <validation>` and :ref:`compliance <compliance>`. S3Model is **not** a data storage application. That said, the tools built around S3Model do create data in :ref:`XML <xml>`, :ref:`JSON <json>` or :ref:`RDF <rdf>` and allow for storing data in :ref:`SQL databases <sqldb>`, :ref:`XML databases <xmldb>`, or :ref:`graph databases <graphdb>`. 

Target Audience
===============

The concepts, implemntations and tools are intended for :ref:`domain experts <domain-experts>`, :ref:`data scientists <data-scientists>` and :ref:`data analysts <data-analyst>`. 

The Current Problem(s)
======================

Current data modeling and processing approaches do not allow for machine-processable context to be associated with the data at the point of capture to supply algorithms with sufficient contextual information.


Data Analysis
-------------

Most data used in data analysis, machine learning, and Artificial Intelligence :ref:`(AI) <ai>` applications require manual cleaning and processing. At best, a bespoke pipeline will be created for each use case. 

A data analyst typically goes through these steps:

1. Identify one or more business questions that need to be answered.

2. Identifying and collecting the raw data set needed to answer the identified question.

3. Then *clean* the data to prepare it for the analysis tools. The cleaning process usually requires; purging duplicate and anomalous data, reconciling inconsistencies, standardizing the data structure, and dealing with syntax errors, erroneous white space, and formatting inconsistencies.

4. Now, the analyst can use tools to analyze the data and interpret the results. 

Step 3 above is especially onerous for several reasons. A recent (2020) survey by data science platform company `Anaconda <https://www.anaconda.com/>`_ found that approximately 45% of data analysts/data scientists' time is spent on this one step. Many find this step to be tedious, dull, and error-prone. 

In Step 4 above:

* What if the analyst did not fully understand the context in which the data was captured? For example, there are differences in how blood pressure is measured via an arm cuff and an aterial sensor. Alternatively, the various tools used to measure atmospheric temperature can mean different values for the same location.  
  
It is pretty common to remove missing or null data points during the data cleaning phase. The fact that the data is missing can be meaningful, and why the data is missing should be known.* What about ignoring missing data values when the absence of the data points may have real meaning in the context of the question? For example, was the information just not available in a healthcare record, or did the patient refuse to answer the question? 

**S3Model** helps application developers solve these issues by providing a more robust approach to data modeling, then providing the ability to share these :ref:`computable models <computable-models>` across an organization, an industry, or with the public at large. 


Data Science
------------

Data scientists use probability, statistics, mathematics, and computer science to predict outcomes from complex systems. A data scientist will typically be more involved with designing :ref:`data modeling <data-modeling>` processes, creating algorithms and :ref:`predictive models <pred-models>`. Therefore, data scientists may spend more time designing tools, automation systems, and data frameworks than analyzing data.

The reader should use their favorite search engine to discover the similarities and differences between a data analyst and a data scientist. 

For our purposes, the problems and the solutions are similar.


The Solution
============

Data Analysis/Science
---------------------

The context of the data at the capture point is of utmost importance. When we extract :ref:`contextual <contextual>` meaning from data, it empowers us to make better decisions. When the capture context is unknown, it can easily lead to poor or improper analysis results. 

The use of :ref:`ontologies <ontologies>` to define meaning across domains is growing. These ontologies are typically built by, or with, direct input from :ref:`domain experts <domain-experts>`. The Web Ontology Language :ref:`(*OWL*) <owl>` is often used to instantiate and exchange an ontology. The Resource Description Framework may also express an ontology:ref:`(*RDF*) <rdf>`.

Globally useful ontologies such as those growing out of the Semantic Web work are becoming more stable and permanent. 

Summary
-------

* S3Model provides a means to add context to data in a machine-processable and human-readable manner.

* S3Model provides a consistent data structure to ease query processing across multiple information domains.

* S3Model provides a consistent approach to go from document/tree-structured data to Linked Data without loss of contextual fidelity.

* Some of the tools being produced under the S3Model project demonstrate not only how S3Model can be used in your business applications. However, they are also helpful as model design and creation tools. 

* S3Model and the tools are provided under a business-friendly open source license. 



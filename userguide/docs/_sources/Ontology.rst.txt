The Ontology
============

The S3Model ontology is an :ref:`upper ontology <upper-ontology>` defining the components of the reference model and constraint models. This upper ontology supports the broad semantic interoperability across all S3Model data models.

Purpose
-------

The S3Model ontology is quite simple but serves to connect model components in RDF graphs.

The images below show the classes and object properties of the ontology.

See the [technical documentation(https://s3model.com/specifications/docs/abstract_model.html) for definitions for each of the classes and properties.


Terms in the Ontology
---------------------

**CMC Core Model Component** A component model contained in a reference model. A CMC represents a specific core type of component that further includes elements with base datatypes and other CMCs to define its structure.

**CMS Core Model Symbol** A CMS represents a CMC in instance data. In practice, it is usually substituted for by a Replaceable Model Symbol (RMS). This substitution is because constraints are expressed in a Replaceable Model Component (RMC) which is then represented by an RMS.

**DataInstance** A set of data items that report via the isInstanceOf property that it conforms to a DM. In this state, it has not been tested for validation.

**DataInstanceError** Subclass of DataInstance. A set of data items that DOES NOT conform to the DM it represents, OR it contains invalid data and does not contain one or more children of an Exception. If there are no noted Exceptions in the Data Instance, then it should be considered suspect and discarded.

**DataInstanceInvalid** Subclass of DataInstance. A set of data items that conforms to a DM to represent an instance of that concept AND at least some of the data values are NOT valid according to the DM constraints. An Invalid Data Instance must contain one or more children of an Exception.

**DataInstanceValid** Subclass of DataInstance. A set of data items that conforms to a DM to represent an instance of that concept AND all of the data values are valid according to the DM constraints.

**DM Data Model** A set of selected RMCs that are constraints on the RM components (CMCs) to represent a domain concept. In the implementation language, there may be additional syntactic conventions required. Caution: Not to be confused with Data Instance.

**Exception** Exceptions indicate that a data instance may be invalid when validated against its model. However, the exceptional value may be explainable and provide valuable contextual information. A specific Exception subclass instance included in the data instance will provide that additional information.

**RM Reference Model** A set of components called Core Concept Models (CMCs) that provide structural integrity for a domain concept. Some CMCs are mandatory in DMs, and some are optional. Optionality is defined in each versioned, RM implementation.

**RMC Reusable Model Component** The name RMC is given to a CMC that has been constrained for use in a DM. Through the constraints, an RMC defines a single concept based on syntactic data constraints as well as specified semantics. It is reusable because it can be reused in multiple DMs.

**Reusable Model Symbol** The RMS represents an RMC in instance data. Can be considered as a data container for the components of an RMC. All of the RMSs, from a given DM, are contained in a DataInstance when in transit.

**S3Model** Sometimes abbreviated as S3M in the documentation. The root concept. This is the source of the abstract idea of the Shareable, Structured, Semantic Model. All of the S3Model classes are related to this class through partOf.

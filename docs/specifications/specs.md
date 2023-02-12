# S3Model Specifications

*Turning data into computable information*

Release - 4.0.0   [CHANGES](./CHANGES.md)

*Copyright 2009 - 2023, [Timothy W. Cook](https://www.linkedin.com/in/timothywaynecook/) - All Rights Reserved.*


The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "NOT RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described in [BCP 14](https://tools.ietf.org/html/bcp14), [RFC2119](https://tools.ietf.org/html/rfc2119), and [RFC8174](https://tools.ietf.org/html/rfc8174) when, and only when, they appear in all capitals, as shown here.


## Acknowledgments

We would like to thank all of the members of the Multi-Level Health Information Modeling (MLHIM) Technology Development Unit at [Universidade do Estado do Rio de Janeiro (UERJ)](https://www.uerj.br/), [INCT-MACC](http://macc.lncc.br/) as well as [FAPERJ](http://www.faperj.br/) for multiple direct and student grants in support of multi-level modeling and semantic interoperability efforts.

---

## Purpose & Scope

*Keep everything as simple as possible; but no simpler. - Albert Einstein*

The purpose of the [S3Model](../glossary.md#shareable-structured-semantic-model-s3model) project is to provide a free and openly available specification for implementation of a *model first* system for information exchange within and across domains.

The S3Model specifications are designed to provide computable [semantic interoperability](https://s3model.com/specifications/docs/glossary.html#semantic-interoperability) that is entirely independent of any implementation specific contexts. Therefore workflow, security, user access, and data persistence are all outside the scope of S3Model. However, S3Model does provide a facility for managing workflow and user access constraints within the data instances.

The project has a growing number of implementation projects and tools that demonstrate
this approach and enables interoperability across many contexts and domains.

It is recommended that new comers read the [S3Model User Guide](../userguide/index.md) and go through the brief tutorial.

### Conformance

Conformance to these specifications are represented in a Language Implementation Specification (LIS). An LIS is a formal document detailing the mappings and conventions used concerning these specifications.
An LIS is in direct conformance to these specifications when;

1. All datatypes are defined and mapped.
2. The value spaces of the datatypes used by the entity to be identical to the value spaces specified herein.
3. To the extent that the entity provides operations other than movement or translation of values, define operations on the datatypes which can be derived from, or are otherwise consistent with the characterizing operations specified herein.

### Compliance

These specifications;

- Are in indirect conformance with ISO/DIS 21090/2008.
- Comply with applicable sections of ISO 18308/2008.
- Comply with applicable sections of ISO/TR 20514:2005.
- Comply with applicable sections of ISO 13606-1:2007.
- Are in conformance with W3C XML Schema Definition Language (XSD) 1.0
- Are in conformance with W3C Resource Description Framework (RDF) 1.1

### Availability

The S3Model specifications, reference implementation, and tools are available from the [S3Model](https://s3model.com) website.

> [Contact Us](mailto:s3modeldata@gmail.com?subject=S3Model) for information and access to advanced model development tools.

*The ninety and nine are with dreams, content but the hope of the world made new, is the hundredth man who is grimly bent on making those dreams come true. - Edgar Alan Poe*

### Error Reporting

Please report all issues [here.](https://github.com/twcook/S3Model/issues)

---

## Abstract Model

[S3Model](../glossary.md#shareable-structured-semantic-model-s3model) is by name as well as by definition and design a constraint-based multi-level modeling approach.  This approach means that there are multiple models with increasing specificity to get to the instance data point. S3Model is constraint-based which provides a complete syntactic validation path back to the reference model for the instance data. The semantic model is designed using the concepts of this multi-level model approach. Extensions to the reference model concepts are not allowed.

While these classes are considered the *abstract* concepts in S3Model, they are expressed in a concrete form in the file s3model.owl. 


### S3Model Ontology Classes

#### S3Model Class

*Shareable, Structured, Semantic Model*

The root concept. The is the source of the abstract concept of S3Model. All of the S3Model classes are related to this class through partOf.

#### RM Class

*Reference Model*

A set of components called Core Concept Models (CMCs) that provide structural integrity for a domain concept. Some CMCs are mandatory in DMs, and some are optional. Optionality is defined in each versioned, RM implementation.

#### CMC Class

*Core Model Component*

A component model contained in a reference model. A CMC represents a specific core type of component that further contains elements with base datatypes and other CMCs to define its structure.

#### CMS Class

*Core Model Symbol*

A CMS represents a CMC in instance data. In practice, it is usually substituted for by a Replaceable Model Symbol (RMS). This substitution is because constraints are expressed in a Replaceable Model Component (RMC) which is then represented by an RMS.

#### DM Class

*Data Model*

A set of selected RMCs that are constraints on the RM components (CMCs) to represent a domain concept. In the implementation language, there may be additional syntactic conventions required. Caution: Not to be confused with Data Instance.

#### RMC Class

*Reusable Model Component*

The name RMC is given to a CMC that has been constrained for use in a DM. Through the constraints, an RMC defines a single concept based on syntactic data constraints as well as specified semantics. It is reusable because it can be reused in multiple DMs.

#### RMS Class

*Reusable Model Symbol*

The RMS represents an RMC in instance data. Can be considered as a data container for the components of an RMC. All of the RMSs are contained in a DataInstance when in transit.

#### DataInstance Class

*DataInstance*

A set of data items that report via the isInstanceOf property that it conforms to a DM. In this state, it has not been tested for validation.

#### DataInstanceValid Class

*DataInstanceValid*

Subclass of DataInstance. A set of data items that conforms to a DM to represent an instance of that concept AND the all of the data values are valid according to the DM constraints.

#### DataInstanceInvalid Class

*DataInstanceInvalid*

Subclass of DataInstance. A set of data items that conforms to a DM to represent an instance of that concept AND at least some of the data values are NOT valid according to the DM constraints. An Invalid Data Instance must contain one or more children of an Exception.

#### DataInstanceError Class

*DataInstanceError*

Subclass of DataInstance. A set of data items that DOES NOT conform to the DM it represents, OR it contains invalid data and does not contain one or more children of an Exception. If there are no noted Exceptions in the Data Instance, then it should be considered suspect and discarded.

#### Exception Class

*Exception*

Exceptions indicate that a data instance may be invalid when validated against its model. However, the exceptional value may be explainable and provide valuable contextual information. A specific Exception subclass instance included in the data instance will provide that additional information.


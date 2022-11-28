
  

## Defined Context (Global)

*Defined activities* are the characterization of a kind of activity, i.e. they define “what” an activity is. Most activities included in a study are not completely brand new, rather they are usually common tests or procedures, or they may be composite activities that are composed of several component activities that form a standard treatment strategy or a new treatment strategy used in several different studies. These activities are reusable concepts that essentially form a global library of activities that can be referenced in studies being planned, implemented, executed and evaluated. These activities can be defined once and referenced in many different studies to save the time and effort of re-entering data and, more importantly, to make the semantic connection between an activity being used in two different studies or at two different points in the same study. This notion of activities being defined once and referenced in many studies is the core idea of the defined activity class and its subclasses. This part of the model is what the BRIDG modeling team calls the “Defined Pillar”. For those familiar with HL7 moodCodes, this is somewhat similar to the defined mood. (*BRIDG User’s Guide Release 5.3.1 March 2019 Page 19-20*)

  

---


### Defined Activities: FHIR PlanDefinition:

From the defined activities definition above, keep in mind the "where", "who" and "what" is being defined for the following libraries:

1. **Where**: Platform (global library):
    *  **Who**: Actor(s): Platform Owner
    *  **What**: Defined activities are created and referenced/re-used by tenants/sponsors within the platform.

2.  **Where**: Tenant/Sponsor (tenant library):
    *  **Who**: Actor(s): Tenant Owner
    *  **What**: Defined activities are created and referenced/re-used by studies owned by the tenant/sponsor.
        * Able to reference Defined Activities established by the Platform (Global) library.

3.  **Where**: Study (study library)
    *  **Who**: Actor(s): Study Designer/Coordinator
    *  **What**: Defined activities are created and reused by the specific study's scope.
        * Able to reference Defined Activities established by the Tenant/Sponsor library.

  

We want a pattern that is reusable in the different contexts above. FHIR's [PlanDefinition](http://build.fhir.org/plandefinition.html) resource provides a hierarchical grouping capability of referenced resources. In this context, one can think of [PlanDefinition](http://build.fhir.org/plandefinition.html) as an [associative entity from RDBMS](https://en.wikipedia.org/wiki/Associative_entity), in that the PlanDefinition contains the references to the concrete defined activities (differing in resource types).

This pattern will leverage:

* PlanDefinition's ability to contain hierarchical groups of action definitions and each action's codable concept provides typing for each grouping of activities.

* An PlanDefinition.identifier to establish ownership/parent reference (Platform, Tenant/Sponsor, Study).

* type: new code (definedActivityOwner)

* value: the uri to the (platform, tenant, study) in which this instance of Defined Activities is associated to.

```json

Instance: DefinedActivities

InstanceOf: PlanDefinition

Usage: #example

Title: "Example-FHIR"

Description: "FHIR"

* status = #active

* identifier.type = #definedActivityOwner

* identifier.value = "Organization/7ad0f876s76dfa7d98a5s67"

```

* Alternative to PlanDefinition.identifier is PlanDefinition.meta tag

* tag.display is a string "{definedActivityLibary: uri}

```json

Instance: DefinedActivities

InstanceOf: PlanDefinition

Usage: #example

Title: "Example-FHIR"

Description: "FHIR"

* status = #active

* meta.tag.display = "{definedActivityOwner : Organization/7ad0f876s76dfa7d98a5s67}"

```
---


### Defined Activity:

From the individual defined activities perspective (resources: Questionnaire, PlanDefinition, ActivityDefinition), we will re-leverage either the resource identifier or meta.tag in each resource to represent ownership/where the activity was defined (Platform, Tenant/Sponsor, Study).

  

```json

Instance: FHIR-Questionnaire

InstanceOf: Questionnaire

Usage: #example

Title: "Example-FHIR Questionnaire"

Description: "FHIR Questionnaire"

* status = #active

* meta.tag.display = "{definedActivityOwner:ResearchStudy/7ad0f876s76dfa7d98a5s67}"

* identifier.type = #definedActivityOwner

* identifier.value = "ResearchStudy/7ad0f876s76dfa7d98a5s67"

```
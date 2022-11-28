
  


*Defined activities* are the characterization of a kind of activity, i.e. they define “what” an activity is. Most activities included in a study are not completely brand new, rather they are usually common tests or procedures, or they may be composite activities that are composed of several component activities that form a standard treatment strategy or a new treatment strategy used in several different studies. These activities are reusable concepts that essentially form a global library of activities that can be referenced in studies being planned, implemented, executed and evaluated. These activities can be defined once and referenced in many different studies to save the time and effort of re-entering data and, more importantly, to make the semantic connection between an activity being used in two different studies or at two different points in the same study. This notion of activities being defined once and referenced in many studies is the core idea of the defined activity class and its subclasses. This part of the model is what the BRIDG modeling team calls the “Defined Pillar”. For those familiar with HL7 moodCodes, this is somewhat similar to the defined mood. (*BRIDG User’s Guide Release 5.3.1 March 2019 Page 19-20*)

  

---


### Defined Activities (PlanDefinition):

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

This pattern will leverage PlanDefintion to define a collective list of Defined Activites from each of the "**Where**" scope:
* An PlanDefinition.meta to establish ownership/parent reference (Platform, Tenant/Sponsor, Study).
  * system: the uri to the (platform, tenant, study) in which this instance of Defined Activities is associated to.
  * code : #DefinedActivityLibrary (**TBD** need more descriptive code name)
* PlanDefinition.type : 
  * provide typing of a Plan Defintion . For example:
    * #PlatformDefinedActivities
    * #TenantDefinedActivities
    * #StudyDefinedActivities
* PlanDefinition's ability to contain hierarchical groups of action definitions and each action's codable concept provides typing for each grouping of activities.
  * Leverage the http://hl7.org/fhir/resource-types resource type codes.
  * Each collection of actions contains the association to the concreate activity definition. The DefinedActivities (PlanDefintion) becomes the associative entiry to the "**Where**" (Scope of defintion) and the defined activity. 
  
```
Instance: Platform-DefinedActivities
InstanceOf: PlanDefinition
Usage: #example
Title: "Example-FHIR DefinedActivities"
Description: "FHIR DefinedActivities"
* id = "DefinedActivitiesDefinition-001"
* status = #active

# meta.tag.system : url to either the Organization (Platform || Tenant) or potential ResearchStudy
* meta.tag[+].system = "Organization/7ad0f876s76dfa7d98a5s67"  
* meta.tag[=].code = #definedActivityLibrary

* type = #PlatformDefinedActivities

* action[+].type.coding.code = #Questionnaire
* action[=].type.coding.system = "http://hl7.org/fhir/resource-types"
* action[=].action[+].definitionUri = "Questionnaire/eb57023c-1b1d-4777-9430-d9596bdcd52c"
* action[=].action[+].definitionUri = "Questionnaire/eb57023c-1b1d-4777-9430-d9596bdcd52d"

* action[+].type.coding.code = #ActivityDefinition
* action[=].type.coding.system = "http://hl7.org/fhir/resource-types"
* action[=].action[+].definitionUri = "ActivityDefinition/32c0f9f2-36bd-42c4-a8e5-f045c2d1bfb0"
* action[=].action[+].definitionUri = "ActivityDefinition/4deb634a-6119-417f-a3e4-175417a0f5a7"
```



### Defined Activity:

From the defined activity perspective (resources: Questionnaire, PlanDefinition, ActivityDefinition), the pattern will re-leverage meta.tag in each resource to represent ownership/where the activity was defined (Platform, Tenant/Sponsor, Study).

  

```
Instance: FHIR-Questionnaire
InstanceOf: Questionnaire
Usage: #example
Title: "Example-FHIR Questionnaire"
Description: "FHIR Questionnaire"
* status = #active
* meta.tag[+].system = "Organization/7ad0f876s76dfa7d98a5s67"
* meta.tag[=].code = #definedActivityLibrary
```
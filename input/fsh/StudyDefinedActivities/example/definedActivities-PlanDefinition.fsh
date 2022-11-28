Instance: PlatformDefinedActivities
InstanceOf: DefinedActivities
Usage: #example
Title: "Platform Defined Activities"
Description: " Example of use of actions to define a list of defined activities for a given study"
* meta.tag[+].system = "Organization/7ad0f876s76dfa7d98a5s67"  
* meta.tag[=].code = #definedActivityLibrary
* id = "PlatformDefinedActivities-001"
* status = #active
* type = #PlatformDefinedActivities
* action[+].code.coding.code = #ActivityDefinition
* action[=].code.coding.system = "http://hl7.org/fhir/resource-types"

* action[=].action[+].title = "ActivityDef-Name-1" // 
* action[=].action[=].description = "Must be kept action.title in sych with the Activity Definition's name for ease of use by UI/UX "
* action[=].action[=].definitionUri = "ActivityDefinition/fab63b28-6aa5-11ed-a1eb-0242ac120001"
* action[=].action[+].title = "ActivityDef-Name-2" // Must be kept in sych with the Activity Definition's name
* action[=].action[=].description = "Must be kept action.title in sych with the Activity Definition's name for ease of use by UI/UX "
* action[=].action[=].definitionUri = "ActivityDefinition/fab63b28-6aa5-11ed-a1eb-0242ac120002"
* action[=].action[+].title = "ActivityDef-Name-3" // Must be kept in sych with the Activity Definition's name
* action[=].action[=].description = "Must be kept action.title in sych with the Activity Definition's name for ease of use by UI/UX "
* action[=].action[=].definitionUri = "ActivityDefinition/fab63b28-6aa5-11ed-a1eb-0242ac120003"


* action[+].code.coding.code = #ObservationDefinition
* action[=].code.coding.system = "http://hl7.org/fhir/resource-types"

* action[+].code.coding.code = #PlanDefinition
* action[=].code.coding.system = "http://hl7.org/fhir/resource-types"

* action[+].code.coding.code = #Questionnaire
* action[=].code.coding.system = "http://hl7.org/fhir/resource-types"


* action[=].action[+].title = "Questionnaire-Name-1" // Must be kept in sych with the Questionnaire's name
* action[=].action[=].description = "Must be kept action.title in sych with the Questionnaire's name for ease of use by UI/UX "
* action[=].action[=].definitionUri = "Questionnaire/fab63b28-6aa5-11ed-a1eb-0242ac120001"
* action[=].action[+].title = "Questionnaire-Name-2" // Must be kept in sych with the Questionnaire's name
* action[=].action[=].description = "Must be kept action.title in sych with the Questionnaire's name for ease of use by UI/UX "
* action[=].action[=].definitionUri = "Questionnaire/fab63b28-6aa5-11ed-a1eb-0242ac120002"
* action[=].action[+].title = "Questionnaire-Name-3" // Must be kept in sych with the Questionnaire's name
* action[=].action[=].description = "Must be kept action.title in sych with the Questionnaire's name for ease of use by UI/UX "
* action[=].action[=].definitionUri = "Questionnaire/fab63b28-6aa5-11ed-a1eb-0242ac120003"
* action[=].action[+].title = "Questionnaire-Name-4" // Must be kept in sych with the Questionnaire's name
* action[=].action[=].description = "Must be kept action.title in sych with the Questionnaire's name for ease of use by UI/UX "
* action[=].action[=].definitionUri = "Questionnaire/fab63b28-6aa5-11ed-a1eb-0242ac120004"
* action[=].action[+].title = "Questionnaire-Name-5" // Must be kept in sych with the Questionnaire's name
* action[=].action[=].description = "Must be kept action.title in sych with the Questionnaire's name for ease of use by UI/UX "
* action[=].action[=].definitionUri = "Questionnaire/fab63b28-6aa5-11ed-a1eb-0242ac120005"
* action[=].action[+].title = "Questionnaire-Name-6" // Must be kept in sych with the Questionnaire's name
* action[=].action[=].description = "Must be kept action.title in sych with the Questionnaire's name for ease of use by UI/UX "
* action[=].action[=].definitionUri = "Questionnaire/fab63b28-6aa5-11ed-a1eb-0242ac120006"
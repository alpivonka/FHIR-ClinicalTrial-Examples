Instance: DefinedActivities
InstanceOf: DefinedActivities
Usage: #example
Title: "Defined Activities"
Description: " Example of use of actions to define a list of defined activities for a given study"
* extension[study].valueReference = Reference(TheResearchStudy)
* id = "DefinedActivities-001"
* status = #active
* action[+].code = #ActivityDefinition
* action[=].id = "fab63b28-6aa5-11ed-a1eb-0242ac120000"
* action[=].action[+].title = "ActivityDef-Name-1" // Must be kept in sych with the Activity Definition's name 
* action[=].action[=].definitionUri = "ActivityDefinition/fab63b28-6aa5-11ed-a1eb-0242ac120001"
* action[=].action[+].title = "ActivityDef-Name-2" // Must be kept in sych with the Activity Definition's name
* action[=].action[=].definitionUri = "ActivityDefinition/fab63b28-6aa5-11ed-a1eb-0242ac120002"
* action[=].action[+].title = "ActivityDef-Name-3" // Must be kept in sych with the Activity Definition's name
* action[=].action[=].definitionUri = "ActivityDefinition/fab63b28-6aa5-11ed-a1eb-0242ac120003"

* action[+].code = #ObservationDefinition
* action[+].code = #PlanDefinition
* action[+].code = #Questionnaire
* action[=].id = "fab63b28-6aa5-11ed-a1eb-0242ac160000"
* action[=].action[+].title = "Questionnaire-Name-1" // Must be kept in sych with the Questionnaire's name
* action[=].action[=].definitionUri = "Questionnaire/fab63b28-6aa5-11ed-a1eb-0242ac120001"
* action[=].action[+].title = "Questionnaire-Name-2" // Must be kept in sych with the Questionnaire's name
* action[=].action[=].definitionUri = "Questionnaire/fab63b28-6aa5-11ed-a1eb-0242ac120002"
* action[=].action[+].title = "Questionnaire-Name-3" // Must be kept in sych with the Questionnaire's name
* action[=].action[=].definitionUri = "Questionnaire/fab63b28-6aa5-11ed-a1eb-0242ac120003"
* action[=].action[+].title = "Questionnaire-Name-4" // Must be kept in sych with the Questionnaire's name
* action[=].action[=].definitionUri = "Questionnaire/fab63b28-6aa5-11ed-a1eb-0242ac120004"
* action[=].action[+].title = "Questionnaire-Name-5" // Must be kept in sych with the Questionnaire's name
* action[=].action[=].definitionUri = "Questionnaire/fab63b28-6aa5-11ed-a1eb-0242ac120005"
* action[=].action[+].title = "Questionnaire-Name-6" // Must be kept in sych with the Questionnaire's name
* action[=].action[=].definitionUri = "Questionnaire/fab63b28-6aa5-11ed-a1eb-0242ac120006"
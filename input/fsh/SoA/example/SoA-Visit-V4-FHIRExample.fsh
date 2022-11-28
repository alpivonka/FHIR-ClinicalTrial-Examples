Instance: SoA-Visit-V4-FHIR
InstanceOf: SoAVisitDefinition
Usage: #example
Title: "Example-SoA: SoAVisitDefinition-Visit-V4-FHIR2"
Description: "SoAVisitDefinition-Visit-V4-FHIR2"
* name = "v2"
* status = #active
* type = PlanDefinitionCS#Visit
* id = "Visit-V4-c936f630-d853-4933-b743-ae16e1f07820-FHIR2"
* meta.lastUpdated = "2022-01-01T10:08:10Z"
* meta.extension[createdAt].valueInstant = "2022-01-01T10:08:10Z"


//Used diring definition, once defined it is associated to a specific study and reused within.
* identifier.use = #secondary
* identifier.type.coding[+] = #partOf
* identifier.type.coding[+] = #ResearchStudy
* identifier.system = "ResearchStudy/ResearchStudy-1-002"

//version-number
* version = "3"


//actions
//Activity
* action[+].definitionUri = "ActivityDefinition/c936f630-d853-4933-b743-ae16e1f07820"
//TBD -- MUST ADD to this action the force-form-order-config for the action.

* action[=].type = #screeningActivity
//Activity Activities
* action[=].action[+].definitionUri = "Questionnaire/2995b4b6-c3cc-4a40-a27b-dc7ef903aa5d/1"
* action[=].action[=].title = "PRO_Jl_DatesInForm"
* action[=].action[=].id = "PROJlDatesInForm"
* action[=].action[=].relatedAction.targetId = "PRO4MDatesinForm"
* action[=].action[=].relatedAction.relationship = #before



* action[=].action[+].definitionUri = "Questionnaire/39e2b915-6728-4138-8653-0b309910bb21/3"
* action[=].action[=].title = "2.PRO_tt_Missed_Edairy"
* action[=].action[=].id = "2PROttMissedEdairy"
* action[=].action[=].relatedAction[+].targetId = "PROJlDatesInForm"
* action[=].action[=].relatedAction[=].relationship = #after


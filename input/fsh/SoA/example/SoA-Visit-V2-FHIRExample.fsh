Instance: SoA-Visit-V2-FHIR
InstanceOf: SoAVisitDefinition
Usage: #example
Title: "Example-SoA: SoAVisitDefinition-Visit-V2-FHIR2"
Description: "SoAVisitDefinition-Visit-V2-FHIR2"
* name = "v2"
* status = #active
* type = PlanDefinitionCS#Visit
* id = "Visit-V2-f53a0dfe-9a2e-41f0-8378-d102629473a3-FHIR2"
* meta.lastUpdated = "2022-01-01T10:08:10Z"
* meta.extension[createdAt].valueInstant = "2022-01-01T10:08:10Z"

//Used diring definition, once defined it is associated to a specific study and reused within.
* extension[Study].valueReference = Reference(TheResearchStudy)




//version-number
* version = "3"


//actions
//Activity
* action[+].definitionUri = "ActivityDefinition/f53a0dfe-9a2e-41f0-8378-d102629473a3"
// -- MUST ADD to this action the force-form-order-config for the action.

* action[=].type = #screeningActivity
//Activity Activities
* action[=].action[+].definitionUri = "Questionnaire/2995b4b6-c3cc-4a40-a27b-dc7ef903aa5d/1"
* action[=].action[=].title = "PRO_Jl_DatesInForm"
* action[=].action[=].id = "PROJlDatesInForm"
* action[=].action[=].relatedAction.targetId = "PRO4MDatesinForm"
* action[=].action[=].relatedAction.relationship = #before




* action[=].action[+].definitionUri = "Questionnaire/7a3ef9fe-f055-470c-b854-0e2925797002/2"
* action[=].action[=].title = "PRO_4M_DatesinForm"
* action[=].action[=].id = "PRO4MDatesinForm"
* action[=].action[=].relatedAction.targetId = "PROJlDatesInForm"
* action[=].action[=].relatedAction.relationship = #after


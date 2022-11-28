Instance: SoA-Visit-V1-FHIR
InstanceOf: SoAVisitDefinition
Usage: #example
Title: "Example-SoA: SoAVisitDefinition-Visit-V1-FHIR2"
Description: "SoAVisitDefinition-Visit-V1-FHIR2"
* name = "v1"
* status = #active
* type = PlanDefinitionCS#Visit
* id = "Visit-V1-9cb4666f-4516-4562-8f93-fd407e42ab6f-FHIR2"
* meta.lastUpdated = "2022-01-01T10:08:10Z"

* meta.extension[createdAt].valueInstant = "2022-01-01T10:08:10Z"
* identifier.use = #secondary
* identifier.type.coding[+] = #partOf
* identifier.type.coding[+] = #ResearchStudy
* identifier.system = "ResearchStudy/ResearchStudy-1-002"

//Used diring definition, once defined it is associated to a specific study and reused within.



/* Define Visits with Visit Windows to show examples. */

//version-number
* version = "3"


//actions
//Activity
* action[+].definitionUri = "ActivityDefinition/9cb4666f-4516-4562-8f93-fd407e42ab6f"


* action[=].type = #eConsentActivity
* action[=].action[+].type = #consentFormGroupId
* action[=].action[=].prefix = "consentFormGroupId"
* action[=].action[=].definitionUri = "beec3554-45a0-4447-9931-875b6d62efbf"
//Activity Activities
* action[=].action[+].definitionUri = "Questionnaire/2995b4b6-c3cc-4a40-a27b-dc7ef903aa5d/1"
* action[=].action[=].title = "PRO_Jl_DatesInForm"
* action[=].action[=].id = "PROJlDatesInForm"
* action[=].action[=].relatedAction[+].targetId = "PRO4MDatesinForm"
* action[=].action[=].relatedAction[=].relationship = #before


* action[=].action[+].definitionUri = "Questionnaire/39e2b915-6728-4138-8653-0b309910bb21/3"
* action[=].action[=].title = "2.PRO_tt_Missed_Edairy"
* action[=].action[=].id = "2PROttMissedEdairy"
* action[=].action[=].relatedAction[+].targetId = "PRO4MDatesinForm"
* action[=].action[=].relatedAction[=].relationship = #after



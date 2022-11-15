Instance: ScheduleOfActivities-FHIR2
InstanceOf: SoADefinition
Usage: #example
Title: "Example-SoA: SoADefinition-FHIR2"
Description: "SoADefinition-FHIR2 "
* name = "SoADefinitionOID2"
* status = #active
* id = "NEW-SOA-UUID-FHIR2"
* type = PlanDefinitionCS#SoADefinition
* meta.lastUpdated = "2022-01-01T10:08:10Z"
* meta.extension[createdAt].valueInstant = "2022-01-01T10:08:10Z"
//Used diring definition, once defined it is associated to a specific study and reused within.
* extension[Study].valueReference = Reference(TheResearchStudy)

* action[+].type = VisitSegmentCS#ACTIVITIES
* action[=].action[+].id = "Visit-V1"
* action[=].action[=].code = #eConsent
* action[=].action[=].type = PlanDefinitionCS#Visit
* action[=].action[=].definitionUri = "PlanDefinition/Visit-V1-9cb4666f-4516-4562-8f93-fd407e42ab6f"
* action[=].action[=].extension[Epoch].valueString = "TREATMENT EPOCH"
//RelatedAction
* action[=].action[=].relatedAction.targetId = "Visit-V2-f53a0dfe-9a2e-41f0-8378-d102629473a3"
* action[=].action[=].relatedAction.relationship = #before
//Visit Window
* action[=].action[=].timingTiming.repeat.boundsRange.low.value = 5
* action[=].action[=].timingTiming.repeat.boundsRange.high.value = 1
* action[=].action[=].timingTiming.repeat.offset = 5
* action[=].action[=].timingTiming.repeat.periodUnit = #d 


* action[=].action[+].id = "Visit-V2"
* action[=].action[=].code = #Screening
* action[=].action[=].type = PlanDefinitionCS#Visit
* action[=].action[=].definitionUri = "PlanDefinition/Visit-V2-f53a0dfe-9a2e-41f0-8378-d102629473a3"
* action[=].action[=].extension[Epoch].valueString = "TREATMENT_EPOCH"
//RelatedAction
* action[=].action[=].relatedAction[+].targetId = "Visit-V1"
* action[=].action[=].relatedAction[=].relationship = #after
* action[=].action[=].relatedAction[+].targetId = "Visit-V3"
* action[=].action[=].relatedAction[=].relationship = #before

//Visit Window
* action[=].action[=].timingTiming.repeat.boundsRange.low.value = 0
* action[=].action[=].timingTiming.repeat.boundsRange.high.value = 2
* action[=].action[=].timingTiming.repeat.periodUnit = #d

* action[=].action[+].id = "Visit-V3"
* action[=].action[=].code = #Eligibility
* action[=].action[=].type = PlanDefinitionCS#Visit
* action[=].action[=].definitionUri = "PlanDefinition/Visit-V3-343f3656-9ddd-4e10-996f-dba5a64650f2"
* action[=].action[=].extension[Epoch].valueString = "TREATMENT_EPOCH"
//RelatedAction
* action[=].action[=].relatedAction[+].targetId = "Visit-V1"
* action[=].action[=].relatedAction[=].relationship = #after
* action[=].action[=].relatedAction[+].targetId = "Visit-V2"
* action[=].action[=].relatedAction[=].relationship = #after
* action[=].action[=].relatedAction[+].targetId = "Visit-V4"
* action[=].action[=].relatedAction[=].relationship = #before
//Visit Window
* action[=].action[=].timingTiming.repeat.boundsRange.low.value = 0
* action[=].action[=].timingTiming.repeat.boundsRange.high.value = 2
* action[=].action[=].timingTiming.repeat.periodUnit = #d



* action[=].action[+].id = "Visit-V4"
* action[=].action[=].type = PlanDefinitionCS#Visit
* action[=].action[=].code = #StudyPeriod
* action[=].action[=].definitionUri = "PlanDefinition/Visit-V4-c936f630-d853-4933-b743-ae16e1f07820"
* action[=].action[=].extension[Epoch].valueString = "FOLLOW_UP_EPOCH"
* action[=].action[=].relatedAction[+].targetId = "Visit-V1"
* action[=].action[=].relatedAction[=].relationship = #after
* action[=].action[=].relatedAction[+].targetId = "Visit-V2"
* action[=].action[=].relatedAction[=].relationship = #after
* action[=].action[=].relatedAction[+].targetId = "Visit-V3"
* action[=].action[=].relatedAction[=].relationship = #after
//Visit Window
* action[=].action[=].timingTiming.repeat.boundsRange.low.value = 5
* action[=].action[=].timingTiming.repeat.boundsRange.high.value = 1
* action[=].action[=].timingTiming.repeat.offset = 5
* action[=].action[=].timingTiming.repeat.periodUnit = #d






//UNSCHEDULED_ACTIVITIES
* action[+].type = VisitSegmentCS#UNSCHEDULED_ACTIVITIES

* action[=].action[+].id = "Visit-A1"
* action[=].action[=].type = PlanDefinitionCS#Visit
* action[=].action[=].definitionUri = "PlanDefinition/1289d38a-653a-4cd9-afb9-b95299741b3a1"


* action[=].action[+].id = "Visit-C1"
//* action[=].action[=].title = "Visit-C1"
* action[=].action[=].type = PlanDefinitionCS#Visit
* action[=].action[=].definitionUri = "PlanDefinition/1289d38a-653a-4cd9-afb9-b95299741b3c1"

//RECURRING_FORMS
* action[+].type = VisitSegmentCS#RECURRING_FORMS

* action[=].action[+].type = #Questionnaire
* action[=].action[=].definitionUri = "Questionnaire/f1489be3-f6dd-483c-a82a-65243cd01eb8"
* action[=].action[=].trigger.type = #named-event
* action[=].action[=].trigger.name = "VISIT"
* action[=].action[=].trigger.timingTiming.repeat[+].durationUnit = #d
* action[=].action[=].trigger.timingTiming.repeat[=].period = 1

* action[=].action[+].type = #Questionnaire
* action[=].action[=].definitionUri = "Questionnaire/6ff38b3d-099a-4fe0-ac46-267092619e2c"
* action[=].action[=].trigger.type = #named-event
* action[=].action[=].trigger.name = "PREVIOUS_VISIT"
* action[=].action[=].trigger.timingTiming.repeat[+].durationUnit = #d
* action[=].action[=].trigger.timingTiming.repeat[=].period = 1
* action[=].action[=].trigger.timingTiming.repeat[=].dayOfWeek[+] = #sun
* action[=].action[=].trigger.timingTiming.repeat[=].dayOfWeek[+] = #mon
* action[=].action[=].trigger.timingTiming.repeat[=].dayOfWeek[+] = #wed
* action[=].action[=].trigger.timingTiming.repeat[=].dayOfWeek[+] = #sat
* action[=].action[=].trigger.timingTiming.repeat[=].countMax = 6
* action[=].action[=].trigger.timingTiming.repeat[=].periodUnit = #wk
// Extensions
* action[=].action[=].condition.kind = #start
* action[=].action[=].condition.expression.reference = "cl/2928292782"
* action[=].action[=].condition.expression.expression = "if my dog has a cat is he a catdog"

//ADHOC_FORMS
* action[+].type = VisitSegmentCS#ADHOC_FORMS

//* action[=].action[+].title = "eProFormX"
* action[=].action[+].type = #Questionnaire
* action[=].action[=].definitionUri = "Questionnaire/f1489be3-f6dd-483c-a82a-65243cd01eb8x"

//* action[=].action[+].title = "eCRFx"
* action[=].action[+].type = #Questionnaire
* action[=].action[=].definitionUri = "Questionnaire/49858fac-02bd-4d51-91d1-37ebb9097d36x"

//ONGOING_FORMS
* action[+].type = VisitSegmentCS#ONGOING_FORMS

* action[=].action[+].type = #Questionnaire
* action[=].action[=].definitionUri = "Questionnaire/f1489be3-f6dd-483c-a82a-65243cd01eb8xy"

* action[=].action[+].type = #Questionnaire
* action[=].action[=].definitionUri = "Questionnaire/49858fac-02bd-4d51-91d1-37ebb9097d36xy"

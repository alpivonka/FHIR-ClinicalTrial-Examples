Instance: FHIR-Questionnaire
InstanceOf: Questionnaire
Usage: #example
Title: "Example-FHIR Questionnaire"
Description: "FHIR Questionnaire"
* id = "QuestionnaireActivity-01"
* status = #active
* meta.tag[+].system = "Organization/7ad0f876s76dfa7d98a5s67"
* meta.tag[=].code = #DefinedActivityLibrary



Instance: FHIR-Questionnaire2
InstanceOf: Questionnaire
Usage: #example
Title: "Example-FHIR Questionnaire3"
Description: "FHIR Questionnaire3"
* id = "QuestionnaireActivity-013"
* status = #active
* meta.tag[+].system = "ResearchStudy/7ad0f876s76dfa7d97a5s67"
* meta.tag[=].code = #DefinedActivityLibrary



Instance: FHIR-ActivityDefinition
InstanceOf: ActivityDefinition
Usage: #example
Title: "Example-FHIR ActivityDefinition"
Description: "FHIR ActivityDefinition"
* id = "ActivityDefinitionActivity-01"
* status = #active
* meta.tag[+].system = "Organization/7ad0f876s76dfa7d98a5s67"
* meta.tag[=].code[+] = #DefinedActivityLibrary





Instance: Platform-DefinedActivities
InstanceOf: PlanDefinition
Usage: #example
Title: "Example-FHIR DefinedActivities"
Description: "FHIR DefinedActivities"
* id = "DefinedActivitiesDefinition-001"
* status = #active
* meta.tag[+].system = "Organization/7ad0f876s76dfa7d98a5s67"
* meta.tag[=].code = #DefinedActivityLibrary
* type = #PlatformDefinedActivities
* action[+].type.coding.code = #Questionnaire
* action[=].type.coding.system = "http://hl7.org/fhir/resource-types"
* action[=].action[+].definitionUri = "Questionnaire/eb57023c-1b1d-4777-9430-d9596bdcd52c"
* action[=].action[+].definitionUri = "Questionnaire/eb57023c-1b1d-4777-9430-d9596bdcd52d"
* action[+].type.coding.code = #ActivityDefinition
* action[=].type.coding.system = "http://hl7.org/fhir/resource-types"
* action[=].action[+].definitionUri = "ActivityDefinition/32c0f9f2-36bd-42c4-a8e5-f045c2d1bfb0"
* action[=].action[+].definitionUri = "ActivityDefinition/4deb634a-6119-417f-a3e4-175417a0f5a7"
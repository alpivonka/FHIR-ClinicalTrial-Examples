Instance: TheResearchStudy
InstanceOf: ResearchStudyEpoch
Usage: #example
Title: "Example ResearchStudy"
Description: "Example ResearchStudy"
* status = #active
* id = "ResearchStudy-1-002"
//ARM
* comparisonGroup[+].id = "s98d706a7d6"
* comparisonGroup[=].type = #ARM
* comparisonGroup[=].name = "ARMGroupMonkeyFeet"
* comparisonGroup[=].observedGroup = Reference(ARMGroupMonkeyFeet)
* comparisonGroup[=].extension[SoAReference].valueReference = Reference(ScheduleOfActivities-FHIR2)

* comparisonGroup[+].id = "s98d706a7d6"
* comparisonGroup[=].type = #ARM
* comparisonGroup[=].name = "ARMGroupMonkeyLegs"
* comparisonGroup[=].observedGroup = Reference(ARMGroupMonkeyLegs)
* comparisonGroup[=].extension[SoAReference].valueReference = Reference(ScheduleOfActivities-FHIR2)
// Epoch Defintions 
* extension[EpochDefinitionReference].valueReference = Reference(EpochDefinitionExample)



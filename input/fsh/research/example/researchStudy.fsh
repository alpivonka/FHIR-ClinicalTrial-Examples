Instance: TheResearchStudy
InstanceOf: TheResearchStudy
Usage: #example
Title: "Example ResearchStudy"
Description: "Example ResearchStudy"
* status = #active
* id = "ResearchStudy-1-002"
//ARM

//* comparisonGroup[+].identifierIdentifier.value = "s98d706a7d6"
* comparisonGroup[+].type = #ARM
* comparisonGroup[=].name = "ARMGroupMonkeyFeet"
//* comparisonGroup[=].description = "The ARM Description"
* comparisonGroup[=].observedGroup = Reference(ARMGroupMonkeyFeet)

//* comparisonGroup[+].identifierIdentifier.value = "s98d706a7d6"
* comparisonGroup[+].type = #ARM
* comparisonGroup[=].name = "ARMGroupMonkeyLegs"
//* comparisonGroup[=].description = "The ARM Description"
* comparisonGroup[=].observedGroup = Reference(ARMGroupMonkeyLegs)


* extension[EpochDefinition].valueReference = Reference(EpochDefinition)

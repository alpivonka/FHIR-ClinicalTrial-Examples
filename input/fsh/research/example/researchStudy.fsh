Instance: TheResearchStudy
InstanceOf: ResearchStudy
Usage: #example
Title: "Example ResearchStudy"
Description: "Example ResearchStudy"
* status = #active
* id = "ResearchStudy-1-002"
//ARM
//* comparisonGroup[+].identifierIdentifier.value = "2o8e2829829"
* comparisonGroup[+].type = #ARM
* comparisonGroup[=].name = "ARM1"
//* comparisonGroup[=].description = "The ARM Description"
* comparisonGroup[=].observedGroup = Reference(ARMGroup)

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


//Cohort
//* comparisonGroup[+].identifierIdentifier.value = "sdifsdf76"
* comparisonGroup[+].type = #COHORT
* comparisonGroup[=].name = "CohortGroupOver50"
* comparisonGroup[=].observedGroup = Reference(CohortGroupOver50)
//* comparisonGroup[+].identifierIdentifier.value = "s76dfa857ds5a5"
* comparisonGroup[+].type = #COHORT
* comparisonGroup[=].name = "Cohort2GroupUnder50"
* comparisonGroup[=].observedGroup = Reference(Cohort2GroupUnder50)
//* comparisonGroup[+].identifierIdentifier.value = "s76dfa8DFY)S&*)S57ds5a5"
* comparisonGroup[+].type = #COHORT
* comparisonGroup[=].name = "CohortGroupUnder25"
* comparisonGroup[=].observedGroup = Reference(CohortGroupUnder25)
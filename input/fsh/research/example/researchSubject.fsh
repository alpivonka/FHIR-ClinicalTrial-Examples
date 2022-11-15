Instance: ResearchSubjectCohortARMExample
InstanceOf: TheResearchSubject
Usage: #example
Title: "Example ResearchSubject Cohort/ARM"
Description: "Example ResearchSubject Cohort/ARM"
* id = "ResearchSubject-1"
* status = #active
* study = Reference(TheResearchStudy)
* subject = Reference(ThePatient)
//* individual = Reference(ThePatient)
* meta.lastUpdated = "2022-01-01T10:08:10Z"
* meta.extension[createdAt].valueInstant = "2022-01-01T10:08:10Z"


* extension[GroupReferences][+].extension[type].valueString = "ARM"
* extension[GroupReferences][=].extension[referencedGroup][+].extension[reference].valueReference = Reference(ARMGroupMonkeyFeet)
* extension[GroupReferences][=].extension[referencedGroup][=].extension[active].valueBoolean = true

* extension[GroupReferences][=].extension[referencedGroup][+].extension[reference].valueReference = Reference(ARMGroupMonkeyLegs)
* extension[GroupReferences][=].extension[referencedGroup][=].extension[active].valueBoolean = false

* extension[GroupReferences][+].extension[type].valueString = "COHORT"
* extension[GroupReferences][=].extension[referencedGroup][+].extension[reference].valueReference = Reference(CohortGroupUnder25)
* extension[GroupReferences][=].extension[referencedGroup][=].extension[active].valueBoolean = true
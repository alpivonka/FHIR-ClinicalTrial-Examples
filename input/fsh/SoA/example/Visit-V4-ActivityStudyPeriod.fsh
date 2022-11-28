
Instance: ActivityStudyPeriod-Visit-V4-FHIR
InstanceOf: SoAActivity
Usage: #example
Title: "Example-SoA: ActivityStudyPeriod-Visit-V4--FHIR2"
Description: "ActivityStudyPeriod-Visit-V4--FHIR2"
* status = #active
* name = "ActivityOID-ActivityStudyPeriod"
* id = "c936f630-d853-4933-b743-ae16e1f07820-FHIR2"
* meta.lastUpdated = "2022-01-01T10:08:10Z"
* meta.extension[createdAt].valueInstant = "2022-01-01T10:08:10Z"
//Used diring definition, once defined it is associated to a specific study and reused within.
* identifier.use = #secondary
* identifier.type.coding[+] = #partOf
* identifier.type.coding[+] = #ResearchStudy
* identifier.system = "ResearchStudy/ResearchStudy-1-002"



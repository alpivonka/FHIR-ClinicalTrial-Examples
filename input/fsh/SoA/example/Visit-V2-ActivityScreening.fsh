
Instance: ActivityScreening-Visit-V2-FHIR
InstanceOf: SoAActivity
Usage: #example
Title: "Example-SoA: ActivityScreening-Visit-V2--FHIR2"
Description: "ActivityScreening-Visit-V2--FHIR2"
* status = #active
* name = "ActivityOID-ActivityScreening"
* id = "f53a0dfe-9a2e-41f0-8378-d102629473a3-FHIR2"
* meta.lastUpdated = "2022-01-01T10:08:10Z"
* meta.extension[createdAt].valueInstant = "2022-01-01T10:08:10Z"
//Used diring definition, once defined it is associated to a specific study and reused within.
* extension[Study].valueReference = Reference(TheResearchStudy)


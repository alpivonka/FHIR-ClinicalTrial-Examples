Profile: TheResearchSubject
Parent: ResearchSubject
Id: the-research-subject
Title: "ResearchSubject"
Description: "ResearchSubject"
* meta.extension contains firstCreated named createdAt 0..1 MS
* meta.lastUpdated MS
* extension contains group-references named GroupReferences 0..2


Profile: ARMGroupProfile
Parent: Group
Id: arm-group-profile
Title: "ARM Group"
Description: "ARM SPECIFIC extentions"
* extension contains arm-group-att-ext named ARMGroupAttExt 0..1

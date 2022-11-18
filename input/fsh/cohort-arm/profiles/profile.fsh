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
* meta.extension contains firstCreated named createdAt 0..1 MS
* meta.lastUpdated MS
* extension contains arm-group-att-ext named ARMGroupAttExt 0..1


Profile: ResearchStudyEpoch
Parent: ResearchStudy
Id: research-study-epoch
Title: "Research Study with Epoch"
Description: " Research study with defined Epochs"
* meta.extension contains firstCreated named createdAt 0..1 MS
* meta.lastUpdated MS
* extension contains epoch-definition-reference named EpochDefinitionReference 0..1


Profile: EpochDefinition
Parent: PlanDefinition
Id: epoch-definition
Title: "Epoch Definition"
Description: "Definition of Epochs associated to a Study"
* meta.extension contains firstCreated named createdAt 0..1 MS
* meta.lastUpdated MS
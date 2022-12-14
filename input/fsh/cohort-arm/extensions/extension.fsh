Extension: SoAReference
Id: soa-reference
Title: "SoAReference"
Description: "SoAReference"
* insert ExtensionContext(ResearchStudy.comparisonGroup)
* value[x] only Reference(PlanDefinition)


Extension: ARMGroupAttExt
Id: arm-group-att-ext
Title: "ARMGroup"
Description: "ARM Group attribute extensions"
* insert ExtensionContext(ResearchStudy.relatedAction)
* extension contains
  randomizationWeight 0..1 and
  soa 0..1
* extension[randomizationWeight].value[x] only decimal
* extension[soa].value[x] only Reference(PlanDefinition)

Extension: CohortGroupExt
Id: cohort-group-ext
Title: "Cohort Group"
Description: "Cohort Group"
* value[x] only Reference(Group)


Extension: ArmGroupExt
Id: arm-group-ext
Title: "Arm Group"
Description: "Arm Group"
* extension contains
  arm 0..*
* extension[arm] only Extension
* extension[arm].extension contains
  active 1..1 and
  armReference 1..1
* extension[arm].extension[active].value[x] only boolean
* extension[arm].extension[armReference].value[x] only Reference(ARMGroupProfile)



Extension: GroupReferences
Id: group-references
Title: "Group References"
Description: "Contains the Subjects group references."
* obeys max-one-active
* extension contains
  referencedGroup 0..* and
  type 0..1
* extension[type].value[x] only string //CodeableConcept
* extension[referencedGroup] only Extension
* extension[referencedGroup].extension contains
  active 1..1 and   //How to enforce single active = true ??
  reference 1..1
* extension[referencedGroup].extension[active].value[x] only boolean
* extension[referencedGroup].extension[reference].value[x] only Reference(Group)

Invariant:  max-one-active
Description: "There can be no more than one active referencedGroup"
Expression: "extension.where(url = 'referencedGroup').extension.where(url = 'active' and valueBoolean = true).count() <= 1"
Severity:   #error


Extension: EpochDefinitionReference
Id: epoch-definition-reference
Title: "Epoch Definition"
Description: "The Epoch definition"
* insert ExtensionContext(ResearchStudy)
* value[x] only Reference(PlanDefinition)

Instance: ARMGroupMonkeyFeet
InstanceOf: ARMGroupProfile
Usage: #example
Title: "Example ARMGroup"
Description: "Example ARMGroup"
* id = "ARMMonkeyFeet-internal-uuid2s"
* type = #specimen
* code = #ARM
* membership = #enumerated
//* actual = true
* name = "MonkeyFeet"
* description = "my description"
* identifier.value = "3292822228"
* extension[ARMGroupAttExt].extension[randomizationWeight].valueDecimal = 33.33
* extension[ARMGroupAttExt].extension[soa].valueReference = Reference(ScheduleOfActivities-FHIR2)

Instance: ARMGroupMonkeyLegs
InstanceOf: ARMGroupProfile
Usage: #example
Title: "Example ARMGroup"
Description: "Example ARMGroup"
* id = "ARMGroupMonkeyLegs-uuid22s"
* type = #specimen
* code = #ARM
* membership = #enumerated
//* actual = true
* name = "MonkeyFeet"
* description = "my description"
* identifier.value = "s90ds890d8"
* extension[ARMGroupAttExt].extension[randomizationWeight].valueDecimal = 9.88
* extension[ARMGroupAttExt].extension[soa].valueReference = Reference(ScheduleOfActivities-FHIR2)
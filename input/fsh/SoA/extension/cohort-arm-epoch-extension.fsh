Extension: EpochLinkId
Id: epoch-link-id
Title: "Epoch Link Id"
Description: ""
* ^context[+].type = #element
* ^context[=].expression = "PlanDefinition.action"
* value[x] 1..1
* value[x] only uri

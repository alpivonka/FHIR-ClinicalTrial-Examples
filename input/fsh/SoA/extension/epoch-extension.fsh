Extension: EpochId
Id: epoch-id
Title: "Epoch Link Id"
Description: "Stores the Epoch Link Id URL to the defintion or reference. "
* ^context[+].type = #element
* ^context[=].expression = "EpochDefinition.action"
* value[x] 1..1
* value[x] only uri

Instance: EpochDefinition
InstanceOf: PlanDefinition
Usage: #example
Title: "Epoch-Plan Def"
Description: "epoch list"
* id = "EPCH-DEF-0002-2"
* type = SoAActionCS#EPOCH
* name = "Epoch Plan Definition"
* status = #active
* action[+].id = "SCREENING-65e9-11ed-9022-0242ac120002"
* action[=].linkId = "SCREENING-65e9-11ed-9022-0242ac120002"
* action[=].prefix = "SCREENING-EPOCH"
* action[=].title = "SCREENING"

* action[+].id = "Treatment-65e9-11ed-9022-0242ac120001"
* action[=].linkId = "Treatment-65e9-11ed-9022-0242ac120001"
* action[=].prefix = "Treatment-EPOCH"
* action[=].title = "Treatment"

* action[+].id = "Followup-65e9-11ed-9022-0242ac120000"
* action[=].linkId = "Followup-65e9-11ed-9022-0242ac120000"
* action[=].prefix = "Followup-EPOCH"
* action[=].title = "Followup"
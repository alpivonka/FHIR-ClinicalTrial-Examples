/*
TBD Need to clean up all non-use science 37 extensions that are referenced within this document.
*/

Profile: SoASegmentPlanDefinition
Parent: SoAPlanDefinition
Id: segment-plan-definition
Title: "Profile: SoA Segment Plan Definition"
Description: "SoA SegmentPlanDefinition"
* ^version = "1.0.0-VisitSegment"


Profile: SoADefinition
Parent: SoAPlanDefinition
Id: soa-definition
Title: "Profile: SoA Definition"
Description: "SoA Definition"
* ^version = "1.0.0-SoADefinition"



Profile: SoAVisitDefinition
Parent: SoAPlanDefinition
Id: soa-visit-definition
Title: "Profile: SoA Visit Definition"
Description: "SoA Visit Definition"
* ^version = "1.0.0-SoAVisitDefinition"


Profile: SoAActivity
Parent: ActivityDefinition
Id: so-aactivity
Title: "SoA Activity"
Description: ""
* meta.extension contains firstCreated named createdAt 0..1 MS
* meta.lastUpdated MS
* extension contains study named Study 0..1
* extension contains basedOn named basedOn 0..1
* extension contains replaces named replaces 0..1


Profile: SoAQuestionnaire
Parent: Questionnaire
Id: soa-questionnaire
Title: "SoA Questionnaire"
Description: "SoA Questionnaire"
* meta.extension contains firstCreated named createdAt 0..1 MS
* meta.lastUpdated MS
* extension contains study named Study 0..1
* extension contains basedOn named basedOn 0..1
* extension contains replaces named replaces 0..1

Profile: SoAPlanDefinition
Parent: PlanDefinition
Id: soa-plan-definition
Title: "Profile: SoA Plan Definition"
Description: "SoA PlanDefinition"
* ^version = "1.0.0-SoAPlanDefinition"
* meta.lastUpdated MS
* meta.extension contains firstCreated named createdAt 0..1
* extension contains study named Study 0..1
* extension contains basedOn named basedOn 0..1
* extension contains replaces named replaces 0..1
* url MS
* name MS
* title MS
* status MS
* subject[x] MS
* description MS
* action MS
  * title MS
  * trigger MS
  * condition MS
  * relatedAction MS
    * targetId MS
    * relationship MS
    * offset[x] MS
    * extension contains AcceptableOffsetRangeSoa named acceptableOffsetRange 0..1
  * timing[x] MS
  * requiredBehavior MS
  * cardinalityBehavior MS


  
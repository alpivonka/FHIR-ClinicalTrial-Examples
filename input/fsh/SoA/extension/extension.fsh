

Extension: AcceptableOffsetRangeSoa
Title: "Extension: Acceptable Offset Range"
Description: "Provides an offset range that, along with offsetDuration, indicates an acceptable range of dates for a related action."
* insert ExtensionContext(PlanDefinition.relatedAction)
* value[x] 1..1
* value[x] only Range



Extension: VisitRange
Id: -visit-range
Title: "Visit Range"
Description: "Range of Visits"
* insert ExtensionContext(Timing.repeat)
* extension contains
  startVisitId 0..1 and 
  endVisitId  0..1
* extension[startVisitId] ^short = "type of forms contained : ongoing, recurrring adhoc, forms-group,econsent-form-group"
* extension[startVisitId].value[x] only uri
* extension[endVisitId] ^short = "type of forms contained : ongoing, recurrring adhoc, forms-group,econsent-form-group"
* extension[endVisitId].value[x] only uri


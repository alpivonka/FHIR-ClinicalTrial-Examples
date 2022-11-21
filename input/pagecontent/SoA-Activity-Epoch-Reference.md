<center><img src="SoA-Action.Extesion-EpochLinkId.jpg"/></center>


1. An SoA designer needs to define and reference Epochs to be used within the scope of a ResearchStudy.
2. The designer will establish a relationship from the SoA Activity with the use of PlanDefintion's actions.
3. The designer will associate a specific action/Activity and a ResearchStudy defined Epoch. 
   * EpochLinkId (Extension) captures the URI to the ResearchStudy's EpochDefinition(PlanDefinition) specific Epoch.
	   * Expression: EpochDefinition.action
	   * value[x] only uri ([Canonical Reference and Fragments](https://build.fhir.org/references.html#canonical-fragments) : specifying both the PlanDefinition canonical (and maybe version) as well as the activity id)
	   * SoA.action (PlanDefintion.action) to capture the URI to the specific Epoch in question.
  
**Needing to:**
1. Identify how to define the URI to enable searching for specific PlanDefinition action(s) by linkId.
   ``` "valueUri": "PlanDefinition/EPCH-DEF-0002-2?action.linkId=Treatment-65e9-11ed-9022-0242ac120001"```
   1. The Id of the EpochDefinition(PlanDefintion)
		 * *PlanDefinition/EPCH-DEF-0002-2*
    2.  Uri parameter (**this is were it gets tricky**) to target a specific action's linkId as a reference point.
          *  *PlanDefinition/EPCH-DEF-0002-2?***action.linkId**
    3. Id of the EpochDefinition(PlanDefintion).action in question i.e. the Epoch. Specifying both the PlanDefinition canonical (and maybe version) as well as the activity id
         *  *"PlanDefinition/EPCH-DEF-0002-2/1.0#***Treatment-65e9-11ed-9022-0242ac120001"**
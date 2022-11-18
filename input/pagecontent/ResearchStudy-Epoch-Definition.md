<center><img  src="ResearchStudy-Epoch-Definition.jpg"/></center>

The system must profide the ability for a SoA designer to:
1. Define Epochs.
   * EpochDefinitionReference (Extension) is used by the research study to capture the reference to the EpochDefintion (PlanDefiniton).

2. Reference all defined Epochs availble within the scope of a specfic ResearchStudy.
   * EpochDefinition (PlanDefinition) As the desginer defines each Epoch it is added to the EpochDefintion as an action.
  

The blue boxes represent the contextual model and relationships defined.

EpochDefinition.action attributes:
1. Id: **Same as linkId**
2. linkId: **UUID**
3. description: **Description of Epoch**
4. title: **Epoch name**
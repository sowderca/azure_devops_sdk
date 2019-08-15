part of azure_devops_sdk.api;

class EnvironmentTrigger {
  /* Definition environment ID on which this trigger applicable. */
  int definitionEnvironmentId = null;
  /* ReleaseDefinition ID on which this trigger applicable. */
  int releaseDefinitionId = null;
  /* Gets or sets the trigger content. */
  String triggerContent = null;
  /* Gets or sets the trigger type. */
  String triggerType = null;
  //enum triggerTypeEnum {  undefined,  deploymentGroupRedeploy,  rollbackRedeploy,  };{
  EnvironmentTrigger();

  @override
  String toString() {
    return 'EnvironmentTrigger[definitionEnvironmentId=$definitionEnvironmentId, releaseDefinitionId=$releaseDefinitionId, triggerContent=$triggerContent, triggerType=$triggerType, ]';
  }

  EnvironmentTrigger.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['definitionEnvironmentId'] == null) {
      definitionEnvironmentId = null;
    } else {
          definitionEnvironmentId = json['definitionEnvironmentId'];
    }
    if (json['releaseDefinitionId'] == null) {
      releaseDefinitionId = null;
    } else {
          releaseDefinitionId = json['releaseDefinitionId'];
    }
    if (json['triggerContent'] == null) {
      triggerContent = null;
    } else {
          triggerContent = json['triggerContent'];
    }
    if (json['triggerType'] == null) {
      triggerType = null;
    } else {
          triggerType = json['triggerType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (definitionEnvironmentId != null)
      json['definitionEnvironmentId'] = definitionEnvironmentId;
    if (releaseDefinitionId != null)
      json['releaseDefinitionId'] = releaseDefinitionId;
    if (triggerContent != null)
      json['triggerContent'] = triggerContent;
    if (triggerType != null)
      json['triggerType'] = triggerType;
    return json;
  }

  static List<EnvironmentTrigger> listFromJson(List<dynamic> json) {
    return json == null ? List<EnvironmentTrigger>() : json.map((value) => EnvironmentTrigger.fromJson(value)).toList();
  }

  static Map<String, EnvironmentTrigger> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EnvironmentTrigger>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EnvironmentTrigger.fromJson(value));
    }
    return map;
  }
}


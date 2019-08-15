part of azure_devops_sdk.api;

class ReleaseDefinitionDeployStep {
  /* ID of the approval or deploy step. */
  int id = null;
  ReleaseDefinitionDeployStep();

  @override
  String toString() {
    return 'ReleaseDefinitionDeployStep[id=$id, ]';
  }

  ReleaseDefinitionDeployStep.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<ReleaseDefinitionDeployStep> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseDefinitionDeployStep>() : json.map((value) => ReleaseDefinitionDeployStep.fromJson(value)).toList();
  }

  static Map<String, ReleaseDefinitionDeployStep> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseDefinitionDeployStep>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseDefinitionDeployStep.fromJson(value));
    }
    return map;
  }
}


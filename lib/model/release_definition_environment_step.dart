part of azure_devops_sdk.api;

class ReleaseDefinitionEnvironmentStep {
  /* ID of the approval or deploy step. */
  int id = null;
  ReleaseDefinitionEnvironmentStep();

  @override
  String toString() {
    return 'ReleaseDefinitionEnvironmentStep[id=$id, ]';
  }

  ReleaseDefinitionEnvironmentStep.fromJson(Map<String, dynamic> json) {
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

  static List<ReleaseDefinitionEnvironmentStep> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseDefinitionEnvironmentStep>() : json.map((value) => ReleaseDefinitionEnvironmentStep.fromJson(value)).toList();
  }

  static Map<String, ReleaseDefinitionEnvironmentStep> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseDefinitionEnvironmentStep>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseDefinitionEnvironmentStep.fromJson(value));
    }
    return map;
  }
}


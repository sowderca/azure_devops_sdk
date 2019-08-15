part of azure_devops_sdk.api;

class ReleaseDefinitionGate {
  /* Gets or sets the gates workflow. */
  List<WorkflowTask> tasks = [];
  ReleaseDefinitionGate();

  @override
  String toString() {
    return 'ReleaseDefinitionGate[tasks=$tasks, ]';
  }

  ReleaseDefinitionGate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['tasks'] == null) {
      tasks = null;
    } else {
      tasks = WorkflowTask.listFromJson(json['tasks']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (tasks != null)
      json['tasks'] = tasks;
    return json;
  }

  static List<ReleaseDefinitionGate> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseDefinitionGate>() : json.map((value) => ReleaseDefinitionGate.fromJson(value)).toList();
  }

  static Map<String, ReleaseDefinitionGate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseDefinitionGate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseDefinitionGate.fromJson(value));
    }
    return map;
  }
}


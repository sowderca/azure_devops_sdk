part of azure_devops_sdk.api;

class TaskDefinitionReference {
  /* The type of task (task or task group). */
  String definitionType = null;
  /* The ID of the task. */
  String id = null;
  /* The version of the task. */
  String versionSpec = null;
  TaskDefinitionReference();

  @override
  String toString() {
    return 'TaskDefinitionReference[definitionType=$definitionType, id=$id, versionSpec=$versionSpec, ]';
  }

  TaskDefinitionReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['definitionType'] == null) {
      definitionType = null;
    } else {
          definitionType = json['definitionType'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['versionSpec'] == null) {
      versionSpec = null;
    } else {
          versionSpec = json['versionSpec'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (definitionType != null)
      json['definitionType'] = definitionType;
    if (id != null)
      json['id'] = id;
    if (versionSpec != null)
      json['versionSpec'] = versionSpec;
    return json;
  }

  static List<TaskDefinitionReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskDefinitionReference>() : json.map((value) => TaskDefinitionReference.fromJson(value)).toList();
  }

  static Map<String, TaskDefinitionReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskDefinitionReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskDefinitionReference.fromJson(value));
    }
    return map;
  }
}


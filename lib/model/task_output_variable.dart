part of azure_devops_sdk.api;

class TaskOutputVariable {
  
  String description = null;
  
  String name = null;
  TaskOutputVariable();

  @override
  String toString() {
    return 'TaskOutputVariable[description=$description, name=$name, ]';
  }

  TaskOutputVariable.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<TaskOutputVariable> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskOutputVariable>() : json.map((value) => TaskOutputVariable.fromJson(value)).toList();
  }

  static Map<String, TaskOutputVariable> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskOutputVariable>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskOutputVariable.fromJson(value));
    }
    return map;
  }
}


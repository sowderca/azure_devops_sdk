part of azure_devops_sdk.api;

class TaskAgentJobVariable {
  
  String name = null;
  
  bool secret = null;
  
  String value = null;
  TaskAgentJobVariable();

  @override
  String toString() {
    return 'TaskAgentJobVariable[name=$name, secret=$secret, value=$value, ]';
  }

  TaskAgentJobVariable.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['secret'] == null) {
      secret = null;
    } else {
          secret = json['secret'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (secret != null)
      json['secret'] = secret;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<TaskAgentJobVariable> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentJobVariable>() : json.map((value) => TaskAgentJobVariable.fromJson(value)).toList();
  }

  static Map<String, TaskAgentJobVariable> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentJobVariable>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentJobVariable.fromJson(value));
    }
    return map;
  }
}


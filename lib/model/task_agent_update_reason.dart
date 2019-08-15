part of azure_devops_sdk.api;

class TaskAgentUpdateReason {
  
  String code = null;
  //enum codeEnum {  manual,  minAgentVersionRequired,  };{
  TaskAgentUpdateReason();

  @override
  String toString() {
    return 'TaskAgentUpdateReason[code=$code, ]';
  }

  TaskAgentUpdateReason.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['code'] == null) {
      code = null;
    } else {
          code = json['code'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (code != null)
      json['code'] = code;
    return json;
  }

  static List<TaskAgentUpdateReason> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentUpdateReason>() : json.map((value) => TaskAgentUpdateReason.fromJson(value)).toList();
  }

  static Map<String, TaskAgentUpdateReason> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentUpdateReason>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentUpdateReason.fromJson(value));
    }
    return map;
  }
}


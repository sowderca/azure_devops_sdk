part of azure_devops_sdk.api;

class TaskAgentManualUpdate {
  
  String code = null;
  //enum codeEnum {  manual,  minAgentVersionRequired,  };{
  TaskAgentManualUpdate();

  @override
  String toString() {
    return 'TaskAgentManualUpdate[code=$code, ]';
  }

  TaskAgentManualUpdate.fromJson(Map<String, dynamic> json) {
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

  static List<TaskAgentManualUpdate> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentManualUpdate>() : json.map((value) => TaskAgentManualUpdate.fromJson(value)).toList();
  }

  static Map<String, TaskAgentManualUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentManualUpdate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentManualUpdate.fromJson(value));
    }
    return map;
  }
}


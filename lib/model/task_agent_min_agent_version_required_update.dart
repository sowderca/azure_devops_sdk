part of azure_devops_sdk.api;

class TaskAgentMinAgentVersionRequiredUpdate {
  
  String code = null;
  //enum codeEnum {  manual,  minAgentVersionRequired,  };{
  TaskAgentMinAgentVersionRequiredUpdate();

  @override
  String toString() {
    return 'TaskAgentMinAgentVersionRequiredUpdate[code=$code, ]';
  }

  TaskAgentMinAgentVersionRequiredUpdate.fromJson(Map<String, dynamic> json) {
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

  static List<TaskAgentMinAgentVersionRequiredUpdate> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentMinAgentVersionRequiredUpdate>() : json.map((value) => TaskAgentMinAgentVersionRequiredUpdate.fromJson(value)).toList();
  }

  static Map<String, TaskAgentMinAgentVersionRequiredUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentMinAgentVersionRequiredUpdate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentMinAgentVersionRequiredUpdate.fromJson(value));
    }
    return map;
  }
}


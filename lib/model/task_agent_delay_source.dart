part of azure_devops_sdk.api;

class TaskAgentDelaySource {
  
  List<String> delays = [];
  
  TaskAgentReference taskAgent = null;
  TaskAgentDelaySource();

  @override
  String toString() {
    return 'TaskAgentDelaySource[delays=$delays, taskAgent=$taskAgent, ]';
  }

  TaskAgentDelaySource.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['delays'] == null) {
      delays = null;
    } else {
      delays = (json['delays'] as List).cast<String>();
    }
    if (json['taskAgent'] == null) {
      taskAgent = null;
    } else {
      taskAgent = TaskAgentReference.fromJson(json['taskAgent']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (delays != null)
      json['delays'] = delays;
    if (taskAgent != null)
      json['taskAgent'] = taskAgent;
    return json;
  }

  static List<TaskAgentDelaySource> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentDelaySource>() : json.map((value) => TaskAgentDelaySource.fromJson(value)).toList();
  }

  static Map<String, TaskAgentDelaySource> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentDelaySource>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentDelaySource.fromJson(value));
    }
    return map;
  }
}


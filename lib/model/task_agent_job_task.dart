part of azure_devops_sdk.api;

class TaskAgentJobTask {
  
  String id = null;
  
  String name = null;
  
  String version = null;
  TaskAgentJobTask();

  @override
  String toString() {
    return 'TaskAgentJobTask[id=$id, name=$name, version=$version, ]';
  }

  TaskAgentJobTask.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<TaskAgentJobTask> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentJobTask>() : json.map((value) => TaskAgentJobTask.fromJson(value)).toList();
  }

  static Map<String, TaskAgentJobTask> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentJobTask>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentJobTask.fromJson(value));
    }
    return map;
  }
}


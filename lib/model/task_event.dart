part of azure_devops_sdk.api;

class TaskEvent {
  
  String jobId = null;
  
  String name = null;
  TaskEvent();

  @override
  String toString() {
    return 'TaskEvent[jobId=$jobId, name=$name, ]';
  }

  TaskEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['jobId'] == null) {
      jobId = null;
    } else {
          jobId = json['jobId'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (jobId != null)
      json['jobId'] = jobId;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<TaskEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskEvent>() : json.map((value) => TaskEvent.fromJson(value)).toList();
  }

  static Map<String, TaskEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskEvent.fromJson(value));
    }
    return map;
  }
}


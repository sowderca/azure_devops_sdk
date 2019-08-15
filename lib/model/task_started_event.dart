part of azure_devops_sdk.api;

class TaskStartedEvent {
  
  String jobId = null;
  
  String name = null;
  TaskStartedEvent();

  @override
  String toString() {
    return 'TaskStartedEvent[jobId=$jobId, name=$name, ]';
  }

  TaskStartedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<TaskStartedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskStartedEvent>() : json.map((value) => TaskStartedEvent.fromJson(value)).toList();
  }

  static Map<String, TaskStartedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskStartedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskStartedEvent.fromJson(value));
    }
    return map;
  }
}


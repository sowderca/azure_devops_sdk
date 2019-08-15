part of azure_devops_sdk.api;

class TaskAssignedEvent {
  
  String jobId = null;
  
  String name = null;
  TaskAssignedEvent();

  @override
  String toString() {
    return 'TaskAssignedEvent[jobId=$jobId, name=$name, ]';
  }

  TaskAssignedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<TaskAssignedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAssignedEvent>() : json.map((value) => TaskAssignedEvent.fromJson(value)).toList();
  }

  static Map<String, TaskAssignedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAssignedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAssignedEvent.fromJson(value));
    }
    return map;
  }
}

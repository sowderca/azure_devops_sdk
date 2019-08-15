part of azure_devops_sdk.api;

class TaskCompletedEvent {
  
  String jobId = null;
  
  String name = null;
  TaskCompletedEvent();

  @override
  String toString() {
    return 'TaskCompletedEvent[jobId=$jobId, name=$name, ]';
  }

  TaskCompletedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<TaskCompletedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskCompletedEvent>() : json.map((value) => TaskCompletedEvent.fromJson(value)).toList();
  }

  static Map<String, TaskCompletedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskCompletedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskCompletedEvent.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class TaskLog {
  
  int id = null;
  
  String location = null;
  TaskLog();

  @override
  String toString() {
    return 'TaskLog[id=$id, location=$location, ]';
  }

  TaskLog.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['location'] == null) {
      location = null;
    } else {
          location = json['location'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (location != null)
      json['location'] = location;
    return json;
  }

  static List<TaskLog> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskLog>() : json.map((value) => TaskLog.fromJson(value)).toList();
  }

  static Map<String, TaskLog> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskLog>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskLog.fromJson(value));
    }
    return map;
  }
}


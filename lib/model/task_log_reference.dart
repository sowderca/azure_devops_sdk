part of azure_devops_sdk.api;

class TaskLogReference {
  
  int id = null;
  
  String location = null;
  TaskLogReference();

  @override
  String toString() {
    return 'TaskLogReference[id=$id, location=$location, ]';
  }

  TaskLogReference.fromJson(Map<String, dynamic> json) {
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

  static List<TaskLogReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskLogReference>() : json.map((value) => TaskLogReference.fromJson(value)).toList();
  }

  static Map<String, TaskLogReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskLogReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskLogReference.fromJson(value));
    }
    return map;
  }
}


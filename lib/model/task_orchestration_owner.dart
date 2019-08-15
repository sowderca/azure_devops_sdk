part of azure_devops_sdk.api;

class TaskOrchestrationOwner {
  
  ReferenceLinks links = null;
  
  int id = null;
  
  String name = null;
  TaskOrchestrationOwner();

  @override
  String toString() {
    return 'TaskOrchestrationOwner[links=$links, id=$id, name=$name, ]';
  }

  TaskOrchestrationOwner.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<TaskOrchestrationOwner> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskOrchestrationOwner>() : json.map((value) => TaskOrchestrationOwner.fromJson(value)).toList();
  }

  static Map<String, TaskOrchestrationOwner> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskOrchestrationOwner>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskOrchestrationOwner.fromJson(value));
    }
    return map;
  }
}


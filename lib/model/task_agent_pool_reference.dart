part of azure_devops_sdk.api;

class TaskAgentPoolReference {
  /* The pool ID. */
  int id = null;
  /* A value indicating whether or not this pool is managed by the service. */
  bool isHosted = null;
  /* The pool name. */
  String name = null;
  TaskAgentPoolReference();

  @override
  String toString() {
    return 'TaskAgentPoolReference[id=$id, isHosted=$isHosted, name=$name, ]';
  }

  TaskAgentPoolReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isHosted'] == null) {
      isHosted = null;
    } else {
          isHosted = json['isHosted'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (isHosted != null)
      json['isHosted'] = isHosted;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<TaskAgentPoolReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentPoolReference>() : json.map((value) => TaskAgentPoolReference.fromJson(value)).toList();
  }

  static Map<String, TaskAgentPoolReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentPoolReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentPoolReference.fromJson(value));
    }
    return map;
  }
}


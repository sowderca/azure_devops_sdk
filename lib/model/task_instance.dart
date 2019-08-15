part of azure_devops_sdk.api;

class TaskInstance {
  /* The ID of the task definition. */
  String id = null;
  /* The name of the task definition. */
  String name = null;
  /* The version of the task definition. */
  String version = null;
  TaskInstance();

  @override
  String toString() {
    return 'TaskInstance[id=$id, name=$name, version=$version, ]';
  }

  TaskInstance.fromJson(Map<String, dynamic> json) {
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

  static List<TaskInstance> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskInstance>() : json.map((value) => TaskInstance.fromJson(value)).toList();
  }

  static Map<String, TaskInstance> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskInstance>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskInstance.fromJson(value));
    }
    return map;
  }
}

part of azure_devops_sdk.api;

class WorkflowTaskReference {
  /* Task identifier. */
  String id = null;
  /* Name of the task. */
  String name = null;
  /* Version of the task. */
  String version = null;
  WorkflowTaskReference();

  @override
  String toString() {
    return 'WorkflowTaskReference[id=$id, name=$name, version=$version, ]';
  }

  WorkflowTaskReference.fromJson(Map<String, dynamic> json) {
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

  static List<WorkflowTaskReference> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkflowTaskReference>() : json.map((value) => WorkflowTaskReference.fromJson(value)).toList();
  }

  static Map<String, WorkflowTaskReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkflowTaskReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkflowTaskReference.fromJson(value));
    }
    return map;
  }
}


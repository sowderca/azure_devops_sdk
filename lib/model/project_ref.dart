part of azure_devops_sdk.api;

class ProjectRef {
  /* Project ID. */
  String id = null;
  /* Project Name. */
  String name = null;
  ProjectRef();

  @override
  String toString() {
    return 'ProjectRef[id=$id, name=$name, ]';
  }

  ProjectRef.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<ProjectRef> listFromJson(List<dynamic> json) {
    return json == null ? List<ProjectRef>() : json.map((value) => ProjectRef.fromJson(value)).toList();
  }

  static Map<String, ProjectRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProjectRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProjectRef.fromJson(value));
    }
    return map;
  }
}


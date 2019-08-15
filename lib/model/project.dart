part of azure_devops_sdk.api;

class Project {
  /* Id of the project. */
  String id = null;
  /* Name of the project. */
  String name = null;
  Project();

  @override
  String toString() {
    return 'Project[id=$id, name=$name, ]';
  }

  Project.fromJson(Map<String, dynamic> json) {
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

  static List<Project> listFromJson(List<dynamic> json) {
    return json == null ? List<Project>() : json.map((value) => Project.fromJson(value)).toList();
  }

  static Map<String, Project> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Project>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Project.fromJson(value));
    }
    return map;
  }
}


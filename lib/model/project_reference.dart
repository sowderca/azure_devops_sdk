part of azure_devops_sdk.api;

class ProjectReference {
  /* Gets or sets id of the project. */
  String id = null;
  /* Gets or sets name of the project. */
  String name = null;
  /* Gets or sets visibility of the project. */
  String visibility = null;
  ProjectReference();

  @override
  String toString() {
    return 'ProjectReference[id=$id, name=$name, visibility=$visibility, ]';
  }

  ProjectReference.fromJson(Map<String, dynamic> json) {
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
    if (json['visibility'] == null) {
      visibility = null;
    } else {
          visibility = json['visibility'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (visibility != null)
      json['visibility'] = visibility;
    return json;
  }

  static List<ProjectReference> listFromJson(List<dynamic> json) {
    return json == null ? List<ProjectReference>() : json.map((value) => ProjectReference.fromJson(value)).toList();
  }

  static Map<String, ProjectReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProjectReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProjectReference.fromJson(value));
    }
    return map;
  }
}


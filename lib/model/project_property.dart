part of azure_devops_sdk.api;

class ProjectProperty {
  /* The name of the property. */
  String name = null;
  /* The value of the property. */
  Object value = null;
  ProjectProperty();

  @override
  String toString() {
    return 'ProjectProperty[name=$name, value=$value, ]';
  }

  ProjectProperty.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<ProjectProperty> listFromJson(List<dynamic> json) {
    return json == null ? List<ProjectProperty>() : json.map((value) => ProjectProperty.fromJson(value)).toList();
  }

  static Map<String, ProjectProperty> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProjectProperty>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProjectProperty.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class ProjectProperties {
  /* The team project Id */
  String projectId = null;
  /* The collection of team project properties */
  List<ProjectProperty> properties = [];
  ProjectProperties();

  @override
  String toString() {
    return 'ProjectProperties[projectId=$projectId, properties=$properties, ]';
  }

  ProjectProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = ProjectProperty.listFromJson(json['properties']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (projectId != null)
      json['projectId'] = projectId;
    if (properties != null)
      json['properties'] = properties;
    return json;
  }

  static List<ProjectProperties> listFromJson(List<dynamic> json) {
    return json == null ? List<ProjectProperties>() : json.map((value) => ProjectProperties.fromJson(value)).toList();
  }

  static Map<String, ProjectProperties> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProjectProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProjectProperties.fromJson(value));
    }
    return map;
  }
}


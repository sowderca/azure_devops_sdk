part of azure_devops_sdk.api;

class ProcessModel {
  /* Description of the process */
  String description = null;
  /* Name of the process */
  String name = null;
  /* Projects in this process */
  List<ProjectReference> projects = [];
  
  ProcessProperties properties = null;
  /* Reference name of the process */
  String referenceName = null;
  /* The ID of the process */
  String typeId = null;
  ProcessModel();

  @override
  String toString() {
    return 'ProcessModel[description=$description, name=$name, projects=$projects, properties=$properties, referenceName=$referenceName, typeId=$typeId, ]';
  }

  ProcessModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['projects'] == null) {
      projects = null;
    } else {
      projects = ProjectReference.listFromJson(json['projects']);
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = ProcessProperties.fromJson(json['properties']);
    }
    if (json['referenceName'] == null) {
      referenceName = null;
    } else {
          referenceName = json['referenceName'];
    }
    if (json['typeId'] == null) {
      typeId = null;
    } else {
          typeId = json['typeId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (name != null)
      json['name'] = name;
    if (projects != null)
      json['projects'] = projects;
    if (properties != null)
      json['properties'] = properties;
    if (referenceName != null)
      json['referenceName'] = referenceName;
    if (typeId != null)
      json['typeId'] = typeId;
    return json;
  }

  static List<ProcessModel> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessModel>() : json.map((value) => ProcessModel.fromJson(value)).toList();
  }

  static Map<String, ProcessModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessModel.fromJson(value));
    }
    return map;
  }
}


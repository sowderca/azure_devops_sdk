part of azure_devops_sdk.api;

class ProcessInfo {
  /* Indicates the type of customization on this process. System Process is default process. Inherited Process is modified process that was System process before. */
  String customizationType = null;
  //enum customizationTypeEnum {  system,  inherited,  custom,  };{
  /* Description of the process. */
  String description = null;
  /* Is the process default. */
  bool isDefault = null;
  /* Is the process enabled. */
  bool isEnabled = null;
  /* Name of the process. */
  String name = null;
  /* ID of the parent process. */
  String parentProcessTypeId = null;
  /* Projects in this process to which the user is subscribed to. */
  List<ProjectReference> projects = [];
  /* Reference name of the process. */
  String referenceName = null;
  /* The ID of the process. */
  String typeId = null;
  ProcessInfo();

  @override
  String toString() {
    return 'ProcessInfo[customizationType=$customizationType, description=$description, isDefault=$isDefault, isEnabled=$isEnabled, name=$name, parentProcessTypeId=$parentProcessTypeId, projects=$projects, referenceName=$referenceName, typeId=$typeId, ]';
  }

  ProcessInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['customizationType'] == null) {
      customizationType = null;
    } else {
          customizationType = json['customizationType'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['isDefault'] == null) {
      isDefault = null;
    } else {
          isDefault = json['isDefault'];
    }
    if (json['isEnabled'] == null) {
      isEnabled = null;
    } else {
          isEnabled = json['isEnabled'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['parentProcessTypeId'] == null) {
      parentProcessTypeId = null;
    } else {
          parentProcessTypeId = json['parentProcessTypeId'];
    }
    if (json['projects'] == null) {
      projects = null;
    } else {
      projects = ProjectReference.listFromJson(json['projects']);
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
    if (customizationType != null)
      json['customizationType'] = customizationType;
    if (description != null)
      json['description'] = description;
    if (isDefault != null)
      json['isDefault'] = isDefault;
    if (isEnabled != null)
      json['isEnabled'] = isEnabled;
    if (name != null)
      json['name'] = name;
    if (parentProcessTypeId != null)
      json['parentProcessTypeId'] = parentProcessTypeId;
    if (projects != null)
      json['projects'] = projects;
    if (referenceName != null)
      json['referenceName'] = referenceName;
    if (typeId != null)
      json['typeId'] = typeId;
    return json;
  }

  static List<ProcessInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessInfo>() : json.map((value) => ProcessInfo.fromJson(value)).toList();
  }

  static Map<String, ProcessInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessInfo.fromJson(value));
    }
    return map;
  }
}


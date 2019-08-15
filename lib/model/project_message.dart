part of azure_devops_sdk.api;

class ProjectMessage {
  
  ProjectInfo project = null;
  
  String projectChangeType = null;
  //enum projectChangeTypeEnum {  modified,  deleted,  added,  };{
  
  bool shouldInvalidateSystemStore = null;
  ProjectMessage();

  @override
  String toString() {
    return 'ProjectMessage[project=$project, projectChangeType=$projectChangeType, shouldInvalidateSystemStore=$shouldInvalidateSystemStore, ]';
  }

  ProjectMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['project'] == null) {
      project = null;
    } else {
      project = ProjectInfo.fromJson(json['project']);
    }
    if (json['projectChangeType'] == null) {
      projectChangeType = null;
    } else {
          projectChangeType = json['projectChangeType'];
    }
    if (json['shouldInvalidateSystemStore'] == null) {
      shouldInvalidateSystemStore = null;
    } else {
          shouldInvalidateSystemStore = json['shouldInvalidateSystemStore'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (project != null)
      json['project'] = project;
    if (projectChangeType != null)
      json['projectChangeType'] = projectChangeType;
    if (shouldInvalidateSystemStore != null)
      json['shouldInvalidateSystemStore'] = shouldInvalidateSystemStore;
    return json;
  }

  static List<ProjectMessage> listFromJson(List<dynamic> json) {
    return json == null ? List<ProjectMessage>() : json.map((value) => ProjectMessage.fromJson(value)).toList();
  }

  static Map<String, ProjectMessage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProjectMessage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProjectMessage.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class BuildsDeletedEvent {
  
  List<int> buildIds = [];
  /* The ID of the definition. */
  int definitionId = null;
  /* The ID of the project. */
  String projectId = null;
  BuildsDeletedEvent();

  @override
  String toString() {
    return 'BuildsDeletedEvent[buildIds=$buildIds, definitionId=$definitionId, projectId=$projectId, ]';
  }

  BuildsDeletedEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['buildIds'] == null) {
      buildIds = null;
    } else {
      buildIds = (json['buildIds'] as List).cast<int>();
    }
    if (json['definitionId'] == null) {
      definitionId = null;
    } else {
          definitionId = json['definitionId'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (buildIds != null)
      json['buildIds'] = buildIds;
    if (definitionId != null)
      json['definitionId'] = definitionId;
    if (projectId != null)
      json['projectId'] = projectId;
    return json;
  }

  static List<BuildsDeletedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildsDeletedEvent>() : json.map((value) => BuildsDeletedEvent.fromJson(value)).toList();
  }

  static Map<String, BuildsDeletedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildsDeletedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildsDeletedEvent.fromJson(value));
    }
    return map;
  }
}


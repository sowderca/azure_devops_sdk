part of azure_devops_sdk.api;

class BuildsDeletedEvent1 {
  
  List<int> buildIds = [];
  /* The ID of the definition. */
  int definitionId = null;
  /* The ID of the project. */
  String projectId = null;
  BuildsDeletedEvent1();

  @override
  String toString() {
    return 'BuildsDeletedEvent1[buildIds=$buildIds, definitionId=$definitionId, projectId=$projectId, ]';
  }

  BuildsDeletedEvent1.fromJson(Map<String, dynamic> json) {
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

  static List<BuildsDeletedEvent1> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildsDeletedEvent1>() : json.map((value) => BuildsDeletedEvent1.fromJson(value)).toList();
  }

  static Map<String, BuildsDeletedEvent1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildsDeletedEvent1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildsDeletedEvent1.fromJson(value));
    }
    return map;
  }
}


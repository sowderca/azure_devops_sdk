part of azure_devops_sdk.api;

class WorkspaceTemplate {
  /* Uri of the associated definition */
  String definitionUri = null;
  /* The identity that last modified this template */
  String lastModifiedBy = null;
  /* The last time this template was modified */
  DateTime lastModifiedDate = null;
  /* List of workspace mappings */
  List<WorkspaceMapping> mappings = [];
  /* Id of the workspace for this template */
  int workspaceId = null;
  WorkspaceTemplate();

  @override
  String toString() {
    return 'WorkspaceTemplate[definitionUri=$definitionUri, lastModifiedBy=$lastModifiedBy, lastModifiedDate=$lastModifiedDate, mappings=$mappings, workspaceId=$workspaceId, ]';
  }

  WorkspaceTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['definitionUri'] == null) {
      definitionUri = null;
    } else {
          definitionUri = json['definitionUri'];
    }
    if (json['lastModifiedBy'] == null) {
      lastModifiedBy = null;
    } else {
          lastModifiedBy = json['lastModifiedBy'];
    }
    if (json['lastModifiedDate'] == null) {
      lastModifiedDate = null;
    } else {
      lastModifiedDate = DateTime.parse(json['lastModifiedDate']);
    }
    if (json['mappings'] == null) {
      mappings = null;
    } else {
      mappings = WorkspaceMapping.listFromJson(json['mappings']);
    }
    if (json['workspaceId'] == null) {
      workspaceId = null;
    } else {
          workspaceId = json['workspaceId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (definitionUri != null)
      json['definitionUri'] = definitionUri;
    if (lastModifiedBy != null)
      json['lastModifiedBy'] = lastModifiedBy;
    if (lastModifiedDate != null)
      json['lastModifiedDate'] = lastModifiedDate == null ? null : lastModifiedDate.toUtc().toIso8601String();
    if (mappings != null)
      json['mappings'] = mappings;
    if (workspaceId != null)
      json['workspaceId'] = workspaceId;
    return json;
  }

  static List<WorkspaceTemplate> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkspaceTemplate>() : json.map((value) => WorkspaceTemplate.fromJson(value)).toList();
  }

  static Map<String, WorkspaceTemplate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkspaceTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkspaceTemplate.fromJson(value));
    }
    return map;
  }
}


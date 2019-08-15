part of azure_devops_sdk.api;

class WorkspaceMapping {
  /* Uri of the associated definition */
  String definitionUri = null;
  /* Depth of this mapping */
  int depth = null;
  /* local location of the definition */
  String localItem = null;
  /* type of workspace mapping */
  String mappingType = null;
  //enum mappingTypeEnum {  map,  cloak,  };{
  /* Server location of the definition */
  String serverItem = null;
  /* Id of the workspace */
  int workspaceId = null;
  WorkspaceMapping();

  @override
  String toString() {
    return 'WorkspaceMapping[definitionUri=$definitionUri, depth=$depth, localItem=$localItem, mappingType=$mappingType, serverItem=$serverItem, workspaceId=$workspaceId, ]';
  }

  WorkspaceMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['definitionUri'] == null) {
      definitionUri = null;
    } else {
          definitionUri = json['definitionUri'];
    }
    if (json['depth'] == null) {
      depth = null;
    } else {
          depth = json['depth'];
    }
    if (json['localItem'] == null) {
      localItem = null;
    } else {
          localItem = json['localItem'];
    }
    if (json['mappingType'] == null) {
      mappingType = null;
    } else {
          mappingType = json['mappingType'];
    }
    if (json['serverItem'] == null) {
      serverItem = null;
    } else {
          serverItem = json['serverItem'];
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
    if (depth != null)
      json['depth'] = depth;
    if (localItem != null)
      json['localItem'] = localItem;
    if (mappingType != null)
      json['mappingType'] = mappingType;
    if (serverItem != null)
      json['serverItem'] = serverItem;
    if (workspaceId != null)
      json['workspaceId'] = workspaceId;
    return json;
  }

  static List<WorkspaceMapping> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkspaceMapping>() : json.map((value) => WorkspaceMapping.fromJson(value)).toList();
  }

  static Map<String, WorkspaceMapping> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkspaceMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkspaceMapping.fromJson(value));
    }
    return map;
  }
}


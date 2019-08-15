part of azure_devops_sdk.api;

class WorkArtifactLink {
  /* Target artifact type. */
  String artifactType = null;
  /* Outbound link type. */
  String linkType = null;
  /* Target tool type. */
  String toolType = null;
  WorkArtifactLink();

  @override
  String toString() {
    return 'WorkArtifactLink[artifactType=$artifactType, linkType=$linkType, toolType=$toolType, ]';
  }

  WorkArtifactLink.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['artifactType'] == null) {
      artifactType = null;
    } else {
          artifactType = json['artifactType'];
    }
    if (json['linkType'] == null) {
      linkType = null;
    } else {
          linkType = json['linkType'];
    }
    if (json['toolType'] == null) {
      toolType = null;
    } else {
          toolType = json['toolType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (artifactType != null)
      json['artifactType'] = artifactType;
    if (linkType != null)
      json['linkType'] = linkType;
    if (toolType != null)
      json['toolType'] = toolType;
    return json;
  }

  static List<WorkArtifactLink> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkArtifactLink>() : json.map((value) => WorkArtifactLink.fromJson(value)).toList();
  }

  static Map<String, WorkArtifactLink> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkArtifactLink>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkArtifactLink.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class ArtifactSourceIdsQueryResult {
  /* Gets or sets the list of artifactsourceIds. */
  List<ArtifactSourceId> artifactSourceIds = [];
  ArtifactSourceIdsQueryResult();

  @override
  String toString() {
    return 'ArtifactSourceIdsQueryResult[artifactSourceIds=$artifactSourceIds, ]';
  }

  ArtifactSourceIdsQueryResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['artifactSourceIds'] == null) {
      artifactSourceIds = null;
    } else {
      artifactSourceIds = ArtifactSourceId.listFromJson(json['artifactSourceIds']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (artifactSourceIds != null)
      json['artifactSourceIds'] = artifactSourceIds;
    return json;
  }

  static List<ArtifactSourceIdsQueryResult> listFromJson(List<dynamic> json) {
    return json == null ? List<ArtifactSourceIdsQueryResult>() : json.map((value) => ArtifactSourceIdsQueryResult.fromJson(value)).toList();
  }

  static Map<String, ArtifactSourceIdsQueryResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArtifactSourceIdsQueryResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArtifactSourceIdsQueryResult.fromJson(value));
    }
    return map;
  }
}


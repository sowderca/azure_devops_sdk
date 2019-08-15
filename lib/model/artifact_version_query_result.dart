part of azure_devops_sdk.api;

class ArtifactVersionQueryResult {
  /* Gets or sets the list for artifact versions of artifact version query result. */
  List<ArtifactVersion> artifactVersions = [];
  ArtifactVersionQueryResult();

  @override
  String toString() {
    return 'ArtifactVersionQueryResult[artifactVersions=$artifactVersions, ]';
  }

  ArtifactVersionQueryResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['artifactVersions'] == null) {
      artifactVersions = null;
    } else {
      artifactVersions = ArtifactVersion.listFromJson(json['artifactVersions']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (artifactVersions != null)
      json['artifactVersions'] = artifactVersions;
    return json;
  }

  static List<ArtifactVersionQueryResult> listFromJson(List<dynamic> json) {
    return json == null ? List<ArtifactVersionQueryResult>() : json.map((value) => ArtifactVersionQueryResult.fromJson(value)).toList();
  }

  static Map<String, ArtifactVersionQueryResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArtifactVersionQueryResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArtifactVersionQueryResult.fromJson(value));
    }
    return map;
  }
}


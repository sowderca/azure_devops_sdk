part of azure_devops_sdk.api;

class ArtifactUriQuery {
  /* List of artifact URIs to use for querying work items. */
  List<String> artifactUris = [];
  ArtifactUriQuery();

  @override
  String toString() {
    return 'ArtifactUriQuery[artifactUris=$artifactUris, ]';
  }

  ArtifactUriQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['artifactUris'] == null) {
      artifactUris = null;
    } else {
      artifactUris = (json['artifactUris'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (artifactUris != null)
      json['artifactUris'] = artifactUris;
    return json;
  }

  static List<ArtifactUriQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<ArtifactUriQuery>() : json.map((value) => ArtifactUriQuery.fromJson(value)).toList();
  }

  static Map<String, ArtifactUriQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArtifactUriQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArtifactUriQuery.fromJson(value));
    }
    return map;
  }
}


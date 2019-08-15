part of azure_devops_sdk.api;

class ArtifactUriQueryResult {
  /* A Dictionary that maps a list of work item references to the given list of artifact URI. */
  Map<String, List<WorkItemReference>> artifactUrisQueryResult = {};
  ArtifactUriQueryResult();

  @override
  String toString() {
    return 'ArtifactUriQueryResult[artifactUrisQueryResult=$artifactUrisQueryResult, ]';
  }

  ArtifactUriQueryResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['artifactUrisQueryResult'] == null) {
      artifactUrisQueryResult = null;
    } else {
      artifactUrisQueryResult = List.mapFromJson(json['artifactUrisQueryResult']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (artifactUrisQueryResult != null)
      json['artifactUrisQueryResult'] = artifactUrisQueryResult;
    return json;
  }

  static List<ArtifactUriQueryResult> listFromJson(List<dynamic> json) {
    return json == null ? List<ArtifactUriQueryResult>() : json.map((value) => ArtifactUriQueryResult.fromJson(value)).toList();
  }

  static Map<String, ArtifactUriQueryResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArtifactUriQueryResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArtifactUriQueryResult.fromJson(value));
    }
    return map;
  }
}


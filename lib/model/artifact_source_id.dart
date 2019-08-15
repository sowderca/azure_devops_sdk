part of azure_devops_sdk.api;

class ArtifactSourceId {
  /* Gets or sets the artifact type of artifact source. */
  String artifactTypeId = null;
  /* Gets or sets the list of sourceIdInput of artifact source. */
  List<SourceIdInput> sourceIdInputs = [];
  ArtifactSourceId();

  @override
  String toString() {
    return 'ArtifactSourceId[artifactTypeId=$artifactTypeId, sourceIdInputs=$sourceIdInputs, ]';
  }

  ArtifactSourceId.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['artifactTypeId'] == null) {
      artifactTypeId = null;
    } else {
          artifactTypeId = json['artifactTypeId'];
    }
    if (json['sourceIdInputs'] == null) {
      sourceIdInputs = null;
    } else {
      sourceIdInputs = SourceIdInput.listFromJson(json['sourceIdInputs']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (artifactTypeId != null)
      json['artifactTypeId'] = artifactTypeId;
    if (sourceIdInputs != null)
      json['sourceIdInputs'] = sourceIdInputs;
    return json;
  }

  static List<ArtifactSourceId> listFromJson(List<dynamic> json) {
    return json == null ? List<ArtifactSourceId>() : json.map((value) => ArtifactSourceId.fromJson(value)).toList();
  }

  static Map<String, ArtifactSourceId> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArtifactSourceId>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArtifactSourceId.fromJson(value));
    }
    return map;
  }
}


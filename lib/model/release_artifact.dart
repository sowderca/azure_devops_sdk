part of azure_devops_sdk.api;

class ReleaseArtifact {
  
  ArtifactProvider artifactProvider = null;
  /* Gets or sets the artifact type of ReleaseArtifact. */
  String artifactType = null;
  /* Gets or sets the definition json of ReleaseArtifact. */
  String definitionData = null;
  /* Gets or sets the definition id of ReleaseArtifact. */
  int definitionId = null;
  /* Gets or sets the description of ReleaseArtifact. */
  String description = null;
  /* Gets or sets the id of ReleaseArtifact. */
  int id = null;
  /* Gets or sets the name of ReleaseArtifact. */
  String name = null;
  /* Gets or sets the release id. */
  int releaseId = null;
  ReleaseArtifact();

  @override
  String toString() {
    return 'ReleaseArtifact[artifactProvider=$artifactProvider, artifactType=$artifactType, definitionData=$definitionData, definitionId=$definitionId, description=$description, id=$id, name=$name, releaseId=$releaseId, ]';
  }

  ReleaseArtifact.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['artifactProvider'] == null) {
      artifactProvider = null;
    } else {
      artifactProvider = ArtifactProvider.fromJson(json['artifactProvider']);
    }
    if (json['artifactType'] == null) {
      artifactType = null;
    } else {
          artifactType = json['artifactType'];
    }
    if (json['definitionData'] == null) {
      definitionData = null;
    } else {
          definitionData = json['definitionData'];
    }
    if (json['definitionId'] == null) {
      definitionId = null;
    } else {
          definitionId = json['definitionId'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['releaseId'] == null) {
      releaseId = null;
    } else {
          releaseId = json['releaseId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (artifactProvider != null)
      json['artifactProvider'] = artifactProvider;
    if (artifactType != null)
      json['artifactType'] = artifactType;
    if (definitionData != null)
      json['definitionData'] = definitionData;
    if (definitionId != null)
      json['definitionId'] = definitionId;
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (releaseId != null)
      json['releaseId'] = releaseId;
    return json;
  }

  static List<ReleaseArtifact> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseArtifact>() : json.map((value) => ReleaseArtifact.fromJson(value)).toList();
  }

  static Map<String, ReleaseArtifact> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseArtifact>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseArtifact.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class BuildArtifact {
  /* The artifact ID. */
  int id = null;
  /* The name of the artifact. */
  String name = null;
  
  ArtifactResource resource = null;
  /* The artifact source, which will be the ID of the job that produced this artifact. */
  String source = null;
  BuildArtifact();

  @override
  String toString() {
    return 'BuildArtifact[id=$id, name=$name, resource=$resource, source=$source, ]';
  }

  BuildArtifact.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['resource'] == null) {
      resource = null;
    } else {
      resource = ArtifactResource.fromJson(json['resource']);
    }
    if (json['source'] == null) {
      source = null;
    } else {
          source = json['source'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (resource != null)
      json['resource'] = resource;
    if (source != null)
      json['source'] = source;
    return json;
  }

  static List<BuildArtifact> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildArtifact>() : json.map((value) => BuildArtifact.fromJson(value)).toList();
  }

  static Map<String, BuildArtifact> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildArtifact>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildArtifact.fromJson(value));
    }
    return map;
  }
}


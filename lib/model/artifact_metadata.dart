part of azure_devops_sdk.api;

class ArtifactMetadata {
  /* Sets alias of artifact. */
  String alias = null;
  
  BuildVersion instanceReference = null;
  ArtifactMetadata();

  @override
  String toString() {
    return 'ArtifactMetadata[alias=$alias, instanceReference=$instanceReference, ]';
  }

  ArtifactMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['alias'] == null) {
      alias = null;
    } else {
          alias = json['alias'];
    }
    if (json['instanceReference'] == null) {
      instanceReference = null;
    } else {
      instanceReference = BuildVersion.fromJson(json['instanceReference']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (alias != null)
      json['alias'] = alias;
    if (instanceReference != null)
      json['instanceReference'] = instanceReference;
    return json;
  }

  static List<ArtifactMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<ArtifactMetadata>() : json.map((value) => ArtifactMetadata.fromJson(value)).toList();
  }

  static Map<String, ArtifactMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArtifactMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArtifactMetadata.fromJson(value));
    }
    return map;
  }
}


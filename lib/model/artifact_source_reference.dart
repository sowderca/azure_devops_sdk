part of azure_devops_sdk.api;

class ArtifactSourceReference {
  /* ID of the artifact source. */
  String id = null;
  /* Name of the artifact source. */
  String name = null;
  ArtifactSourceReference();

  @override
  String toString() {
    return 'ArtifactSourceReference[id=$id, name=$name, ]';
  }

  ArtifactSourceReference.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<ArtifactSourceReference> listFromJson(List<dynamic> json) {
    return json == null ? List<ArtifactSourceReference>() : json.map((value) => ArtifactSourceReference.fromJson(value)).toList();
  }

  static Map<String, ArtifactSourceReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArtifactSourceReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArtifactSourceReference.fromJson(value));
    }
    return map;
  }
}


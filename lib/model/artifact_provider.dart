part of azure_devops_sdk.api;

class ArtifactProvider {
  /* Gets or sets the id of artifact provider. */
  int id = null;
  /* Gets or sets the name of artifact provider. */
  String name = null;
  /* Gets or sets the link of artifact provider. */
  String sourceUri = null;
  /* Gets or sets the version of artifact provider. */
  String version = null;
  ArtifactProvider();

  @override
  String toString() {
    return 'ArtifactProvider[id=$id, name=$name, sourceUri=$sourceUri, version=$version, ]';
  }

  ArtifactProvider.fromJson(Map<String, dynamic> json) {
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
    if (json['sourceUri'] == null) {
      sourceUri = null;
    } else {
          sourceUri = json['sourceUri'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (sourceUri != null)
      json['sourceUri'] = sourceUri;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<ArtifactProvider> listFromJson(List<dynamic> json) {
    return json == null ? List<ArtifactProvider>() : json.map((value) => ArtifactProvider.fromJson(value)).toList();
  }

  static Map<String, ArtifactProvider> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArtifactProvider>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArtifactProvider.fromJson(value));
    }
    return map;
  }
}


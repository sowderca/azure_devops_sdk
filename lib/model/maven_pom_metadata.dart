part of azure_devops_sdk.api;

class MavenPomMetadata {
  
  String artifactId = null;
  
  String groupId = null;
  
  String version = null;
  MavenPomMetadata();

  @override
  String toString() {
    return 'MavenPomMetadata[artifactId=$artifactId, groupId=$groupId, version=$version, ]';
  }

  MavenPomMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['artifactId'] == null) {
      artifactId = null;
    } else {
          artifactId = json['artifactId'];
    }
    if (json['groupId'] == null) {
      groupId = null;
    } else {
          groupId = json['groupId'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (artifactId != null)
      json['artifactId'] = artifactId;
    if (groupId != null)
      json['groupId'] = groupId;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<MavenPomMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenPomMetadata>() : json.map((value) => MavenPomMetadata.fromJson(value)).toList();
  }

  static Map<String, MavenPomMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenPomMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenPomMetadata.fromJson(value));
    }
    return map;
  }
}


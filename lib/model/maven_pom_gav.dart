part of azure_devops_sdk.api;

class MavenPomGav {
  
  String artifactId = null;
  
  String groupId = null;
  
  String version = null;
  MavenPomGav();

  @override
  String toString() {
    return 'MavenPomGav[artifactId=$artifactId, groupId=$groupId, version=$version, ]';
  }

  MavenPomGav.fromJson(Map<String, dynamic> json) {
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

  static List<MavenPomGav> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenPomGav>() : json.map((value) => MavenPomGav.fromJson(value)).toList();
  }

  static Map<String, MavenPomGav> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenPomGav>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenPomGav.fromJson(value));
    }
    return map;
  }
}


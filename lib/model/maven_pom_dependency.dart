part of azure_devops_sdk.api;

class MavenPomDependency {
  
  String artifactId = null;
  
  String groupId = null;
  
  String version = null;
  MavenPomDependency();

  @override
  String toString() {
    return 'MavenPomDependency[artifactId=$artifactId, groupId=$groupId, version=$version, ]';
  }

  MavenPomDependency.fromJson(Map<String, dynamic> json) {
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

  static List<MavenPomDependency> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenPomDependency>() : json.map((value) => MavenPomDependency.fromJson(value)).toList();
  }

  static Map<String, MavenPomDependency> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenPomDependency>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenPomDependency.fromJson(value));
    }
    return map;
  }
}


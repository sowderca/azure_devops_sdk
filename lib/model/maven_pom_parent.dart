part of azure_devops_sdk.api;

class MavenPomParent {
  
  String artifactId = null;
  
  String groupId = null;
  
  String version = null;
  MavenPomParent();

  @override
  String toString() {
    return 'MavenPomParent[artifactId=$artifactId, groupId=$groupId, version=$version, ]';
  }

  MavenPomParent.fromJson(Map<String, dynamic> json) {
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

  static List<MavenPomParent> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenPomParent>() : json.map((value) => MavenPomParent.fromJson(value)).toList();
  }

  static Map<String, MavenPomParent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenPomParent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenPomParent.fromJson(value));
    }
    return map;
  }
}


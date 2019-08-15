part of azure_devops_sdk.api;

class Plugin {
  
  String artifactId = null;
  
  String groupId = null;
  
  String version = null;
  Plugin();

  @override
  String toString() {
    return 'Plugin[artifactId=$artifactId, groupId=$groupId, version=$version, ]';
  }

  Plugin.fromJson(Map<String, dynamic> json) {
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

  static List<Plugin> listFromJson(List<dynamic> json) {
    return json == null ? List<Plugin>() : json.map((value) => Plugin.fromJson(value)).toList();
  }

  static Map<String, Plugin> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Plugin>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Plugin.fromJson(value));
    }
    return map;
  }
}


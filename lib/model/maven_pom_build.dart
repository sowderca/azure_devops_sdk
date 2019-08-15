part of azure_devops_sdk.api;

class MavenPomBuild {
  
  List<Plugin> plugins = [];
  MavenPomBuild();

  @override
  String toString() {
    return 'MavenPomBuild[plugins=$plugins, ]';
  }

  MavenPomBuild.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['plugins'] == null) {
      plugins = null;
    } else {
      plugins = Plugin.listFromJson(json['plugins']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (plugins != null)
      json['plugins'] = plugins;
    return json;
  }

  static List<MavenPomBuild> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenPomBuild>() : json.map((value) => MavenPomBuild.fromJson(value)).toList();
  }

  static Map<String, MavenPomBuild> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenPomBuild>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenPomBuild.fromJson(value));
    }
    return map;
  }
}


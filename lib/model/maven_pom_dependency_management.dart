part of azure_devops_sdk.api;

class MavenPomDependencyManagement {
  
  List<MavenPomDependency> dependencies = [];
  MavenPomDependencyManagement();

  @override
  String toString() {
    return 'MavenPomDependencyManagement[dependencies=$dependencies, ]';
  }

  MavenPomDependencyManagement.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['dependencies'] == null) {
      dependencies = null;
    } else {
      dependencies = MavenPomDependency.listFromJson(json['dependencies']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dependencies != null)
      json['dependencies'] = dependencies;
    return json;
  }

  static List<MavenPomDependencyManagement> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenPomDependencyManagement>() : json.map((value) => MavenPomDependencyManagement.fromJson(value)).toList();
  }

  static Map<String, MavenPomDependencyManagement> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenPomDependencyManagement>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenPomDependencyManagement.fromJson(value));
    }
    return map;
  }
}


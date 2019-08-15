part of azure_devops_sdk.api;

class DeploymentBuild {
  
  String type = null;
  DeploymentBuild();

  @override
  String toString() {
    return 'DeploymentBuild[type=$type, ]';
  }

  DeploymentBuild.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<DeploymentBuild> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentBuild>() : json.map((value) => DeploymentBuild.fromJson(value)).toList();
  }

  static Map<String, DeploymentBuild> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentBuild>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentBuild.fromJson(value));
    }
    return map;
  }
}


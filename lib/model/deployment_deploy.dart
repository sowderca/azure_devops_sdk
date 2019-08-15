part of azure_devops_sdk.api;

class DeploymentDeploy {
  
  String type = null;
  DeploymentDeploy();

  @override
  String toString() {
    return 'DeploymentDeploy[type=$type, ]';
  }

  DeploymentDeploy.fromJson(Map<String, dynamic> json) {
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

  static List<DeploymentDeploy> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentDeploy>() : json.map((value) => DeploymentDeploy.fromJson(value)).toList();
  }

  static Map<String, DeploymentDeploy> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentDeploy>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentDeploy.fromJson(value));
    }
    return map;
  }
}


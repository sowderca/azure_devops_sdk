part of azure_devops_sdk.api;

class DeploymentGroupUpdateParameter {
  /* Description of the deployment group. */
  String description = null;
  /* Name of the deployment group. */
  String name = null;
  DeploymentGroupUpdateParameter();

  @override
  String toString() {
    return 'DeploymentGroupUpdateParameter[description=$description, name=$name, ]';
  }

  DeploymentGroupUpdateParameter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<DeploymentGroupUpdateParameter> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentGroupUpdateParameter>() : json.map((value) => DeploymentGroupUpdateParameter.fromJson(value)).toList();
  }

  static Map<String, DeploymentGroupUpdateParameter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentGroupUpdateParameter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentGroupUpdateParameter.fromJson(value));
    }
    return map;
  }
}


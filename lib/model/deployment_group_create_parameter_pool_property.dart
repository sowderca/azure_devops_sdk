part of azure_devops_sdk.api;

class DeploymentGroupCreateParameterPoolProperty {
  /* Deployment pool identifier. */
  int id = null;
  DeploymentGroupCreateParameterPoolProperty();

  @override
  String toString() {
    return 'DeploymentGroupCreateParameterPoolProperty[id=$id, ]';
  }

  DeploymentGroupCreateParameterPoolProperty.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<DeploymentGroupCreateParameterPoolProperty> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentGroupCreateParameterPoolProperty>() : json.map((value) => DeploymentGroupCreateParameterPoolProperty.fromJson(value)).toList();
  }

  static Map<String, DeploymentGroupCreateParameterPoolProperty> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentGroupCreateParameterPoolProperty>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentGroupCreateParameterPoolProperty.fromJson(value));
    }
    return map;
  }
}


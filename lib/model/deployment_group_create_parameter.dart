part of azure_devops_sdk.api;

class DeploymentGroupCreateParameter {
  /* Description of the deployment group. */
  String description = null;
  /* Name of the deployment group. */
  String name = null;
  /* Identifier of the deployment pool in which deployment agents are registered. */
  int poolId = null;
  DeploymentGroupCreateParameter();

  @override
  String toString() {
    return 'DeploymentGroupCreateParameter[description=$description, name=$name, poolId=$poolId, ]';
  }

  DeploymentGroupCreateParameter.fromJson(Map<String, dynamic> json) {
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
    if (json['poolId'] == null) {
      poolId = null;
    } else {
          poolId = json['poolId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (name != null)
      json['name'] = name;
    if (poolId != null)
      json['poolId'] = poolId;
    return json;
  }

  static List<DeploymentGroupCreateParameter> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentGroupCreateParameter>() : json.map((value) => DeploymentGroupCreateParameter.fromJson(value)).toList();
  }

  static Map<String, DeploymentGroupCreateParameter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentGroupCreateParameter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentGroupCreateParameter.fromJson(value));
    }
    return map;
  }
}


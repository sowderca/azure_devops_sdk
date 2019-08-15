part of azure_devops_sdk.api;

class DeploymentTargetUpdateParameter {
  /* Identifier of the deployment target. */
  int id = null;
  
  List<String> tags = [];
  DeploymentTargetUpdateParameter();

  @override
  String toString() {
    return 'DeploymentTargetUpdateParameter[id=$id, tags=$tags, ]';
  }

  DeploymentTargetUpdateParameter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['tags'] == null) {
      tags = null;
    } else {
      tags = (json['tags'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (tags != null)
      json['tags'] = tags;
    return json;
  }

  static List<DeploymentTargetUpdateParameter> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentTargetUpdateParameter>() : json.map((value) => DeploymentTargetUpdateParameter.fromJson(value)).toList();
  }

  static Map<String, DeploymentTargetUpdateParameter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentTargetUpdateParameter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentTargetUpdateParameter.fromJson(value));
    }
    return map;
  }
}


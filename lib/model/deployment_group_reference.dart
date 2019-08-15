part of azure_devops_sdk.api;

class DeploymentGroupReference {
  /* Deployment group identifier. */
  int id = null;
  /* Name of the deployment group. */
  String name = null;
  
  TaskAgentPoolReference pool = null;
  
  ProjectReference project = null;
  DeploymentGroupReference();

  @override
  String toString() {
    return 'DeploymentGroupReference[id=$id, name=$name, pool=$pool, project=$project, ]';
  }

  DeploymentGroupReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['pool'] == null) {
      pool = null;
    } else {
      pool = TaskAgentPoolReference.fromJson(json['pool']);
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = ProjectReference.fromJson(json['project']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (pool != null)
      json['pool'] = pool;
    if (project != null)
      json['project'] = project;
    return json;
  }

  static List<DeploymentGroupReference> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentGroupReference>() : json.map((value) => DeploymentGroupReference.fromJson(value)).toList();
  }

  static Map<String, DeploymentGroupReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentGroupReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentGroupReference.fromJson(value));
    }
    return map;
  }
}


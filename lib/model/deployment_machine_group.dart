part of azure_devops_sdk.api;

class DeploymentMachineGroup {
  
  int id = null;
  
  String name = null;
  
  TaskAgentPoolReference pool = null;
  
  ProjectReference project = null;
  DeploymentMachineGroup();

  @override
  String toString() {
    return 'DeploymentMachineGroup[id=$id, name=$name, pool=$pool, project=$project, ]';
  }

  DeploymentMachineGroup.fromJson(Map<String, dynamic> json) {
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

  static List<DeploymentMachineGroup> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentMachineGroup>() : json.map((value) => DeploymentMachineGroup.fromJson(value)).toList();
  }

  static Map<String, DeploymentMachineGroup> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentMachineGroup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentMachineGroup.fromJson(value));
    }
    return map;
  }
}


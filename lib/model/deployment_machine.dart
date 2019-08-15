part of azure_devops_sdk.api;

class DeploymentMachine {
  
  TaskAgent agent = null;
  /* Deployment target Identifier. */
  int id = null;
  
  PropertiesCollection properties = null;
  /* Tags of the deployment target. */
  List<String> tags = [];
  DeploymentMachine();

  @override
  String toString() {
    return 'DeploymentMachine[agent=$agent, id=$id, properties=$properties, tags=$tags, ]';
  }

  DeploymentMachine.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['agent'] == null) {
      agent = null;
    } else {
      agent = TaskAgent.fromJson(json['agent']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = PropertiesCollection.fromJson(json['properties']);
    }
    if (json['tags'] == null) {
      tags = null;
    } else {
      tags = (json['tags'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (agent != null)
      json['agent'] = agent;
    if (id != null)
      json['id'] = id;
    if (properties != null)
      json['properties'] = properties;
    if (tags != null)
      json['tags'] = tags;
    return json;
  }

  static List<DeploymentMachine> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentMachine>() : json.map((value) => DeploymentMachine.fromJson(value)).toList();
  }

  static Map<String, DeploymentMachine> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentMachine>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentMachine.fromJson(value));
    }
    return map;
  }
}


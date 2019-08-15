part of azure_devops_sdk.api;

class DeploymentMachineChangedData {
  
  TaskAgent agent = null;
  /* Deployment target Identifier. */
  int id = null;
  
  PropertiesCollection properties = null;
  /* Tags of the deployment target. */
  List<String> tags = [];
  DeploymentMachineChangedData();

  @override
  String toString() {
    return 'DeploymentMachineChangedData[agent=$agent, id=$id, properties=$properties, tags=$tags, ]';
  }

  DeploymentMachineChangedData.fromJson(Map<String, dynamic> json) {
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

  static List<DeploymentMachineChangedData> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentMachineChangedData>() : json.map((value) => DeploymentMachineChangedData.fromJson(value)).toList();
  }

  static Map<String, DeploymentMachineChangedData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentMachineChangedData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentMachineChangedData.fromJson(value));
    }
    return map;
  }
}


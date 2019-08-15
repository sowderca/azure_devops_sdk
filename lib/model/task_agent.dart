part of azure_devops_sdk.api;

class TaskAgent {
  
  ReferenceLinks links = null;
  /* This agent's access point. */
  String accessPoint = null;
  /* Whether or not this agent should run jobs. */
  bool enabled = null;
  /* Identifier of the agent. */
  int id = null;
  /* Name of the agent. */
  String name = null;
  /* Agent OS. */
  String osDescription = null;
  /* Provisioning state of this agent. */
  String provisioningState = null;
  /* Whether or not the agent is online. */
  String status = null;
  //enum statusEnum {  offline,  online,  };{
  /* Agent version. */
  String version = null;
  TaskAgent();

  @override
  String toString() {
    return 'TaskAgent[links=$links, accessPoint=$accessPoint, enabled=$enabled, id=$id, name=$name, osDescription=$osDescription, provisioningState=$provisioningState, status=$status, version=$version, ]';
  }

  TaskAgent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['accessPoint'] == null) {
      accessPoint = null;
    } else {
          accessPoint = json['accessPoint'];
    }
    if (json['enabled'] == null) {
      enabled = null;
    } else {
          enabled = json['enabled'];
    }
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
    if (json['osDescription'] == null) {
      osDescription = null;
    } else {
          osDescription = json['osDescription'];
    }
    if (json['provisioningState'] == null) {
      provisioningState = null;
    } else {
          provisioningState = json['provisioningState'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (accessPoint != null)
      json['accessPoint'] = accessPoint;
    if (enabled != null)
      json['enabled'] = enabled;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (osDescription != null)
      json['osDescription'] = osDescription;
    if (provisioningState != null)
      json['provisioningState'] = provisioningState;
    if (status != null)
      json['status'] = status;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<TaskAgent> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgent>() : json.map((value) => TaskAgent.fromJson(value)).toList();
  }

  static Map<String, TaskAgent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgent.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class BuildProcessResources {
  
  List<ServiceEndpointReference> endpoints = [];
  
  List<SecureFileReference> files = [];
  
  List<AgentPoolQueueReference> queues = [];
  
  List<VariableGroupReference> variableGroups = [];
  BuildProcessResources();

  @override
  String toString() {
    return 'BuildProcessResources[endpoints=$endpoints, files=$files, queues=$queues, variableGroups=$variableGroups, ]';
  }

  BuildProcessResources.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['endpoints'] == null) {
      endpoints = null;
    } else {
      endpoints = ServiceEndpointReference.listFromJson(json['endpoints']);
    }
    if (json['files'] == null) {
      files = null;
    } else {
      files = SecureFileReference.listFromJson(json['files']);
    }
    if (json['queues'] == null) {
      queues = null;
    } else {
      queues = AgentPoolQueueReference.listFromJson(json['queues']);
    }
    if (json['variableGroups'] == null) {
      variableGroups = null;
    } else {
      variableGroups = VariableGroupReference.listFromJson(json['variableGroups']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (endpoints != null)
      json['endpoints'] = endpoints;
    if (files != null)
      json['files'] = files;
    if (queues != null)
      json['queues'] = queues;
    if (variableGroups != null)
      json['variableGroups'] = variableGroups;
    return json;
  }

  static List<BuildProcessResources> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildProcessResources>() : json.map((value) => BuildProcessResources.fromJson(value)).toList();
  }

  static Map<String, BuildProcessResources> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildProcessResources>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildProcessResources.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class YamlPipelineProcessResources {
  
  List<ServiceEndpointReference> endpoints = [];
  
  List<AgentPoolQueueReference> queues = [];
  YamlPipelineProcessResources();

  @override
  String toString() {
    return 'YamlPipelineProcessResources[endpoints=$endpoints, queues=$queues, ]';
  }

  YamlPipelineProcessResources.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['endpoints'] == null) {
      endpoints = null;
    } else {
      endpoints = ServiceEndpointReference.listFromJson(json['endpoints']);
    }
    if (json['queues'] == null) {
      queues = null;
    } else {
      queues = AgentPoolQueueReference.listFromJson(json['queues']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (endpoints != null)
      json['endpoints'] = endpoints;
    if (queues != null)
      json['queues'] = queues;
    return json;
  }

  static List<YamlPipelineProcessResources> listFromJson(List<dynamic> json) {
    return json == null ? List<YamlPipelineProcessResources>() : json.map((value) => YamlPipelineProcessResources.fromJson(value)).toList();
  }

  static Map<String, YamlPipelineProcessResources> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, YamlPipelineProcessResources>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = YamlPipelineProcessResources.fromJson(value));
    }
    return map;
  }
}


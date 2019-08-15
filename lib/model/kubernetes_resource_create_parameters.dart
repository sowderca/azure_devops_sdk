part of azure_devops_sdk.api;

class KubernetesResourceCreateParameters {
  
  String clusterName = null;
  
  String name = null;
  
  String namespace = null;
  
  String serviceEndpointId = null;
  KubernetesResourceCreateParameters();

  @override
  String toString() {
    return 'KubernetesResourceCreateParameters[clusterName=$clusterName, name=$name, namespace=$namespace, serviceEndpointId=$serviceEndpointId, ]';
  }

  KubernetesResourceCreateParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['clusterName'] == null) {
      clusterName = null;
    } else {
          clusterName = json['clusterName'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['namespace'] == null) {
      namespace = null;
    } else {
          namespace = json['namespace'];
    }
    if (json['serviceEndpointId'] == null) {
      serviceEndpointId = null;
    } else {
          serviceEndpointId = json['serviceEndpointId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (clusterName != null)
      json['clusterName'] = clusterName;
    if (name != null)
      json['name'] = name;
    if (namespace != null)
      json['namespace'] = namespace;
    if (serviceEndpointId != null)
      json['serviceEndpointId'] = serviceEndpointId;
    return json;
  }

  static List<KubernetesResourceCreateParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<KubernetesResourceCreateParameters>() : json.map((value) => KubernetesResourceCreateParameters.fromJson(value)).toList();
  }

  static Map<String, KubernetesResourceCreateParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, KubernetesResourceCreateParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = KubernetesResourceCreateParameters.fromJson(value));
    }
    return map;
  }
}


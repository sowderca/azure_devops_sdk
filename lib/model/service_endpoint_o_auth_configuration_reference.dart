part of azure_devops_sdk.api;

class ServiceEndpointOAuthConfigurationReference {
  
  String configurationId = null;
  
  String serviceEndpointId = null;
  
  String serviceEndpointProjectId = null;
  ServiceEndpointOAuthConfigurationReference();

  @override
  String toString() {
    return 'ServiceEndpointOAuthConfigurationReference[configurationId=$configurationId, serviceEndpointId=$serviceEndpointId, serviceEndpointProjectId=$serviceEndpointProjectId, ]';
  }

  ServiceEndpointOAuthConfigurationReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['configurationId'] == null) {
      configurationId = null;
    } else {
          configurationId = json['configurationId'];
    }
    if (json['serviceEndpointId'] == null) {
      serviceEndpointId = null;
    } else {
          serviceEndpointId = json['serviceEndpointId'];
    }
    if (json['serviceEndpointProjectId'] == null) {
      serviceEndpointProjectId = null;
    } else {
          serviceEndpointProjectId = json['serviceEndpointProjectId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (configurationId != null)
      json['configurationId'] = configurationId;
    if (serviceEndpointId != null)
      json['serviceEndpointId'] = serviceEndpointId;
    if (serviceEndpointProjectId != null)
      json['serviceEndpointProjectId'] = serviceEndpointProjectId;
    return json;
  }

  static List<ServiceEndpointOAuthConfigurationReference> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceEndpointOAuthConfigurationReference>() : json.map((value) => ServiceEndpointOAuthConfigurationReference.fromJson(value)).toList();
  }

  static Map<String, ServiceEndpointOAuthConfigurationReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceEndpointOAuthConfigurationReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceEndpointOAuthConfigurationReference.fromJson(value));
    }
    return map;
  }
}


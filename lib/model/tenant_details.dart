part of azure_devops_sdk.api;

class TenantDetails {
  /* Access details */
  List<AgentGroupAccessData> accessDetails = [];
  /* Tenant Id */
  String id = null;
  /* Static machines configured for local runs */
  List<WebApiTestMachine> staticMachines = [];
  
  WebApiUserLoadTestMachineInput userLoadAgentInput = null;
  
  String userLoadAgentResourcesUri = null;
  /* The list of valid geo-lcations for tenant */
  List<String> validGeoLocations = [];
  TenantDetails();

  @override
  String toString() {
    return 'TenantDetails[accessDetails=$accessDetails, id=$id, staticMachines=$staticMachines, userLoadAgentInput=$userLoadAgentInput, userLoadAgentResourcesUri=$userLoadAgentResourcesUri, validGeoLocations=$validGeoLocations, ]';
  }

  TenantDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['accessDetails'] == null) {
      accessDetails = null;
    } else {
      accessDetails = AgentGroupAccessData.listFromJson(json['accessDetails']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['staticMachines'] == null) {
      staticMachines = null;
    } else {
      staticMachines = WebApiTestMachine.listFromJson(json['staticMachines']);
    }
    if (json['userLoadAgentInput'] == null) {
      userLoadAgentInput = null;
    } else {
      userLoadAgentInput = WebApiUserLoadTestMachineInput.fromJson(json['userLoadAgentInput']);
    }
    if (json['userLoadAgentResourcesUri'] == null) {
      userLoadAgentResourcesUri = null;
    } else {
          userLoadAgentResourcesUri = json['userLoadAgentResourcesUri'];
    }
    if (json['validGeoLocations'] == null) {
      validGeoLocations = null;
    } else {
      validGeoLocations = (json['validGeoLocations'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (accessDetails != null)
      json['accessDetails'] = accessDetails;
    if (id != null)
      json['id'] = id;
    if (staticMachines != null)
      json['staticMachines'] = staticMachines;
    if (userLoadAgentInput != null)
      json['userLoadAgentInput'] = userLoadAgentInput;
    if (userLoadAgentResourcesUri != null)
      json['userLoadAgentResourcesUri'] = userLoadAgentResourcesUri;
    if (validGeoLocations != null)
      json['validGeoLocations'] = validGeoLocations;
    return json;
  }

  static List<TenantDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<TenantDetails>() : json.map((value) => TenantDetails.fromJson(value)).toList();
  }

  static Map<String, TenantDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TenantDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TenantDetails.fromJson(value));
    }
    return map;
  }
}


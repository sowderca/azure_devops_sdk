part of azure_devops_sdk.api;

class DeploymentAuthorizationInfo {
  /* Authorization header type, typically either RevalidateApproverIdentity or OnBehalfOf. */
  String authorizationHeaderFor = null;
  //enum authorizationHeaderForEnum {  revalidateApproverIdentity,  onBehalfOf,  };{
  /* List of resources. */
  List<String> resources = [];
  /* ID of the tenant. */
  String tenantId = null;
  /* Access token key. */
  String vstsAccessTokenKey = null;
  DeploymentAuthorizationInfo();

  @override
  String toString() {
    return 'DeploymentAuthorizationInfo[authorizationHeaderFor=$authorizationHeaderFor, resources=$resources, tenantId=$tenantId, vstsAccessTokenKey=$vstsAccessTokenKey, ]';
  }

  DeploymentAuthorizationInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['authorizationHeaderFor'] == null) {
      authorizationHeaderFor = null;
    } else {
          authorizationHeaderFor = json['authorizationHeaderFor'];
    }
    if (json['resources'] == null) {
      resources = null;
    } else {
      resources = (json['resources'] as List).cast<String>();
    }
    if (json['tenantId'] == null) {
      tenantId = null;
    } else {
          tenantId = json['tenantId'];
    }
    if (json['vstsAccessTokenKey'] == null) {
      vstsAccessTokenKey = null;
    } else {
          vstsAccessTokenKey = json['vstsAccessTokenKey'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (authorizationHeaderFor != null)
      json['authorizationHeaderFor'] = authorizationHeaderFor;
    if (resources != null)
      json['resources'] = resources;
    if (tenantId != null)
      json['tenantId'] = tenantId;
    if (vstsAccessTokenKey != null)
      json['vstsAccessTokenKey'] = vstsAccessTokenKey;
    return json;
  }

  static List<DeploymentAuthorizationInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentAuthorizationInfo>() : json.map((value) => DeploymentAuthorizationInfo.fromJson(value)).toList();
  }

  static Map<String, DeploymentAuthorizationInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentAuthorizationInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentAuthorizationInfo.fromJson(value));
    }
    return map;
  }
}


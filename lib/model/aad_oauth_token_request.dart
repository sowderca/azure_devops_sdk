part of azure_devops_sdk.api;

class AadOauthTokenRequest {
  
  bool refresh = null;
  
  String resource = null;
  
  String tenantId = null;
  
  String token = null;
  AadOauthTokenRequest();

  @override
  String toString() {
    return 'AadOauthTokenRequest[refresh=$refresh, resource=$resource, tenantId=$tenantId, token=$token, ]';
  }

  AadOauthTokenRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['refresh'] == null) {
      refresh = null;
    } else {
          refresh = json['refresh'];
    }
    if (json['resource'] == null) {
      resource = null;
    } else {
          resource = json['resource'];
    }
    if (json['tenantId'] == null) {
      tenantId = null;
    } else {
          tenantId = json['tenantId'];
    }
    if (json['token'] == null) {
      token = null;
    } else {
          token = json['token'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (refresh != null)
      json['refresh'] = refresh;
    if (resource != null)
      json['resource'] = resource;
    if (tenantId != null)
      json['tenantId'] = tenantId;
    if (token != null)
      json['token'] = token;
    return json;
  }

  static List<AadOauthTokenRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<AadOauthTokenRequest>() : json.map((value) => AadOauthTokenRequest.fromJson(value)).toList();
  }

  static Map<String, AadOauthTokenRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AadOauthTokenRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AadOauthTokenRequest.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class OAuthEndpointStatus {
  
  String state = null;
  
  String statusMessage = null;
  OAuthEndpointStatus();

  @override
  String toString() {
    return 'OAuthEndpointStatus[state=$state, statusMessage=$statusMessage, ]';
  }

  OAuthEndpointStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['statusMessage'] == null) {
      statusMessage = null;
    } else {
          statusMessage = json['statusMessage'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (state != null)
      json['state'] = state;
    if (statusMessage != null)
      json['statusMessage'] = statusMessage;
    return json;
  }

  static List<OAuthEndpointStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<OAuthEndpointStatus>() : json.map((value) => OAuthEndpointStatus.fromJson(value)).toList();
  }

  static Map<String, OAuthEndpointStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OAuthEndpointStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OAuthEndpointStatus.fromJson(value));
    }
    return map;
  }
}


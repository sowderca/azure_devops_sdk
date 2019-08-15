part of azure_devops_sdk.api;

class TaskAgentAuthorization {
  /* Endpoint used to obtain access tokens from the configured token service. */
  String authorizationUrl = null;
  /* Client identifier for this agent. */
  String clientId = null;
  
  TaskAgentPublicKey publicKey = null;
  TaskAgentAuthorization();

  @override
  String toString() {
    return 'TaskAgentAuthorization[authorizationUrl=$authorizationUrl, clientId=$clientId, publicKey=$publicKey, ]';
  }

  TaskAgentAuthorization.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['authorizationUrl'] == null) {
      authorizationUrl = null;
    } else {
          authorizationUrl = json['authorizationUrl'];
    }
    if (json['clientId'] == null) {
      clientId = null;
    } else {
          clientId = json['clientId'];
    }
    if (json['publicKey'] == null) {
      publicKey = null;
    } else {
      publicKey = TaskAgentPublicKey.fromJson(json['publicKey']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (authorizationUrl != null)
      json['authorizationUrl'] = authorizationUrl;
    if (clientId != null)
      json['clientId'] = clientId;
    if (publicKey != null)
      json['publicKey'] = publicKey;
    return json;
  }

  static List<TaskAgentAuthorization> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentAuthorization>() : json.map((value) => TaskAgentAuthorization.fromJson(value)).toList();
  }

  static Map<String, TaskAgentAuthorization> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentAuthorization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentAuthorization.fromJson(value));
    }
    return map;
  }
}


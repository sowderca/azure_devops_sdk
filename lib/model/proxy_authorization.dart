part of azure_devops_sdk.api;

class ProxyAuthorization {
  /* Gets or sets the endpoint used to obtain access tokens from the configured token service. */
  String authorizationUrl = null;
  /* Gets or sets the client identifier for this proxy. */
  String clientId = null;
  
  IdentityDescriptor identity = null;
  
  PublicKey publicKey = null;
  ProxyAuthorization();

  @override
  String toString() {
    return 'ProxyAuthorization[authorizationUrl=$authorizationUrl, clientId=$clientId, identity=$identity, publicKey=$publicKey, ]';
  }

  ProxyAuthorization.fromJson(Map<String, dynamic> json) {
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
    if (json['identity'] == null) {
      identity = null;
    } else {
      identity = IdentityDescriptor.fromJson(json['identity']);
    }
    if (json['publicKey'] == null) {
      publicKey = null;
    } else {
      publicKey = PublicKey.fromJson(json['publicKey']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (authorizationUrl != null)
      json['authorizationUrl'] = authorizationUrl;
    if (clientId != null)
      json['clientId'] = clientId;
    if (identity != null)
      json['identity'] = identity;
    if (publicKey != null)
      json['publicKey'] = publicKey;
    return json;
  }

  static List<ProxyAuthorization> listFromJson(List<dynamic> json) {
    return json == null ? List<ProxyAuthorization>() : json.map((value) => ProxyAuthorization.fromJson(value)).toList();
  }

  static Map<String, ProxyAuthorization> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProxyAuthorization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProxyAuthorization.fromJson(value));
    }
    return map;
  }
}


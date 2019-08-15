part of azure_devops_sdk.api;

class TokenAdminRevocation {
  /* The authorization ID of the OAuth authorization to revoke. */
  String authorizationId = null;
  TokenAdminRevocation();

  @override
  String toString() {
    return 'TokenAdminRevocation[authorizationId=$authorizationId, ]';
  }

  TokenAdminRevocation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['authorizationId'] == null) {
      authorizationId = null;
    } else {
          authorizationId = json['authorizationId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (authorizationId != null)
      json['authorizationId'] = authorizationId;
    return json;
  }

  static List<TokenAdminRevocation> listFromJson(List<dynamic> json) {
    return json == null ? List<TokenAdminRevocation>() : json.map((value) => TokenAdminRevocation.fromJson(value)).toList();
  }

  static Map<String, TokenAdminRevocation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TokenAdminRevocation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TokenAdminRevocation.fromJson(value));
    }
    return map;
  }
}


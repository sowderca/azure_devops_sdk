part of azure_devops_sdk.api;

class TokenAdministrationRevocation {
  /* A list of audience (target accounts) to limit the revocations to */
  List<String> audience = [];
  /* A list of authorization ID of the OAuth authorization to revoke. */
  List<String> authorizationIds = [];
  TokenAdministrationRevocation();

  @override
  String toString() {
    return 'TokenAdministrationRevocation[audience=$audience, authorizationIds=$authorizationIds, ]';
  }

  TokenAdministrationRevocation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['audience'] == null) {
      audience = null;
    } else {
      audience = (json['audience'] as List).cast<String>();
    }
    if (json['authorizationIds'] == null) {
      authorizationIds = null;
    } else {
      authorizationIds = (json['authorizationIds'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (audience != null)
      json['audience'] = audience;
    if (authorizationIds != null)
      json['authorizationIds'] = authorizationIds;
    return json;
  }

  static List<TokenAdministrationRevocation> listFromJson(List<dynamic> json) {
    return json == null ? List<TokenAdministrationRevocation>() : json.map((value) => TokenAdministrationRevocation.fromJson(value)).toList();
  }

  static Map<String, TokenAdministrationRevocation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TokenAdministrationRevocation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TokenAdministrationRevocation.fromJson(value));
    }
    return map;
  }
}


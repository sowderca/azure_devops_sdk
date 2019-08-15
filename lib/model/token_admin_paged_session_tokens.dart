part of azure_devops_sdk.api;

class TokenAdminPagedSessionTokens {
  /* The continuation token that can be used to retrieve the next page of session tokens, or <code>null</code> if there is no next page. */
  String continuationToken = null;
  /* The list of all session tokens in the current page. */
  List<SessionToken> value = [];
  TokenAdminPagedSessionTokens();

  @override
  String toString() {
    return 'TokenAdminPagedSessionTokens[continuationToken=$continuationToken, value=$value, ]';
  }

  TokenAdminPagedSessionTokens.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['continuationToken'] == null) {
      continuationToken = null;
    } else {
          continuationToken = json['continuationToken'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
      value = SessionToken.listFromJson(json['value']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (continuationToken != null)
      json['continuationToken'] = continuationToken;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<TokenAdminPagedSessionTokens> listFromJson(List<dynamic> json) {
    return json == null ? List<TokenAdminPagedSessionTokens>() : json.map((value) => TokenAdminPagedSessionTokens.fromJson(value)).toList();
  }

  static Map<String, TokenAdminPagedSessionTokens> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TokenAdminPagedSessionTokens>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TokenAdminPagedSessionTokens.fromJson(value));
    }
    return map;
  }
}


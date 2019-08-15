part of azure_devops_sdk.api;

class OAuth2TokenResult {
  
  String accessToken = null;
  
  String error = null;
  
  String errorDescription = null;
  
  String expiresIn = null;
  
  String issuedAt = null;
  
  String refreshToken = null;
  
  String scope = null;
  OAuth2TokenResult();

  @override
  String toString() {
    return 'OAuth2TokenResult[accessToken=$accessToken, error=$error, errorDescription=$errorDescription, expiresIn=$expiresIn, issuedAt=$issuedAt, refreshToken=$refreshToken, scope=$scope, ]';
  }

  OAuth2TokenResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['accessToken'] == null) {
      accessToken = null;
    } else {
          accessToken = json['accessToken'];
    }
    if (json['error'] == null) {
      error = null;
    } else {
          error = json['error'];
    }
    if (json['errorDescription'] == null) {
      errorDescription = null;
    } else {
          errorDescription = json['errorDescription'];
    }
    if (json['expiresIn'] == null) {
      expiresIn = null;
    } else {
          expiresIn = json['expiresIn'];
    }
    if (json['issuedAt'] == null) {
      issuedAt = null;
    } else {
          issuedAt = json['issuedAt'];
    }
    if (json['refreshToken'] == null) {
      refreshToken = null;
    } else {
          refreshToken = json['refreshToken'];
    }
    if (json['scope'] == null) {
      scope = null;
    } else {
          scope = json['scope'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (accessToken != null)
      json['accessToken'] = accessToken;
    if (error != null)
      json['error'] = error;
    if (errorDescription != null)
      json['errorDescription'] = errorDescription;
    if (expiresIn != null)
      json['expiresIn'] = expiresIn;
    if (issuedAt != null)
      json['issuedAt'] = issuedAt;
    if (refreshToken != null)
      json['refreshToken'] = refreshToken;
    if (scope != null)
      json['scope'] = scope;
    return json;
  }

  static List<OAuth2TokenResult> listFromJson(List<dynamic> json) {
    return json == null ? List<OAuth2TokenResult>() : json.map((value) => OAuth2TokenResult.fromJson(value)).toList();
  }

  static Map<String, OAuth2TokenResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OAuth2TokenResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OAuth2TokenResult.fromJson(value));
    }
    return map;
  }
}


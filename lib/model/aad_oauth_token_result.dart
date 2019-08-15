part of azure_devops_sdk.api;

class AadOauthTokenResult {
  
  String accessToken = null;
  
  String refreshTokenCache = null;
  AadOauthTokenResult();

  @override
  String toString() {
    return 'AadOauthTokenResult[accessToken=$accessToken, refreshTokenCache=$refreshTokenCache, ]';
  }

  AadOauthTokenResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['accessToken'] == null) {
      accessToken = null;
    } else {
          accessToken = json['accessToken'];
    }
    if (json['refreshTokenCache'] == null) {
      refreshTokenCache = null;
    } else {
          refreshTokenCache = json['refreshTokenCache'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (accessToken != null)
      json['accessToken'] = accessToken;
    if (refreshTokenCache != null)
      json['refreshTokenCache'] = refreshTokenCache;
    return json;
  }

  static List<AadOauthTokenResult> listFromJson(List<dynamic> json) {
    return json == null ? List<AadOauthTokenResult>() : json.map((value) => AadOauthTokenResult.fromJson(value)).toList();
  }

  static Map<String, AadOauthTokenResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AadOauthTokenResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AadOauthTokenResult.fromJson(value));
    }
    return map;
  }
}


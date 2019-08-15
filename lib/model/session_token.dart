part of azure_devops_sdk.api;

class SessionToken {
  /* The error message in case of error */
  String error = null;
  /* The access token */
  String token = null;
  /* The expiration date in UTC */
  DateTime validTo = null;
  SessionToken();

  @override
  String toString() {
    return 'SessionToken[error=$error, token=$token, validTo=$validTo, ]';
  }

  SessionToken.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['error'] == null) {
      error = null;
    } else {
          error = json['error'];
    }
    if (json['token'] == null) {
      token = null;
    } else {
          token = json['token'];
    }
    if (json['validTo'] == null) {
      validTo = null;
    } else {
      validTo = DateTime.parse(json['validTo']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (error != null)
      json['error'] = error;
    if (token != null)
      json['token'] = token;
    if (validTo != null)
      json['validTo'] = validTo == null ? null : validTo.toUtc().toIso8601String();
    return json;
  }

  static List<SessionToken> listFromJson(List<dynamic> json) {
    return json == null ? List<SessionToken>() : json.map((value) => SessionToken.fromJson(value)).toList();
  }

  static Map<String, SessionToken> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SessionToken>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SessionToken.fromJson(value));
    }
    return map;
  }
}


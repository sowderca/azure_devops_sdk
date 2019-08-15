part of azure_devops_sdk.api;

class SessionRequest {
  /* Generic property bag to store data about the session */
  Map<String, String> data = {};
  /* The feed name or id for the session */
  String feed = null;
  /* The type of session If a known value is provided, the Data dictionary will be validated for the presence of properties required by that type */
  String source = null;
  SessionRequest();

  @override
  String toString() {
    return 'SessionRequest[data=$data, feed=$feed, source=$source, ]';
  }

  SessionRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['data'] == null) {
      data = null;
    } else {
          data = (json['data'] as Map).cast<String, String>();
    }
    if (json['feed'] == null) {
      feed = null;
    } else {
          feed = json['feed'];
    }
    if (json['source'] == null) {
      source = null;
    } else {
          source = json['source'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    if (feed != null)
      json['feed'] = feed;
    if (source != null)
      json['source'] = source;
    return json;
  }

  static List<SessionRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<SessionRequest>() : json.map((value) => SessionRequest.fromJson(value)).toList();
  }

  static Map<String, SessionRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SessionRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SessionRequest.fromJson(value));
    }
    return map;
  }
}


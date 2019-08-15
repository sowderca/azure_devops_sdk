part of azure_devops_sdk.api;

class SessionResponse {
  /* The unique identifier for the session */
  String sessionId = null;
  /* The name for the session */
  String sessionName = null;
  SessionResponse();

  @override
  String toString() {
    return 'SessionResponse[sessionId=$sessionId, sessionName=$sessionName, ]';
  }

  SessionResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['sessionId'] == null) {
      sessionId = null;
    } else {
          sessionId = json['sessionId'];
    }
    if (json['sessionName'] == null) {
      sessionName = null;
    } else {
          sessionName = json['sessionName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (sessionId != null)
      json['sessionId'] = sessionId;
    if (sessionName != null)
      json['sessionName'] = sessionName;
    return json;
  }

  static List<SessionResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<SessionResponse>() : json.map((value) => SessionResponse.fromJson(value)).toList();
  }

  static Map<String, SessionResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SessionResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SessionResponse.fromJson(value));
    }
    return map;
  }
}


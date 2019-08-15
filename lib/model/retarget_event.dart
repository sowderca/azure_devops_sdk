part of azure_devops_sdk.api;

class RetargetEvent {
  /* The id of this event. Can be used to track send/receive state between client and server. */
  String eventId = null;
  /* The id of the pull request this event was generated for. */
  int pullRequestId = null;
  RetargetEvent();

  @override
  String toString() {
    return 'RetargetEvent[eventId=$eventId, pullRequestId=$pullRequestId, ]';
  }

  RetargetEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['eventId'] == null) {
      eventId = null;
    } else {
          eventId = json['eventId'];
    }
    if (json['pullRequestId'] == null) {
      pullRequestId = null;
    } else {
          pullRequestId = json['pullRequestId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (eventId != null)
      json['eventId'] = eventId;
    if (pullRequestId != null)
      json['pullRequestId'] = pullRequestId;
    return json;
  }

  static List<RetargetEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<RetargetEvent>() : json.map((value) => RetargetEvent.fromJson(value)).toList();
  }

  static Map<String, RetargetEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RetargetEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RetargetEvent.fromJson(value));
    }
    return map;
  }
}


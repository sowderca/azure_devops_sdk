part of azure_devops_sdk.api;

class StatusAddedEvent {
  /* The id of this event. Can be used to track send/receive state between client and server. */
  String eventId = null;
  /* The id of the pull request this event was generated for. */
  int pullRequestId = null;
  StatusAddedEvent();

  @override
  String toString() {
    return 'StatusAddedEvent[eventId=$eventId, pullRequestId=$pullRequestId, ]';
  }

  StatusAddedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<StatusAddedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<StatusAddedEvent>() : json.map((value) => StatusAddedEvent.fromJson(value)).toList();
  }

  static Map<String, StatusAddedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, StatusAddedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = StatusAddedEvent.fromJson(value));
    }
    return map;
  }
}


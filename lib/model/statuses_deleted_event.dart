part of azure_devops_sdk.api;

class StatusesDeletedEvent {
  /* The id of this event. Can be used to track send/receive state between client and server. */
  String eventId = null;
  /* The id of the pull request this event was generated for. */
  int pullRequestId = null;
  StatusesDeletedEvent();

  @override
  String toString() {
    return 'StatusesDeletedEvent[eventId=$eventId, pullRequestId=$pullRequestId, ]';
  }

  StatusesDeletedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<StatusesDeletedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<StatusesDeletedEvent>() : json.map((value) => StatusesDeletedEvent.fromJson(value)).toList();
  }

  static Map<String, StatusesDeletedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, StatusesDeletedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = StatusesDeletedEvent.fromJson(value));
    }
    return map;
  }
}


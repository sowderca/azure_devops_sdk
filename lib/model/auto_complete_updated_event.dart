part of azure_devops_sdk.api;

class AutoCompleteUpdatedEvent {
  /* The id of this event. Can be used to track send/receive state between client and server. */
  String eventId = null;
  /* The id of the pull request this event was generated for. */
  int pullRequestId = null;
  AutoCompleteUpdatedEvent();

  @override
  String toString() {
    return 'AutoCompleteUpdatedEvent[eventId=$eventId, pullRequestId=$pullRequestId, ]';
  }

  AutoCompleteUpdatedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<AutoCompleteUpdatedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<AutoCompleteUpdatedEvent>() : json.map((value) => AutoCompleteUpdatedEvent.fromJson(value)).toList();
  }

  static Map<String, AutoCompleteUpdatedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AutoCompleteUpdatedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AutoCompleteUpdatedEvent.fromJson(value));
    }
    return map;
  }
}


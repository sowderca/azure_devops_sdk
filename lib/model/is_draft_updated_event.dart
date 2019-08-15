part of azure_devops_sdk.api;

class IsDraftUpdatedEvent {
  /* The id of this event. Can be used to track send/receive state between client and server. */
  String eventId = null;
  /* The id of the pull request this event was generated for. */
  int pullRequestId = null;
  IsDraftUpdatedEvent();

  @override
  String toString() {
    return 'IsDraftUpdatedEvent[eventId=$eventId, pullRequestId=$pullRequestId, ]';
  }

  IsDraftUpdatedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<IsDraftUpdatedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<IsDraftUpdatedEvent>() : json.map((value) => IsDraftUpdatedEvent.fromJson(value)).toList();
  }

  static Map<String, IsDraftUpdatedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, IsDraftUpdatedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = IsDraftUpdatedEvent.fromJson(value));
    }
    return map;
  }
}


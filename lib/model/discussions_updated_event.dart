part of azure_devops_sdk.api;

class DiscussionsUpdatedEvent {
  /* The id of this event. Can be used to track send/receive state between client and server. */
  String eventId = null;
  /* The id of the pull request this event was generated for. */
  int pullRequestId = null;
  DiscussionsUpdatedEvent();

  @override
  String toString() {
    return 'DiscussionsUpdatedEvent[eventId=$eventId, pullRequestId=$pullRequestId, ]';
  }

  DiscussionsUpdatedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<DiscussionsUpdatedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<DiscussionsUpdatedEvent>() : json.map((value) => DiscussionsUpdatedEvent.fromJson(value)).toList();
  }

  static Map<String, DiscussionsUpdatedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DiscussionsUpdatedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DiscussionsUpdatedEvent.fromJson(value));
    }
    return map;
  }
}


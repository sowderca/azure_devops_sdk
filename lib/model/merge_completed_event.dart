part of azure_devops_sdk.api;

class MergeCompletedEvent {
  /* The id of this event. Can be used to track send/receive state between client and server. */
  String eventId = null;
  /* The id of the pull request this event was generated for. */
  int pullRequestId = null;
  MergeCompletedEvent();

  @override
  String toString() {
    return 'MergeCompletedEvent[eventId=$eventId, pullRequestId=$pullRequestId, ]';
  }

  MergeCompletedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<MergeCompletedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<MergeCompletedEvent>() : json.map((value) => MergeCompletedEvent.fromJson(value)).toList();
  }

  static Map<String, MergeCompletedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MergeCompletedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MergeCompletedEvent.fromJson(value));
    }
    return map;
  }
}


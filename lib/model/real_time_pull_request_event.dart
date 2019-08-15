part of azure_devops_sdk.api;

class RealTimePullRequestEvent {
  /* The id of this event. Can be used to track send/receive state between client and server. */
  String eventId = null;
  /* The id of the pull request this event was generated for. */
  int pullRequestId = null;
  RealTimePullRequestEvent();

  @override
  String toString() {
    return 'RealTimePullRequestEvent[eventId=$eventId, pullRequestId=$pullRequestId, ]';
  }

  RealTimePullRequestEvent.fromJson(Map<String, dynamic> json) {
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

  static List<RealTimePullRequestEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<RealTimePullRequestEvent>() : json.map((value) => RealTimePullRequestEvent.fromJson(value)).toList();
  }

  static Map<String, RealTimePullRequestEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RealTimePullRequestEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RealTimePullRequestEvent.fromJson(value));
    }
    return map;
  }
}


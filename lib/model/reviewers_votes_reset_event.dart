part of azure_devops_sdk.api;

class ReviewersVotesResetEvent {
  /* The id of this event. Can be used to track send/receive state between client and server. */
  String eventId = null;
  /* The id of the pull request this event was generated for. */
  int pullRequestId = null;
  ReviewersVotesResetEvent();

  @override
  String toString() {
    return 'ReviewersVotesResetEvent[eventId=$eventId, pullRequestId=$pullRequestId, ]';
  }

  ReviewersVotesResetEvent.fromJson(Map<String, dynamic> json) {
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

  static List<ReviewersVotesResetEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<ReviewersVotesResetEvent>() : json.map((value) => ReviewersVotesResetEvent.fromJson(value)).toList();
  }

  static Map<String, ReviewersVotesResetEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReviewersVotesResetEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReviewersVotesResetEvent.fromJson(value));
    }
    return map;
  }
}


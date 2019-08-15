part of azure_devops_sdk.api;

class CompletionErrorsEvent {
  /* The id of this event. Can be used to track send/receive state between client and server. */
  String eventId = null;
  /* The id of the pull request this event was generated for. */
  int pullRequestId = null;
  CompletionErrorsEvent();

  @override
  String toString() {
    return 'CompletionErrorsEvent[eventId=$eventId, pullRequestId=$pullRequestId, ]';
  }

  CompletionErrorsEvent.fromJson(Map<String, dynamic> json) {
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

  static List<CompletionErrorsEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<CompletionErrorsEvent>() : json.map((value) => CompletionErrorsEvent.fromJson(value)).toList();
  }

  static Map<String, CompletionErrorsEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CompletionErrorsEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CompletionErrorsEvent.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class LabelsUpdatedEvent {
  /* The id of this event. Can be used to track send/receive state between client and server. */
  String eventId = null;
  /* The id of the pull request this event was generated for. */
  int pullRequestId = null;
  LabelsUpdatedEvent();

  @override
  String toString() {
    return 'LabelsUpdatedEvent[eventId=$eventId, pullRequestId=$pullRequestId, ]';
  }

  LabelsUpdatedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<LabelsUpdatedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<LabelsUpdatedEvent>() : json.map((value) => LabelsUpdatedEvent.fromJson(value)).toList();
  }

  static Map<String, LabelsUpdatedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LabelsUpdatedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LabelsUpdatedEvent.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class PolicyEvaluationUpdatedEvent {
  /* The id of this event. Can be used to track send/receive state between client and server. */
  String eventId = null;
  /* The id of the pull request this event was generated for. */
  int pullRequestId = null;
  PolicyEvaluationUpdatedEvent();

  @override
  String toString() {
    return 'PolicyEvaluationUpdatedEvent[eventId=$eventId, pullRequestId=$pullRequestId, ]';
  }

  PolicyEvaluationUpdatedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<PolicyEvaluationUpdatedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<PolicyEvaluationUpdatedEvent>() : json.map((value) => PolicyEvaluationUpdatedEvent.fromJson(value)).toList();
  }

  static Map<String, PolicyEvaluationUpdatedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PolicyEvaluationUpdatedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PolicyEvaluationUpdatedEvent.fromJson(value));
    }
    return map;
  }
}


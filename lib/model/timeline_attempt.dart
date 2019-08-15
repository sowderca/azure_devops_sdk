part of azure_devops_sdk.api;

class TimelineAttempt {
  /* Gets or sets the attempt of the record. */
  int attempt = null;
  /* Gets or sets the record identifier located within the specified timeline. */
  String recordId = null;
  /* Gets or sets the timeline identifier which owns the record representing this attempt. */
  String timelineId = null;
  TimelineAttempt();

  @override
  String toString() {
    return 'TimelineAttempt[attempt=$attempt, recordId=$recordId, timelineId=$timelineId, ]';
  }

  TimelineAttempt.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attempt'] == null) {
      attempt = null;
    } else {
          attempt = json['attempt'];
    }
    if (json['recordId'] == null) {
      recordId = null;
    } else {
          recordId = json['recordId'];
    }
    if (json['timelineId'] == null) {
      timelineId = null;
    } else {
          timelineId = json['timelineId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attempt != null)
      json['attempt'] = attempt;
    if (recordId != null)
      json['recordId'] = recordId;
    if (timelineId != null)
      json['timelineId'] = timelineId;
    return json;
  }

  static List<TimelineAttempt> listFromJson(List<dynamic> json) {
    return json == null ? List<TimelineAttempt>() : json.map((value) => TimelineAttempt.fromJson(value)).toList();
  }

  static Map<String, TimelineAttempt> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimelineAttempt>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimelineAttempt.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class EventsEvaluationResult {
  /* Count of events evaluated. */
  int count = null;
  /* Count of matched events. */
  int matchedCount = null;
  EventsEvaluationResult();

  @override
  String toString() {
    return 'EventsEvaluationResult[count=$count, matchedCount=$matchedCount, ]';
  }

  EventsEvaluationResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
    if (json['matchedCount'] == null) {
      matchedCount = null;
    } else {
          matchedCount = json['matchedCount'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    if (matchedCount != null)
      json['matchedCount'] = matchedCount;
    return json;
  }

  static List<EventsEvaluationResult> listFromJson(List<dynamic> json) {
    return json == null ? List<EventsEvaluationResult>() : json.map((value) => EventsEvaluationResult.fromJson(value)).toList();
  }

  static Map<String, EventsEvaluationResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EventsEvaluationResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EventsEvaluationResult.fromJson(value));
    }
    return map;
  }
}


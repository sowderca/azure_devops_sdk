part of azure_devops_sdk.api;

class TimelineRecordsUpdatedEvent {
  
  int buildId = null;
  TimelineRecordsUpdatedEvent();

  @override
  String toString() {
    return 'TimelineRecordsUpdatedEvent[buildId=$buildId, ]';
  }

  TimelineRecordsUpdatedEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['buildId'] == null) {
      buildId = null;
    } else {
          buildId = json['buildId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (buildId != null)
      json['buildId'] = buildId;
    return json;
  }

  static List<TimelineRecordsUpdatedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<TimelineRecordsUpdatedEvent>() : json.map((value) => TimelineRecordsUpdatedEvent.fromJson(value)).toList();
  }

  static Map<String, TimelineRecordsUpdatedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimelineRecordsUpdatedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimelineRecordsUpdatedEvent.fromJson(value));
    }
    return map;
  }
}


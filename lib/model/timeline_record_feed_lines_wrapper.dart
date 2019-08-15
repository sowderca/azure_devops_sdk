part of azure_devops_sdk.api;

class TimelineRecordFeedLinesWrapper {
  
  int count = null;
  
  String stepId = null;
  
  List<String> value = [];
  TimelineRecordFeedLinesWrapper();

  @override
  String toString() {
    return 'TimelineRecordFeedLinesWrapper[count=$count, stepId=$stepId, value=$value, ]';
  }

  TimelineRecordFeedLinesWrapper.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
    if (json['stepId'] == null) {
      stepId = null;
    } else {
          stepId = json['stepId'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
      value = (json['value'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    if (stepId != null)
      json['stepId'] = stepId;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<TimelineRecordFeedLinesWrapper> listFromJson(List<dynamic> json) {
    return json == null ? List<TimelineRecordFeedLinesWrapper>() : json.map((value) => TimelineRecordFeedLinesWrapper.fromJson(value)).toList();
  }

  static Map<String, TimelineRecordFeedLinesWrapper> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimelineRecordFeedLinesWrapper>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimelineRecordFeedLinesWrapper.fromJson(value));
    }
    return map;
  }
}


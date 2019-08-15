part of azure_devops_sdk.api;

class TimelineIterationStatus {
  
  String message = null;
  
  String type = null;
  //enum typeEnum {  ok,  isOverlapping,  };{
  TimelineIterationStatus();

  @override
  String toString() {
    return 'TimelineIterationStatus[message=$message, type=$type, ]';
  }

  TimelineIterationStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['message'] = message;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<TimelineIterationStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<TimelineIterationStatus>() : json.map((value) => TimelineIterationStatus.fromJson(value)).toList();
  }

  static Map<String, TimelineIterationStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimelineIterationStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimelineIterationStatus.fromJson(value));
    }
    return map;
  }
}


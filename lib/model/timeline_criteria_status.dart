part of azure_devops_sdk.api;

class TimelineCriteriaStatus {
  
  String message = null;
  
  String type = null;
  //enum typeEnum {  ok,  invalidFilterClause,  unknown,  };{
  TimelineCriteriaStatus();

  @override
  String toString() {
    return 'TimelineCriteriaStatus[message=$message, type=$type, ]';
  }

  TimelineCriteriaStatus.fromJson(Map<String, dynamic> json) {
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

  static List<TimelineCriteriaStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<TimelineCriteriaStatus>() : json.map((value) => TimelineCriteriaStatus.fromJson(value)).toList();
  }

  static Map<String, TimelineCriteriaStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimelineCriteriaStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimelineCriteriaStatus.fromJson(value));
    }
    return map;
  }
}


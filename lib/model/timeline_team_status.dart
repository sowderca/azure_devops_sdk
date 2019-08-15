part of azure_devops_sdk.api;

class TimelineTeamStatus {
  
  String message = null;
  
  String type = null;
  //enum typeEnum {  ok,  doesntExistOrAccessDenied,  maxTeamsExceeded,  maxTeamFieldsExceeded,  backlogInError,  missingTeamFieldValue,  noIterationsExist,  };{
  TimelineTeamStatus();

  @override
  String toString() {
    return 'TimelineTeamStatus[message=$message, type=$type, ]';
  }

  TimelineTeamStatus.fromJson(Map<String, dynamic> json) {
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

  static List<TimelineTeamStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<TimelineTeamStatus>() : json.map((value) => TimelineTeamStatus.fromJson(value)).toList();
  }

  static Map<String, TimelineTeamStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimelineTeamStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimelineTeamStatus.fromJson(value));
    }
    return map;
  }
}


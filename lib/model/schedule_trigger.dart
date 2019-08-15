part of azure_devops_sdk.api;

class ScheduleTrigger {
  /* The type of the trigger. */
  String triggerType = null;
  //enum triggerTypeEnum {  none,  continuousIntegration,  batchedContinuousIntegration,  schedule,  gatedCheckIn,  batchedGatedCheckIn,  pullRequest,  buildCompletion,  all,  };{
  ScheduleTrigger();

  @override
  String toString() {
    return 'ScheduleTrigger[triggerType=$triggerType, ]';
  }

  ScheduleTrigger.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['triggerType'] == null) {
      triggerType = null;
    } else {
          triggerType = json['triggerType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (triggerType != null)
      json['triggerType'] = triggerType;
    return json;
  }

  static List<ScheduleTrigger> listFromJson(List<dynamic> json) {
    return json == null ? List<ScheduleTrigger>() : json.map((value) => ScheduleTrigger.fromJson(value)).toList();
  }

  static Map<String, ScheduleTrigger> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ScheduleTrigger>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ScheduleTrigger.fromJson(value));
    }
    return map;
  }
}


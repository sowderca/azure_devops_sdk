part of azure_devops_sdk.api;

class GatedCheckInTrigger {
  /* The type of the trigger. */
  String triggerType = null;
  //enum triggerTypeEnum {  none,  continuousIntegration,  batchedContinuousIntegration,  schedule,  gatedCheckIn,  batchedGatedCheckIn,  pullRequest,  buildCompletion,  all,  };{
  GatedCheckInTrigger();

  @override
  String toString() {
    return 'GatedCheckInTrigger[triggerType=$triggerType, ]';
  }

  GatedCheckInTrigger.fromJson(Map<String, dynamic> json) {
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

  static List<GatedCheckInTrigger> listFromJson(List<dynamic> json) {
    return json == null ? List<GatedCheckInTrigger>() : json.map((value) => GatedCheckInTrigger.fromJson(value)).toList();
  }

  static Map<String, GatedCheckInTrigger> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GatedCheckInTrigger>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GatedCheckInTrigger.fromJson(value));
    }
    return map;
  }
}


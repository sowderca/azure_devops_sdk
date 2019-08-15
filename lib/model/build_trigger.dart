part of azure_devops_sdk.api;

class BuildTrigger {
  /* The type of the trigger. */
  String triggerType = null;
  //enum triggerTypeEnum {  none,  continuousIntegration,  batchedContinuousIntegration,  schedule,  gatedCheckIn,  batchedGatedCheckIn,  pullRequest,  buildCompletion,  all,  };{
  BuildTrigger();

  @override
  String toString() {
    return 'BuildTrigger[triggerType=$triggerType, ]';
  }

  BuildTrigger.fromJson(Map<String, dynamic> json) {
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

  static List<BuildTrigger> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildTrigger>() : json.map((value) => BuildTrigger.fromJson(value)).toList();
  }

  static Map<String, BuildTrigger> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildTrigger>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildTrigger.fromJson(value));
    }
    return map;
  }
}


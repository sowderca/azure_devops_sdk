part of azure_devops_sdk.api;

class ContinuousIntegrationTrigger {
  /* The type of the trigger. */
  String triggerType = null;
  //enum triggerTypeEnum {  none,  continuousIntegration,  batchedContinuousIntegration,  schedule,  gatedCheckIn,  batchedGatedCheckIn,  pullRequest,  buildCompletion,  all,  };{
  ContinuousIntegrationTrigger();

  @override
  String toString() {
    return 'ContinuousIntegrationTrigger[triggerType=$triggerType, ]';
  }

  ContinuousIntegrationTrigger.fromJson(Map<String, dynamic> json) {
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

  static List<ContinuousIntegrationTrigger> listFromJson(List<dynamic> json) {
    return json == null ? List<ContinuousIntegrationTrigger>() : json.map((value) => ContinuousIntegrationTrigger.fromJson(value)).toList();
  }

  static Map<String, ContinuousIntegrationTrigger> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContinuousIntegrationTrigger>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContinuousIntegrationTrigger.fromJson(value));
    }
    return map;
  }
}


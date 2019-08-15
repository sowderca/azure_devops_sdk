part of azure_devops_sdk.api;

class ScheduledReleaseTrigger {
  /* Type of release trigger. */
  String triggerType = null;
  //enum triggerTypeEnum {  undefined,  artifactSource,  schedule,  sourceRepo,  containerImage,  package,  pullRequest,  };{
  ScheduledReleaseTrigger();

  @override
  String toString() {
    return 'ScheduledReleaseTrigger[triggerType=$triggerType, ]';
  }

  ScheduledReleaseTrigger.fromJson(Map<String, dynamic> json) {
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

  static List<ScheduledReleaseTrigger> listFromJson(List<dynamic> json) {
    return json == null ? List<ScheduledReleaseTrigger>() : json.map((value) => ScheduledReleaseTrigger.fromJson(value)).toList();
  }

  static Map<String, ScheduledReleaseTrigger> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ScheduledReleaseTrigger>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ScheduledReleaseTrigger.fromJson(value));
    }
    return map;
  }
}


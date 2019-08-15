part of azure_devops_sdk.api;

class ReleaseTriggerBase {
  /* Type of release trigger. */
  String triggerType = null;
  //enum triggerTypeEnum {  undefined,  artifactSource,  schedule,  sourceRepo,  containerImage,  package,  pullRequest,  };{
  ReleaseTriggerBase();

  @override
  String toString() {
    return 'ReleaseTriggerBase[triggerType=$triggerType, ]';
  }

  ReleaseTriggerBase.fromJson(Map<String, dynamic> json) {
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

  static List<ReleaseTriggerBase> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseTriggerBase>() : json.map((value) => ReleaseTriggerBase.fromJson(value)).toList();
  }

  static Map<String, ReleaseTriggerBase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseTriggerBase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseTriggerBase.fromJson(value));
    }
    return map;
  }
}


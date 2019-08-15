part of azure_devops_sdk.api;

class BuildCompletionTrigger {
  /* The type of the trigger. */
  String triggerType = null;
  //enum triggerTypeEnum {  none,  continuousIntegration,  batchedContinuousIntegration,  schedule,  gatedCheckIn,  batchedGatedCheckIn,  pullRequest,  buildCompletion,  all,  };{
  BuildCompletionTrigger();

  @override
  String toString() {
    return 'BuildCompletionTrigger[triggerType=$triggerType, ]';
  }

  BuildCompletionTrigger.fromJson(Map<String, dynamic> json) {
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

  static List<BuildCompletionTrigger> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildCompletionTrigger>() : json.map((value) => BuildCompletionTrigger.fromJson(value)).toList();
  }

  static Map<String, BuildCompletionTrigger> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildCompletionTrigger>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildCompletionTrigger.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class PullRequestTrigger {
  /* The type of the trigger. */
  String triggerType = null;
  //enum triggerTypeEnum {  none,  continuousIntegration,  batchedContinuousIntegration,  schedule,  gatedCheckIn,  batchedGatedCheckIn,  pullRequest,  buildCompletion,  all,  };{
  PullRequestTrigger();

  @override
  String toString() {
    return 'PullRequestTrigger[triggerType=$triggerType, ]';
  }

  PullRequestTrigger.fromJson(Map<String, dynamic> json) {
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

  static List<PullRequestTrigger> listFromJson(List<dynamic> json) {
    return json == null ? List<PullRequestTrigger>() : json.map((value) => PullRequestTrigger.fromJson(value)).toList();
  }

  static Map<String, PullRequestTrigger> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PullRequestTrigger>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PullRequestTrigger.fromJson(value));
    }
    return map;
  }
}


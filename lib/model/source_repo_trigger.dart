part of azure_devops_sdk.api;

class SourceRepoTrigger {
  /* Type of release trigger. */
  String triggerType = null;
  //enum triggerTypeEnum {  undefined,  artifactSource,  schedule,  sourceRepo,  containerImage,  package,  pullRequest,  };{
  SourceRepoTrigger();

  @override
  String toString() {
    return 'SourceRepoTrigger[triggerType=$triggerType, ]';
  }

  SourceRepoTrigger.fromJson(Map<String, dynamic> json) {
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

  static List<SourceRepoTrigger> listFromJson(List<dynamic> json) {
    return json == null ? List<SourceRepoTrigger>() : json.map((value) => SourceRepoTrigger.fromJson(value)).toList();
  }

  static Map<String, SourceRepoTrigger> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SourceRepoTrigger>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SourceRepoTrigger.fromJson(value));
    }
    return map;
  }
}


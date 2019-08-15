part of azure_devops_sdk.api;

class ArtifactSourceTrigger {
  /* Type of release trigger. */
  String triggerType = null;
  //enum triggerTypeEnum {  undefined,  artifactSource,  schedule,  sourceRepo,  containerImage,  package,  pullRequest,  };{
  ArtifactSourceTrigger();

  @override
  String toString() {
    return 'ArtifactSourceTrigger[triggerType=$triggerType, ]';
  }

  ArtifactSourceTrigger.fromJson(Map<String, dynamic> json) {
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

  static List<ArtifactSourceTrigger> listFromJson(List<dynamic> json) {
    return json == null ? List<ArtifactSourceTrigger>() : json.map((value) => ArtifactSourceTrigger.fromJson(value)).toList();
  }

  static Map<String, ArtifactSourceTrigger> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArtifactSourceTrigger>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArtifactSourceTrigger.fromJson(value));
    }
    return map;
  }
}


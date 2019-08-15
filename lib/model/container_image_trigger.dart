part of azure_devops_sdk.api;

class ContainerImageTrigger {
  /* Type of release trigger. */
  String triggerType = null;
  //enum triggerTypeEnum {  undefined,  artifactSource,  schedule,  sourceRepo,  containerImage,  package,  pullRequest,  };{
  ContainerImageTrigger();

  @override
  String toString() {
    return 'ContainerImageTrigger[triggerType=$triggerType, ]';
  }

  ContainerImageTrigger.fromJson(Map<String, dynamic> json) {
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

  static List<ContainerImageTrigger> listFromJson(List<dynamic> json) {
    return json == null ? List<ContainerImageTrigger>() : json.map((value) => ContainerImageTrigger.fromJson(value)).toList();
  }

  static Map<String, ContainerImageTrigger> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContainerImageTrigger>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContainerImageTrigger.fromJson(value));
    }
    return map;
  }
}


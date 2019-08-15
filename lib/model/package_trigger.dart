part of azure_devops_sdk.api;

class PackageTrigger {
  /* Type of release trigger. */
  String triggerType = null;
  //enum triggerTypeEnum {  undefined,  artifactSource,  schedule,  sourceRepo,  containerImage,  package,  pullRequest,  };{
  PackageTrigger();

  @override
  String toString() {
    return 'PackageTrigger[triggerType=$triggerType, ]';
  }

  PackageTrigger.fromJson(Map<String, dynamic> json) {
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

  static List<PackageTrigger> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageTrigger>() : json.map((value) => PackageTrigger.fromJson(value)).toList();
  }

  static Map<String, PackageTrigger> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageTrigger>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageTrigger.fromJson(value));
    }
    return map;
  }
}


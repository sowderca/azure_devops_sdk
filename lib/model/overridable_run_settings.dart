part of azure_devops_sdk.api;

class OverridableRunSettings {
  
  String loadGeneratorMachinesType = null;
  //enum loadGeneratorMachinesTypeEnum {  default,  cltLoadAgent,  userLoadAgent,  };{
  
  StaticAgentRunSetting staticAgentRunSettings = null;
  OverridableRunSettings();

  @override
  String toString() {
    return 'OverridableRunSettings[loadGeneratorMachinesType=$loadGeneratorMachinesType, staticAgentRunSettings=$staticAgentRunSettings, ]';
  }

  OverridableRunSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['loadGeneratorMachinesType'] == null) {
      loadGeneratorMachinesType = null;
    } else {
          loadGeneratorMachinesType = json['loadGeneratorMachinesType'];
    }
    if (json['staticAgentRunSettings'] == null) {
      staticAgentRunSettings = null;
    } else {
      staticAgentRunSettings = StaticAgentRunSetting.fromJson(json['staticAgentRunSettings']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (loadGeneratorMachinesType != null)
      json['loadGeneratorMachinesType'] = loadGeneratorMachinesType;
    if (staticAgentRunSettings != null)
      json['staticAgentRunSettings'] = staticAgentRunSettings;
    return json;
  }

  static List<OverridableRunSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<OverridableRunSettings>() : json.map((value) => OverridableRunSettings.fromJson(value)).toList();
  }

  static Map<String, OverridableRunSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OverridableRunSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OverridableRunSettings.fromJson(value));
    }
    return map;
  }
}


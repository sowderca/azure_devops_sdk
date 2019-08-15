part of azure_devops_sdk.api;

class StaticAgentRunSetting {
  
  String loadGeneratorMachinesType = null;
  //enum loadGeneratorMachinesTypeEnum {  default,  cltLoadAgent,  userLoadAgent,  };{
  
  String staticAgentGroupName = null;
  StaticAgentRunSetting();

  @override
  String toString() {
    return 'StaticAgentRunSetting[loadGeneratorMachinesType=$loadGeneratorMachinesType, staticAgentGroupName=$staticAgentGroupName, ]';
  }

  StaticAgentRunSetting.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['loadGeneratorMachinesType'] == null) {
      loadGeneratorMachinesType = null;
    } else {
          loadGeneratorMachinesType = json['loadGeneratorMachinesType'];
    }
    if (json['staticAgentGroupName'] == null) {
      staticAgentGroupName = null;
    } else {
          staticAgentGroupName = json['staticAgentGroupName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (loadGeneratorMachinesType != null)
      json['loadGeneratorMachinesType'] = loadGeneratorMachinesType;
    if (staticAgentGroupName != null)
      json['staticAgentGroupName'] = staticAgentGroupName;
    return json;
  }

  static List<StaticAgentRunSetting> listFromJson(List<dynamic> json) {
    return json == null ? List<StaticAgentRunSetting>() : json.map((value) => StaticAgentRunSetting.fromJson(value)).toList();
  }

  static Map<String, StaticAgentRunSetting> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, StaticAgentRunSetting>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = StaticAgentRunSetting.fromJson(value));
    }
    return map;
  }
}


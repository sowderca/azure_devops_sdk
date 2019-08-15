part of azure_devops_sdk.api;

class WebApiLoadTestMachineInput {
  
  String machineGroupId = null;
  
  String machineType = null;
  //enum machineTypeEnum {  default,  cltLoadAgent,  userLoadAgent,  };{
  
  WebApiSetupParamaters setupConfiguration = null;
  
  List<Object> supportedRunTypes = [];
  WebApiLoadTestMachineInput();

  @override
  String toString() {
    return 'WebApiLoadTestMachineInput[machineGroupId=$machineGroupId, machineType=$machineType, setupConfiguration=$setupConfiguration, supportedRunTypes=$supportedRunTypes, ]';
  }

  WebApiLoadTestMachineInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['machineGroupId'] == null) {
      machineGroupId = null;
    } else {
          machineGroupId = json['machineGroupId'];
    }
    if (json['machineType'] == null) {
      machineType = null;
    } else {
          machineType = json['machineType'];
    }
    if (json['setupConfiguration'] == null) {
      setupConfiguration = null;
    } else {
      setupConfiguration = WebApiSetupParamaters.fromJson(json['setupConfiguration']);
    }
    if (json['supportedRunTypes'] == null) {
      supportedRunTypes = null;
    } else {
      supportedRunTypes = Object.listFromJson(json['supportedRunTypes']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (machineGroupId != null)
      json['machineGroupId'] = machineGroupId;
    if (machineType != null)
      json['machineType'] = machineType;
    if (setupConfiguration != null)
      json['setupConfiguration'] = setupConfiguration;
    if (supportedRunTypes != null)
      json['supportedRunTypes'] = supportedRunTypes;
    return json;
  }

  static List<WebApiLoadTestMachineInput> listFromJson(List<dynamic> json) {
    return json == null ? List<WebApiLoadTestMachineInput>() : json.map((value) => WebApiLoadTestMachineInput.fromJson(value)).toList();
  }

  static Map<String, WebApiLoadTestMachineInput> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebApiLoadTestMachineInput>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebApiLoadTestMachineInput.fromJson(value));
    }
    return map;
  }
}


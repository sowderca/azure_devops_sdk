part of azure_devops_sdk.api;

class MultiMachineInput {
  /* Parallel execution type, for example MultiConfiguration or MultiMachine. */
  String parallelExecutionType = null;
  //enum parallelExecutionTypeEnum {  none,  multiConfiguration,  multiMachine,  };{
  MultiMachineInput();

  @override
  String toString() {
    return 'MultiMachineInput[parallelExecutionType=$parallelExecutionType, ]';
  }

  MultiMachineInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['parallelExecutionType'] == null) {
      parallelExecutionType = null;
    } else {
          parallelExecutionType = json['parallelExecutionType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (parallelExecutionType != null)
      json['parallelExecutionType'] = parallelExecutionType;
    return json;
  }

  static List<MultiMachineInput> listFromJson(List<dynamic> json) {
    return json == null ? List<MultiMachineInput>() : json.map((value) => MultiMachineInput.fromJson(value)).toList();
  }

  static Map<String, MultiMachineInput> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MultiMachineInput>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MultiMachineInput.fromJson(value));
    }
    return map;
  }
}


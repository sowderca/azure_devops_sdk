part of azure_devops_sdk.api;

class ExecutionInput {
  /* Parallel execution type, for example MultiConfiguration or MultiMachine. */
  String parallelExecutionType = null;
  //enum parallelExecutionTypeEnum {  none,  multiConfiguration,  multiMachine,  };{
  ExecutionInput();

  @override
  String toString() {
    return 'ExecutionInput[parallelExecutionType=$parallelExecutionType, ]';
  }

  ExecutionInput.fromJson(Map<String, dynamic> json) {
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

  static List<ExecutionInput> listFromJson(List<dynamic> json) {
    return json == null ? List<ExecutionInput>() : json.map((value) => ExecutionInput.fromJson(value)).toList();
  }

  static Map<String, ExecutionInput> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExecutionInput>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExecutionInput.fromJson(value));
    }
    return map;
  }
}


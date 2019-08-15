part of azure_devops_sdk.api;

class MultiConfigInput {
  /* Parallel execution type, for example MultiConfiguration or MultiMachine. */
  String parallelExecutionType = null;
  //enum parallelExecutionTypeEnum {  none,  multiConfiguration,  multiMachine,  };{
  MultiConfigInput();

  @override
  String toString() {
    return 'MultiConfigInput[parallelExecutionType=$parallelExecutionType, ]';
  }

  MultiConfigInput.fromJson(Map<String, dynamic> json) {
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

  static List<MultiConfigInput> listFromJson(List<dynamic> json) {
    return json == null ? List<MultiConfigInput>() : json.map((value) => MultiConfigInput.fromJson(value)).toList();
  }

  static Map<String, MultiConfigInput> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MultiConfigInput>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MultiConfigInput.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class ParallelExecutionInputBase {
  /* Parallel execution type, for example MultiConfiguration or MultiMachine. */
  String parallelExecutionType = null;
  //enum parallelExecutionTypeEnum {  none,  multiConfiguration,  multiMachine,  };{
  ParallelExecutionInputBase();

  @override
  String toString() {
    return 'ParallelExecutionInputBase[parallelExecutionType=$parallelExecutionType, ]';
  }

  ParallelExecutionInputBase.fromJson(Map<String, dynamic> json) {
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

  static List<ParallelExecutionInputBase> listFromJson(List<dynamic> json) {
    return json == null ? List<ParallelExecutionInputBase>() : json.map((value) => ParallelExecutionInputBase.fromJson(value)).toList();
  }

  static Map<String, ParallelExecutionInputBase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ParallelExecutionInputBase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ParallelExecutionInputBase.fromJson(value));
    }
    return map;
  }
}


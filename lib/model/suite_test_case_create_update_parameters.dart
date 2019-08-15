part of azure_devops_sdk.api;

class SuiteTestCaseCreateUpdateParameters {
  /* Configurations Ids */
  List<Configuration> pointAssignments = [];
  
  WorkItem workItem = null;
  SuiteTestCaseCreateUpdateParameters();

  @override
  String toString() {
    return 'SuiteTestCaseCreateUpdateParameters[pointAssignments=$pointAssignments, workItem=$workItem, ]';
  }

  SuiteTestCaseCreateUpdateParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['pointAssignments'] == null) {
      pointAssignments = null;
    } else {
      pointAssignments = Configuration.listFromJson(json['pointAssignments']);
    }
    if (json['workItem'] == null) {
      workItem = null;
    } else {
      workItem = WorkItem.fromJson(json['workItem']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pointAssignments != null)
      json['pointAssignments'] = pointAssignments;
    if (workItem != null)
      json['workItem'] = workItem;
    return json;
  }

  static List<SuiteTestCaseCreateUpdateParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<SuiteTestCaseCreateUpdateParameters>() : json.map((value) => SuiteTestCaseCreateUpdateParameters.fromJson(value)).toList();
  }

  static Map<String, SuiteTestCaseCreateUpdateParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SuiteTestCaseCreateUpdateParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SuiteTestCaseCreateUpdateParameters.fromJson(value));
    }
    return map;
  }
}


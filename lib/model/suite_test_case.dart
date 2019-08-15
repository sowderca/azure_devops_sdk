part of azure_devops_sdk.api;

class SuiteTestCase {
  /* Point Assignment for test suite's test case. */
  List<PointAssignment> pointAssignments = [];
  
  WorkItemReference testCase = null;
  SuiteTestCase();

  @override
  String toString() {
    return 'SuiteTestCase[pointAssignments=$pointAssignments, testCase=$testCase, ]';
  }

  SuiteTestCase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['pointAssignments'] == null) {
      pointAssignments = null;
    } else {
      pointAssignments = PointAssignment.listFromJson(json['pointAssignments']);
    }
    if (json['testCase'] == null) {
      testCase = null;
    } else {
      testCase = WorkItemReference.fromJson(json['testCase']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pointAssignments != null)
      json['pointAssignments'] = pointAssignments;
    if (testCase != null)
      json['testCase'] = testCase;
    return json;
  }

  static List<SuiteTestCase> listFromJson(List<dynamic> json) {
    return json == null ? List<SuiteTestCase>() : json.map((value) => SuiteTestCase.fromJson(value)).toList();
  }

  static Map<String, SuiteTestCase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SuiteTestCase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SuiteTestCase.fromJson(value));
    }
    return map;
  }
}


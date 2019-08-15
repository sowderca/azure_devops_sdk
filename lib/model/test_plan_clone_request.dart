part of azure_devops_sdk.api;

class TestPlanCloneRequest {
  
  TestPlan destinationTestPlan = null;
  
  CloneOptions options = null;
  
  List<int> suiteIds = [];
  TestPlanCloneRequest();

  @override
  String toString() {
    return 'TestPlanCloneRequest[destinationTestPlan=$destinationTestPlan, options=$options, suiteIds=$suiteIds, ]';
  }

  TestPlanCloneRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['destinationTestPlan'] == null) {
      destinationTestPlan = null;
    } else {
      destinationTestPlan = TestPlan.fromJson(json['destinationTestPlan']);
    }
    if (json['options'] == null) {
      options = null;
    } else {
      options = CloneOptions.fromJson(json['options']);
    }
    if (json['suiteIds'] == null) {
      suiteIds = null;
    } else {
      suiteIds = (json['suiteIds'] as List).cast<int>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (destinationTestPlan != null)
      json['destinationTestPlan'] = destinationTestPlan;
    if (options != null)
      json['options'] = options;
    if (suiteIds != null)
      json['suiteIds'] = suiteIds;
    return json;
  }

  static List<TestPlanCloneRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<TestPlanCloneRequest>() : json.map((value) => TestPlanCloneRequest.fromJson(value)).toList();
  }

  static Map<String, TestPlanCloneRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestPlanCloneRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestPlanCloneRequest.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class TestPlanHubData {
  
  int selectedSuiteId = null;
  
  TestPlan testPlan = null;
  
  List<TestPoint> testPoints = [];
  
  List<TestSuite> testSuites = [];
  
  int totalTestPoints = null;
  TestPlanHubData();

  @override
  String toString() {
    return 'TestPlanHubData[selectedSuiteId=$selectedSuiteId, testPlan=$testPlan, testPoints=$testPoints, testSuites=$testSuites, totalTestPoints=$totalTestPoints, ]';
  }

  TestPlanHubData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['selectedSuiteId'] == null) {
      selectedSuiteId = null;
    } else {
          selectedSuiteId = json['selectedSuiteId'];
    }
    if (json['testPlan'] == null) {
      testPlan = null;
    } else {
      testPlan = TestPlan.fromJson(json['testPlan']);
    }
    if (json['testPoints'] == null) {
      testPoints = null;
    } else {
      testPoints = TestPoint.listFromJson(json['testPoints']);
    }
    if (json['testSuites'] == null) {
      testSuites = null;
    } else {
      testSuites = TestSuite.listFromJson(json['testSuites']);
    }
    if (json['totalTestPoints'] == null) {
      totalTestPoints = null;
    } else {
          totalTestPoints = json['totalTestPoints'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (selectedSuiteId != null)
      json['selectedSuiteId'] = selectedSuiteId;
    if (testPlan != null)
      json['testPlan'] = testPlan;
    if (testPoints != null)
      json['testPoints'] = testPoints;
    if (testSuites != null)
      json['testSuites'] = testSuites;
    if (totalTestPoints != null)
      json['totalTestPoints'] = totalTestPoints;
    return json;
  }

  static List<TestPlanHubData> listFromJson(List<dynamic> json) {
    return json == null ? List<TestPlanHubData>() : json.map((value) => TestPlanHubData.fromJson(value)).toList();
  }

  static Map<String, TestPlanHubData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestPlanHubData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestPlanHubData.fromJson(value));
    }
    return map;
  }
}


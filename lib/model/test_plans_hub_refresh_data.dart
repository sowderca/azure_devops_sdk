part of azure_devops_sdk.api;

class TestPlansHubRefreshData {
  
  bool isAdvancedExtensionEnabled = null;
  
  int selectedSuiteId = null;
  
  String selectedSuiteName = null;
  
  int testCasePageSize = null;
  
  List<TestCase> testCases = [];
  
  String testCasesContinuationToken = null;
  
  TestPlanDetailedReference testPlan = null;
  
  int testPointPageSize = null;
  
  List<TestPoint> testPoints = [];
  
  String testPointsContinuationToken = null;
  
  List<TestSuite> testSuites = [];
  
  String testSuitesContinuationToken = null;
  TestPlansHubRefreshData();

  @override
  String toString() {
    return 'TestPlansHubRefreshData[isAdvancedExtensionEnabled=$isAdvancedExtensionEnabled, selectedSuiteId=$selectedSuiteId, selectedSuiteName=$selectedSuiteName, testCasePageSize=$testCasePageSize, testCases=$testCases, testCasesContinuationToken=$testCasesContinuationToken, testPlan=$testPlan, testPointPageSize=$testPointPageSize, testPoints=$testPoints, testPointsContinuationToken=$testPointsContinuationToken, testSuites=$testSuites, testSuitesContinuationToken=$testSuitesContinuationToken, ]';
  }

  TestPlansHubRefreshData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['isAdvancedExtensionEnabled'] == null) {
      isAdvancedExtensionEnabled = null;
    } else {
          isAdvancedExtensionEnabled = json['isAdvancedExtensionEnabled'];
    }
    if (json['selectedSuiteId'] == null) {
      selectedSuiteId = null;
    } else {
          selectedSuiteId = json['selectedSuiteId'];
    }
    if (json['selectedSuiteName'] == null) {
      selectedSuiteName = null;
    } else {
          selectedSuiteName = json['selectedSuiteName'];
    }
    if (json['testCasePageSize'] == null) {
      testCasePageSize = null;
    } else {
          testCasePageSize = json['testCasePageSize'];
    }
    if (json['testCases'] == null) {
      testCases = null;
    } else {
      testCases = TestCase.listFromJson(json['testCases']);
    }
    if (json['testCasesContinuationToken'] == null) {
      testCasesContinuationToken = null;
    } else {
          testCasesContinuationToken = json['testCasesContinuationToken'];
    }
    if (json['testPlan'] == null) {
      testPlan = null;
    } else {
      testPlan = TestPlanDetailedReference.fromJson(json['testPlan']);
    }
    if (json['testPointPageSize'] == null) {
      testPointPageSize = null;
    } else {
          testPointPageSize = json['testPointPageSize'];
    }
    if (json['testPoints'] == null) {
      testPoints = null;
    } else {
      testPoints = TestPoint.listFromJson(json['testPoints']);
    }
    if (json['testPointsContinuationToken'] == null) {
      testPointsContinuationToken = null;
    } else {
          testPointsContinuationToken = json['testPointsContinuationToken'];
    }
    if (json['testSuites'] == null) {
      testSuites = null;
    } else {
      testSuites = TestSuite.listFromJson(json['testSuites']);
    }
    if (json['testSuitesContinuationToken'] == null) {
      testSuitesContinuationToken = null;
    } else {
          testSuitesContinuationToken = json['testSuitesContinuationToken'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isAdvancedExtensionEnabled != null)
      json['isAdvancedExtensionEnabled'] = isAdvancedExtensionEnabled;
    if (selectedSuiteId != null)
      json['selectedSuiteId'] = selectedSuiteId;
    if (selectedSuiteName != null)
      json['selectedSuiteName'] = selectedSuiteName;
    if (testCasePageSize != null)
      json['testCasePageSize'] = testCasePageSize;
    if (testCases != null)
      json['testCases'] = testCases;
    if (testCasesContinuationToken != null)
      json['testCasesContinuationToken'] = testCasesContinuationToken;
    if (testPlan != null)
      json['testPlan'] = testPlan;
    if (testPointPageSize != null)
      json['testPointPageSize'] = testPointPageSize;
    if (testPoints != null)
      json['testPoints'] = testPoints;
    if (testPointsContinuationToken != null)
      json['testPointsContinuationToken'] = testPointsContinuationToken;
    if (testSuites != null)
      json['testSuites'] = testSuites;
    if (testSuitesContinuationToken != null)
      json['testSuitesContinuationToken'] = testSuitesContinuationToken;
    return json;
  }

  static List<TestPlansHubRefreshData> listFromJson(List<dynamic> json) {
    return json == null ? List<TestPlansHubRefreshData>() : json.map((value) => TestPlansHubRefreshData.fromJson(value)).toList();
  }

  static Map<String, TestPlansHubRefreshData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestPlansHubRefreshData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestPlansHubRefreshData.fromJson(value));
    }
    return map;
  }
}


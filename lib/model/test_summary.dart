part of azure_devops_sdk.api;

class TestSummary {
  
  double averageTestTime = null;
  
  int failedTests = null;
  
  int passedTests = null;
  
  List<SummaryPercentileData> percentileData = [];
  
  String scenarioName = null;
  
  String testName = null;
  
  int totalTests = null;
  TestSummary();

  @override
  String toString() {
    return 'TestSummary[averageTestTime=$averageTestTime, failedTests=$failedTests, passedTests=$passedTests, percentileData=$percentileData, scenarioName=$scenarioName, testName=$testName, totalTests=$totalTests, ]';
  }

  TestSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['averageTestTime'] == null) {
      averageTestTime = null;
    } else {
          averageTestTime = json['averageTestTime'].toDouble();
    }
    if (json['failedTests'] == null) {
      failedTests = null;
    } else {
          failedTests = json['failedTests'];
    }
    if (json['passedTests'] == null) {
      passedTests = null;
    } else {
          passedTests = json['passedTests'];
    }
    if (json['percentileData'] == null) {
      percentileData = null;
    } else {
      percentileData = SummaryPercentileData.listFromJson(json['percentileData']);
    }
    if (json['scenarioName'] == null) {
      scenarioName = null;
    } else {
          scenarioName = json['scenarioName'];
    }
    if (json['testName'] == null) {
      testName = null;
    } else {
          testName = json['testName'];
    }
    if (json['totalTests'] == null) {
      totalTests = null;
    } else {
          totalTests = json['totalTests'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (averageTestTime != null)
      json['averageTestTime'] = averageTestTime;
    if (failedTests != null)
      json['failedTests'] = failedTests;
    if (passedTests != null)
      json['passedTests'] = passedTests;
    if (percentileData != null)
      json['percentileData'] = percentileData;
    if (scenarioName != null)
      json['scenarioName'] = scenarioName;
    if (testName != null)
      json['testName'] = testName;
    if (totalTests != null)
      json['totalTests'] = totalTests;
    return json;
  }

  static List<TestSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<TestSummary>() : json.map((value) => TestSummary.fromJson(value)).toList();
  }

  static Map<String, TestSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestSummary.fromJson(value));
    }
    return map;
  }
}


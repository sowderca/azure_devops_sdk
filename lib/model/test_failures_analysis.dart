part of azure_devops_sdk.api;

class TestFailuresAnalysis {
  
  TestFailureDetails existingFailures = null;
  
  TestFailureDetails fixedTests = null;
  
  TestFailureDetails newFailures = null;
  
  TestResultsContext previousContext = null;
  TestFailuresAnalysis();

  @override
  String toString() {
    return 'TestFailuresAnalysis[existingFailures=$existingFailures, fixedTests=$fixedTests, newFailures=$newFailures, previousContext=$previousContext, ]';
  }

  TestFailuresAnalysis.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['existingFailures'] == null) {
      existingFailures = null;
    } else {
      existingFailures = TestFailureDetails.fromJson(json['existingFailures']);
    }
    if (json['fixedTests'] == null) {
      fixedTests = null;
    } else {
      fixedTests = TestFailureDetails.fromJson(json['fixedTests']);
    }
    if (json['newFailures'] == null) {
      newFailures = null;
    } else {
      newFailures = TestFailureDetails.fromJson(json['newFailures']);
    }
    if (json['previousContext'] == null) {
      previousContext = null;
    } else {
      previousContext = TestResultsContext.fromJson(json['previousContext']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (existingFailures != null)
      json['existingFailures'] = existingFailures;
    if (fixedTests != null)
      json['fixedTests'] = fixedTests;
    if (newFailures != null)
      json['newFailures'] = newFailures;
    if (previousContext != null)
      json['previousContext'] = previousContext;
    return json;
  }

  static List<TestFailuresAnalysis> listFromJson(List<dynamic> json) {
    return json == null ? List<TestFailuresAnalysis>() : json.map((value) => TestFailuresAnalysis.fromJson(value)).toList();
  }

  static Map<String, TestFailuresAnalysis> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestFailuresAnalysis>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestFailuresAnalysis.fromJson(value));
    }
    return map;
  }
}


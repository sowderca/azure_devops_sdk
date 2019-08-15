part of azure_devops_sdk.api;

class TestResultParameter {
  
  String actionPath = null;
  
  List<String> actual = [];
  
  List<String> expected = [];
  
  int iterationId = null;
  
  String parameterName = null;
  
  int testResultId = null;
  
  int testRunId = null;
  TestResultParameter();

  @override
  String toString() {
    return 'TestResultParameter[actionPath=$actionPath, actual=$actual, expected=$expected, iterationId=$iterationId, parameterName=$parameterName, testResultId=$testResultId, testRunId=$testRunId, ]';
  }

  TestResultParameter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actionPath'] == null) {
      actionPath = null;
    } else {
          actionPath = json['actionPath'];
    }
    if (json['actual'] == null) {
      actual = null;
    } else {
      actual = (json['actual'] as List).cast<String>();
    }
    if (json['expected'] == null) {
      expected = null;
    } else {
      expected = (json['expected'] as List).cast<String>();
    }
    if (json['iterationId'] == null) {
      iterationId = null;
    } else {
          iterationId = json['iterationId'];
    }
    if (json['parameterName'] == null) {
      parameterName = null;
    } else {
          parameterName = json['parameterName'];
    }
    if (json['testResultId'] == null) {
      testResultId = null;
    } else {
          testResultId = json['testResultId'];
    }
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actionPath != null)
      json['actionPath'] = actionPath;
    if (actual != null)
      json['actual'] = actual;
    if (expected != null)
      json['expected'] = expected;
    if (iterationId != null)
      json['iterationId'] = iterationId;
    if (parameterName != null)
      json['parameterName'] = parameterName;
    if (testResultId != null)
      json['testResultId'] = testResultId;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<TestResultParameter> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultParameter>() : json.map((value) => TestResultParameter.fromJson(value)).toList();
  }

  static Map<String, TestResultParameter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultParameter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultParameter.fromJson(value));
    }
    return map;
  }
}


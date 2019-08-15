part of azure_devops_sdk.api;

class TestResultAcrossProjectResponse {
  
  String projectName = null;
  
  LegacyTestCaseResult testResult = null;
  TestResultAcrossProjectResponse();

  @override
  String toString() {
    return 'TestResultAcrossProjectResponse[projectName=$projectName, testResult=$testResult, ]';
  }

  TestResultAcrossProjectResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['projectName'] == null) {
      projectName = null;
    } else {
          projectName = json['projectName'];
    }
    if (json['testResult'] == null) {
      testResult = null;
    } else {
      testResult = LegacyTestCaseResult.fromJson(json['testResult']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (projectName != null)
      json['projectName'] = projectName;
    if (testResult != null)
      json['testResult'] = testResult;
    return json;
  }

  static List<TestResultAcrossProjectResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultAcrossProjectResponse>() : json.map((value) => TestResultAcrossProjectResponse.fromJson(value)).toList();
  }

  static Map<String, TestResultAcrossProjectResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultAcrossProjectResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultAcrossProjectResponse.fromJson(value));
    }
    return map;
  }
}


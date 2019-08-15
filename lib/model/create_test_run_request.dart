part of azure_devops_sdk.api;

class CreateTestRunRequest {
  
  String projectName = null;
  
  List<LegacyTestCaseResult> results = [];
  
  LegacyTestRun testRun = null;
  
  LegacyTestSettings testSettings = null;
  CreateTestRunRequest();

  @override
  String toString() {
    return 'CreateTestRunRequest[projectName=$projectName, results=$results, testRun=$testRun, testSettings=$testSettings, ]';
  }

  CreateTestRunRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['projectName'] == null) {
      projectName = null;
    } else {
          projectName = json['projectName'];
    }
    if (json['results'] == null) {
      results = null;
    } else {
      results = LegacyTestCaseResult.listFromJson(json['results']);
    }
    if (json['testRun'] == null) {
      testRun = null;
    } else {
      testRun = LegacyTestRun.fromJson(json['testRun']);
    }
    if (json['testSettings'] == null) {
      testSettings = null;
    } else {
      testSettings = LegacyTestSettings.fromJson(json['testSettings']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (projectName != null)
      json['projectName'] = projectName;
    if (results != null)
      json['results'] = results;
    if (testRun != null)
      json['testRun'] = testRun;
    if (testSettings != null)
      json['testSettings'] = testSettings;
    return json;
  }

  static List<CreateTestRunRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateTestRunRequest>() : json.map((value) => CreateTestRunRequest.fromJson(value)).toList();
  }

  static Map<String, CreateTestRunRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateTestRunRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateTestRunRequest.fromJson(value));
    }
    return map;
  }
}


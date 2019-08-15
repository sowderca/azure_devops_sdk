part of azure_devops_sdk.api;

class TestCaseResultIdentifier {
  /* Test result ID. */
  int testResultId = null;
  /* Test run ID. */
  int testRunId = null;
  TestCaseResultIdentifier();

  @override
  String toString() {
    return 'TestCaseResultIdentifier[testResultId=$testResultId, testRunId=$testRunId, ]';
  }

  TestCaseResultIdentifier.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (testResultId != null)
      json['testResultId'] = testResultId;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<TestCaseResultIdentifier> listFromJson(List<dynamic> json) {
    return json == null ? List<TestCaseResultIdentifier>() : json.map((value) => TestCaseResultIdentifier.fromJson(value)).toList();
  }

  static Map<String, TestCaseResultIdentifier> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestCaseResultIdentifier>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestCaseResultIdentifier.fromJson(value));
    }
    return map;
  }
}


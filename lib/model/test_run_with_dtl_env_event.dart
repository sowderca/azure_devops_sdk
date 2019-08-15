part of azure_devops_sdk.api;

class TestRunWithDtlEnvEvent {
  
  TestRun testRun = null;
  TestRunWithDtlEnvEvent();

  @override
  String toString() {
    return 'TestRunWithDtlEnvEvent[testRun=$testRun, ]';
  }

  TestRunWithDtlEnvEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['testRun'] == null) {
      testRun = null;
    } else {
      testRun = TestRun.fromJson(json['testRun']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (testRun != null)
      json['testRun'] = testRun;
    return json;
  }

  static List<TestRunWithDtlEnvEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<TestRunWithDtlEnvEvent>() : json.map((value) => TestRunWithDtlEnvEvent.fromJson(value)).toList();
  }

  static Map<String, TestRunWithDtlEnvEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestRunWithDtlEnvEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestRunWithDtlEnvEvent.fromJson(value));
    }
    return map;
  }
}


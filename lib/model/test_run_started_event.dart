part of azure_devops_sdk.api;

class TestRunStartedEvent {
  
  TestRun testRun = null;
  TestRunStartedEvent();

  @override
  String toString() {
    return 'TestRunStartedEvent[testRun=$testRun, ]';
  }

  TestRunStartedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<TestRunStartedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<TestRunStartedEvent>() : json.map((value) => TestRunStartedEvent.fromJson(value)).toList();
  }

  static Map<String, TestRunStartedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestRunStartedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestRunStartedEvent.fromJson(value));
    }
    return map;
  }
}


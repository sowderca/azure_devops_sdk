part of azure_devops_sdk.api;

class TestRunEvent {
  
  TestRun testRun = null;
  TestRunEvent();

  @override
  String toString() {
    return 'TestRunEvent[testRun=$testRun, ]';
  }

  TestRunEvent.fromJson(Map<String, dynamic> json) {
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

  static List<TestRunEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<TestRunEvent>() : json.map((value) => TestRunEvent.fromJson(value)).toList();
  }

  static Map<String, TestRunEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestRunEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestRunEvent.fromJson(value));
    }
    return map;
  }
}


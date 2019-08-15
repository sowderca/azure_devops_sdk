part of azure_devops_sdk.api;

class TestRunCanceledEvent {
  
  TestRun testRun = null;
  TestRunCanceledEvent();

  @override
  String toString() {
    return 'TestRunCanceledEvent[testRun=$testRun, ]';
  }

  TestRunCanceledEvent.fromJson(Map<String, dynamic> json) {
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

  static List<TestRunCanceledEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<TestRunCanceledEvent>() : json.map((value) => TestRunCanceledEvent.fromJson(value)).toList();
  }

  static Map<String, TestRunCanceledEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestRunCanceledEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestRunCanceledEvent.fromJson(value));
    }
    return map;
  }
}


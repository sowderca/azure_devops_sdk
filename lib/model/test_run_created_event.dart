part of azure_devops_sdk.api;

class TestRunCreatedEvent {
  
  TestRun testRun = null;
  TestRunCreatedEvent();

  @override
  String toString() {
    return 'TestRunCreatedEvent[testRun=$testRun, ]';
  }

  TestRunCreatedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<TestRunCreatedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<TestRunCreatedEvent>() : json.map((value) => TestRunCreatedEvent.fromJson(value)).toList();
  }

  static Map<String, TestRunCreatedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestRunCreatedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestRunCreatedEvent.fromJson(value));
    }
    return map;
  }
}


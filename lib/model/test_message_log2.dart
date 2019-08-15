part of azure_devops_sdk.api;

class TestMessageLog2 {
  
  int testMessageLogId = null;
  TestMessageLog2();

  @override
  String toString() {
    return 'TestMessageLog2[testMessageLogId=$testMessageLogId, ]';
  }

  TestMessageLog2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['testMessageLogId'] == null) {
      testMessageLogId = null;
    } else {
          testMessageLogId = json['testMessageLogId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (testMessageLogId != null)
      json['testMessageLogId'] = testMessageLogId;
    return json;
  }

  static List<TestMessageLog2> listFromJson(List<dynamic> json) {
    return json == null ? List<TestMessageLog2>() : json.map((value) => TestMessageLog2.fromJson(value)).toList();
  }

  static Map<String, TestMessageLog2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestMessageLog2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestMessageLog2.fromJson(value));
    }
    return map;
  }
}


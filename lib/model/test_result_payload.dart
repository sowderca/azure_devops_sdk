part of azure_devops_sdk.api;

class TestResultPayload {
  
  String comment = null;
  
  String name = null;
  
  String stream = null;
  TestResultPayload();

  @override
  String toString() {
    return 'TestResultPayload[comment=$comment, name=$name, stream=$stream, ]';
  }

  TestResultPayload.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['stream'] == null) {
      stream = null;
    } else {
          stream = json['stream'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (comment != null)
      json['comment'] = comment;
    if (name != null)
      json['name'] = name;
    if (stream != null)
      json['stream'] = stream;
    return json;
  }

  static List<TestResultPayload> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultPayload>() : json.map((value) => TestResultPayload.fromJson(value)).toList();
  }

  static Map<String, TestResultPayload> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultPayload>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultPayload.fromJson(value));
    }
    return map;
  }
}


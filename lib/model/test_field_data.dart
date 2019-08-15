part of azure_devops_sdk.api;

class TestFieldData {
  
  Map<String, Object> dimensions = {};
  
  int measure = null;
  TestFieldData();

  @override
  String toString() {
    return 'TestFieldData[dimensions=$dimensions, measure=$measure, ]';
  }

  TestFieldData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['dimensions'] == null) {
      dimensions = null;
    } else {
      dimensions = Object.mapFromJson(json['dimensions']);
    }
    if (json['measure'] == null) {
      measure = null;
    } else {
          measure = json['measure'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dimensions != null)
      json['dimensions'] = dimensions;
    if (measure != null)
      json['measure'] = measure;
    return json;
  }

  static List<TestFieldData> listFromJson(List<dynamic> json) {
    return json == null ? List<TestFieldData>() : json.map((value) => TestFieldData.fromJson(value)).toList();
  }

  static Map<String, TestFieldData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestFieldData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestFieldData.fromJson(value));
    }
    return map;
  }
}


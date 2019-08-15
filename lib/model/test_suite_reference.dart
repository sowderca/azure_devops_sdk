part of azure_devops_sdk.api;

class TestSuiteReference {
  /* ID of the test suite. */
  int id = null;
  /* Name of the test suite. */
  String name = null;
  TestSuiteReference();

  @override
  String toString() {
    return 'TestSuiteReference[id=$id, name=$name, ]';
  }

  TestSuiteReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<TestSuiteReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TestSuiteReference>() : json.map((value) => TestSuiteReference.fromJson(value)).toList();
  }

  static Map<String, TestSuiteReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestSuiteReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestSuiteReference.fromJson(value));
    }
    return map;
  }
}


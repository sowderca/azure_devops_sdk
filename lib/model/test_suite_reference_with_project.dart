part of azure_devops_sdk.api;

class TestSuiteReferenceWithProject {
  /* ID of the test suite. */
  int id = null;
  /* Name of the test suite. */
  String name = null;
  TestSuiteReferenceWithProject();

  @override
  String toString() {
    return 'TestSuiteReferenceWithProject[id=$id, name=$name, ]';
  }

  TestSuiteReferenceWithProject.fromJson(Map<String, dynamic> json) {
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

  static List<TestSuiteReferenceWithProject> listFromJson(List<dynamic> json) {
    return json == null ? List<TestSuiteReferenceWithProject>() : json.map((value) => TestSuiteReferenceWithProject.fromJson(value)).toList();
  }

  static Map<String, TestSuiteReferenceWithProject> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestSuiteReferenceWithProject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestSuiteReferenceWithProject.fromJson(value));
    }
    return map;
  }
}


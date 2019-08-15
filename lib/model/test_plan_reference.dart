part of azure_devops_sdk.api;

class TestPlanReference {
  /* ID of the test plan. */
  int id = null;
  /* Name of the test plan. */
  String name = null;
  TestPlanReference();

  @override
  String toString() {
    return 'TestPlanReference[id=$id, name=$name, ]';
  }

  TestPlanReference.fromJson(Map<String, dynamic> json) {
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

  static List<TestPlanReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TestPlanReference>() : json.map((value) => TestPlanReference.fromJson(value)).toList();
  }

  static Map<String, TestPlanReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestPlanReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestPlanReference.fromJson(value));
    }
    return map;
  }
}


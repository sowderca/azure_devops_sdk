part of azure_devops_sdk.api;

class TestPlanDetailedReference {
  /* ID of the test plan. */
  int id = null;
  /* Name of the test plan. */
  String name = null;
  TestPlanDetailedReference();

  @override
  String toString() {
    return 'TestPlanDetailedReference[id=$id, name=$name, ]';
  }

  TestPlanDetailedReference.fromJson(Map<String, dynamic> json) {
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

  static List<TestPlanDetailedReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TestPlanDetailedReference>() : json.map((value) => TestPlanDetailedReference.fromJson(value)).toList();
  }

  static Map<String, TestPlanDetailedReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestPlanDetailedReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestPlanDetailedReference.fromJson(value));
    }
    return map;
  }
}


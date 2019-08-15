part of azure_devops_sdk.api;

class TestCaseReference {
  
  IdentityRef assignedTo = null;
  /* Test Case Id */
  int id = null;
  /* Test Case Name */
  String name = null;
  /* State of the test case work item */
  String state = null;
  TestCaseReference();

  @override
  String toString() {
    return 'TestCaseReference[assignedTo=$assignedTo, id=$id, name=$name, state=$state, ]';
  }

  TestCaseReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['assignedTo'] == null) {
      assignedTo = null;
    } else {
      assignedTo = IdentityRef.fromJson(json['assignedTo']);
    }
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
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (assignedTo != null)
      json['assignedTo'] = assignedTo;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (state != null)
      json['state'] = state;
    return json;
  }

  static List<TestCaseReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TestCaseReference>() : json.map((value) => TestCaseReference.fromJson(value)).toList();
  }

  static Map<String, TestCaseReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestCaseReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestCaseReference.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class TestSessionWorkItemReference {
  /* Id of the workitem */
  int id = null;
  /* Type of the workitem */
  String type = null;
  TestSessionWorkItemReference();

  @override
  String toString() {
    return 'TestSessionWorkItemReference[id=$id, type=$type, ]';
  }

  TestSessionWorkItemReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<TestSessionWorkItemReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TestSessionWorkItemReference>() : json.map((value) => TestSessionWorkItemReference.fromJson(value)).toList();
  }

  static Map<String, TestSessionWorkItemReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestSessionWorkItemReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestSessionWorkItemReference.fromJson(value));
    }
    return map;
  }
}


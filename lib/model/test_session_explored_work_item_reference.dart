part of azure_devops_sdk.api;

class TestSessionExploredWorkItemReference {
  /* Id of the workitem */
  int id = null;
  /* Type of the workitem */
  String type = null;
  TestSessionExploredWorkItemReference();

  @override
  String toString() {
    return 'TestSessionExploredWorkItemReference[id=$id, type=$type, ]';
  }

  TestSessionExploredWorkItemReference.fromJson(Map<String, dynamic> json) {
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

  static List<TestSessionExploredWorkItemReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TestSessionExploredWorkItemReference>() : json.map((value) => TestSessionExploredWorkItemReference.fromJson(value)).toList();
  }

  static Map<String, TestSessionExploredWorkItemReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestSessionExploredWorkItemReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestSessionExploredWorkItemReference.fromJson(value));
    }
    return map;
  }
}


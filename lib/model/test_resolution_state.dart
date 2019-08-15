part of azure_devops_sdk.api;

class TestResolutionState {
  /* Test Resolution state Id. */
  int id = null;
  /* Test Resolution State Name. */
  String name = null;
  
  ShallowReference project = null;
  TestResolutionState();

  @override
  String toString() {
    return 'TestResolutionState[id=$id, name=$name, project=$project, ]';
  }

  TestResolutionState.fromJson(Map<String, dynamic> json) {
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
    if (json['project'] == null) {
      project = null;
    } else {
      project = ShallowReference.fromJson(json['project']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (project != null)
      json['project'] = project;
    return json;
  }

  static List<TestResolutionState> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResolutionState>() : json.map((value) => TestResolutionState.fromJson(value)).toList();
  }

  static Map<String, TestResolutionState> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResolutionState>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResolutionState.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class TestFailureType {
  
  int id = null;
  
  String name = null;
  
  ShallowReference project = null;
  TestFailureType();

  @override
  String toString() {
    return 'TestFailureType[id=$id, name=$name, project=$project, ]';
  }

  TestFailureType.fromJson(Map<String, dynamic> json) {
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

  static List<TestFailureType> listFromJson(List<dynamic> json) {
    return json == null ? List<TestFailureType>() : json.map((value) => TestFailureType.fromJson(value)).toList();
  }

  static Map<String, TestFailureType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestFailureType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestFailureType.fromJson(value));
    }
    return map;
  }
}


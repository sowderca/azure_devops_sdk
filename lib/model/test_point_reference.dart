part of azure_devops_sdk.api;

class TestPointReference {
  
  int id = null;
  
  String state = null;
  //enum stateEnum {  none,  ready,  completed,  notReady,  inProgress,  maxValue,  };{
  TestPointReference();

  @override
  String toString() {
    return 'TestPointReference[id=$id, state=$state, ]';
  }

  TestPointReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (state != null)
      json['state'] = state;
    return json;
  }

  static List<TestPointReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TestPointReference>() : json.map((value) => TestPointReference.fromJson(value)).toList();
  }

  static Map<String, TestPointReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestPointReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestPointReference.fromJson(value));
    }
    return map;
  }
}


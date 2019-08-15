part of azure_devops_sdk.api;

class TestMethod {
  
  String container = null;
  
  String name = null;
  TestMethod();

  @override
  String toString() {
    return 'TestMethod[container=$container, name=$name, ]';
  }

  TestMethod.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['container'] == null) {
      container = null;
    } else {
          container = json['container'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (container != null)
      json['container'] = container;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<TestMethod> listFromJson(List<dynamic> json) {
    return json == null ? List<TestMethod>() : json.map((value) => TestMethod.fromJson(value)).toList();
  }

  static Map<String, TestMethod> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestMethod>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestMethod.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class TestConfigurationReference {
  /* Id of the configuration */
  int id = null;
  /* Name of the configuration */
  String name = null;
  TestConfigurationReference();

  @override
  String toString() {
    return 'TestConfigurationReference[id=$id, name=$name, ]';
  }

  TestConfigurationReference.fromJson(Map<String, dynamic> json) {
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

  static List<TestConfigurationReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TestConfigurationReference>() : json.map((value) => TestConfigurationReference.fromJson(value)).toList();
  }

  static Map<String, TestConfigurationReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestConfigurationReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestConfigurationReference.fromJson(value));
    }
    return map;
  }
}


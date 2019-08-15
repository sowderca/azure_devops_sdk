part of azure_devops_sdk.api;

class TestTag {
  /* Name of the tag, alphanumeric value less than 30 chars */
  String name = null;
  TestTag();

  @override
  String toString() {
    return 'TestTag[name=$name, ]';
  }

  TestTag.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<TestTag> listFromJson(List<dynamic> json) {
    return json == null ? List<TestTag>() : json.map((value) => TestTag.fromJson(value)).toList();
  }

  static Map<String, TestTag> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestTag>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestTag.fromJson(value));
    }
    return map;
  }
}


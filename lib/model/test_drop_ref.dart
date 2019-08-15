part of azure_devops_sdk.api;

class TestDropRef {
  /* Id of the resource */
  String id = null;
  /* Full http link to the resource */
  String url = null;
  TestDropRef();

  @override
  String toString() {
    return 'TestDropRef[id=$id, url=$url, ]';
  }

  TestDropRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TestDropRef> listFromJson(List<dynamic> json) {
    return json == null ? List<TestDropRef>() : json.map((value) => TestDropRef.fromJson(value)).toList();
  }

  static Map<String, TestDropRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestDropRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestDropRef.fromJson(value));
    }
    return map;
  }
}


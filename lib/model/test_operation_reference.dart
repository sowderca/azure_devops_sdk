part of azure_devops_sdk.api;

class TestOperationReference {
  
  String id = null;
  
  String status = null;
  
  String url = null;
  TestOperationReference();

  @override
  String toString() {
    return 'TestOperationReference[id=$id, status=$status, url=$url, ]';
  }

  TestOperationReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
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
    if (status != null)
      json['status'] = status;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TestOperationReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TestOperationReference>() : json.map((value) => TestOperationReference.fromJson(value)).toList();
  }

  static Map<String, TestOperationReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestOperationReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestOperationReference.fromJson(value));
    }
    return map;
  }
}


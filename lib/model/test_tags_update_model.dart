part of azure_devops_sdk.api;

class TestTagsUpdateModel {
  
  List<Object> tags = [];
  TestTagsUpdateModel();

  @override
  String toString() {
    return 'TestTagsUpdateModel[tags=$tags, ]';
  }

  TestTagsUpdateModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['tags'] == null) {
      tags = null;
    } else {
      tags = Object.listFromJson(json['tags']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (tags != null)
      json['tags'] = tags;
    return json;
  }

  static List<TestTagsUpdateModel> listFromJson(List<dynamic> json) {
    return json == null ? List<TestTagsUpdateModel>() : json.map((value) => TestTagsUpdateModel.fromJson(value)).toList();
  }

  static Map<String, TestTagsUpdateModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestTagsUpdateModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestTagsUpdateModel.fromJson(value));
    }
    return map;
  }
}


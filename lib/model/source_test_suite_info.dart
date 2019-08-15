part of azure_devops_sdk.api;

class SourceTestSuiteInfo {
  /* Id of the Source Test Suite */
  int id = null;
  SourceTestSuiteInfo();

  @override
  String toString() {
    return 'SourceTestSuiteInfo[id=$id, ]';
  }

  SourceTestSuiteInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<SourceTestSuiteInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<SourceTestSuiteInfo>() : json.map((value) => SourceTestSuiteInfo.fromJson(value)).toList();
  }

  static Map<String, SourceTestSuiteInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SourceTestSuiteInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SourceTestSuiteInfo.fromJson(value));
    }
    return map;
  }
}


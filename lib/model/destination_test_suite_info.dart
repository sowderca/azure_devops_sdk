part of azure_devops_sdk.api;

class DestinationTestSuiteInfo {
  /* Destination Suite Id */
  int id = null;
  /* Destination Project Name */
  String project = null;
  DestinationTestSuiteInfo();

  @override
  String toString() {
    return 'DestinationTestSuiteInfo[id=$id, project=$project, ]';
  }

  DestinationTestSuiteInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['project'] == null) {
      project = null;
    } else {
          project = json['project'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (project != null)
      json['project'] = project;
    return json;
  }

  static List<DestinationTestSuiteInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<DestinationTestSuiteInfo>() : json.map((value) => DestinationTestSuiteInfo.fromJson(value)).toList();
  }

  static Map<String, DestinationTestSuiteInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DestinationTestSuiteInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DestinationTestSuiteInfo.fromJson(value));
    }
    return map;
  }
}


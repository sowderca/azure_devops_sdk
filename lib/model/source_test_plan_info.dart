part of azure_devops_sdk.api;

class SourceTestPlanInfo {
  /* ID of the source Test Plan */
  int id = null;
  /* Id of suites to be cloned inside source Test Plan */
  List<int> suiteIds = [];
  SourceTestPlanInfo();

  @override
  String toString() {
    return 'SourceTestPlanInfo[id=$id, suiteIds=$suiteIds, ]';
  }

  SourceTestPlanInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['suiteIds'] == null) {
      suiteIds = null;
    } else {
      suiteIds = (json['suiteIds'] as List).cast<int>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (suiteIds != null)
      json['suiteIds'] = suiteIds;
    return json;
  }

  static List<SourceTestPlanInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<SourceTestPlanInfo>() : json.map((value) => SourceTestPlanInfo.fromJson(value)).toList();
  }

  static Map<String, SourceTestPlanInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SourceTestPlanInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SourceTestPlanInfo.fromJson(value));
    }
    return map;
  }
}


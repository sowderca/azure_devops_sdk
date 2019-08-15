part of azure_devops_sdk.api;

class PointsFilter {
  /* List of Configurations for filtering. */
  List<String> configurationNames = [];
  /* List of test case id for filtering. */
  List<int> testcaseIds = [];
  /* List of tester for filtering. */
  List<IdentityRef> testers = [];
  PointsFilter();

  @override
  String toString() {
    return 'PointsFilter[configurationNames=$configurationNames, testcaseIds=$testcaseIds, testers=$testers, ]';
  }

  PointsFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['configurationNames'] == null) {
      configurationNames = null;
    } else {
      configurationNames = (json['configurationNames'] as List).cast<String>();
    }
    if (json['testcaseIds'] == null) {
      testcaseIds = null;
    } else {
      testcaseIds = (json['testcaseIds'] as List).cast<int>();
    }
    if (json['testers'] == null) {
      testers = null;
    } else {
      testers = IdentityRef.listFromJson(json['testers']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (configurationNames != null)
      json['configurationNames'] = configurationNames;
    if (testcaseIds != null)
      json['testcaseIds'] = testcaseIds;
    if (testers != null)
      json['testers'] = testers;
    return json;
  }

  static List<PointsFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<PointsFilter>() : json.map((value) => PointsFilter.fromJson(value)).toList();
  }

  static Map<String, PointsFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PointsFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PointsFilter.fromJson(value));
    }
    return map;
  }
}


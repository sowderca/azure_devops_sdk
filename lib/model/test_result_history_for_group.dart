part of azure_devops_sdk.api;

class TestResultHistoryForGroup {
  /* Display name of the group. */
  String displayName = null;
  /* Name or Id of the group identifier by which results are grouped together. */
  String groupByValue = null;
  /* List of results for GroupByValue */
  List<TestCaseResult> results = [];
  TestResultHistoryForGroup();

  @override
  String toString() {
    return 'TestResultHistoryForGroup[displayName=$displayName, groupByValue=$groupByValue, results=$results, ]';
  }

  TestResultHistoryForGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['groupByValue'] == null) {
      groupByValue = null;
    } else {
          groupByValue = json['groupByValue'];
    }
    if (json['results'] == null) {
      results = null;
    } else {
      results = TestCaseResult.listFromJson(json['results']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayName != null)
      json['displayName'] = displayName;
    if (groupByValue != null)
      json['groupByValue'] = groupByValue;
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<TestResultHistoryForGroup> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultHistoryForGroup>() : json.map((value) => TestResultHistoryForGroup.fromJson(value)).toList();
  }

  static Map<String, TestResultHistoryForGroup> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultHistoryForGroup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultHistoryForGroup.fromJson(value));
    }
    return map;
  }
}


part of azure_devops_sdk.api;

class TestResultHistoryDetailsForGroup {
  
  Object groupByValue = null;
  
  TestCaseResult latestResult = null;
  TestResultHistoryDetailsForGroup();

  @override
  String toString() {
    return 'TestResultHistoryDetailsForGroup[groupByValue=$groupByValue, latestResult=$latestResult, ]';
  }

  TestResultHistoryDetailsForGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['groupByValue'] == null) {
      groupByValue = null;
    } else {
          groupByValue = json['groupByValue'];
    }
    if (json['latestResult'] == null) {
      latestResult = null;
    } else {
      latestResult = TestCaseResult.fromJson(json['latestResult']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (groupByValue != null)
      json['groupByValue'] = groupByValue;
    if (latestResult != null)
      json['latestResult'] = latestResult;
    return json;
  }

  static List<TestResultHistoryDetailsForGroup> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultHistoryDetailsForGroup>() : json.map((value) => TestResultHistoryDetailsForGroup.fromJson(value)).toList();
  }

  static Map<String, TestResultHistoryDetailsForGroup> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultHistoryDetailsForGroup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultHistoryDetailsForGroup.fromJson(value));
    }
    return map;
  }
}

